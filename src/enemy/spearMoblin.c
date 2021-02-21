#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern bool32 sub_0806FC80(Entity*, Entity*, u32);
extern Entity* sub_080A7EE0(u32);
extern Entity* sub_08049DF4(u32);

void sub_08028604(Entity*);
void sub_08028754(Entity*);
void sub_08028784(Entity*);
void sub_080287E0(Entity*);
void sub_08028728(Entity*);
bool32 sub_080286CC(Entity*);
bool32 sub_080288A4(Entity*);
void sub_08028858(Entity*);
void sub_080288C0(Entity*);
bool32 sub_08028828(u32, u32);
void sub_080287B4(Entity*);

extern void (*const gUnk_080CC790[])(Entity*);
extern void (*const gUnk_080CC7A8[])(Entity*);
extern const u8 gUnk_080CC7BC[];
extern const s8 gUnk_080CC7C0[];
extern const u8 gUnk_080CC7D0[];
extern const u16 gUnk_080CC7D8[];

extern const BoundingBox* const gUnk_080CC944[];

void SpearMoblin(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CC790);
    SetChildOffset(this, 0, 1, -0x20);
    if (this->attachedEntity && this->attachedEntity->next) {
        CopyPosition(this, this->attachedEntity);
    }
}

void sub_0802826C(Entity* this) {
    gUnk_080CC7A8[this->action](this);
}

void sub_08028284(Entity* this) {
    if (this->field_0x43 != 0)
        sub_0804A9FC(this, 0x1c);

    sub_0804AA30(this, gUnk_080CC790);
    if (this->bitfield & 0x80) {
        if (this->action != 4) {
            sub_08028754(this);
        } else {
            if ((this->bitfield & 0x3f) == 0) {
                this->field_0x7a.HALF.LO++;
                this->field_0x80.HALF.HI = 0x16;
                sub_08028784(this);
            }
        }
    }

    this->attachedEntity->hurtBlinkTime = this->hurtBlinkTime;
    if (this->currentHealth == 0) {
        this->nonPlanarMovement = 0;
        this->field_0x82.HALF.LO = 0;
        sub_080287E0(this);
        DeleteEntity(this->attachedEntity);
        this->attachedEntity = NULL;
    }
}

void nullsub_13(Entity* this) {
    /* ... */
}

void sub_08028314(Entity* this) {
    Entity* pEVar2;

    sub_0804A720(this);
    this->action = 1;
    this->animationState = 0;
    this->field_0x7a.HALF.HI = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.LO = 0;
    this->field_0x82.HALF.LO = 1;

    if (this->actionDelay) {
        this->animationState = this->entityType.parameter << 1;
        this->actionDelay = 0x1e;
        this->nonPlanarMovement = 0x80;
        this->direction = this->animationState << 2;
        sub_080287E0(this);
    } else {
        this->animationState = 0x10;
        sub_08028604(this);
    }

    pEVar2 = sub_080A7EE0(3);
    if (pEVar2 != NULL) {
        pEVar2->parent = this;
        this->attachedEntity = pEVar2;
    }
}

void sub_08028378(Entity* this) {
    if (this->field_0x80.HALF.HI != 0) {
        this->field_0x80.HALF.HI--;
    }

    if (--this->actionDelay == 0) {
        if (++this->field_0x80.HALF.LO >= 0x10) {
            sub_08028728(this);
        } else {
            sub_08028604(this);
        }
    } else {
        if (sub_080286CC(this)) {
            this->field_0x7a.HALF.HI |= 1;
        }
        if (sub_080288A4(this)) {
            sub_0800417E(this, this->collisions);
            this->animationState = DirectionRoundUp(this->direction) >> 2;
            this->field_0x82.HALF.HI++;
            sub_080287E0(this);
        }
    }

    if (this->field_0xf >= 0xc) {
        if (this->field_0x7a.HALF.HI != 0) {
            sub_08028754(this);
        }
    } else {
        this->field_0xf++;
    }

    sub_08028858(this);
}

void sub_08028420(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->field_0x82.HALF.LO = 0;
        this->field_0x80.HALF.LO = 0;
        this->animationState = 0x10;
        sub_08028604(this);
    } else {
        if (sub_080286CC(this)) {
            this->field_0x7a.HALF.HI |= 1;
        }
    }

    if (this->field_0xf >= 0xc) {
        if (this->field_0x7a.HALF.HI != 0) {
            sub_08028754(this);
        }
    } else {
        this->field_0xf++;
    }

    sub_08028858(this);
}

void sub_08028488(Entity* this) {
    if (--this->actionDelay == 0) {
        switch (this->field_0x82.HALF.LO) {
            case 3:
                this->action = 4;
                this->nonPlanarMovement = 0x180;
                this->direction = sub_08049F84(this, 1);
                EnqueueSFX(0x11e);
                break;
            case 2:
                this->action = 2;
                this->nonPlanarMovement = 0;
                this->actionDelay = (Random() & 7) * 3 + 0x40;
                break;
            case 4:
                this->direction = (this->direction + 0x10) & 0x18;
                /* fallthrough */
            case 1:
            default:
                this->action = 1;
                this->field_0x82.HALF.LO = 1;
                this->nonPlanarMovement = 0x80;
                this->actionDelay = (Random() & 7) * 3 + 0x22;
                break;
        }

        this->field_0xf = 0;
        this->animationState = DirectionRoundUp(this->direction) >> 2;
        sub_080287E0(this);
    }

    sub_08028858(this);
}

void sub_08028528(Entity* this) {
    Entity* ent = sub_08049DF4(1);
    const BoundingBox* box;

    if (ent == NULL) {
        this->field_0xf = 0;
        sub_08028728(this);
    } else {
        sub_080288C0(this);
        box = gUnk_080CC944[this->animationState >> 1];
        this->boundingBox->offset_x = box->offset_x;
        this->boundingBox->offset_y = box->offset_y;
        this->boundingBox->width = box->width;
        this->boundingBox->height = box->height;

        if (this->field_0x7a.HALF.LO != 0) {
            this->field_0x7a.HALF.LO = 0;
            this->field_0x80.HALF.HI = 0x16;
            sub_08028784(this);
        } else {
            if (++this->actionDelay == 0x20) {
                u32 direction;
                this->actionDelay = 0;
                direction = GetFacingDirection(this, ent);
                if (sub_08028828(this->direction, direction)) {
                    this->direction = direction;
                }
            }

            if ((this->actionDelay & 7) == 0) {
                EnqueueSFX(0xf0);
                CreateFx(this, 2, 0x40);
            }

            if (++this->field_0x7a.HALF.HI == 0x80) {
                this->field_0x7a.HALF.LO++;
            }
        }

        if (0x20 < this->field_0x7a.HALF.HI) {
            ProcessMovement(this);
        }

        GetNextFrame(this);
    }
}

#if NON_MATCHING
void sub_08028604(Entity* this) {
    this->field_0xf = 0;
    if (this->field_0x82.HALF.LO == 1) {
        this->actionDelay = gUnk_080CC7BC[Random() & 3];
        this->nonPlanarMovement = 0x80;
        if (sub_08049FA0(this) != 0) {
            this->direction = gUnk_080CC7D0[Random() & 7] + 0x18 + this->direction & 0x18;
        } else {
            u32 iVar3 = sub_08049EE4(this);
            u32 uVar1;
            if (this->field_0x82.HALF.HI == '\0') {
                uVar1 = gUnk_080CC7C0[Random() & 0xf];
            } else {
                uVar1 = gUnk_080CC7C0[Random() & 7];
                this->actionDelay = this->actionDelay + 0x10;
                this->field_0x82.HALF.HI--;
            }
            this->direction = iVar3 + uVar1 + 4U & 0x18;
        }
    } else {
        this->actionDelay = 0xc;
        this->nonPlanarMovement = 0;
    }

    if (this->direction >> 2 != this->animationState) {
        this->animationState = this->direction >> 2;
        sub_080287E0(this);
    }
}
#else
NAKED
void sub_08028604(Entity* this) {
    asm(".include \"asm/non_matching/spearMoblin/sub_08028604.inc\"");
}
#endif

bool32 sub_080286CC(Entity* this) {
    if (this->field_0x80.HALF.HI == 0) {
        Entity* ent = sub_08049DF4(1);
        if (ent != NULL) {
            if (this->field_0x82.HALF.LO == 2 && sub_0806FC80(this, ent, 0x30))
                return TRUE;

            if (sub_0806FC80(this, ent, 0x40) &&
                DirectionRoundUp(GetFacingDirection(this, ent)) >> 2 == this->animationState)
                return TRUE;
        }
    }

    return FALSE;
}

void sub_08028728(Entity* this) {
    this->animationState = DirectionRoundUp(this->direction) >> 2;
    this->direction = this->animationState << 2;
    this->field_0x82.HALF.HI >>= 1;
    sub_080287B4(this);
    this->field_0x82.HALF.LO = 2;
}

void sub_08028754(Entity* this) {
    this->direction = sub_08049F84(this, 1);
    this->animationState = DirectionRoundUp(this->direction) >> 2;
    this->field_0x82.HALF.HI = 0;
    sub_080287B4(this);
    this->field_0x82.HALF.LO = 3;
}

void sub_08028784(Entity* this) {
    this->animationState = DirectionRoundUp(this->direction) >> 2;
    this->direction = this->animationState << 2;
    this->field_0x82.HALF.HI = 0;
    sub_080287B4(this);
    this->actionDelay <<= 1;
    this->field_0x82.HALF.LO = 4;
}

void sub_080287B4(Entity* this) {
    this->action = 3;
    this->actionDelay = 0x20;
    this->field_0xf = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x7a.HALF.HI = 0;
    this->nonPlanarMovement = 0;
    this->field_0x82.HALF.LO = 0;
    sub_080287E0(this);
}

void sub_080287E0(Entity* this) {
    u32 sprite = this->animationState >> 1;
    switch (this->field_0x82.HALF.LO) {
        case 0:
            /* ... */
            break;
        case 1:
        case 4:
            sprite += 4;
            break;
        case 3:
            sprite += 8;
            break;
        case 2:
            sprite += 0xc;
            break;
    }
    InitializeAnimation(this, sprite);
}

bool32 sub_08028828(u32 arg0, u32 arg1) {
    if (DirectionRoundUp(arg1) == DirectionRoundUp(arg0)) {
        u32 angle1 = (arg1 + 5) & 7;
        u32 angle0 = (arg0 + 5) & 7;
        if (angle1 < 3 && angle0 < 3)
            return TRUE;
    }

    return FALSE;
}

void sub_08028858(Entity* this) {
    const BoundingBox* box;

    sub_080288C0(this);
    box = gUnk_080CC944[this->animationState >> 1];
    this->boundingBox->offset_x = box->offset_x;
    this->boundingBox->offset_y = box->offset_y;
    this->boundingBox->width = box->width;
    this->boundingBox->height = box->height;

    if (this->field_0x82.HALF.LO == 0) {
        this->nonPlanarMovement = 0;
    }

    ProcessMovement(this);
    GetNextFrame(this);
}

bool32 sub_080288A4(Entity* this) {
    return (this->collisions & gUnk_080CC7D8[this->animationState >> 1]) != 0;
}

void sub_080288C0(Entity* this) {
    Entity* ent = this->attachedEntity;
    if (ent && (ent->bitfield & 0x80)) {
        this->field_0x3e = ent->field_0x3e;
        this->hurtBlinkTime = -ent->hurtBlinkTime;
        this->field_0x46 = ent->field_0x46;
        this->field_0x42 = ent->field_0x42;
        ent->field_0x42 = 0;
    }
}

// clang-format off
void (*const gUnk_080CC790[])(Entity*) = {
    sub_0802826C,
    sub_08028284,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_13,
};

void (*const gUnk_080CC7A8[])(Entity*) = {
    sub_08028314,
    sub_08028378,
    sub_08028420,
    sub_08028488,
    sub_08028528,
};

const u8 gUnk_080CC7BC[] = {
    0x30, 0x60, 0x6C, 0x91,
};

const s8 gUnk_080CC7C0[] = {
    0xF8, 0x0C,
    0xF4, 0x08,
    0x04, 0xFA,
    0x06, 0xFC,
    0x00, 0xFD,
    0x01, 0x03,
    0xFF, 0x02,
    0x00, 0xFE,
};

const u8 gUnk_080CC7D0[] = {
    0x08, 0x10,
    0x08, 0x00,
    0x10, 0x08,
    0x10, 0x00,
};

const u16 gUnk_080CC7D8[] = {
    0xE, 0xE000, 0xE0, 0xE00,
};
// clang-format on
