/**
 * @file warpPoint.c
 * @ingroup Objects
 *
 * @brief Warp Point object
 */
#include "functions.h"
#include "game.h"
#include "hitbox.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u8 unk_70;
    /*0x71*/ u8 unused2[11];
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unused3[6];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} WarpPointEntity;

extern void EnableDungeonWarp(u32);
extern u32 IsDungeonWarpActive(u32);

void WarpPoint_Init(WarpPointEntity* this);
void WarpPoint_Action1(WarpPointEntity* this);
void WarpPoint_Action2(WarpPointEntity* this);
void WarpPoint_Action3(WarpPointEntity* this);
void WarpPoint_Action4(WarpPointEntity* this);
void WarpPoint_Action5(WarpPointEntity* this);
void sub_0808B73C(WarpPointEntity* this);
u32 sub_0808B7C8(WarpPointEntity* this);
void sub_0808B830(WarpPointEntity* this);

void (*const WarpPoint_Actions[])(WarpPointEntity*) = {
    WarpPoint_Init, WarpPoint_Action1, WarpPoint_Action2, WarpPoint_Action3, WarpPoint_Action4, WarpPoint_Action5,
};

const u8 gUnk_08121380[3] = { 1, 0, 2 };

void WarpPoint(WarpPointEntity* this) {
    if (!this->unk_70) {
        WarpPoint_Actions[super->action](this);
    } else {
        sub_0808B73C(this);
    }
}

void WarpPoint_Init(WarpPointEntity* this) {
    u32 tmp;
    super->action = 1;
    super->subtimer = 0;
    tmp = gUnk_08121380[super->type];
    super->palette.b.b0 = tmp;
    super->spritePriority.b0 = 6;
    super->hitbox = (Hitbox*)&gHitbox_1;
    super->updatePriority = PRIO_NO_BLOCK;
    InitializeAnimation(super, 0);
    if (CheckFlags(this->unk_86)) {
        sub_0808B830(this);
    } else {
        if (AreaIsDungeon() && IsDungeonWarpActive(super->type)) {
            sub_0808B830(this);
        }
    }
    if (!sub_0808B7C8(this))
        return;
    super->action = 4;
    super->subtimer = 96;
    gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI;
    gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI;
    gPlayerEntity.base.animationState = 4;
    EnqueueSFX(SFX_112);
    RequestPriorityDuration(super, super->subtimer + 16);
}

void WarpPoint_Action1(WarpPointEntity* this) {
    if (CheckFlags(this->unk_86)) {
        sub_0808B830(this);
        if (AreaIsDungeon()) {
            EnableDungeonWarp(super->type);
        }
        super->action = 2;
        super->subtimer = 60;
        EnqueueSFX(SFX_112);
    }
}

void WarpPoint_Action2(WarpPointEntity* this) {
    if (!--super->subtimer) {
        super->action = 3;
    } else {
        super->spriteSettings.draw = super->subtimer & 2 ? 0 : 1;
    }
}

void WarpPoint_Action3(WarpPointEntity* this) {
    GetNextFrame(super);
    if (sub_0808B7C8(this)) {
        if (super->timer)
            return;
        super->action = 5;
        super->subtimer = 96;
        PutAwayItems();
        gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI;
        gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI;
        gPlayerEntity.base.animationState = 4;
        gPlayerEntity.base.flags &= ~ENT_COLLIDE;
        RequestPriorityDuration(super, super->subtimer + 16);
        SoundReq(SFX_113);
    } else {
        super->timer = 0;
    }
}

void WarpPoint_Action4(WarpPointEntity* this) {
    u32 tmp;
    if (!--super->subtimer) {
        super->action = 3;
        super->timer = 1;
        gPlayerEntity.base.animationState = 4;
        gPlayerEntity.base.direction = DirectionSouth;
        return;
    }
    tmp = 0;
    switch (super->subtimer & 0x60) {
        case 0x40:
            if (super->subtimer == 0x58) {
                SoundReq(SFX_114);
            }
            if (!(super->subtimer & 1)) {
                tmp = 1;
            }
            break;
        case 0x20:
            if (!(super->subtimer & 3)) {
                tmp = 1;
            }
            break;
        case 0:
            if (!(super->subtimer & 7)) {
                if (gPlayerEntity.base.animationState == 4) {
                    if (super->subtimer > 0x18) {
                        tmp = 1;
                    }
                } else {
                    tmp = 1;
                }
            }
            break;
    }
    if (tmp) {
        gPlayerEntity.base.animationState += 2;
        gPlayerEntity.base.animationState &= 6;
    }
}

void WarpPoint_Action5(WarpPointEntity* this) {
    u32 tmp;
    if (!--super->subtimer) {
        gRoomTransition.transitioningOut = 1;
        gRoomTransition.type = TRANSITION_DEFAULT;
        gRoomTransition.player_status.area_next = this->unk_7c;
        gRoomTransition.player_status.room_next = this->unk_7d;
        gRoomTransition.player_status.start_pos_x = ((this->unk_84 & 0x3f) << 4) + 8;
        gRoomTransition.player_status.start_pos_y = ((this->unk_84 & 0xfc0) >> 2) + 8;
        gRoomTransition.player_status.layer = 0;
        gRoomTransition.player_status.start_anim = 4;
        gRoomTransition.player_status.spawn_type = PL_SPAWN_DEFAULT;
        if (super->type == 2) {
            gRoomTransition.type = TRANSITION_FADE_WHITE_SLOW;
        }
        return;
    }
    tmp = 0;
    switch (super->subtimer & 0x60) {
        case 0x40:
            if (!(super->subtimer & 7)) {
                tmp = 1;
            }
            break;
        case 0x20:
            if (!(super->subtimer & 3)) {
                tmp = 1;
            }
            break;
        case 0:
            if (super->subtimer > 0x10) {
                if (!(super->subtimer & 1)) {
                    tmp = 1;
                }
            } else {
                gPlayerEntity.base.spriteSettings.draw = 0;
            }
            break;
    }
    if (tmp) {
        gPlayerEntity.base.animationState += 2;
        gPlayerEntity.base.animationState &= 6;
    }
}

void sub_0808B73C(WarpPointEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->palette.b.b0 = super->parent->palette.b.b0;
        InitializeAnimation(super, 1);
    }
    if (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x28)) {
        super->spriteSettings.draw = 1;
    } else {
        if (EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x2e)) {
            super->spriteSettings.draw ^= 1;
        } else {
            super->spriteSettings.draw = 0;
        }
    }
    GetNextFrame(super);
}

u32 sub_0808B7C8(WarpPointEntity* this) {
    if (!(gPlayerState.flags & PL_MINISH) && gPlayerState.framestate != PL_STATE_DIE &&
        gPlayerEntity.base.health != 0 && PlayerCanBeMoved() && EntityInRectRadius(super, &gPlayerEntity.base, 5, 5) &&
        gPlayerEntity.base.z.HALF.HI == 0) {
        if (super->timer == 0 && gPlayerEntity.base.action == PLAYER_08072C9C) {
            ResetPlayerAnimationAndAction();
        }
        return 1;
    }
    return 0;
}

void sub_0808B830(WarpPointEntity* this) {
    WarpPointEntity* warpPoint;
    super->action = 3;
    super->timer = 0;
    super->spriteSettings.draw = 1;
    warpPoint = (WarpPointEntity*)CreateObject(WARP_POINT, 0, 0);
    if (warpPoint) {
        warpPoint->unk_70 = 1;
        warpPoint->base.parent = super;
        CopyPosition(super, &warpPoint->base);
    }
}
