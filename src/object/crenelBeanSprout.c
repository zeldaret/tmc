/**
 * @file crenelBeanSprout.c
 * @ingroup Objects
 *
 * @brief Crenel Bean Sprout object
 */
#include "asm.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
} CrenelBeanSproutEntity;

void sub_080969A4(CrenelBeanSproutEntity*);
void sub_08096A78(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Init(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action1(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action2(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action3(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action4(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action5(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action6(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action2SubAction0(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action2SubAction1(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action2SubAction2(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action2SubAction3(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action6SubAction0(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action6SubAction1(CrenelBeanSproutEntity*);
void CrenelBeanSprout_Action6SubAction2(CrenelBeanSproutEntity*);

void CrenelBeanSprout(CrenelBeanSproutEntity* this) {
    static void (*const CrenelBeanSprout_Actions[])(CrenelBeanSproutEntity*) = {
        CrenelBeanSprout_Init,    CrenelBeanSprout_Action1, CrenelBeanSprout_Action2, CrenelBeanSprout_Action3,
        CrenelBeanSprout_Action4, CrenelBeanSprout_Action5, CrenelBeanSprout_Action6,
    };
    CrenelBeanSprout_Actions[super->action](this);
}

void CrenelBeanSprout_Init(CrenelBeanSproutEntity* this) {
    Entity* obj;
    u32 tmp;

    super->action = 1;
    tmp = super->speed = 0x80;
    super->hitbox = (Hitbox*)&gUnk_080FD2A8;
    switch (super->type) {
        case 0:
            if (CheckGlobalFlag(WATERBEAN_OUT)) {
                if (CheckGlobalFlag(WATERBEAN_PUT) == 0) {
                    PositionRelative(&gPlayerEntity.base, super, 0, 0x10000);
                    SetTile(SPECIAL_TILE_34, 0xdc, super->collisionLayer);
                } else {
                    if (CheckLocalFlag(super->type2) == 0) {
                        InitializeAnimation(super, 10);
                        super->y.HALF.HI += 4;
                        super->action = 4;
                        SetTile(SPECIAL_TILE_59, COORD_TO_TILE(super), super->collisionLayer);
                        return;
                    }
                    super->type2 = 0;
                    super->subtimer = 2;
                    sub_080969A4(this);
                    DeleteThisEntity();
                }
            } else {
                super->x.HALF.HI = gRoomControls.origin_x + 0xd0;
                super->y.HALF.HI = gRoomControls.origin_y + 0x44;
                super->action = 4;
                InitializeAnimation(super, super->type + 3);
                return;
            }
            break;
        case 3:
            if (CheckGlobalFlag(WATERBEAN_OUT)) {
                if (CheckGlobalFlag(WATERBEAN_PUT) == 0) {
                    super->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 - 1;
                    *(((u8*)&gPlayerEntity.base) + 0x79) = tmp;
                    PositionRelative(&gPlayerEntity.base, super, 0, -0x180000);
                } else {
                    DeleteThisEntity();
                }
            }
            obj = CreateObjectWithParent(super, CRENEL_BEAN_SPROUT, 1, 0);
            super->child = obj;
            if (obj != NULL) {
                PositionRelative(super, obj, -0x1c0000, -0x280000);
            }
            super->carryFlags = 0x10;
            super->spriteRendering.b0 = 3;
            InitializeAnimation(super, 0xc);
            CrenelBeanSprout_Action1(this);
            return;
            break;
        case 1:
            super->spriteRendering.b0 = 3;
            SetEntityPriority(super, 6);
            break;
        case 2:
            if (CheckLocalFlag((u32)super->type2) == 0) {

                InitializeAnimation(super, 0xb);
                super->y.HALF.HI += 4;
                super->action = 4;
                SetTile(SPECIAL_TILE_50, COORD_TO_TILE(super), super->collisionLayer);
                return;
            } else {
                super->type2 = 0;
                super->subtimer = 3;
                sub_080969A4(this);
                DeleteThisEntity();
                return;
            }
            break;
    }
    InitializeAnimation(super, super->type + 3);
    CrenelBeanSprout_Action1(this);
}

void CrenelBeanSprout_Action1(CrenelBeanSproutEntity* this) {
    static const u8 gUnk_08123184[] = {
        0, 240, 16, 0, 0, 16, 240, 0,
    };
    Entity* parent;
    u32 tmp;
    if ((super->type & 1) != 0) {
        if (super->type == 3) {
            RegisterCarryEntity(super);
            sub_0800445C(super);
        } else {
            PositionRelative(super->parent, super, -0x1c0000, -0x280000);
            if (super->parent->action == 2) {
                switch (super->parent->subAction) {
                    case 1:
                        if ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) != 0) {
                            InitializeAnimation(super, 4);
                        } else {
                            GetNextFrame(super);
                        }
                        break;
                    case 2:
                        GetNextFrame(super);
                        break;
                    default:
                        InitializeAnimation(super, 4);
                        break;
                }
            }
            super->spritePriority.b0 = super->parent->spritePriority.b0 - 1;
            parent = super->parent;
            super->spriteRendering.b3 = parent->spriteRendering.b3;
            super->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        }
        SetAffineInfo(super, 0xcc, 0xcc, 0);
    } else {
        gPlayerState.mobility |= 0x80;
        gPlayerState.heldObject = 5;
        if ((gPlayerState.direction & DIR_NOT_MOVING_CHECK) != 0) {
            InitializeAnimation(super, (super->type >> 1) + 3);
        } else {
            GetNextFrame(super);
        }
        tmp = gPlayerEntity.base.animationState & 6;
        this->unk_70 = ((super->x.HALF.HI + (s8)gUnk_08123184[tmp]) & -0x10) | 8;
        this->unk_72 = ((super->y.HALF.HI + (s8)gUnk_08123184[(tmp) + 1]) & -0x10) | 8;
        if (GetActTileAtWorldCoords(this->unk_70, this->unk_72, super->collisionLayer) == ACT_TILE_25) {
            gHUD.rActionPlayerState = R_ACTION_THROW;
        } else {
            gHUD.rActionPlayerState = R_ACTION_NONE;
        }
        PositionRelative(&gPlayerEntity.base, super, 0, 0x10000);
        if (GetActTileAtEntity(super) == ACT_TILE_25) {
            RestorePrevTileEntity(0xdc, super->collisionLayer);
            sub_08096A78(this);
        }
        if ((gPlayerState.playerInput.newInput & (INPUT_ACTION | INPUT_40)) == 0) {
            return;
        }
        if (gHUD.rActionPlayerState != R_ACTION_THROW) {
            return;
        }
        gPlayerState.heldObject = 0;
        super->action = 5;
        super->speed = 0x100;
        super->zVelocity = Q_16_16(2);
        super->spritePriority.b1 = 1;
        super->spriteSettings.shadow = 1;
        RestorePrevTileEntity(0xdc, super->collisionLayer);
        SoundReq(SFX_PLY_VO5);
    }
}

void CrenelBeanSprout_Action2(CrenelBeanSproutEntity* this) {
    static void (*const CrenelBeanSprout_Action2SubActions[])(CrenelBeanSproutEntity*) = {
        CrenelBeanSprout_Action2SubAction0,
        CrenelBeanSprout_Action2SubAction1,
        CrenelBeanSprout_Action2SubAction2,
        CrenelBeanSprout_Action2SubAction3,
    };
    CrenelBeanSprout_Action2SubActions[super->subAction](this);
}

void CrenelBeanSprout_Action2SubAction0(CrenelBeanSproutEntity* this) {
    SetGlobalFlag(WATERBEAN_OUT);
    super->subAction++;
}

void CrenelBeanSprout_Action2SubAction1(CrenelBeanSproutEntity* this) {
}

void CrenelBeanSprout_Action2SubAction2(CrenelBeanSproutEntity* this) {
    ClearGlobalFlag(WATERBEAN_OUT);
}

void CrenelBeanSprout_Action2SubAction3(CrenelBeanSproutEntity* this) {
    InitScreenShake(16, 0);
    super->action = 1;
    super->subAction = 0;
}

void CrenelBeanSprout_Action3(CrenelBeanSproutEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action++;
        InitializeAnimation(super, 10);
    }
}

void CrenelBeanSprout_Action4(CrenelBeanSproutEntity* this) {
    static const u16 gUnk_0812319C[] = { SPECIAL_TILE_60, SPECIAL_TILE_51 };
    if (gUnk_0812319C[super->type >> 1] == GetTileTypeAtEntity(super)) {
        GetNextFrame(super);
        gPlayerState.keepFacing |= 0x80;
        gPlayerState.field_0xa |= 0x80;
        gPlayerState.field_0x7 |= 0x80;
        if (--super->timer == 0) {
            super->action = 6;
            super->subAction = 0;
            CreateDust(super);
        }
    } else {
        super->timer = 192;
    }
}

void CrenelBeanSprout_Action5(CrenelBeanSproutEntity* this) {
    if ((this->unk_70 != super->x.HALF.HI) || (this->unk_72 != super->y.HALF.HI)) {
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_70, this->unk_72);
        LinearMoveUpdate(super);
    }
    if (GravityUpdate(super, Q_8_8(64.0)) == 0) {
        sub_08096A78(this);
    }
}

void CrenelBeanSprout_Action6(CrenelBeanSproutEntity* this) {
    static void (*const CrenelBeanSprout_Action6SubActions[])(CrenelBeanSproutEntity*) = {
        CrenelBeanSprout_Action6SubAction0,
        CrenelBeanSprout_Action6SubAction1,
        CrenelBeanSprout_Action6SubAction2,
    };
    if (super->subAction != 2) {
        PausePlayer();
    }
    CrenelBeanSprout_Action6SubActions[super->subAction](this);
}

void CrenelBeanSprout_Action6SubAction0(CrenelBeanSproutEntity* this) {
    static const u8 gUnk_081231AC[] = { 2, 3 };

    SetLocalFlag(super->type2);
    super->timer = 15;
    super->subtimer = gUnk_081231AC[super->type >> 1];
    super->type2 = 0;
    super->spriteSettings.draw = 0;
    super->subAction++;
    if (super->type == 0) {
        sub_0807B7D8(0x1ce, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        sub_0807B7D8(0x1cd, COORD_TO_TILE(super), super->collisionLayer);
    }
    SoundReq(SFX_1DB);
}

void CrenelBeanSprout_Action6SubAction1(CrenelBeanSproutEntity* this) {
    static const u16 gUnk_081231AE[] = { 0x1cc, 0x1cb, 0x1c9 };
    if (--super->timer == 0) {
        super->y.HALF.HI += -0x10;
        sub_0807B7D8(gUnk_081231AE[super->type2], COORD_TO_TILE(super), super->collisionLayer);
        super->type2++;
        if (super->type2 == super->subtimer) {
            gPlayerState.keepFacing &= ~0x80;
            super->subAction++;
            super->timer = 60;
        } else {
            super->timer = 15;
        }
    }
}

void CrenelBeanSprout_Action6SubAction2(CrenelBeanSproutEntity* this) {
    if ((super->timer != 0) && (--super->timer == 0)) {
        SoundReq(SFX_SECRET);
    }
}

void sub_080969A4(CrenelBeanSproutEntity* this) {
    static const u16 gUnk_081231B4[] = { 0x1cc, 0x1cb, 0x1c9 };
    if (super->type == 0) {
        sub_0807B7D8(0x1ce, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        sub_0807B7D8(0x1cd, COORD_TO_TILE(super), super->collisionLayer);
    }
    while (super->type2 != super->subtimer) {
        super->y.HALF.HI -= 0x10;
        sub_0807B7D8(gUnk_081231B4[super->type2], COORD_TO_TILE(super), super->collisionLayer);
        super->type2++;
    }
}

void sub_08096A78(CrenelBeanSproutEntity* this) {
    SetGlobalFlag(WATERBEAN_PUT);
    InitAnimationForceUpdate(super, (super->type >> 1) + 8);
    SnapToTile(super);
    super->y.HALF.HI += 4;
    super->action = 3;
    SetTile(SPECIAL_TILE_59, COORD_TO_TILE(super), super->collisionLayer);
}
