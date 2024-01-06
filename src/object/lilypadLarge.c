/**
 * @file lilypadLarge.c
 * @ingroup Objects
 *
 * @brief Large Lilypad object
 */
#include "object/lilypadLarge.h"
#include "area.h"
#include "functions.h"
#include "item.h"
#include "object.h"
#include "map.h"
#include "tiles.h"

extern s8 gUnk_08126EE4[];

void LilypadLarge_Action1(LilypadLargeEntity*);
void LilypadLarge_Action4(LilypadLargeEntity*);
void sub_08085EFC(LilypadLargeEntity*);
void sub_08085F1C(LilypadLargeEntity*);
void sub_08085E74(LilypadLargeEntity*);
void sub_08085F48(LilypadLargeEntity*);
void sub_08085D28(LilypadLargeEntity*);
void sub_08085D60(LilypadLargeEntity*);
void LilypadLarge_Init(LilypadLargeEntity*);
void LilypadLarge_Action1(LilypadLargeEntity*);
void LilypadLarge_Action2(LilypadLargeEntity*);
void LilypadLarge_Action3(LilypadLargeEntity*);
void LilypadLarge_Action4(LilypadLargeEntity*);
void LilypadLarge_Action5(LilypadLargeEntity*);
void sub_08085B40(LilypadLargeEntity*);
void sub_08085A98(LilypadLargeEntity*);
void sub_08085A44(LilypadLargeEntity*);

void LilypadLarge(LilypadLargeEntity* this) {
    static void (*const LilypadLarge_actions[])(LilypadLargeEntity*) = {
        LilypadLarge_Init,    LilypadLarge_Action1, LilypadLarge_Action2,
        LilypadLarge_Action3, LilypadLarge_Action4, LilypadLarge_Action5,
    };
    LilypadLarge_actions[super->action](this);
}

static const Hitbox gUnk_08120640;

void LilypadLarge_Init(LilypadLargeEntity* this) {
    if (super->type == 0xff) {
        if (GetInventoryValue(ITEM_FLIPPERS)) {
            DeleteThisEntity();
        }
        super->type = 0;
    }
    if (super->type != 0) {
        if (gArea.locationIndex == 27) { // AREA_TEMPLE_OF_DROPLETS
            if (CheckLocalFlag(super->type2) == 0) {
                DeleteThisEntity();
            }
        } else {
            if (CheckLocalFlag(super->type2) == 0) {
                super->action = 5;
                return;
            }
        }
    }
    if (super->timer != 0) {
        if (sub_080040A2(super) == 0) {
            DeleteThisEntity();
        }
        super->timer = 0;
    } else {
        if (EntityHasDuplicateID(super) != 0) {
            DeleteThisEntity();
        }
    }
    super->action = 1;
    super->speed = 0x100;
    super->spritePriority.b0 = 6;
    super->hitbox = (Hitbox*)&gUnk_08120640;
    super->flags |= ENT_COLLIDE;
    super->collisionFlags = 7;
    super->hitType = 1;
    super->collisionMask = 4;
    this->unk_78.WORD = 0x1000000;
    this->unk_7c.HALF_U.HI = 0x1000;
    this->unk_85 = 0;
    this->unk_84 = 0;
    InitializeAnimation(super, 9);
    LilypadLarge_Action1(this);
}

void LilypadLarge_Action1(LilypadLargeEntity* this) {
    static const u32 gUnk_08120620[] = {
        0x5000,
        0x18000,
        0x28000,
    };
    s16 sVar3;
    u32 uVar1;
    u16 uVar8;
    s32 sVar10;
    u32 uVar5;
    u32 tmp;
    u32 uVar4;

    super->flags |= 0x20;
    if (sub_0806FC80(super, &gPlayerEntity.base, 0x18) != 0) {

        gPlayerState.flags |= PL_FLAGS2;
        if (gPlayerEntity.base.z.WORD == 0) {
            if (gPlayerState.swim_state != 0) {
                gPlayerEntity.base.collisionFlags &= 0xfb;
                gPlayerState.swim_state = 0;
            }
            gPlayerState.lilypad = super;
            if (super->collisionLayer == 1) {
                ResetCollisionLayer(&gPlayerEntity.base);
            } else {
                sub_08004542(&gPlayerEntity.base);
            }
            if (super->subtimer == 0) {
                super->subtimer = 4;
                while (super->subtimer != 0) {
                    sub_080A2AF4(super, 8, 10);
                    super->subtimer--;
                }
                super->subtimer = 1;
                super->timer |= 0x80;
                this->unk_70 = 0;
                this->unk_6c = 0;
            }
            if (gPlayerState.gustJarState == PL_JAR_3) {
                tmp = gUnk_08120620[gPlayerState.gustJarCharge - 1];
                switch (gPlayerEntity.base.animationState & 6) {
                    case 4:
                        this->unk_70 -= tmp;
                        break;
                    case 0:
                        this->unk_70 += tmp;
                        break;
                    case 2:
                        this->unk_6c -= tmp;
                        break;
                    case 6:
                        this->unk_6c += tmp;
                        break;
                }
            }
        }

    } else {
        if (super->subtimer != 0) {
            super->subtimer = 0;
            SoundReq(SFX_WATER_WALK);
        }
        if ((super->contactFlags & 0x7f) == 0x13) {
            sVar10 = gPlayerEntity.base.x.HALF.HI + gUnk_08126EE4[gPlayerEntity.base.animationState & 0xe];
            uVar4 = gPlayerEntity.base.y.HALF.HI + gUnk_08126EE4[gPlayerEntity.base.animationState | 1];
            super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, sVar10, uVar4);

            switch (gPlayerState.gustJarCharge) {
                case 3:
                    tmp = 0x400;
                    break;
                case 2:
                    tmp = 0x300;
                    break;
                case 1:
                    tmp = 0x200;
                    break;
            }

            //! @bug: tmp could be uninitialized here
            sVar3 = FixedMul(gSineTable[(u32)super->direction * 8], ((s16)tmp) >> 8);
            sVar3 = FixedDiv(sVar3, 0x100);
            this->unk_6c = this->unk_6c + (((s32)sVar3 << 0x10) >> 8);
            sVar3 = FixedMul(gSineTable[(u32)super->direction * 8 + 0x40], ((s16)tmp) >> 8);
            sVar3 = FixedDiv(sVar3, 0x100);
            this->unk_70 = this->unk_70 - (((s32)sVar3 << 0x10) >> 8);
        }
        super->contactFlags = 0;
    }
    super->child = (Entity*)super->x.WORD;
    super->parent = (Entity*)super->y.WORD;
    if (this->unk_6c != 0 || this->unk_70 != 0) {
        if ((this->unk_70 < -0x10000)) {
            this->unk_70 = -0x10000;
        } else if ((this->unk_70) > 0x10000) {
            this->unk_70 = 0x10000;
        }

        if ((this->unk_6c < -0x10000)) {
            this->unk_6c = -0x10000;
        } else if ((this->unk_6c) > 0x10000) {
            this->unk_6c = 0x10000;
        }

        if ((gRoomTransition.frameCount & 0xfU) == 0) {
            CreateLargeWaterTrace(super);
        }
        sVar10 = super->x.WORD + this->unk_6c;
        uVar4 = super->y.WORD + this->unk_70;
        super->direction = CalculateDirectionTo(super->x.WORD, super->y.WORD, sVar10, uVar4);
        sVar3 = FixedMul((s16)((this->unk_6c << 8) >> 0x10), 0x100);
        sVar3 = FixedDiv(sVar3, gSineTable[(u32)super->direction * 8]);
        super->speed = sVar3;
        sVar3 = FixedMul((s16)((this->unk_70 << 8) >> 0x10), 0x100);
        sVar3 = FixedDiv(sVar3, gSineTable[(u32)super->direction * 8 + 0x40]);
        tmp = -sVar3;
        if ((s32)tmp > super->speed) {
            super->speed = tmp;
        }

        if (super->type2 != 0) {
            if (this->unk_7c.HALF.HI < 0x1000) {
                this->unk_7c.WORD += super->speed * 0x1000;
            } else {
                super->type2 = 0;
            }
        } else {
            if (this->unk_7c.HALF.HI > -0x1000) {
                this->unk_7c.WORD += super->speed * -0x1000;
            } else {
                super->type2 = 1;
            }
        }

        sub_08085EFC(this);
        ProcessMovement4(super);
        if (super->child == (Entity*)super->x.WORD) {
            if (this->unk_85 == 2) {
                this->unk_6c = 0;
            } else {
                this->unk_85++;
            }
        } else {
            this->unk_85 = 0;
        }

        if (super->parent == (Entity*)super->y.WORD) {
            if (this->unk_85 == 2) {
                this->unk_70 = 0;
            } else {
                this->unk_85++;
            }
        } else {
            this->unk_85 = 0;
        }

        if ((gPlayerState.flags & PL_FLAGS2) != 0) {
            sub_08085F1C(this);
        }

        if (this->unk_6c != 0) {
            if (this->unk_6c < 0) {
                if (this->unk_6c > -0x80) {
                    this->unk_6c = 0;
                } else {
                    this->unk_6c += 0x80;
                }
                if ((super->collisions & 0xe00) == 0xe00) {
                    s32 tmp = this->unk_6c;
                    if (this->unk_6c < 0) {
                        tmp += 3;
                    }
                    this->unk_6c = -(tmp >> 2);
                }
            } else {
                if (this->unk_6c < 0x80u) {
                    this->unk_6c = 0;
                } else {
                    this->unk_6c -= 0x80;
                }
                if ((super->collisions & 0xe000) == 0xe000) {
                    s32 tmp = this->unk_6c;
                    if (this->unk_6c < 0) {
                        tmp += 3;
                    }
                    this->unk_6c = -(tmp >> 2);
                }
            }
        }
        if (this->unk_70 != 0) {
            if ((s32)this->unk_70 < 0) {
                if ((s32)this->unk_70 > -0x80) {
                    this->unk_70 = 0;
                } else {
                    this->unk_70 += 0x80;
                }
                if ((super->collisions & 0xe) == 0xe) {
                    u32 tmp2 = this->unk_70;
                    if ((s32)this->unk_70 < 0) {
                        tmp2 += 3;
                    }
                    this->unk_70 = -((s32)tmp2 >> 2);
                }
            } else {
                if (this->unk_70 < 0x80u) {
                    this->unk_70 = 0;
                } else {
                    this->unk_70 -= 0x80;
                }
                if ((super->collisions & 0xe0) == 0xe0) {
                    u32 tmp2 = this->unk_70;
                    if ((s32)this->unk_70 < 0) {
                        tmp2 += 3;
                    }
                    this->unk_70 = -((s32)tmp2 >> 2);
                }
            }
        }
        sub_08085D28(this);
        sub_08085D60(this);
    } else {
    end:
        if ((gRoomTransition.frameCount & 0x1fU) == 0) {
            sub_080A2AF4(super, 8, 10);
        }
    }
    sub_08085F48(this);
}

void LilypadLarge_Action2(LilypadLargeEntity* this) {
    static void (*const subActionFuncs[])(LilypadLargeEntity*) = {
        sub_08085A44,
        sub_08085A98,
        sub_08085B40,
    };
    subActionFuncs[super->subAction](this);
    gPlayerState.flags |= PL_FLAGS2;
    PausePlayer();
}

void sub_08085A44(LilypadLargeEntity* this) {
    super->speed = 0x200;
    if (GetActTileRelativeToEntity(super, 0x10, 0x18) != ACT_TILE_17) {
        super->direction = 0x18;
    } else {
        if (GetActTileRelativeToEntity(super, -0x10, 0x18) != ACT_TILE_17) {
            super->direction = 8;
        } else {
            super->direction = 0x10;
            super->subAction = 1;
            return;
        }
    }
    sub_08085EFC(this);
    ProcessMovement4(super);
    sub_08085F1C(this);
}

void sub_08085A98(LilypadLargeEntity* this) {
    sub_08085EFC(this);
    LinearMoveUpdate(super);
    sub_08085F1C(this);
    if (0x7fffff < (u32)this->unk_78.WORD) {
        this->unk_78.WORD -= 0x20000;
        SetAffineInfo(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
    }
    if (GetActTileRelativeToEntity(super, 0, 0x18) != ACT_TILE_17) {
        super->subAction = 2;
        if (gArea.locationIndex == 27) { // AREA_TEMPLE_OF_DROPLETS
            super->y.HALF.HI += 0xd0;
            super->z.HALF.HI = -0xd0;
            this->unk_82 = 0x46;
            SetLocalFlag(0x73);
        } else {
            super->y.HALF.HI += 0x40;
            super->z.HALF.HI = -0x40;
            this->unk_82 = 0xf;
        }
        CreateObjectWithParent(super, LILYPAD_LARGE_FALLING, 0, 0);
        SoundReq(SFX_12D);
    }
}

void sub_08085B40(LilypadLargeEntity* this) {
    if (super->z.WORD != 0) {
        if (GravityUpdate(super, Q_8_8(32.0)) != 0) {
            if ((u32)this->unk_78.WORD < 0x1200000) {
                this->unk_78.WORD += 0x100000;
                SetAffineInfo(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
            }
            gPlayerEntity.base.y.HALF.HI = (super->y.HALF.HI + super->z.HALF.HI) - this->unk_74;
            if (gArea.locationIndex == 27) { // AREA_TEMPLE_OF_DROPLETS
                gPlayerEntity.base.z.HALF.HI = super->y.HALF.HI - this->unk_74 - 0xd0 - gPlayerEntity.base.y.HALF.HI;
            } else {
                gPlayerEntity.base.z.HALF.HI = super->y.HALF.HI - this->unk_74 - 0x40 - gPlayerEntity.base.y.HALF.HI;
            }
        }
    } else {
        ResetCollisionLayer(super);
        if (GetActTileAtEntity(super) == ACT_TILE_13) {
            ResetCollisionLayer(&gPlayerEntity.base);
            LilypadLarge_Action4(this);
            super->direction = GetFacingDirection(&gPlayerEntity.base, super);
            LinearMoveDirection(&gPlayerEntity.base, 0x100, super->direction);
        }
    }

    if (this->unk_82 == 0) {
        if (GravityUpdate(&gPlayerEntity.base, Q_8_8(32.0)) == 0) {
            ResetCollisionLayer(&gPlayerEntity.base);
            sub_08085F1C(this);
            super->action = 1;
            super->subtimer = 4;
            while (super->subtimer != 0) {
                sub_080A2AF4(super, 8, 10);
                super->subtimer--;
            }
            super->subtimer = 1;
            super->timer |= 0x80;
            this->unk_70 = 0;
            this->unk_6c = 0;
            if (GetActTileAtEntity(super) == ACT_TILE_13) {
                super->action = 4;
            }
        }
    } else {
        this->unk_82--;
    }
}

void LilypadLarge_Action3(LilypadLargeEntity* this) {
    if (sub_0806FC80(super, &gPlayerEntity.base, 0x18) != 0) {
        LinearMoveUpdate(super);
        gPlayerEntity.base.speed = super->speed;
        gPlayerEntity.base.direction = super->direction;
        LinearMoveUpdate(&gPlayerEntity.base);
        gPlayerState.flags |= PL_FLAGS2;
        if (super->collisionLayer == 1) {
            ResetCollisionLayer(&gPlayerEntity.base);
        } else {
            sub_08004542(&gPlayerEntity.base);
        }
    }
    if (gRoomControls.reload_flags == 0) {
        super->flags &= ~ENT_PERSIST;
        super->action = 1;
        super->updatePriority = super->updatePriorityPrev;
        gRoomControls.camera_target = &gPlayerEntity.base;
    }
}

void LilypadLarge_Action4(LilypadLargeEntity* this) {
    this->unk_78.WORD += 0x100000;
    if (this->unk_78.WORD_U < 0x4000000) {
        SetAffineInfo(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
    } else {
        DeleteThisEntity();
    }
}

void LilypadLarge_Action5(LilypadLargeEntity* this) {
    if (EntityHasDuplicateID(super) != 0) {
        SetLocalFlag(super->type2);
        DeleteThisEntity();
    }
}

void sub_08085D28(LilypadLargeEntity* this) {
    if (((gPlayerState.framestate != PL_STATE_TALKEZLO) && ((gPlayerState.flags & PL_FLAGS2) != 0)) &&
        (GetActTileRelativeToEntity(super, 0, 0x18) == ACT_TILE_17)) {
        super->action = 2;
        super->subAction = 0;
        PausePlayer();
    }
}

void sub_08085D60(LilypadLargeEntity* this) {
    static const s8 gUnk_08120638[] = {
        0, -24, 24, 0, 0, 24, -24, 0,
    };
    u32 r4; // horizontal direction?
    u32 r6; // vertical direction?
    u32 tmp;
    s32 tmpX, tmpX2;
    s32 tmpY, tmpY2;
    if ((gPlayerState.flags & PL_FLAGS2) != 0) {
        if (gPlayerState.framestate != PL_STATE_DIE) {
            if (gPlayerState.jump_status == 0) {
                if ((super->direction & 7) == 0) { // North or South
                    r4 = super->direction;
                    r6 = super->direction;
                } else {
                    if ((super->direction & 0x10) != 0) { // South(already top) or West
                        r4 = DirectionWest;
                    } else {
                        r4 = DirectionEast;
                    }
                    if (super->direction - 8 > 0x10) { // North(already top) or West(?)
                        r6 = DirectionNorth;
                    } else {
                        r6 = DirectionSouth;
                    }
                }
                if (r4 == DirectionWest || r4 == DirectionEast) { // Handle horizontal
                    tmp = r4 >> 2;
                    tmpX = gUnk_08120638[tmp];
                    tmpY = gUnk_08120638[tmp + 1];
                    if (GetCollisionDataRelativeTo(super, tmpX, tmpY) == COLLISION_DATA_255) {

                        if (sub_080806BC((super->x.HALF.HI - gRoomControls.origin_x) + tmpX,
                                         (super->y.HALF.HI - gRoomControls.origin_y) + tmpY, r4, 5) == 0) {
                            if (sub_0807BD14(&gPlayerEntity.base, r4 >> 3) != 0) {
                                super->direction = r4;
                                sub_08085E74(this);
                                return;
                            }
                        } else {
                            super->direction = r4;
                            return;
                        }
                    }
                }
                if (r6 == DirectionNorth || r6 == DirectionSouth) { // Handle vertical
                    tmp = r6 >> 2;
                    tmpX2 = gUnk_08120638[tmp];
                    tmpY2 = gUnk_08120638[tmp + 1];
                    if (GetCollisionDataRelativeTo(super, tmpX2, tmpY2) == COLLISION_DATA_255) {
                        if (sub_0807BD14(&gPlayerEntity.base, r6 >> 3) != 0) {
                            super->direction = (u8)r6;
                            sub_08085E74(this);
                        }
                    }
                }
                return;
            }
        }
    }
    super->flags &= ~ENT_PERSIST;
}

void sub_08085E74(LilypadLargeEntity* this) {
    super->flags |= ENT_PERSIST;
    super->updatePriority = 6;
    super->action = 3;
    switch (super->direction) {
        case DirectionNorth:
            super->speed = 0x120;
            break;
        case DirectionSouth:
            super->speed = 0x138;
            break;
        case DirectionEast:
        case DirectionWest:
            super->speed = 0x100;
            break;
    }
    this->unk_70 = 0;
    this->unk_6c = 0;
    super->x.HALF.LO = 0;
    super->y.HALF.LO = 0;
    gPlayerEntity.base.x.HALF.LO = 0;
    gPlayerEntity.base.y.HALF.LO = 0;
    gPlayerEntity.base.direction = super->direction;
    gPlayerState.animation = ANIM_DEFAULT;
    gRoomControls.camera_target = super;
    if (gPlayerState.item != NULL) {
        DeleteEntity(gPlayerState.item);
    }
    ResetActiveItems();
}

void sub_08085EFC(LilypadLargeEntity* this) {
    this->unk_76 = super->x.HALF.HI - gPlayerEntity.base.x.HALF.HI;
    this->unk_74 = super->y.HALF.HI - gPlayerEntity.base.y.HALF.HI;
}

void sub_08085F1C(LilypadLargeEntity* this) {
    gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI - this->unk_76;
    gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI - this->unk_74;
    sub_0807A5B8(super->direction);
}

void sub_08085F48(LilypadLargeEntity* this) {
    u32 tmp = super->timer & 0x80;
    if (tmp != 0) {
        if (gPlayerState.floor_type == SURFACE_ICE) {
            ResetPlayerVelocity();
            gPlayerState.floor_type = SURFACE_WATER;
        }
        SoundReq(SFX_WATER_WALK);
        if (this->unk_78.WORD_U < 0x1280000) {
            this->unk_78.WORD_U += 0x80000;
        } else {
            super->timer = 0;
        }
    } else {
        if ((gPlayerState.flags & PL_FLAGS2) != 0) {
            if (super->timer != 0) {
                if (this->unk_78.WORD_U < 0x1200000) {
                    this->unk_78.WORD_U += 0x8000;
                } else {
                    super->timer = tmp;
                }
            } else {
                if (this->unk_78.WORD_U > 0x1100000) {
                    this->unk_78.WORD_U -= 0x8000;
                } else {
                    super->timer = 1;
                }
            }
        } else {
            if (super->timer != 0) {
                if (this->unk_78.WORD_U < 0x1100000) {
                    this->unk_78.WORD_U += 0x4000;
                } else {
                    super->timer = 0;
                }
            } else {
                if (this->unk_78.WORD_U > 0x1060000) {
                    this->unk_78.WORD_U -= 0x4000;
                } else {
                    super->timer = 1;
                }
            }
        }
    }
    SetAffineInfo(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
}

static const Hitbox gUnk_08120640 = { 0, 0, { 16, 14, 14, 16 }, 16, 16 };
