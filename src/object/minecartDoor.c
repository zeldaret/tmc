/**
 * @file minecartDoor.c
 * @ingroup Objects
 *
 * @brief Minecart Door object
 */
#include "functions.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 tileIndex;
    /*0x76*/ u16 tilePos;
    /*0x78*/ u8 unk_78[0x6];
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f[0x7];
    /*0x86*/ u16 unk_86;
} MinecartDoorEntity;

extern bool32 sub_080837B0(Entity*);         // lockedDoor
extern void sub_080836DC(Entity*, u32, u32); // lockedDoor
extern void sub_08083814(Entity*, u32);      // lockedDoor

bool32 sub_08096CEC(MinecartDoorEntity*);
void sub_08096E04(MinecartDoorEntity*);
bool32 sub_08096D84(MinecartDoorEntity*);
bool32 sub_08096D68(s32, s32, s32, s32);
void MinecartDoor_Init(MinecartDoorEntity*);
void MinecartDoor_Action1(MinecartDoorEntity*);
void MinecartDoor_Action2(MinecartDoorEntity*);
void MinecartDoor_Action3(MinecartDoorEntity*);
void MinecartDoor_Action4(MinecartDoorEntity*);

void MinecartDoor(MinecartDoorEntity* this) {
    static void (*const MinecartDoor_Actions[])(MinecartDoorEntity*) = { MinecartDoor_Init, MinecartDoor_Action1,
                                                                         MinecartDoor_Action2, MinecartDoor_Action3,
                                                                         MinecartDoor_Action4 };
    MinecartDoor_Actions[super->action](this);
}

void MinecartDoor_Init(MinecartDoorEntity* this) {
    if (sub_080837B0(super)) {
        if ((super->type & 4) != 0) {
            this->unk_7e = 1;
            super->type &= 3;
        }
        super->speed = 0x300;
        this->unk_70 = super->x.HALF.HI;
        this->unk_72 = super->y.HALF.HI;
        super->spritePriority.b0 = 5;
        this->tilePos = COORD_TO_TILE(super);
        this->tileIndex = GetTileIndex(this->tilePos, super->collisionLayer);
        super->frameIndex = super->type;
        if (sub_08096CEC(this)) {
            if (this->unk_7e != 0) {
                DeleteThisEntity();
            } else {
                sub_08096E04(this);
            }
        } else {
            super->action = 1;
            super->spriteSettings.draw = 1;
            SetTile(SPECIAL_TILE_34, this->tilePos, super->collisionLayer);
        }
    }
}

void MinecartDoor_Action1(MinecartDoorEntity* this) {
    if (sub_08096CEC(this)) {
        super->action = 2;
        super->timer = 7;
        super->direction = super->type << 3;
        SetTile(this->tileIndex, this->tilePos, super->collisionLayer);
        EnqueueSFX(SFX_10B);
    }
}

void MinecartDoor_Action2(MinecartDoorEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        sub_08096E04(this);
        super->spriteSettings.draw = 0;
        super->x.HALF.HI = this->unk_70;
        super->y.HALF.HI = this->unk_72;
        if (this->unk_7e != 0) {
            DeleteThisEntity();
        }
    }
}

void MinecartDoor_Action3(MinecartDoorEntity* this) {
    bool32 bVar3;

    if ((this->unk_7e != 0) && (CheckFlags(this->unk_86))) {
        return;
    }
    if ((gPlayerState.flags & PL_IN_MINECART) != 0) {
        if (super->type * 2 - (u32)gPlayerEntity.base.animationState == 0) {
            if (sub_08083734(super, super->type) == 0) {
                return;
            }
            bVar3 = FALSE;
        } else {
            bVar3 = --super->timer * 0x1000000;
        }
    } else {
        bVar3 = sub_08096D84(this);
    }
    if (bVar3 == FALSE) {
        super->action = 4;
        sub_080836DC(super, super->type, this->tilePos);
    }
}

void MinecartDoor_Action4(MinecartDoorEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        super->action = 1;
        super->x.HALF.HI = this->unk_70;
        super->y.HALF.HI = this->unk_72;
        sub_08083814(super, super->type);
        EnqueueSFX(SFX_10B);
    }
}

bool32 sub_08096CEC(MinecartDoorEntity* this) {
    if (this->unk_7e != 0 && CheckFlags(this->unk_86)) {
        return TRUE;
    } else {
        if ((gPlayerState.flags & PL_IN_MINECART) != 0) {
            Entity* player = &gPlayerEntity.base;
            if ((((super->type << 1) ^ player->animationState) & 2) == 0) {
                if ((super->type & 1) != 0) {
                    if (sub_08096D68(gPlayerEntity.base.y.HALF.HI, super->y.HALF.HI, gPlayerEntity.base.x.HALF.HI,
                                     super->x.HALF.HI)) {
                        return TRUE;
                    }
                } else {
                    if (sub_08096D68(gPlayerEntity.base.x.HALF.HI, super->x.HALF.HI, gPlayerEntity.base.y.HALF.HI,
                                     super->y.HALF.HI)) {
                        return TRUE;
                    }
                }
            }
        }
    }
    return FALSE;
}

bool32 sub_08096D68(s32 param_1, s32 param_2, s32 param_3, s32 param_4) {
    if (((param_1 - param_2) + 8U < 0x11) && ((param_3 - param_4) + 0x30U < 0x61)) {
        return TRUE;
    } else {
        return FALSE;
    }
}

bool32 sub_08096D84(MinecartDoorEntity* this) {
    switch (super->type) {
        case 0:
            if (((super->y.HALF.HI + 10) - (gPlayerEntity.base.y.HALF.HI)) < 0x65U) {
                return TRUE;
            }
            break;
        case 1:
            if (((gPlayerEntity.base.x.HALF.HI) - (super->x.HALF.HI - 10)) < 0x65U) {
                return TRUE;
            }
            break;
        case 2:
            if (((gPlayerEntity.base.y.HALF.HI) - (super->y.HALF.HI - 10)) < 0x65U) {
                return TRUE;
            }
            break;
        case 3:
            if (((super->x.HALF.HI + 10) - (gPlayerEntity.base.x.HALF.HI)) < 0x65U) {
                return TRUE;
            }
            break;
    }
    return FALSE;
}

void sub_08096E04(MinecartDoorEntity* this) {
    super->action = 3;
    super->timer = 8;
}
