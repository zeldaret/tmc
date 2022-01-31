/**
 * @file fallingBoulder.c
 * @ingroup Enemies
 *
 * @brief Falling Boulder enemy
 */

#include "enemy.h"
#include "functions.h"

void sub_0802C4B0(Entity*);
void sub_0802C62C(Entity*);

extern void (*const gUnk_080CD540[])(Entity*);
extern void (*const gUnk_080CD558[])(Entity*);
extern const u16 gUnk_080CD568[];
extern const u8 gUnk_080CD580[];
extern const s16 gUnk_080CD58C[];

extern void sub_080AEFB4(Entity*);

void FallingBoulder(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CD540);
}

void sub_0802C238(Entity* this) {
    gUnk_080CD558[this->action](this);
}

void sub_0802C250(Entity* this) {
    /* ... */
}

void sub_0802C254(Entity* this) {
    /* ... */
}

void sub_0802C258(Entity* this) {
    sub_0804A720(this);
    this->zVelocity = Q_16_16(2.0);
    this->actionDelay = 2;
    this->field_0x7a.HWORD = Random() & 0x70;
    switch (this->type) {
        case 1:
            this->field_0x7a.HWORD |= 0x100;
            break;
        case 2:
            this->field_0x7a.HWORD |= 0x200;
            break;
    }
    this->field_0x80.HWORD = this->x.HALF.HI;
    this->field_0x82.HWORD = this->y.HALF.HI;
    this->z.HALF.HI = -0x10;
    this->collisionLayer = 3;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 2;
    this->field_0x7c.HALF.LO = 0;
    this->field_0x7c.HALF.HI = COORD_TO_TILE(this);
    sub_0802C62C(this);
    sub_0802C4B0(this);
}

void sub_0802C318(Entity* this) {
    if (--this->field_0x7a.HWORD == 0) {
        this->action = 2;
    }
}

NONMATCH("asm/non_matching/fallingBoulder/sub_0802C334.inc", void sub_0802C334(Entity* this)) {
    if ((u16)this->field_0x7c.HALF.LO == 0) {
        u32 tmp = gRoomControls.origin_y;
        if (&gPlayerEntity == NULL)
            return;
        if (tmp - gPlayerEntity.y.HALF.HI <= 0x38) {
            return;
        }
        this->field_0x7c.HALF.LO = 1;
        this->spriteSettings.draw = 1;
    }
    GetNextFrame(this);
    this->field_0x7c.HALF.HI = COORD_TO_TILE(this);
    if (sub_080044EC(this, *(u32*)&this->cutsceneBeh) == 1) {
        EnqueueSFX(SFX_14C);
        COLLISION_ON(this);
        this->field_0x7a.HWORD = 0xc;
        sub_0802C4B0(this);
    } else {
        s32 y;

        if (this->field_0x7a.HWORD) {
            u16 tmp = --this->field_0x7a.HWORD;
            switch (tmp) {
                case 0:
                    COLLISION_OFF(this);
                    break;
                case 8:
                    if (this->type2 != 0 && !sub_08049FA0(this)) {
                        u32 diff = 0;
                        s32 i;
                        for (i = 1; i > -1; i--) {
                            Entity* ent = CreateFx(this, FX_ROCK2, 0);
                            if (ent) {
                                ent->x.HALF.HI += 12;
                                ent->x.HALF.HI -= diff;
                            }
                            diff += 0x18;
                        }
                        sub_0802C62C(this);
                        this->field_0x7a.HWORD = (Random() & 0xff) | 0x100;
                        return;
                    }
                    break;
            }
        }

        y = gRoomControls.origin_y + gRoomControls.height - this->y.HALF.HI;
        if (y >= 5) {
            sub_080AEFB4(this);
        } else {
            LinearMoveUpdate(this);
            if (this->z.HALF.HI - y > 0x38) {
                sub_0802C62C(this);
                this->field_0x7a.HWORD = (Random() & 0x7f) | 0x80;
                if (this->type == 3) {
                    this->action = 3;
                }
            }
        }
    }
    this->collisionLayer = 3;
    this->spritePriority.b0 = 1;
    UpdateSpriteForCollisionLayer(this);
}
END_NONMATCH

void nullsub_148(Entity* this) {
    /* ... */
}

void sub_0802C4B0(Entity* this) {
    u32 offset;
    u32 index;
    u32 rand;

    switch (GetTileIndex(this->field_0x7c.HALF_U.HI, this->collisionLayer)) {
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
            this->speed = gUnk_080CD568[offset | 2];
        } else {
            this->speed = gUnk_080CD568[offset | 0];
        }
    } else {
        if (rand & 3) {
            this->speed = gUnk_080CD568[offset | 1];
        } else {
            this->speed = gUnk_080CD568[offset | 3];
        }
    }

    rand = Random() & 7;
    if (rand & 4) {
        if (this->actionDelay != 0) {
            this->actionDelay = 0;
            InitializeAnimation(this, 0);
        }
        if (rand & 3) {
            this->direction = gUnk_080CD580[offset | 1];
        } else {
            this->direction = gUnk_080CD580[offset | 0];
        }
    } else {
        if (this->actionDelay != 1) {
            this->actionDelay = 1;
            InitializeAnimation(this, 1);
        }
        if (rand & 3) {
            this->direction = gUnk_080CD580[offset | 2];
        } else {
            this->direction = gUnk_080CD580[offset | 3];
        }
    }

    rand = Random() & 7;
    this->zVelocity = Q_16_16(2.0);
    if (rand & 4) {
        if (rand & 3) {
            *(u32*)&this->cutsceneBeh = gUnk_080CD58C[offset | 1];
        } else {
            *(u32*)&this->cutsceneBeh = gUnk_080CD58C[offset | 3];
        }
    } else {
        if (rand & 3) {
            *(u32*)&this->cutsceneBeh = gUnk_080CD58C[offset | 2];
        } else {
            *(u32*)&this->cutsceneBeh = gUnk_080CD58C[offset | 0];
        }
    }
}

void sub_0802C62C(Entity* this) {
    this->action = 1;
    this->y.HALF.HI = this->field_0x82.HWORD;
    this->x.HALF.HI = this->field_0x80.HWORD;
    this->spriteSettings.draw = 0;
    COLLISION_OFF(this);
    this->field_0x7c.HALF.LO = 0;
}

// clang-format off
void (*const gUnk_080CD540[])(Entity*) = {
    sub_0802C238,
    sub_0802C250,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    sub_0802C254,
};

void (*const gUnk_080CD558[])(Entity*) = {
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
