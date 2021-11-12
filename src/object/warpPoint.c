#include "global.h"
#include "object.h"
#include "player.h"
#include "flags.h"
#include "game.h"
#include "audio.h"
#include "functions.h"

extern Hitbox gHitbox_1;

void WarpPoint(Entity*);
void sub_0808B474(Entity*);
void sub_0808B530(Entity*);
void sub_0808B564(Entity*);
void sub_0808B590(Entity*);
void sub_0808B5E8(Entity*);
void sub_0808B684(Entity*);
void sub_0808B73C(Entity*);
u32 sub_0808B7C8(Entity*);
void sub_0808B830(Entity*);

void (*const gUnk_08121368[])(Entity*) = {
    sub_0808B474, sub_0808B530, sub_0808B564, sub_0808B590, sub_0808B5E8, sub_0808B684,
};

const u8 gUnk_08121380[3] = { 1, 0, 2 };

void WarpPoint(Entity* this) {
    if (!this->field_0x70.BYTES.byte0) {
        gUnk_08121368[this->action](this);
    } else {
        sub_0808B73C(this);
    }
}

void sub_0808B474(Entity* this) {
    u32 tmp;
    this->action = 1;
    this->field_0xf = 0;
    tmp = gUnk_08121380[this->type];
    this->palette.b.b0 = tmp;
    this->spritePriority.b0 = 6;
    this->hitbox = &gHitbox_1;
    this->updateConditions = 3;
    InitializeAnimation(this, 0);
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0808B830(this);
    } else {
        if (CheckIsDungeon() && sub_0807CAEC(this->type)) {
            sub_0808B830(this);
        }
    }
    if (!sub_0808B7C8(this))
        return;
    this->action = 4;
    this->field_0xf = 0x60;
    gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
    gPlayerEntity.y.HALF.HI = this->y.HALF.HI;
    gPlayerEntity.animationState = 4;
    EnqueueSFX(0x112);
    sub_0805E4E0(this, this->field_0xf + 0x10);
}

void sub_0808B530(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0808B830(this);
        if (CheckIsDungeon()) {
            sub_0807CAC8(this->type);
        }
        this->action = 2;
        this->field_0xf = 60;
        EnqueueSFX(0x112);
    }
}

void sub_0808B564(Entity* this) {
    if (!--this->field_0xf) {
        this->action = 3;
    } else {
        this->spriteSettings.draw = this->field_0xf & 2 ? 0 : 1;
    }
}

void sub_0808B590(Entity* this) {
    GetNextFrame(this);
    if (sub_0808B7C8(this)) {
        if (this->actionDelay)
            return;
        this->action = 5;
        this->field_0xf = 0x60;
        sub_08077B20();
        gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
        gPlayerEntity.y.HALF.HI = this->y.HALF.HI;
        gPlayerEntity.animationState = 4;
        gPlayerEntity.flags &= ~0x80;
        sub_0805E4E0(this, this->field_0xf + 0x10);
        SoundReq(0x113);
    } else {
        this->actionDelay = 0;
    }
}

void sub_0808B5E8(Entity* this) {
    u32 tmp;
    if (!--this->field_0xf) {
        this->action = 3;
        this->actionDelay = 1;
        gPlayerEntity.animationState = 4;
        gPlayerEntity.direction = DirectionSouth;
        return;
    }
    tmp = 0;
    switch (this->field_0xf & 0x60) {
        case 0x40:
            if (this->field_0xf == 0x58) {
                SoundReq(0x114);
            }
            if (!(this->field_0xf & 1)) {
                tmp = 1;
            }
            break;
        case 0x20:
            if (!(this->field_0xf & 3)) {
                tmp = 1;
            }
            break;
        case 0:
            if (!(this->field_0xf & 7)) {
                if (gPlayerEntity.animationState == 4) {
                    if (this->field_0xf > 0x18) {
                        tmp = 1;
                    }
                } else {
                    tmp = 1;
                }
            }
            break;
    }
    if (tmp) {
        gPlayerEntity.animationState += 2;
        gPlayerEntity.animationState &= 6;
    }
}

void sub_0808B684(Entity* this) {
    u32 tmp;
    if (!--this->field_0xf) {
        gScreenTransition.transitioningOut = 1;
        gScreenTransition.transitionType = 0;
        gScreenTransition.areaID = this->field_0x7c.BYTES.byte0;
        gScreenTransition.roomID = this->field_0x7c.BYTES.byte1;
        gScreenTransition.playerStartPos.HALF.x = ((this->cutsceneBeh.HWORD & 0x3f) << 4) + 8;
        gScreenTransition.playerStartPos.HALF.y = ((this->cutsceneBeh.HWORD & 0xfc0) >> 2) + 8;
        gScreenTransition.playerLayer = 0;
        gScreenTransition.playerState = 4;
        gScreenTransition.field_0xf = 0;
        if (this->type == 2) {
            gScreenTransition.transitionType = 2;
        }
        return;
    }
    tmp = 0;
    switch (this->field_0xf & 0x60) {
        case 0x40:
            if (!(this->field_0xf & 7)) {
                tmp = 1;
            }
            break;
        case 0x20:
            if (!(this->field_0xf & 3)) {
                tmp = 1;
            }
            break;
        case 0:
            if (this->field_0xf > 0x10) {
                if (!(this->field_0xf & 1)) {
                    tmp = 1;
                }
            } else {
                gPlayerEntity.spriteSettings.draw = 0;
            }
            break;
    }
    if (tmp) {
        gPlayerEntity.animationState += 2;
        gPlayerEntity.animationState &= 6;
    }
}

void sub_0808B73C(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->palette.b.b0 = this->parent->palette.b.b0;
        InitializeAnimation(this, 1);
    }
    if (sub_0806FCB8(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x28)) {
        this->spriteSettings.draw = 1;
    } else {
        if (sub_0806FCB8(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x2e)) {
            this->spriteSettings.draw ^= 1;
        } else {
            this->spriteSettings.draw = 0;
        }
    }
    GetNextFrame(this);
}

u32 sub_0808B7C8(Entity* this) {
    if (!(gPlayerState.flags & 0x80) && gPlayerState.field_0xa8 != 0x12 && gPlayerEntity.health != 0 &&
        sub_08079F8C() && sub_080041A0(this, &gPlayerEntity, 5, 5) && gPlayerEntity.z.HALF.HI == 0) {
        if (this->actionDelay == 0 && gPlayerEntity.action == 0x1b) {
            sub_080791D0();
        }
        return 1;
    }
    return 0;
}

void sub_0808B830(Entity* this) {
    Entity* tmp;
    this->action = 3;
    this->actionDelay = 0;
    this->spriteSettings.draw = 1;
    tmp = CreateObject(0x34, 0, 0);
    if (tmp) {
        tmp->field_0x70.BYTES.byte0 = 1;
        tmp->parent = this;
        CopyPosition(this, tmp);
    }
}
