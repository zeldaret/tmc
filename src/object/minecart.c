/**
 * @file minecart.c
 * @ingroup Objects
 *
 * @brief Minecart object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[28];
    MinecartData* minecartData;
} MinecartEntity;

extern void sub_08017744(Entity*);

u32 sub_08091DDC(MinecartEntity* this);
void Minecart_Init(MinecartEntity* this);
void Minecart_Action1(MinecartEntity* this);
void Minecart_Action2(MinecartEntity* this);
void Minecart_Action3(MinecartEntity* this);
void Minecart_Action4(MinecartEntity* this);
void Minecart_Action5(MinecartEntity* this);
void Minecart_Action6(MinecartEntity* this);
void Minecart_Action7(MinecartEntity* this);

extern const KeyValuePair* const gUnk_081223D8[];

void Minecart(Entity* this) {
    static void (*const Minecart_Actions[])(MinecartEntity*) = {
        Minecart_Init,    Minecart_Action1, Minecart_Action2, Minecart_Action3,
        Minecart_Action4, Minecart_Action5, Minecart_Action6, Minecart_Action7,
    };
    Minecart_Actions[this->action]((MinecartEntity*)this);
    this->contactFlags = 0;
}

void Minecart_Init(MinecartEntity* this) {
    MinecartData* unk = &gRoomTransition.minecart_data[super->timer];

    this->minecartData = unk;
    if ((gRoomControls.room != unk->room) || (gPlayerState.flags & PL_IN_MINECART) != 0) {
        DeleteThisEntity();
    }
    super->x.HALF.HI = gRoomControls.origin_x + ((unk->tilePos & 0x3f) << 4) + 8;
    super->y.HALF.HI = gRoomControls.origin_y + ((unk->tilePos & 0xfc << 4) >> 2) + 8;
    super->animationState = unk->animationState;
    super->type2 = unk->field_0x6;
    super->action = 1;
    super->hitbox = (Hitbox*)&gUnk_080FD310;
    COLLISION_ON(super);
    super->hitType = 1;
    super->collisionFlags = 0x47;
    super->hurtType = 0x44;
    super->collisionMask = 0x80;
    super->direction = DirectionFromAnimationState(super->animationState);
    super->speed = 0x700;
    super->spritePriority.b1 = 3;
    InitAnimationForceUpdate(super, super->type2 + 4 + super->animationState);
    SetTile(SPECIAL_TILE_34, COORD_TO_TILE(super), super->collisionLayer);
}

void Minecart_Action1(MinecartEntity* this) {
    if ((super->contactFlags & 0x7f) == 0x1d) {
        super->zVelocity = Q_16_16(2.625);
        super->action = 7;
        InitAnimationForceUpdate(super, super->type2 + 4 + super->animationState);
        SoundReq(SFX_13B);
    } else {
        if (sub_0800445C(super) != 0) {
            if (!((gPlayerState.flags & (PL_MINISH | PL_ROLLING)) || gPlayerState.gustJarState ||
                  gPlayerState.heldObject || gPlayerState.jump_status)) {
                super->timer++;
            } else {
                super->timer = 0;
            }
        } else {
            super->timer = 0;
        }
        if (super->type2 == 0) {
            if (super->timer > 8) {
                super->action++;
                gPlayerState.jump_status = 0x81;
                gPlayerState.flags |= PL_ENTER_MINECART;
                gPlayerEntity.base.zVelocity = Q_16_16(2.0);
                gPlayerEntity.base.speed = 0x100;
                gPlayerEntity.base.flags &= ~PL_MINISH;
                ResetActiveItems();
                DeleteClones();
                SoundReq(SFX_PLY_JUMP);
            }
        } else {
            super->timer = 0;
        }
    }
}

void Minecart_Action2(MinecartEntity* this) {
    if (EntityInRectRadius(super, &gPlayerEntity.base, 2, 2) != 0) {
        gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI;
        gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI;
        if (gPlayerEntity.base.z.HALF.HI > -0x10) {
            if (gPlayerEntity.base.zVelocity >= 0) {
                return;
            }
            gPlayerEntity.base.animationState = super->animationState * 2;
            gPlayerState.flags = (gPlayerState.flags ^ PL_ENTER_MINECART) | PL_IN_MINECART;
            super->action++;
            super->subtimer = 1;
            super->flags |= ENT_PERSIST;
            super->hitType = 0x97;
            super->collisionFlags = (gPlayerEntity.base.collisionFlags + 1) | 0x20;
            super->collisionMask = gPlayerEntity.base.collisionMask;
            super->hurtType = 0x18;
            super->damage = 8;
            sub_0801766C(super);
            RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
            SoundReq(SFX_137);
        }
    } else {
        gPlayerEntity.base.direction = GetFacingDirection(&gPlayerEntity.base, super);
    }
    if (gPlayerEntity.base.zVelocity < 0) {
        gPlayerEntity.base.spritePriority.b0 = super->spritePriority.b0 - 1;
    }
}

void Minecart_Action3(MinecartEntity* this) {
    static const s8 offsetCoords[] = { 0, -7, 7, 0, 0, 7, -7, 0 };

    u32 actTile;

    gRoomControls.scrollSpeed = 7;
    if ((gPlayerState.flags & PL_IN_MINECART) == 0) {
        super->action = 1;
        return;
    }

    if ((gPlayerEntity.base.frame & 0xf) == 0) {
        COLLISION_OFF(super);
        CopyPosition(super, &gPlayerEntity.base);
        if ((gPlayerEntity.base.frame & 0xf0) == 0x10) {
            super->spriteOffsetY = 1;
        } else {
            super->spriteOffsetY = 0;
        }
    } else {
        COLLISION_ON(super);
        gPlayerEntity.base.speed = 0;
        LinearMoveUpdate(super);
        CopyPosition(super, &gPlayerEntity.base);
        gPlayerEntity.base.spritePriority.b0 = super->spritePriority.b0 - 1;
        if (!sub_08091DDC(this)) {
            if ((gRoomTransition.frameCount & 0xf) == 0) {
                SoundReq(SFX_138);
            }

            if (super->subtimer-- == 0) {
                SoundReq(SFX_PLY_VO7);
                super->subtimer = 60;
            }

            actTile = GetActTileRelativeToEntity(super, offsetCoords[super->animationState * 2],
                                                 offsetCoords[super->animationState * 2 + 1]);
            if (FindValueForKey(actTile, gUnk_081223D8[super->animationState]) == 0) {
                super->direction = DirectionTurnAround(super->direction);
                super->animationState = AnimationStateFlip90(super->animationState);
            } else {
                switch (actTile) {
                    case ACT_TILE_100:
                        super->flags &= ~ENT_PERSIST;
                        super->hitType = 1;
                        super->collisionFlags = 0x47;
                        super->hurtType = 0x44;
                        super->collisionMask = 0x80;
                        super->action = 6;
                        sub_08017744(super);
                        gPlayerState.jump_status = 0x41;
                        gPlayerState.flags = (gPlayerState.flags ^ PL_IN_MINECART) | PL_ENTER_MINECART;
                        gPlayerEntity.base.zVelocity = Q_16_16(2.0);
                        gPlayerEntity.base.speed = 0x200;
                        gPlayerEntity.base.animationState = super->animationState * 2;
                        gPlayerEntity.base.direction = super->direction;
                        gPlayerEntity.base.flags |= PL_MINISH;
                        SnapToTile(super);
                        InitAnimationForceUpdate(super, super->animationState + 0xc);
                        SoundReq(SFX_PLY_VO4);
                        SoundReq(SFX_139);
                        return;
                    case ACT_TILE_103:
                    case ACT_TILE_104:
                    case ACT_TILE_105:
                    case ACT_TILE_106:
                    case ACT_TILE_108:
                    case ACT_TILE_109:
                    case ACT_TILE_110:
                    case ACT_TILE_111:
                        if (actTile == GetActTileAtEntity(super)) {
                            Minecart_Action4(this);
                            gPlayerEntity.base.animationState = super->animationState << 1;
                            return;
                        }
                        break;
                }
            }

            gPlayerEntity.base.animationState = super->animationState << 1;
            if (super->animIndex == super->animationState) {
                UpdateAnimationSingleFrame(super);
            } else {
                InitAnimationForceUpdate(super, super->animationState);
            }
        }
    }
}

void Minecart_Action4(MinecartEntity* this) {
    SnapToTile(super);
    CopyPosition(super, &gPlayerEntity.base);
    switch (GetActTileAtEntity(super)) {
        case ACT_TILE_103:
            if (super->direction == DirectionWest) {
                super->direction = DirectionNorth;
                super->animationState = 0;
            } else {
                super->direction = DirectionEast;
                super->animationState = 1;
            }
            break;
        case ACT_TILE_104:
            if (super->direction == DirectionEast) {
                super->direction = DirectionSouth;
                super->animationState = 2;
            } else {
                super->direction = DirectionWest;
                super->animationState = 3;
            }
            break;
        case ACT_TILE_105:
            if (super->direction == DirectionEast) {
                super->direction = DirectionNorth;
                super->animationState = 0;
            } else {
                super->direction = DirectionWest;
                super->animationState = 3;
            }
            break;
        case ACT_TILE_106:
            if (super->direction == DirectionWest) {
                super->direction = DirectionSouth;
                super->animationState = 2;
            } else {
                super->direction = DirectionEast;
                super->animationState = 1;
            }
            break;
        default:
            super->action = 3;
            return;
    }

    super->action = 3;
    gPlayerEntity.base.animationState = super->animationState * 2;
}

void Minecart_Action5(MinecartEntity* this) {
    LinearMoveUpdate(super);
    CopyPosition(super, &gPlayerEntity.base);
    if (gRoomControls.reload_flags == 0) {
        super->action = 3;
        super->speed = 0x700;
        gRoomControls.camera_target = &gPlayerEntity.base;
    }
}

void Minecart_Action6(MinecartEntity* this) {
    MinecartData* minecartData;

    if (gPlayerState.jump_status == 0) {
        super->action = 1;
        super->direction = DirectionTurnAround(super->direction);
        super->animationState ^= 2;
        gPlayerState.flags ^= PL_ENTER_MINECART;
        minecartData = this->minecartData;
        minecartData->tilePos = COORD_TO_TILE(super);
        minecartData->room = gRoomControls.room;
        minecartData->animationState = super->animationState;
        InitAnimationForceUpdate(super, super->animationState + 0x10);
        SetTile(SPECIAL_TILE_34, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        UpdateAnimationSingleFrame(super);
        gPlayerEntity.base.spritePriority.b0 = super->spritePriority.b0 - 1;
    }
}

void Minecart_Action7(MinecartEntity* this) {
    if (super->zVelocity < 0) {
        UpdateAnimationSingleFrame(super);
    }
    if (((super->frame & 0x7f) == 0) && GravityUpdate(super, Q_8_8(32.0)) == 0) {
        super->type2 ^= 4;
        super->action = 1;
        this->minecartData->field_0x6 = super->type2;
        SoundReq(SFX_13C);
    }
}

bool32 sub_08091DDC(MinecartEntity* this) {
    static const s8 gUnk_081223D0[] = { 0, -8, 8, 0, 0, 8, -8, 0 };
    if ((GetCollisionDataRelativeTo(super, gUnk_081223D0[super->animationState * 2],
                                    gUnk_081223D0[super->animationState * 2 + 1]) == COLLISION_DATA_255) &&
        (sub_0807BD14(&gPlayerEntity.base, super->animationState))) {
        super->updatePriority = 6;
        super->action = 5;
        switch (super->direction) {
            case 0:
            case 8:
            case 0x10:
            case 0x18:
                super->speed = 0xa0;
                break;
        }
        gPlayerEntity.base.direction = super->direction;
        gRoomControls.camera_target = super;
        return 1;
    } else {
        return 0;
    }
}

extern const KeyValuePair gUnk_081223E8[];
extern const KeyValuePair gUnk_08122402[];
extern const KeyValuePair gUnk_0812241C[];
extern const KeyValuePair gUnk_08122436[];

const KeyValuePair* const gUnk_081223D8[] = {
    gUnk_081223E8,
    gUnk_08122402,
    gUnk_0812241C,
    gUnk_08122436,
};
const KeyValuePair gUnk_081223E8[] = {
    { ACT_TILE_242, 1 }, { ACT_TILE_101, 1 }, { ACT_TILE_104, 1 },
    { ACT_TILE_106, 1 }, { ACT_TILE_100, 1 }, { ACT_TILE_41, 1 },
};
const u16 gUnk_081223E8End = 0;
const KeyValuePair gUnk_08122402[] = {
    { ACT_TILE_243, 1 }, { ACT_TILE_102, 1 }, { ACT_TILE_104, 1 },
    { ACT_TILE_105, 1 }, { ACT_TILE_100, 1 }, { ACT_TILE_41, 1 },
};
const u16 gUnk_08122402End = 0;
const KeyValuePair gUnk_0812241C[] = {
    { ACT_TILE_242, 1 }, { ACT_TILE_101, 1 }, { ACT_TILE_103, 1 },
    { ACT_TILE_105, 1 }, { ACT_TILE_100, 1 }, { ACT_TILE_41, 1 },
};
const u16 gUnk_0812241CEnd = 0;
const KeyValuePair gUnk_08122436[] = {
    { ACT_TILE_243, 1 }, { ACT_TILE_102, 1 }, { ACT_TILE_106, 1 },
    { ACT_TILE_103, 1 }, { ACT_TILE_100, 1 }, { ACT_TILE_41, 1 },
};
const u16 gUnk_08122436End = 0;
