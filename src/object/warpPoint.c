/**
 * @file warpPoint.c
 * @ingroup Objects
 *
 * @brief Warp Point object
 */
#include "functions.h"
#include "game.h"
#include "global.h"
#include "hitbox.h"
#include "object.h"

extern void sub_0807CAC8(u32);
extern u32 sub_0807CAEC(u32);

void WarpPoint_Init(Entity*);
void WarpPoint_Action1(Entity*);
void WarpPoint_Action2(Entity*);
void WarpPoint_Action3(Entity*);
void WarpPoint_Action4(Entity*);
void WarpPoint_Action5(Entity*);
void sub_0808B73C(Entity*);
u32 sub_0808B7C8(Entity*);
void sub_0808B830(Entity*);

void (*const WarpPoint_Actions[])(Entity*) = {
    WarpPoint_Init, WarpPoint_Action1, WarpPoint_Action2, WarpPoint_Action3, WarpPoint_Action4, WarpPoint_Action5,
};

const u8 gUnk_08121380[3] = { 1, 0, 2 };

void WarpPoint(Entity* this) {
    if (!this->field_0x70.BYTES.byte0) {
        WarpPoint_Actions[this->action](this);
    } else {
        sub_0808B73C(this);
    }
}

void WarpPoint_Init(Entity* this) {
    u32 tmp;
    this->action = 1;
    this->subtimer = 0;
    tmp = gUnk_08121380[this->type];
    this->palette.b.b0 = tmp;
    this->spritePriority.b0 = 6;
    this->hitbox = (Hitbox*)&gHitbox_1;
    this->updatePriority = PRIO_NO_BLOCK;
    InitializeAnimation(this, 0);
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0808B830(this);
    } else {
        if (AreaIsDungeon() && sub_0807CAEC(this->type)) {
            sub_0808B830(this);
        }
    }
    if (!sub_0808B7C8(this))
        return;
    this->action = 4;
    this->subtimer = 96;
    gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
    gPlayerEntity.y.HALF.HI = this->y.HALF.HI;
    gPlayerEntity.animationState = 4;
    EnqueueSFX(SFX_112);
    RequestPriorityDuration(this, this->subtimer + 16);
}

void WarpPoint_Action1(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0808B830(this);
        if (AreaIsDungeon()) {
            sub_0807CAC8(this->type);
        }
        this->action = 2;
        this->subtimer = 60;
        EnqueueSFX(SFX_112);
    }
}

void WarpPoint_Action2(Entity* this) {
    if (!--this->subtimer) {
        this->action = 3;
    } else {
        this->spriteSettings.draw = this->subtimer & 2 ? 0 : 1;
    }
}

void WarpPoint_Action3(Entity* this) {
    GetNextFrame(this);
    if (sub_0808B7C8(this)) {
        if (this->timer)
            return;
        this->action = 5;
        this->subtimer = 96;
        PutAwayItems();
        gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
        gPlayerEntity.y.HALF.HI = this->y.HALF.HI;
        gPlayerEntity.animationState = 4;
        gPlayerEntity.flags &= ~ENT_COLLIDE;
        RequestPriorityDuration(this, this->subtimer + 16);
        SoundReq(SFX_113);
    } else {
        this->timer = 0;
    }
}

void WarpPoint_Action4(Entity* this) {
    u32 tmp;
    if (!--this->subtimer) {
        this->action = 3;
        this->timer = 1;
        gPlayerEntity.animationState = 4;
        gPlayerEntity.direction = DirectionSouth;
        return;
    }
    tmp = 0;
    switch (this->subtimer & 0x60) {
        case 0x40:
            if (this->subtimer == 0x58) {
                SoundReq(SFX_114);
            }
            if (!(this->subtimer & 1)) {
                tmp = 1;
            }
            break;
        case 0x20:
            if (!(this->subtimer & 3)) {
                tmp = 1;
            }
            break;
        case 0:
            if (!(this->subtimer & 7)) {
                if (gPlayerEntity.animationState == 4) {
                    if (this->subtimer > 0x18) {
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

void WarpPoint_Action5(Entity* this) {
    u32 tmp;
    if (!--this->subtimer) {
        gRoomTransition.transitioningOut = 1;
        gRoomTransition.type = TRANSITION_DEFAULT;
        gRoomTransition.player_status.area_next = this->field_0x7c.BYTES.byte0;
        gRoomTransition.player_status.room_next = this->field_0x7c.BYTES.byte1;
        gRoomTransition.player_status.start_pos_x = ((this->cutsceneBeh.HWORD & 0x3f) << 4) + 8;
        gRoomTransition.player_status.start_pos_y = ((this->cutsceneBeh.HWORD & 0xfc0) >> 2) + 8;
        gRoomTransition.player_status.layer = 0;
        gRoomTransition.player_status.start_anim = 4;
        gRoomTransition.player_status.spawn_type = PL_SPAWN_DEFAULT;
        if (this->type == 2) {
            gRoomTransition.type = TRANSITION_FADE_WHITE_SLOW;
        }
        return;
    }
    tmp = 0;
    switch (this->subtimer & 0x60) {
        case 0x40:
            if (!(this->subtimer & 7)) {
                tmp = 1;
            }
            break;
        case 0x20:
            if (!(this->subtimer & 3)) {
                tmp = 1;
            }
            break;
        case 0:
            if (this->subtimer > 0x10) {
                if (!(this->subtimer & 1)) {
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
    if (EntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x28)) {
        this->spriteSettings.draw = 1;
    } else {
        if (EntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x2e)) {
            this->spriteSettings.draw ^= 1;
        } else {
            this->spriteSettings.draw = 0;
        }
    }
    GetNextFrame(this);
}

u32 sub_0808B7C8(Entity* this) {
    if (!(gPlayerState.flags & PL_MINISH) && gPlayerState.framestate != PL_STATE_DIE && gPlayerEntity.health != 0 &&
        PlayerCanBeMoved() && EntityInRectRadius(this, &gPlayerEntity, 5, 5) && gPlayerEntity.z.HALF.HI == 0) {
        if (this->timer == 0 && gPlayerEntity.action == PLAYER_08072C9C) {
            ResetPlayerAnimationAndAction();
        }
        return 1;
    }
    return 0;
}

void sub_0808B830(Entity* this) {
    Entity* tmp;
    this->action = 3;
    this->timer = 0;
    this->spriteSettings.draw = 1;
    tmp = CreateObject(WARP_POINT, 0, 0);
    if (tmp) {
        tmp->field_0x70.BYTES.byte0 = 1;
        tmp->parent = this;
        CopyPosition(this, tmp);
    }
}
