/**
 * @file npc23.c
 * @ingroup NPCs
 *
 * @brief NPC 23
 */
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "player.h"
#include "structures.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[22];
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} NPC23Entity;

bool32 sub_0806650C(NPC23Entity*);

void sub_08066490(NPC23Entity*, Entity*);

void sub_08066570(Entity* this);
void sub_080662F8(NPC23Entity* this);
void sub_08066358(NPC23Entity* this);
void nullsub_110(NPC23Entity* this);
void sub_080663D4(NPC23Entity* this);
void sub_0806643C(NPC23Entity* this);
void sub_08066474(NPC23Entity* this);

void NPC23(NPC23Entity* this) {
    static void (*const actionFuncs[])(NPC23Entity*) = {
        sub_080662F8, sub_08066358, nullsub_110, sub_080663D4, sub_0806643C, sub_08066474,
    };
    actionFuncs[super->action](this);
    sub_0806ED78(super);
}

void sub_080662F8(NPC23Entity* this) {
    super->action = 1;
    super->subAction = 0;
    super->spriteSettings.draw = 1;
    super->animationState = super->type << 1;
    InitializeAnimation(super, super->type);
    this->unk_7e = super->x.HALF.HI;
    this->unk_80 = super->y.HALF.HI;
    this->unk_86 = 0;
    this->unk_82 = super->timer;
    super->parent = &gPlayerEntity.base;
    this->unk_84 = 0;
    sub_08066490(this, super->parent);
    AddInteractableWhenBigObject(super);
}

void sub_08066358(NPC23Entity* this) {
    if (super->interactType != INTERACTION_NONE) {
        super->interactType = INTERACTION_NONE;
        MessageFromTarget(0);
        if ((super->type2 & 0x10) != 0) {
            super->action = 3;
            super->subAction = 0;
            if ((this->unk_7e - super->x.HALF.HI) > 8) {
                super->direction = 8;
            } else {
                super->direction = 0x18;
            }
            super->speed = 0x80;
            this->unk_84 = 1;
            gPauseMenuOptions.disabled = 1;
            RemoveInteractableObject(super);
        }
    } else {
        sub_08066490(this, super->parent);
    }
    GetNextFrame(super);
    sub_08066570(super);
}

void nullsub_110(NPC23Entity* this) {
}

void sub_080663D4(NPC23Entity* this) {
    if (super->x.HALF.HI == this->unk_7e - 8) {
        if (gPlayerEntity.base.action != PLAYER_ROOM_EXIT) {
            super->action = 4;
            super->direction = 0;
            super->speed = 0;
            this->unk_84 = 0;
            InitializeAnimation(super, 2);
        }
    } else {
        if (super->subAction == 0) {
            InitializeAnimation(super, (super->direction >> 3) + 4);
            super->subAction = super->subAction + 1;
        }
        ProcessMovement0(super);
    }
    PausePlayer();
    GetNextFrame(super);
}

void sub_0806643C(NPC23Entity* this) {
    if (!sub_0806650C(this)) {
        super->action = 5;
        gRoomControls.camera_target = NULL;
        sub_08078AC0(0x40, 0, 0);
        gPlayerEntity.base.animationState = 0;
        gPlayerEntity.base.direction = 0;
    }
    GetNextFrame(super);
}

void sub_08066474(NPC23Entity* this) {
    if (gPlayerEntity.base.action != PLAYER_ROOM_EXIT) {
        gPauseMenuOptions.disabled = 0;
    }
}

void sub_08066490(NPC23Entity* this, Entity* entity) {
    u32 uVar1;
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;

    if ((super->type2 & 0x10) != 0) {
        this->unk_86 = super->x.HALF.HI;
        uVar2 = this->unk_7e;
        uVar3 = uVar2 + this->unk_82;
        uVar4 = uVar2 - this->unk_82;
        if (((entity->x.HALF.HI < (int)uVar3) && (entity->x.HALF.HI > (int)uVar4))) {
            uVar2 += (entity->x.HALF.HI - uVar2);
        } else {
            if (entity->x.HALF.HI >= (int)uVar3) {
                uVar2 = uVar3;
            } else {
                uVar2 = uVar4;
            }
        }

        if (this->unk_86 == uVar2) {
            if (this->unk_84 == 1) {
                this->unk_84 = 0;
                InitializeAnimation(super, 2);
            }
        } else {
            super->x.HALF.HI = (short)uVar2;
            if (this->unk_84 == 0) {
                this->unk_84 = 1;
                InitializeAnimation(super, 6);
            }
        }
    }
}

bool32 sub_0806650C(NPC23Entity* this) {
    u32 dir = 0;
    s32 px = gPlayerEntity.base.x.HALF_U.HI;
    s32 px2 = px;
    s32 py = gPlayerEntity.base.y.HALF_U.HI;

    if (py < this->unk_80 + 16) {
        dir = 4;
    } else {
        if (px < this->unk_7e + 2) {
            dir = 2;
        }
        if (px2 > this->unk_7e + 6) {
            dir = 6;
        }
        if (dir == 0) {
            gPlayerEntity.base.speed = 0;
        }
    }

    if (gPlayerEntity.base.action != PLAYER_ROOM_EXIT) {
        if (dir == 0) {
            return 0;
        }
        sub_08078AC0(8, 0, 0);
        gPlayerEntity.base.animationState = dir;
        gPlayerEntity.base.direction = Direction8FromAnimationState(dir);
    }
    return 1;
}

void sub_08066570(Entity* this) {
    u32 direction;
    s32 tmp;
    u32 dir1, dir2;
    bool32 cond;
    if ((this->frame & ANIM_DONE) == 0) {
        return;
    }

    if (this->action == 3 || !sub_0806FC80(this, &gPlayerEntity.base, 0x50)) {
        return;
    }

    direction = GetFacingDirection(this, &gPlayerEntity.base);
    cond = TRUE;

    dir2 = (direction & DirectionWest);
    dir1 = (this->direction & DirectionWest);
    tmp = DirectionWest;
    if (dir1 == dir2) {
        dir1 = (direction + 5) & (0x3 | DirectionNorthEast);
        dir2 = (this->direction + 5) & (0x3 | DirectionNorthEast);
        if (dir2 < 3 && dir1 < 3) {
            cond = FALSE;
        }
    }
    if (cond) {
        this->direction = direction;
        direction += 4;
        direction &= tmp;
        direction >>= 3;
        InitializeAnimation(this, direction);
    }
}
