/**
 * @file fallingBoulder.c
 * @ingroup Enemies
 *
 * @brief Falling Boulder enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[18];
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ u32 unk_84;
} FallingBoulderEntity;

void sub_0802C4B0(FallingBoulderEntity* this);
void sub_0802C62C(FallingBoulderEntity* this);

extern void (*const FallingBoulder_Functions[])(FallingBoulderEntity*);
extern void (*const gUnk_080CD558[])(FallingBoulderEntity*);
extern const u16 gUnk_080CD568[];
extern const u8 gUnk_080CD580[];
extern const s16 gUnk_080CD58C[];

void FallingBoulder(FallingBoulderEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)FallingBoulder_Functions);
}

void FallingBoulder_OnTick(FallingBoulderEntity* this) {
    gUnk_080CD558[super->action](this);
}

void FallingBoulder_OnCollision(FallingBoulderEntity* this) {
    /* ... */
}

void FallingBoulder_OnGrabbed(FallingBoulderEntity* this) {
    /* ... */
}

void sub_0802C258(FallingBoulderEntity* this) {
    sub_0804A720(super);
    super->zVelocity = Q_16_16(2.0);
    super->timer = 2;
    this->unk_7a = Random() & 0x70;
    switch (super->type) {
        case 1:
            this->unk_7a |= 0x100;
            break;
        case 2:
            this->unk_7a |= 0x200;
            break;
    }
    this->unk_80 = super->x.HALF.HI;
    this->unk_82 = super->y.HALF.HI;
    super->z.HALF.HI = -0x10;
    super->collisionLayer = 3;
    super->spriteRendering.b3 = 1;
    super->spritePriority.b0 = 2;
    this->unk_7c = 0;
    this->unk_7e = COORD_TO_TILE(super);
    sub_0802C62C(this);
    sub_0802C4B0(this);
}

void sub_0802C318(FallingBoulderEntity* this) {
    if (--this->unk_7a == 0) {
        super->action = 2;
    }
}

void sub_0802C334(FallingBoulderEntity* this) {
    Entity* entity;
    u32 roomOriginY, tmp;
    s32 y, i;
    if (this->unk_7c == 0) {
        roomOriginY = gRoomControls.origin_y;
        entity = &gPlayerEntity.base;
        if (entity == NULL)
            return;
        tmp = entity->y.HALF.HI;
        if (0x38 >= tmp - roomOriginY)
            return;
        this->unk_7c = 1;
        super->spriteSettings.draw = 1;
    }

    GetNextFrame(super);
    this->unk_7e = COORD_TO_TILE(super);

    if (BounceUpdate(super, this->unk_84) == BOUNCE_INIT_NEXT) {
        EnqueueSFX(0x14c);
        COLLISION_ON(super);
        this->unk_7a = 12;
        sub_0802C4B0(this);
    } else {
        if (this->unk_7a) {
            switch (--this->unk_7a) {
                case 0:
                    COLLISION_OFF(super);
                    break;
                case 8:
                    if (super->type2 != 0 && !sub_08049FA0(super)) {
                        for (i = 0; i < 2; i++) {
                            entity = CreateFx(super, FX_ROCK2, 0);
                            if (entity) {
                                entity->x.HALF.HI += 12 - i * 0x18;
                            }
                        }
                        sub_0802C62C(this);
                        this->unk_7a = (Random() & 0xff) | 0x100;
                        return;
                    }
                    break;
            }
        }
        roomOriginY = gRoomControls.origin_y;
        tmp = gRoomControls.height;
        y = roomOriginY + tmp - super->y.HALF.HI;

        if (y >= 5) {
            ProcessMovement1(super);
        } else {
            LinearMoveUpdate(super);
            if (super->z.HALF.HI - y > 0x38) {
                sub_0802C62C(this);
                this->unk_7a = (Random() & 0x7f) | 0x80;
                if (super->type == 3) {
                    super->action = 3;
                }
            }
        }
    }

    super->collisionLayer = 3;
    super->spritePriority.b0 = 1;
    UpdateSpriteForCollisionLayer(super);
}

void nullsub_148(FallingBoulderEntity* this) {
    /* ... */
}

void sub_0802C4B0(FallingBoulderEntity* this) {
    u32 offset;
    u32 index;
    u32 rand;

    switch (GetTileIndex(this->unk_7e, super->collisionLayer)) {
        case 0x1ab ... 0x1af:
            offset = 8;
            break;
        case 0x1c4:
            offset = 4;
            break;
        default:
            offset = 0;
            break;
    }

    rand = Random() & 7;
    if (rand & 4) {
        if (rand & 3) {
            super->speed = gUnk_080CD568[offset | 2];
        } else {
            super->speed = gUnk_080CD568[offset | 0];
        }
    } else {
        if (rand & 3) {
            super->speed = gUnk_080CD568[offset | 1];
        } else {
            super->speed = gUnk_080CD568[offset | 3];
        }
    }

    rand = Random() & 7;
    if (rand & 4) {
        if (super->timer != 0) {
            super->timer = 0;
            InitializeAnimation(super, 0);
        }
        if (rand & 3) {
            super->direction = gUnk_080CD580[offset | 1];
        } else {
            super->direction = gUnk_080CD580[offset | 0];
        }
    } else {
        if (super->timer != 1) {
            super->timer = 1;
            InitializeAnimation(super, 1);
        }
        if (rand & 3) {
            super->direction = gUnk_080CD580[offset | 2];
        } else {
            super->direction = gUnk_080CD580[offset | 3];
        }
    }

    rand = Random() & 7;
    super->zVelocity = Q_16_16(2.0);
    if (rand & 4) {
        if (rand & 3) {
            this->unk_84 = gUnk_080CD58C[offset | 1];
        } else {
            this->unk_84 = gUnk_080CD58C[offset | 3];
        }
    } else {
        if (rand & 3) {
            this->unk_84 = gUnk_080CD58C[offset | 2];
        } else {
            this->unk_84 = gUnk_080CD58C[offset | 0];
        }
    }
}

void sub_0802C62C(FallingBoulderEntity* this) {
    super->action = 1;
    super->y.HALF.HI = this->unk_82;
    super->x.HALF.HI = this->unk_80;
    super->spriteSettings.draw = 0;
    COLLISION_OFF(super);
    this->unk_7c = 0;
}

// clang-format off
void (*const FallingBoulder_Functions[])(FallingBoulderEntity*) = {
    FallingBoulder_OnTick,
    FallingBoulder_OnCollision,
    (void (*)(FallingBoulderEntity*))GenericKnockback,
    (void (*)(FallingBoulderEntity*))GenericDeath,
    (void (*)(FallingBoulderEntity*))GenericConfused,
    FallingBoulder_OnGrabbed,
};

void (*const gUnk_080CD558[])(FallingBoulderEntity*) = {
    sub_0802C258,
    sub_0802C318,
    sub_0802C334,
    nullsub_148,
};

const u16 gUnk_080CD568[] = {
     0x80, 0x100, 0x180, 0x200,
     0x80, 0x100, 0x180, 0x200,
    0x100, 0x200, 0x300, 0x400,
};

const u8 gUnk_080CD580[] = {
    10, 14, 18, 22,
    10, 14, 18, 22,
    10, 14, 18, 22,
};

const s16 gUnk_080CD58C[] = {
    0x1800, 0x2000, 0x2800, 0x3000,
    0x1800, 0x2000, 0x2800, 0x3000,
    0x1800, 0x2000, 0x2800, 0x3000,
};
// clang-format on
