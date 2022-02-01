/**
 * @file lilypadLarge.c
 * @ingroup Objects
 *
 * @brief Large Lilypad object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "area.h"
#include "functions.h"
#include "item.h"
#include "object.h"

typedef struct {
    Entity base;
    u8 unk_68[4];
    s32 unk_6c;
    s32 unk_70;
    s16 unk_74;
    s16 unk_76;
    union SplitWord unk_78;
    union SplitWord unk_7c;
    u8 unk_80[2];
    u16 unk_82;
    u8 unk_84;
    u8 unk_85;
} LilypadLargeEntity;

extern void (*const gUnk_08120608[])(LilypadLargeEntity*);
extern Hitbox gUnk_08120640;
extern void (*const gUnk_0812062C[])(LilypadLargeEntity*);
extern u8 gUnk_08120638[];
extern u8 gUnk_08126EE4[];
extern u32 gUnk_08120620[];

void sub_080855E8(LilypadLargeEntity*);
void sub_08085CDC(LilypadLargeEntity*);
void sub_08085EFC(LilypadLargeEntity*);
void sub_08085F1C(LilypadLargeEntity*);
void sub_08085E74(LilypadLargeEntity*);
void sub_08085F48(LilypadLargeEntity*);
void sub_08085D28(LilypadLargeEntity*);
void sub_08085D60(LilypadLargeEntity*);

void LilypadLarge(LilypadLargeEntity* this) {
    gUnk_08120608[super->action](this);
}

void sub_08085504(LilypadLargeEntity* this) {
    if (super->type == 0xff) {
        if (GetInventoryValue(ITEM_FLIPPERS)) {
            DeleteThisEntity();
        }
        super->type = 0;
    }
    if (super->type != 0) {
        if (gArea.locationIndex == 0x1b) {
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
    if (super->actionDelay != 0) {
        if (sub_080040A2(super) == 0) {
            DeleteThisEntity();
        }
        super->actionDelay = 0;
    } else {
        if (EntityHasDuplicateID(super) != 0) {
            DeleteThisEntity();
        }
    }
    super->action = 1;
    super->speed = 0x100;
    super->spritePriority.b0 = 6;
    super->hitbox = &gUnk_08120640;
    super->flags |= ENT_COLLIDE;
    super->field_0x3c = 7;
    super->hitType = 1;
    super->flags2 = 4;
    this->unk_78.WORD = 0x1000000;
    this->unk_7c.HALF_U.HI = 0x1000;
    this->unk_85 = 0;
    this->unk_84 = 0;
    InitializeAnimation(super, 9);
    sub_080855E8(this);
}

ASM_FUNC("asm/non_matching/lilypadLarge/sub_080855E8.inc", void sub_080855E8(LilypadLargeEntity* this));

void sub_08085A1C(LilypadLargeEntity* this) {
    gUnk_0812062C[super->subAction](this);
    gPlayerState.flags |= PL_FLAGS2;
    sub_08078B48();
}

void sub_08085A44(LilypadLargeEntity* this) {
    super->speed = 0x200;
    if (sub_080002B4(super, 0x10, 0x18) != 0x11) {
        super->direction = 0x18;
    } else {
        if (sub_080002B4(super, 0xfffffff0, 0x18) != 0x11) {
            super->direction = 8;
        } else {
            super->direction = 0x10;
            super->subAction = 1;
            return;
        }
    }
    sub_08085EFC(this);
    sub_080AF134(super);
    sub_08085F1C(this);
}

void sub_08085A98(LilypadLargeEntity* this) {
    sub_08085EFC(this);
    LinearMoveUpdate(super);
    sub_08085F1C(this);
    if (0x7fffff < (u32)this->unk_78.WORD) {
        this->unk_78.WORD -= 0x20000;
        sub_0805EC9C(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
    }
    if (sub_080002B4(super, 0, 0x18) != 0x11) {
        super->subAction = 2;
        if (gArea.locationIndex == 0x1b) {
            super->y.HALF.HI += 0xd0;
            super->z.HALF.HI = 0xff30;
            this->unk_82 = 0x46;
            SetLocalFlag(0x73);
        } else {
            super->y.HALF.HI += 0x40;
            super->z.HALF.HI = 0xffc0;
            this->unk_82 = 0xf;
        }
        CreateObjectWithParent(super, OBJECT_2B, 0, 0);
        SoundReq(SFX_12D);
    }
}

void sub_08085B40(LilypadLargeEntity* this) {
    if (super->z.WORD != 0) {
        if (GravityUpdate(super, 0x2000) != 0) {
            if ((u32)this->unk_78.WORD < 0x1200000) {
                this->unk_78.WORD += 0x100000;
                sub_0805EC9C(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
            }
            gPlayerEntity.y.HALF.HI = (super->y.HALF.HI + super->z.HALF.HI) - this->unk_74;
            if (gArea.locationIndex == 0x1b) {
                gPlayerEntity.z.HALF.HI = super->y.HALF.HI - this->unk_74 - 0xd0 - gPlayerEntity.y.HALF.HI;
            } else {
                gPlayerEntity.z.HALF.HI = super->y.HALF.HI - this->unk_74 - 0x40 - gPlayerEntity.y.HALF.HI;
            }
        }
    } else {
        ResetCollisionLayer(super);
        if (sub_080002B8(super) == 0xd) {
            ResetCollisionLayer(&gPlayerEntity);
            sub_08085CDC(this);
            super->direction = GetFacingDirection(&gPlayerEntity, super);
            LinearMoveDirection(&gPlayerEntity, 0x100, super->direction);
        }
    }

    if (this->unk_82 == 0) {
        if (GravityUpdate(&gPlayerEntity, 0x2000) == 0) {
            ResetCollisionLayer(&gPlayerEntity);
            sub_08085F1C(this);
            super->action = 1;
            super->field_0xf = 4;
            while (super->field_0xf != 0) {
                sub_080A2AF4(super, 8, 10);
                super->field_0xf--;
            }
            super->field_0xf = 1;
            super->actionDelay |= 0x80;
            this->unk_70 = 0;
            this->unk_6c = 0;
            if (sub_080002B8(super) == 0xd) {
                super->action = 4;
            }
        }
    } else {
        this->unk_82--;
    }
}

void sub_08085C5C(LilypadLargeEntity* this) {
    if (sub_0806FC80(super, &gPlayerEntity, 0x18) != 0) {
        LinearMoveUpdate(super);
        gPlayerEntity.speed = super->speed;
        gPlayerEntity.direction = super->direction;
        LinearMoveUpdate(&gPlayerEntity);
        gPlayerState.flags |= PL_FLAGS2;
        if (super->collisionLayer == 1) {
            ResetCollisionLayer(&gPlayerEntity);
        } else {
            sub_08004542(&gPlayerEntity);
        }
    }
    if (gRoomControls.reload_flags == 0) {
        super->flags &= ~ENT_PERSIST;
        super->action = 1;
        super->updatePriority = super->updatePriorityPrev;
        gRoomControls.camera_target = &gPlayerEntity;
    }
}

void sub_08085CDC(LilypadLargeEntity* this) {
    this->unk_78.WORD += 0x100000;
    if (this->unk_78.WORD_U < 0x4000000) {
        sub_0805EC9C(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
    } else {
        DeleteThisEntity();
    }
}

void sub_08085D10(LilypadLargeEntity* this) {
    if (EntityHasDuplicateID(super) != 0) {
        SetLocalFlag(super->type2);
        DeleteThisEntity();
    }
}

void sub_08085D28(LilypadLargeEntity* this) {
    if (((gPlayerState.framestate != PL_STATE_TALKEZLO) && ((gPlayerState.flags & PL_FLAGS2) != 0)) &&
        (sub_080002B4(super, 0, 0x18) == 0x11)) {
        super->action = 2;
        super->subAction = 0;
        sub_08078B48();
    }
}

NONMATCH("asm/non_matching/lilypadLarge/sub_08085D60.inc", void sub_08085D60(LilypadLargeEntity* this)) {
    u32 r4; // horizontal direction?
    u32 r6; // vertical direction?
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
                    u32 tmp = r4 >> 2;
                    s32 tmpX = gUnk_08120638[tmp];
                    s32 tmpY = gUnk_08120638[tmp + 1];
                    if (sub_080002CC(super, tmpX, tmpY) == 0xff) {

                        if (sub_080806BC((super->x.HALF.HI - gRoomControls.origin_x) + tmpX,
                                         (super->y.HALF.HI - gRoomControls.origin_y) + tmpY, r4, 5) == 0) {
                            if (sub_0807BD14(&gPlayerEntity, r4 >> 3) != 0) {
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
                    u32 tmp = r6 >> 2;
                    s32 tmpX = (u8)gUnk_08120638[tmp];
                    s32 tmpY = gUnk_08120638[tmp + 1];
                    if (sub_080002CC(super, tmpX, tmpY) == 0xff) {
                        if (sub_0807BD14(&gPlayerEntity, r6 >> 3) != 0) {
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
END_NONMATCH

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
    gPlayerEntity.x.HALF.LO = 0;
    gPlayerEntity.y.HALF.LO = 0;
    gPlayerEntity.direction = super->direction;
    gPlayerState.animation = 0x100;
    gRoomControls.camera_target = super;
    if (gPlayerState.item != NULL) {
        DeleteEntity(gPlayerState.item);
    }
    ResetPlayer();
}

void sub_08085EFC(LilypadLargeEntity* this) {
    this->unk_76 = super->x.HALF.HI - gPlayerEntity.x.HALF.HI;
    this->unk_74 = super->y.HALF.HI - gPlayerEntity.y.HALF.HI;
}

void sub_08085F1C(LilypadLargeEntity* this) {
    gPlayerEntity.x.HALF.HI = super->x.HALF.HI - this->unk_76;
    gPlayerEntity.y.HALF.HI = super->y.HALF.HI - this->unk_74;
    sub_0807A5B8(super->direction);
}

void sub_08085F48(LilypadLargeEntity* this) {
    u32 tmp = super->actionDelay & 0x80;
    if (tmp != 0) {
        if (gPlayerState.floor_type == SURFACE_ICE) {
            ResetPlayerVelocity();
            gPlayerState.floor_type = SURFACE_WATER;
        }
        SoundReq(SFX_WATER_WALK);
        if (this->unk_78.WORD_U < 0x1280000) {
            this->unk_78.WORD_U += 0x80000;
        } else {
            super->actionDelay = 0;
        }
    } else {
        if ((gPlayerState.flags & PL_FLAGS2) != 0) {
            if (super->actionDelay != 0) {
                if (this->unk_78.WORD_U < 0x1200000) {
                    this->unk_78.WORD_U += 0x8000;
                } else {
                    super->actionDelay = tmp;
                }
            } else {
                if (this->unk_78.WORD_U > 0x1100000) {
                    this->unk_78.WORD_U -= 0x8000;
                } else {
                    super->actionDelay = 1;
                }
            }
        } else {
            if (super->actionDelay != 0) {
                if (this->unk_78.WORD_U < 0x1100000) {
                    this->unk_78.WORD_U += 0x4000;
                } else {
                    super->actionDelay = 0;
                }
            } else {
                if (this->unk_78.WORD_U > 0x1060000) {
                    this->unk_78.WORD_U -= 0x4000;
                } else {
                    super->actionDelay = 1;
                }
            }
        }
    }
    sub_0805EC9C(super, this->unk_78.HALF_U.HI, this->unk_78.HALF_U.HI, this->unk_7c.HALF_U.HI);
}
