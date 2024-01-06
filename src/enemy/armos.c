/**
 * @file armos.c
 * @ingroup Enemies
 *
 * @brief Armos enemy
 */
#include "collision.h"
#include "common.h"
#include "enemy.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "hitbox.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x10];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ ScreenTransitionData* unk_7c;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u32 unk_84;
} ArmosEntity;

extern Entity* gUnk_020000B0;

extern void (*const gUnk_080CE124[])(ArmosEntity*);
extern void (*const gUnk_080CE13C[])(ArmosEntity*);
extern const u8 gUnk_080CE160[];
extern const s8 gUnk_080CE164[];

void sub_08030150(ArmosEntity*);
void sub_080309C8(ArmosEntity*, u32);
void sub_080309E8(ArmosEntity*);
void sub_08030580(ArmosEntity*);
void sub_080307EC(ArmosEntity*);
bool32 sub_0803086C(ArmosEntity*);
bool32 sub_08030650(ArmosEntity*);
void sub_080309A8(ArmosEntity*);
void sub_08030834(ArmosEntity*);
void sub_080306C4(ArmosEntity*);
void sub_08030A04(ArmosEntity*);
bool32 sub_080305BC(ArmosEntity*);
void sub_080307D4(ArmosEntity*);
void sub_08030590(ArmosEntity*);

void ClearArmosData(void) {
    MemClear(&gRoomTransition.armos_data, sizeof(gRoomTransition.armos_data));
    gRoomTransition.armos_data.field_0xae = 0xff;
}

void sub_080300C4(void) {
    if (gRoomTransition.armos_data.field_0xae == 0xff) {
        gRoomTransition.armos_data.field_0xac = 0;
        MemClear(&gRoomTransition.armos_data.data, sizeof(gRoomTransition.armos_data.data));
    }
}
void sub_080300E8(void) {
    if (gRoomTransition.armos_data.field_0xae != 0xff) {
        const u16* ptr = &gRoomTransition.armos_data.data[gRoomTransition.armos_data.field_0xae * 2];
        gPlayerEntity.base.x.HALF.HI = ptr[0];
        gPlayerEntity.base.y.HALF.HI = ptr[1] + 0xc;
        gRoomTransition.armos_data.field_0xae = 0xff;
    }
}

void sub_08030118(u32 armosId) {
    if (((gRoomTransition.armos_data.field_0xac >> armosId) & 1) != 0) {
        SetLocalFlagByBank(FLAG_BANK_3, armosId + 0x67);
    } else {
        ClearLocalFlagByBank(FLAG_BANK_3, armosId + 0x67);
    }
}

void sub_08030150(ArmosEntity* this) {
    gRoomTransition.armos_data.field_0xac =
        (gRoomTransition.armos_data.field_0xac & ~(1 << this->unk_80)) | (this->unk_84 << this->unk_80);
    gRoomTransition.armos_data.data[(u32)this->unk_80 * 2] = super->x.HALF.HI;
    gRoomTransition.armos_data.data[(u32)this->unk_80 * 2 + 1] = super->y.HALF.HI;
}

void Armos(ArmosEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)&gUnk_080CE124);
    EnemySetFXOffset(super, 0, 1, -0x10);
    sub_08030150(this);
}

void sub_080301BC(ArmosEntity* this) {
    gUnk_080CE13C[super->action](this);
}

void sub_080301D4(ArmosEntity* this) {
    if ((super->action == 1) && (super->contactedEntity == &gPlayerEntity.base)) {
        super->iframes = -0x1e;
    }
    if ((super->health != 0) && (super->health != this->unk_81)) {
        super->action = 8;
        sub_080309C8(this, 6);
        sub_080309E8(this);
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, 0x1c);
    }
    this->unk_81 = super->health;
    EnemyFunctionHandlerAfterCollision(super, gUnk_080CE124);
}

void sub_08030240(ArmosEntity* this) {
    if (super->animIndex == 6) {
        if ((super->frame & ANIM_DONE) == 0) {
            GetNextFrame(super);
        }
    }
    GenericConfused(super);
}

void nullsub_17(ArmosEntity* this) {
}

void sub_0803026C(ArmosEntity* this) {
    u16* ptr;
    sub_0804A720(super);
    this->unk_80 = super->timer;
    ptr = &gRoomTransition.armos_data.data[this->unk_80 * 2];
    if (ptr[0] != 0) {
        super->x.HALF.HI = ptr[0];
        super->y.HALF.HI = ptr[1];
        this->unk_84 = (gRoomTransition.armos_data.field_0xac >> this->unk_80) & 1;
    } else {
        this->unk_84 = (0x47d >> this->unk_80) & 1;
    }
    if (super->type2 != 0) {
        this->unk_7c = (ScreenTransitionData*)GetCurrentRoomProperty(super->type2);
    }
    this->unk_81 = super->health;
    sub_08030580(this);
    sub_080307EC(this);
    if (this->unk_80 == 2 && gRoomControls.origin_y + 0x80 < super->y.HALF.HI) {
        super->action = 7;
        sub_080309C8(this, 7);
    }
}

void sub_0803030C(ArmosEntity* this) {
    if (sub_0803086C(this) == 0 && this->unk_84 != 0 && sub_08030650(this)) {
        super->action = 2;
        super->subAction = 0;
    }
}

void sub_08030338(ArmosEntity* this) {
    u8 bVar2;
    u32 uVar3;

    if (this->unk_80 != 2) {
        sub_080309A8(this);
    } else {
        UpdateAnimationVariableFrames(super, 3);
        if ((this->unk_84 != 0) && (super->frameIndex == 0x25)) {
            super->frameIndex = 0x19;
        }
    }
    if (super->frame == 1) {
        if (super->subAction == 0) {
            super->subAction = 1;
        }
        uVar3 = super->timer + 1;
        super->timer = (u8)uVar3;
        if ((uVar3 & 1) == 0) {
            return;
        }
        super->spriteOffsetX = gUnk_080CE160[(uVar3 & 6) >> 1];
    } else {
        if (super->frame == 2) {
            super->frame = 0;
            if (this->unk_80 != 2) {
                super->collisionMask = 0xb;
                super->hitType = 8;
                super->hitbox = (Hitbox*)&gUnk_080FD2F0;
            }
            sub_08030834(this);
            EnqueueSFX(SFX_12A);
            return;
        }
        bVar2 = super->frame & ANIM_DONE;
        if ((super->frame & ANIM_DONE) != 0) {
            if (this->unk_80 != 2) {
                super->action = 3;
                super->animationState = 0xff;
                this->unk_7a = 600;
                this->unk_82 = 0;
                sub_080306C4(this);
                sub_080309E8(this);
                return;
            }
            super->action = 6;
            super->timer = 26;
            super->speed = 0x300;
            super->direction = 0x10;
            return;
        } else {
            super->spriteOffsetX = bVar2;
        }
    }
}

void sub_08030430(ArmosEntity* this) {
    sub_08030A04(this);
    if (0x100 < super->speed) {
        GetNextFrame(super);
    }
    sub_080309A8(this);
    if (this->unk_7a != 0) {
        this->unk_7a--;
    }
    if (--super->timer == 0) {
        sub_080306C4(this);
    }
}

void sub_08030474(ArmosEntity* this) {
    if (--super->timer == 0) {
        super->action = 3;
        super->timer = 1;
        this->unk_7a = 0x3c;
        sub_080309E8(this);
    } else {
        if (sub_080305BC(this)) {
            sub_08030590(this);
        } else {
            sub_080307D4(this);
            sub_080309A8(this);
        }
    }
}

void sub_080304BC(ArmosEntity* this) {
    sub_080309A8(this);
    if ((super->frame & ANIM_DONE) != 0) {
        sub_08030580(this);
    } else if (super->frame == 1) {
        super->frame = 0;
        EnqueueSFX(SFX_12A);
    }
}

void sub_080304F4(ArmosEntity* this) {
    LinearMoveUpdate(super);
    sub_080309A8(this);
    if (--super->timer == 0) {
        super->action = 7;
        sub_080309C8(this, 5);
        sub_080307EC(this);
    }
}

void sub_08030524(ArmosEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        sub_080309A8(this);
    } else if (super->frame == 1) {
        super->frame = 0;
        EnqueueSFX(SFX_12A);
    }
}

void sub_08030554(ArmosEntity* this) {
    sub_080309A8(this);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 3;
        sub_080309C8(this, (u32)super->animationState);
        sub_080306C4(this);
    }
}

void sub_08030580(ArmosEntity* this) {
    super->action = 1;
    sub_080309C8(this, 4);
}

void sub_08030590(ArmosEntity* this) {
    super->action = 5;
    super->collisionMask = 1;
    super->hitType = 1;
    super->hitbox = (Hitbox*)&gHitbox_15;
    sub_080309C8(this, 5);
    sub_080307EC(this);
}

bool32 sub_080305BC(ArmosEntity* this) {
    u8 bVar4;

    if ((super->x.HALF.HI & 0xf) == 8) {
        bVar4 = 1;
    } else {
        bVar4 = 0;
    }

    if ((super->y.HALF.HI & 0xf) == 8) {
        bVar4 |= 2;
    }

    if (bVar4 == 3) {
        return TRUE;
    }

    if (DirectionIsHorizontal(super->direction)) {
        if ((bVar4 & 1) == 0) {
            if (ProcessMovement0(super)) {
                return FALSE;
            }
            super->direction = DirectionTurnAround(super->direction);
            return FALSE;
        }
        if ((super->y.HALF.HI & 0xf) >= 9) {
            super->direction = DirectionSouth;
        } else {
            super->direction = DirectionNorth;
        }
        if (DirectionIsHorizontal(super->direction)) {
            return FALSE;
        }
    }
    if ((bVar4 & 2) == 0) {
        if (ProcessMovement0(super)) {
            return FALSE;
        }
        super->direction = DirectionTurnAround(super->direction);
    } else if ((super->x.HALF.HI & 0xf) >= 9) {
        super->direction = DirectionEast;
    } else {
        super->direction = DirectionWest;
    }
    return FALSE;
}

bool32 sub_08030650(ArmosEntity* this) {
    if (super->type == 0) {
        if (super->contactFlags == CONTACT_NOW) {
            return 1;
        }
    } else if (this->unk_80 != 2) {
        if (!sub_08049FDC(super, 1) || (0x20 < (gUnk_020000B0->x.HALF.HI - super->x.HALF.HI) + 0x10U)) {
            return FALSE;
        }
        return TRUE;
    } else {
        if (!sub_08049FDC(super, 1)) {
            return FALSE;
        }
        if (gUnk_020000B0->x.HALF.HI >= (s32)(gRoomControls.origin_x + 0xa8)) {
            return FALSE;
        }
        return TRUE;
    }
    return FALSE;
}

void sub_080306C4(ArmosEntity* this) {
    u32 uVar3;
    u32 var;
    u32 tmp;

    if (sub_08049FDC(super, 1) && this->unk_7a != 0) {

        super->timer = 24;
        uVar3 = sub_0800132C(super, gUnk_020000B0);
        if (uVar3 != 0xff) {
            var = 0;
            if ((((Random() & 7) != 0) || (super->animationState == 0xff)) && ((this->unk_82 & 3) != 3)) {
                super->direction = (uVar3 + 4) & 0x18;
                var = 1;
            }
            if (!var) {
                super->direction = (4 + uVar3 + ((Random() & 2) - 1) * 8) & 0x18;
            }
            if (IsTileCollision(super->collisionLayer == 2 ? gMapTop.collisionData : gMapBottom.collisionData,
                                super->x.HALF.HI + gUnk_080CE164[super->direction >> 2],
                                super->y.HALF.HI + gUnk_080CE164[(super->direction >> 2) + 1], 0)) {
                super->direction = ((u8)(((uVar3 & 4) ^ 4) << 1)) | (uVar3 & 0x10);
                var = 0;
            }
            sub_080307D4(this);
            tmp = this->unk_82 << 1 | var;
            this->unk_82 = tmp;
        }
    } else {
        super->action = 4;
        super->timer = 120;
        super->speed = 0xa0;
    }
}

void sub_080307D4(ArmosEntity* this) {
    u8 tmp = super->direction >> 3;
    if (tmp != super->animationState) {
        super->animationState = tmp;
        sub_080309C8(this, tmp);
    }
}

void sub_080307EC(ArmosEntity* this) {
    u32 tilePos = COORD_TO_TILE(super);
    this->unk_78 = GetTileIndex(tilePos, super->collisionLayer);
    SetTile(SPECIAL_TILE_34, tilePos, (u32)super->collisionLayer);
}

void sub_08030834(ArmosEntity* this) {
    SetTile(this->unk_78, COORD_TO_TILE(super), super->collisionLayer);
}

bool32 sub_0803086C(ArmosEntity* this) {
    u32 uVar2;
    u32 tilePos;
    u16 centerY;
    u16 centerX;
    FORCE_REGISTER(u32 r2, r2);

    if (this->unk_7c != NULL) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            centerX = super->x.HALF_U.HI - gRoomControls.origin_x;
            centerY = super->y.HALF_U.HI - gRoomControls.origin_y;
            // TODO for some reason the 0x3f of COORD_TO_TILE(super) needs to be forced to r2 here.
            tilePos = ((((((super)->x.HALF.HI) - gRoomControls.origin_x) >> 4) & (r2 = 0x3f)) |
                       (((((super)->y.HALF.HI) - gRoomControls.origin_y) >> 4) & r2) << 6);

            if (GetTileTypeAtTilePos(tilePos, super->collisionLayer) == SPECIAL_TILE_73) {
                if (CheckPlayerInRegion(centerX, centerY, 2, 0xc) != 0) {
                    if (CheckPlayerInRegion(centerX, centerY - 4, 2, 4) != 0) {
                        gPlayerEntity.base.spritePriority.b0 = 3;
                        DoExitTransition(this->unk_7c);
                        gRoomTransition.armos_data.field_0xae = this->unk_80;
                        return TRUE;
                    }
                } else {
                    SetTile(SPECIAL_TILE_34, tilePos, super->collisionLayer);
                }
            } else {
                if (CheckPlayerInRegion(centerX, centerY + 6, 2, 5) != 0) {
                    SetTile(SPECIAL_TILE_73, COORD_TO_TILE(super), super->collisionLayer);
                }
            }
        }
        super->spritePriority.b0 = 4;
    }
    return FALSE;
}

void sub_080309A8(ArmosEntity* this) {
    GetNextFrame(super);
    if ((this->unk_84 != 0) && (super->frameIndex == 0x25)) {
        super->frameIndex = 0x19;
    }
}

void sub_080309C8(ArmosEntity* this, u32 param_2) {
    InitializeAnimation(super, param_2);
    if ((this->unk_84 != 0) && (super->frameIndex == 0x25)) {
        super->frameIndex = 0x19;
    }
}

void sub_080309E8(ArmosEntity* this) {
    if (super->health < 5) {
        super->speed = 0x120;
    } else if (super->health <= 8) {
        super->speed = 0xe0;
    }
}

void sub_08030A04(ArmosEntity* this) {
    ProcessMovement0(super);
    if ((super->frame & 1) != 0) {
        super->frame = super->frame & 0xfe;
        EnqueueSFX(SFX_101);
    }
}

void (*const gUnk_080CE124[])(ArmosEntity*) = {
    sub_080301BC, sub_080301D4, (void (*)(ArmosEntity*))GenericKnockback, (void (*)(ArmosEntity*))GenericDeath,
    sub_08030240, nullsub_17,
};
void (*const gUnk_080CE13C[])(ArmosEntity*) = {
    sub_0803026C, sub_0803030C, sub_08030338, sub_08030430, sub_08030474,
    sub_080304BC, sub_080304F4, sub_08030524, sub_08030554,
};
const u8 gUnk_080CE160[] = {
    255,
    0,
    1,
    0,
};
const s8 gUnk_080CE164[] = { 0, -7, 7, 0, 0, 7, -7, 0 };
