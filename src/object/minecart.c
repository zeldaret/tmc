#define NENT_DEPRECATED
#include "object.h"
#include "functions.h"
#include "hitbox.h"

typedef struct {
    Entity base;
    u8 filler[0x1C];
    struct_030010EC* minecartData;
} MinecartEntity;

extern u32 sub_08007DD6(u32, u32);
extern void sub_08017744(Entity*);

u32 sub_08091DDC(MinecartEntity*);
void sub_080916EC(MinecartEntity*);
void sub_080917DC(MinecartEntity*);
void sub_080918A4(MinecartEntity*);
void sub_080919AC(MinecartEntity*);
void sub_08091C0C(MinecartEntity*);
void sub_08091C98(MinecartEntity*);
void sub_08091CC8(MinecartEntity*);
void sub_08091D90(MinecartEntity*);

extern const u32 gUnk_081223D8[];

void Minecart(Entity* this) {
    static void (*const actionFuncs[])(MinecartEntity*) = {
        sub_080916EC, sub_080917DC, sub_080918A4, sub_080919AC, sub_08091C0C, sub_08091C98, sub_08091CC8, sub_08091D90,
    };
    actionFuncs[this->action]((MinecartEntity*)this);
    this->bitfield = 0;
}

void sub_080916EC(MinecartEntity* this) {
    struct_030010EC* unk = &gRoomTransition.minecart_data[super->actionDelay];

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
    super->field_0x3c = 0x47;
    super->hurtType = 0x44;
    super->flags2 = 0x80;
    super->direction = DirectionFromAnimationState(super->animationState);
    super->speed = 0x700;
    super->spritePriority.b1 = 3;
    InitAnimationForceUpdate(super, super->type2 + 4 + super->animationState);
    SetTile(0x4022, COORD_TO_TILE(super), super->collisionLayer);
}

void sub_080917DC(MinecartEntity* this) {
    if ((super->bitfield & 0x7f) == 0x1d) {
        super->zVelocity = Q_16_16(2.625);
        super->action = 7;
        InitAnimationForceUpdate(super, super->type2 + 4 + super->animationState);
        SoundReq(SFX_13B);
    } else {
        if (sub_0800445C(super) != 0) {
            if (!((gPlayerState.flags & (PL_MINISH | PL_ROLLING)) || gPlayerState.field_0x1c ||
                  gPlayerState.heldObject || gPlayerState.jump_status)) {
                super->actionDelay++;
            } else {
                super->actionDelay = 0;
            }
        } else {
            super->actionDelay = 0;
        }
        if (super->type2 == 0) {
            if (super->actionDelay > 8) {
                super->action++;
                gPlayerState.jump_status = 0x81;
                gPlayerState.flags |= PL_ENTER_MINECART;
                gPlayerEntity.zVelocity = Q_16_16(2.0);
                gPlayerEntity.speed = 0x100;
                gPlayerEntity.flags &= ~PL_MINISH;
                ResetPlayer();
                DeleteClones();
                SoundReq(SFX_PLY_JUMP);
            }
        } else {
            super->actionDelay = 0;
        }
    }
}

void sub_080918A4(MinecartEntity* this) {
    if (EntityInRectRadius(super, &gPlayerEntity, 2, 2) != 0) {
        gPlayerEntity.x.HALF.HI = super->x.HALF.HI;
        gPlayerEntity.y.HALF.HI = super->y.HALF.HI;
        if (gPlayerEntity.z.HALF.HI > -0x10) {
            if (gPlayerEntity.zVelocity >= 0) {
                return;
            }
            gPlayerEntity.animationState = super->animationState << 1;
            gPlayerState.flags = (gPlayerState.flags ^ PL_ENTER_MINECART) | PL_IN_MINECART;
            super->action++;
            super->field_0xf = 1;
            super->flags |= ENT_PERSIST;
            super->hitType = 0x97;
            super->field_0x3c = (gPlayerEntity.field_0x3c + 1) | 0x20;
            super->flags2 = gPlayerEntity.flags2;
            super->hurtType = 0x18;
            super->damage = 8;
            sub_0801766C(super);
            RestorePrevTileEntity(COORD_TO_TILE(super), super->collisionLayer);
            SoundReq(SFX_137);
        }
    } else {
        gPlayerEntity.direction = GetFacingDirection(&gPlayerEntity, super);
    }
    if (gPlayerEntity.zVelocity < 0) {
        gPlayerEntity.spritePriority.b0 = super->spritePriority.b0 - 1;
    }
}

void sub_080919AC(MinecartEntity* this) {
    static const s8 gUnk_081223C8[] = { 0, -7, 7, 0, 0, 7, -7, 0 };

    u32 iVar2;
    u32 uVar3;

    gRoomControls.unk5 = 7;
    if ((gPlayerState.flags & PL_IN_MINECART) == 0) {
        super->action = 1;
        return;
    }

    if ((gPlayerEntity.frame & 0xf) == 0) {
        COLLISION_OFF(super);
        CopyPosition(super, &gPlayerEntity);
        if ((gPlayerEntity.frame & 0xf0) == 0x10) {
            super->spriteOffsetY = 1;
        } else {
            super->spriteOffsetY = 0;
        }
    } else {
        COLLISION_ON(super);
        gPlayerEntity.speed = 0;
        LinearMoveUpdate(super);
        CopyPosition(super, &gPlayerEntity);
        gPlayerEntity.spritePriority.b0 = super->spritePriority.b0 - 1;
        if (!sub_08091DDC(this)) {
            if ((gRoomTransition.frameCount & 0xf) == 0) {
                SoundReq(SFX_138);
            }

            if (--super->field_0xf == 0xff) {
                SoundReq(SFX_PLY_VO7);
                super->field_0xf = 0x3c;
            }

            uVar3 = GetRelativeCollisionTile(super, gUnk_081223C8[super->animationState * 2],
                                 gUnk_081223C8[super->animationState * 2 + 1]);
            iVar2 = sub_08007DD6(uVar3, gUnk_081223D8[super->animationState]);
            if (iVar2 == 0) {
                super->direction = DirectionTurnAround(super->direction);
                super->animationState = AnimationStateFlip90(super->animationState);
            } else {
                switch (uVar3) {
                    case 0x64:
                        super->flags &= ~ENT_PERSIST;
                        super->hitType = 1;
                        super->field_0x3c = 0x47;
                        super->hurtType = 0x44;
                        super->flags2 = 0x80;
                        super->action = 6;
                        sub_08017744(super);
                        gPlayerState.jump_status = 0x41;
                        gPlayerState.flags = (gPlayerState.flags ^ PL_IN_MINECART) | PL_ENTER_MINECART;
                        gPlayerEntity.zVelocity = Q_16_16(2.0);
                        gPlayerEntity.speed = 0x200;
                        gPlayerEntity.animationState = super->animationState << 1;
                        gPlayerEntity.direction = super->direction;
                        gPlayerEntity.flags |= PL_MINISH;
                        sub_08004168(super);
                        InitAnimationForceUpdate(super, super->animationState + 0xc);
                        SoundReq(SFX_PLY_VO4);
                        SoundReq(SFX_139);
                        return;
                    case 0x67:
                    case 0x68:
                    case 0x69:
                    case 0x6a:
                    case 0x6c:
                    case 0x6d:
                    case 0x6e:
                    case 0x6f:
                        if (uVar3 == GetTileUnderEntity(super)) {
                            sub_08091C0C(this);
                            gPlayerEntity.animationState = super->animationState << 1;
                            return;
                        }
                        break;
                }
            }

            gPlayerEntity.animationState = super->animationState << 1;
            if (super->animIndex == super->animationState) {
                UpdateAnimationSingleFrame(super);
            } else {
                InitAnimationForceUpdate(super, super->animationState);
            }
        }
    }
}

void sub_08091C0C(MinecartEntity* this) {
    sub_08004168(super);
    CopyPosition(super, &gPlayerEntity);
    switch (GetTileUnderEntity(super)) {
        case 0x67:
            if (super->direction == DirectionWest) {
                super->direction = DirectionNorth;
                super->animationState = 0;
            } else {
                super->direction = DirectionEast;
                super->animationState = 1;
            }
            break;
        case 0x68:
            if (super->direction == DirectionEast) {
                super->direction = DirectionSouth;
                super->animationState = 2;
            } else {
                super->direction = DirectionWest;
                super->animationState = 3;
            }
            break;
        case 0x69:
            if (super->direction == DirectionEast) {
                super->direction = DirectionNorth;
                super->animationState = 0;
            } else {
                super->direction = DirectionWest;
                super->animationState = 3;
            }
            break;
        case 0x6a:
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
    gPlayerEntity.animationState = super->animationState << 1;
}

void sub_08091C98(MinecartEntity* this) {
    LinearMoveUpdate(super);
    CopyPosition(super, &gPlayerEntity);
    if (gRoomControls.reload_flags == 0) {
        super->action = 3;
        super->speed = 0x700;
        gRoomControls.camera_target = &gPlayerEntity;
    }
}

void sub_08091CC8(MinecartEntity* this) {
    struct_030010EC* minecartData;

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
        SetTile(0x4022, COORD_TO_TILE(super), super->collisionLayer);
    } else {
        UpdateAnimationSingleFrame(super);
        gPlayerEntity.spritePriority.b0 = super->spritePriority.b0 - 1;
    }
}

void sub_08091D90(MinecartEntity* this) {
    if (super->zVelocity < 0) {
        UpdateAnimationSingleFrame(super);
    }
    if (((super->frame & 0x7f) == 0) && GravityUpdate(super, 0x2000) == 0) {
        super->type2 ^= 4;
        super->action = 1;
        this->minecartData->field_0x6 = super->type2;
        SoundReq(SFX_13C);
    }
}

bool32 sub_08091DDC(MinecartEntity* this) {
    static const s8 gUnk_081223D0[] = { 0, -8, 8, 0, 0, 8, -8, 0 };
    if ((sub_080B1AF0(super, gUnk_081223D0[super->animationState * 2], gUnk_081223D0[super->animationState * 2 + 1]) ==
         0xff) &&
        (sub_0807BD14(&gPlayerEntity, super->animationState))) {
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
        gPlayerEntity.direction = super->direction;
        gRoomControls.camera_target = super;
        return 1;
    } else {
        return 0;
    }
}
