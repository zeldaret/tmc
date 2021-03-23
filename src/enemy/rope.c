#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "random.h"
#include "audio.h"
#include "functions.h"

extern void (*const gRope[6])(Entity*);
extern void (*const gUnk_080CE460[4])(Entity*);
extern void (*const gUnk_080CE470[3])(Entity*);
extern Entity* gUnk_020000B0;
extern u32 sub_0804A044();

void sub_08031600();
u32 sub_0803163C();

void Rope(Entity* this) {
    EnemyFunctionHandler(this, gRope);
    SetChildOffset(this, 0, 1, -16);
}

void Rope_OnTick(Entity* this) {
    gUnk_080CE460[this->action](this);
}

void sub_080313AC(Entity* this) {
    if (this->action == 3) {
        this->field_0xf = 0x1e;
        this->field_0x78.HALF.LO = 0x3c;
        sub_08031600(this);
    }
    if (this->field_0x43) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, gRope);
}

void sub_080313E8(Entity* this) {
    if (sub_0806F520()) {
        gUnk_080CE470[this->subAction](this);
    }
}

void sub_0803140C(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 0x3c;
}

void sub_08031418(Entity* this) {
    sub_0806F4E8(this);
}

void sub_08031420(Entity* this) {
    if (sub_0806F3E4(this)) {
        sub_0804A7D4(this);
    }
}

void sub_08031434(Entity* this) {

    sub_0804A720(this);
    this->animationState = 0xff;
    this->field_0x1c = 1;
    this->field_0x7a.HWORD = this->speed;
    if (!(this->type)) {
        sub_08031600(this);
    } else {
        this->action = 1;
        this->subAction = 0;
        this->spriteSettings.b.draw = (this->spriteSettings.b.draw & 0xfc);
        this->height.HALF.HI = -0x80;
        this->frameIndex = 0xff;
    }
}

void sub_08031480(Entity* this) {
    if (this->subAction == 0) {
        if (this->actionDelay != 0) {
            this->actionDelay--;
        } else {
            sub_08031600(this);
            this->action = 1;
            this->subAction = 1;
            this->spriteSettings.b.draw = 3;
            this->spriteRendering.b3 = 1;
            this->spriteOrientation.flipY = 1;
            SoundReq(SFX_12D);
        }
    } else {
        if (sub_08003FC4(this, 0x1800) == 0) {
            this->action = 2;
            this->field_0xf = 0xf;
            this->spriteSettings.b.draw = 1;
            UpdateSpriteForCollisionLayer(this);
            EnqueueSFX(0x84);
        }
    }
}
void sub_080314FC(Entity* this) {
    u32 u;

    GetNextFrame(this);
    if (this->field_0xf) {
        this->field_0xf--;
    } else {
        if (this->field_0x78.HALF.LO) {
            this->field_0x78.HALF.LO--;
        }
        if (sub_08049FA0(this)) {
            if (!(this->field_0x78.HALF.LO)) {
                if (sub_08049FDC(this, 1)) {
                    u = sub_0804A044(this, gUnk_020000B0, 0xc);
                    if (u != 0xff) {
                        this->action = 3;
                        this->actionDelay = 0x1e;
                        this->field_0x7a.HWORD = this->speed = 0x1a0;
                        this->direction = u;
                        this->animationState = this->direction >> 3;
                        InitializeAnimation(this, this->animationState + 4);
                        return;
                    }
                }
            }
        } else {
            if ((Random() & 1)) {
                this->direction = DirectionRoundUp(sub_08049EE4(this));
                u = this->direction >> 3;
                if (u != this->animationState) {
                    this->animationState = u;
                    InitializeAnimation(this, u);
                }
            }
        }
        if (!(--this->actionDelay)) {
            sub_08031600(this);
        }
        sub_0803163C(this);
    }
}

void sub_080315BC(Entity* this) {
    if (this->actionDelay) {
        this->actionDelay--;
        UpdateAnimationVariableFrames(this, 2);
    } else {
        if (sub_08049FA0(this)) {
            GetNextFrame(this);
            if (sub_0803163C(this)) {
                return;
            }
        }
        this->field_0x78.HALF.LO = 0x1e;
        sub_08031600(this);
    }
}

void sub_08031600(Entity* this) {
    u32 r;
    this->action = 2;
    this->actionDelay = (Random() & 0x30) + 0x3c;
    this->speed = 0x80;
    this->field_0x7a.HWORD = 0x80;
    r = Random() & 0x18;
    this->direction = r;
    r = r / 8;
    if (r != this->animationState) {
        this->animationState = r;
        InitializeAnimation(this, r);
    }
}

u32 sub_0803163C(Entity* this) {
    u32 h;
    if (sub_080002B8(this) == 0x13) {
        h = this->field_0x7a.HWORD / 2;
    } else {
        h = this->field_0x7a.HWORD;
    }
    this->speed = h;
    return ProcessMovement(this);
}
