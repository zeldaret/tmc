/**
 * @file cuccoAggr.c
 * @ingroup Enemies
 *
 * @brief Cucco Aggr enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    u16 unk_78;
    u8 unk_7a;
    u8 unk_7b;
} CuccoAggrEntity;

typedef struct {
    u16 x;
    u16 y;
} PosOffset;

void (*const CuccoAggr_Functions[])(Entity*);
void (*const gUnk_080CF790[])(CuccoAggrEntity*);
void (*const gUnk_080CF7AC[])(CuccoAggrEntity*);
const u8 gUnk_080CF7BC[];
const u8 gUnk_080CF7BE[];
const u8 gUnk_080CF7C2[];
const PosOffset gCuccoAggrSpawnPoints[];
const u16 gUnk_080CF824[];
const u16 gUnk_080CF828[];
const s8 gCuccoAggrFxHorizontalOffsets[];
const u8 gCuccoAggrFx[];

void sub_080391B4(CuccoAggrEntity* this);
void sub_08039218(CuccoAggrEntity* this);
void CuccoAggr_CreateFx(CuccoAggrEntity* this);
void sub_08039120(CuccoAggrEntity* this);
void sub_08039140(CuccoAggrEntity* this);
void sub_0803901C(CuccoAggrEntity* this);
void sub_08039298(CuccoAggrEntity* this);
void sub_080390F8(CuccoAggrEntity* this);
void sub_080390C0(CuccoAggrEntity* this);
bool32 CuccoAggr_IsOutsideScroll(CuccoAggrEntity* this);

void CuccoAggr(Entity* this) {
    u32 index = sub_080012DC(this);
    if (index) {
        gUnk_080012C8[index](this);
    } else {
        CuccoAggr_Functions[GetNextFunction(this)](this);
        EnemySetFXOffset(this, 0, 1, -0x10);
        sub_080391B4((CuccoAggrEntity*)this);
    }
}

void CuccoAggr_OnTick(CuccoAggrEntity* this) {
    gUnk_080CF790[super->action](this);
}

void CuccoAggr_OnCollision(CuccoAggrEntity* this) {
    if (super->type != 2) {
        if (this->unk_7a == 0 && CheckRoomFlag(1) == 0) {
            if (super->health <= 0xbf) {
                this->unk_7a = 1;
            }
        } else {
            super->health = 0xff;
        }

        sub_08039218(this);
        CuccoAggr_CreateFx(this);
    }

    if (super->confusedTime) {
        EnemyCreateFX(super, FX_STARS);
    }

    EnemyFunctionHandlerAfterCollision(super, CuccoAggr_Functions);
}

void CuccoAggr_OnGrabbed(CuccoAggrEntity* this) {
}

void sub_08038D78(CuccoAggrEntity* this) {
    sub_0804A720(super);
    if (super->type != 2) {
        super->type2 = 0;
        super->carryFlags = 0x30;
        sub_08039120(this);
    } else {
        sub_08039140(this);
    }
}

void sub_08038DA0(CuccoAggrEntity* this) {
    if (--super->timer == 0) {
        sub_0803901C(this);
    }

    sub_08039298(this);
}

void sub_08038DC0(CuccoAggrEntity* this) {
    gUnk_080CF7AC[super->subAction](this);
}

void sub_08038DD8(CuccoAggrEntity* this) {
    super->subAction = 1;
    super->timer = 16;
    super->subtimer = gUnk_080CF7BC[super->type];
    COLLISION_OFF(super);
    super->spritePriority.b1 = 0;
    InitializeAnimation(super, 4);
    EnqueueSFX(SFX_VO_CUCCO4);
}

void sub_08038E18(CuccoAggrEntity* this) {
    if (super->subtimer) {
        if (--super->subtimer == 0) {
            PlayerDropHeldObject();
            sub_08039218(this);
            COLLISION_ON(super);
            super->spritePriority.b1 = 1;
            super->spritePriority.b0 = 4;
            super->direction = Random() & 0x1f;
            ProcessMovement0(super);
            UpdateSpriteForCollisionLayer(super);
        }
    }

    if (--super->timer == 0) {
        super->timer = 16;
        super->spriteSettings.flipX ^= (Random() & 1);
        CuccoAggr_CreateFx(this);
    }

    GetNextFrame(super);
}

void sub_08038EAC(CuccoAggrEntity* this) {
    super->spritePriority.b1 = 1;
    sub_080390F8(this);
    GetNextFrame(super);
}

void sub_08038ED0(CuccoAggrEntity* this) {
    COLLISION_ON(super);
    sub_08039218(this);
}

void sub_08038EE0(CuccoAggrEntity* this) {
    ProcessMovement0(super);
    GetNextFrame(super);
    sub_08039298(this);
    if (GravityUpdate(super, Q_8_8(28.0)) == 0) {
        if (--super->timer == 0) {
            sub_0803901C(this);
        } else {
            super->zVelocity = Q_16_16(0.5);
        }
    }
}

void sub_08038F20(CuccoAggrEntity* this) {
    sub_08039298(this);
    GetNextFrame(super);

    if (super->frame & ANIM_DONE) {
        sub_0803901C(this);
    }
}

void sub_08038F44(CuccoAggrEntity* this) {
    super->direction = GetFacingDirection(&gPlayerEntity.base, super);
    sub_080390F8(this);
    ProcessMovement0(super);
    BounceUpdate(super, Q_8_8(24.0));
    GetNextFrame(super);
    sub_08039298(this);
    if (--this->unk_78 == 0) {
        sub_08039120(this);
    } else if ((this->unk_78 & 0x1f) == 0) {
        CuccoAggr_CreateFx(this);
    }
}

void sub_08038FA0(CuccoAggrEntity* this) {
    if ((super->timer++ & 0x1f) == 0) {
        CuccoAggr_CreateFx(this);
    }

    if (this->unk_78) {
        if ((this->unk_78-- & 0x7) == 0) {
            sub_08004596(super, GetFacingDirection(super, &gPlayerEntity.base));
        }

        sub_080390F8(this);
        LinearMoveUpdate(super);
        GetNextFrame(super);
    } else {
        LinearMoveUpdate(super);
        GetNextFrame(super);
        if (CuccoAggr_IsOutsideScroll(this)) {
            DeleteEntity(super);
        }
    }
}

void sub_0803901C(CuccoAggrEntity* this) {
    u32 r3 = Random();
    u32 r5 = r3 & 3;

    //! @bug This if was meant to check r5 instead of r3.
    //  The result is that this if practically never happens and
    //  there's a higher chance of the default branch of the next switch.
    if (r3 == 3) {
        switch (super->action) {
            case 3:
                r5 = 1;
                break;
            case 4:
                r5 = 2;
                break;
            default:
                r5 = 0;
        }
    }

    switch (r5) {
        default:
            super->action = 1;
            super->timer = gUnk_080CF7BE[(r3 >> 0x10) & 3];
            InitializeAnimation(super, 0);
            break;
        case 1:
            super->action = 3;
            super->timer = ((r3 >> 8) & 3) + 2;
            super->zVelocity = Q_16_16(0.5);
            sub_080390C0(this);
            InitializeAnimation(super, 1);
            if (Random() & 1) {
                r5 = Random() & 1;
                EnqueueSFX(SFX_VO_CUCCO1 + r5);
            }
            break;
        case 2:
            super->action = 4;
            InitializeAnimation(super, ((r3 >> 0x10) & 1) + 2);
            break;
    }
}

void sub_080390C0(CuccoAggrEntity* this) {
    u32 rand = Random();
    if (sub_08049FA0(super) && (rand & 1)) {
        super->direction = (rand >> 0x10) & 0x1c;
    } else {
        super->direction = (sub_08049EE4(super) + 2) & 0x1c;
    }

    sub_080390F8(this);
}

void sub_080390F8(CuccoAggrEntity* this) {
    if (super->direction & 0xf) {
        super->spriteSettings.flipX = ((super->direction >> 4) ^ 1);
    }
}

void sub_08039120(CuccoAggrEntity* this) {
    super->speed = gUnk_080CF7C2[super->type];
    this->unk_7a = 0;
    sub_0803901C(this);
}

void sub_08039140(CuccoAggrEntity* this) {
    super->action = 6;
    super->timer = Random();
    super->direction = GetFacingDirection(super, &gPlayerEntity.base);
    super->z.HALF.HI = -4;
    this->unk_78 = 0xb4;
    sub_080390F8(this);
    InitializeAnimation(super, 4);
}

bool32 CuccoAggr_IsOutsideScroll(CuccoAggrEntity* this) {
    if ((u32)super->x.HALF.HI - 0xc - gRoomControls.scroll_x > 0x108)
        return 1;
    if ((u32)super->y.HALF.HI - 0xc - gRoomControls.scroll_y > 0xb8)
        return 1;

    return 0;
}

void sub_080391B4(CuccoAggrEntity* this) {
    if (this->unk_7a) {
        if ((this->unk_7b++ & 0x1f) == 0) {
            Entity* entity = CreateEnemy(CUCCO_AGGR, 2);
            if (entity != NULL) {
                u32 rand = (Random() & 0x17);
                const PosOffset* ptr = &gCuccoAggrSpawnPoints[rand];
                entity->x.HALF.HI = gRoomControls.scroll_x + ptr->x;
                entity->y.HALF.HI = gRoomControls.scroll_y + ptr->y;
                entity->collisionLayer = super->collisionLayer;
            }
        }
    }
}

void sub_08039218(CuccoAggrEntity* this) {
    super->action = 5;
    super->speed = gUnk_080CF824[super->type];
    this->unk_78 = gUnk_080CF828[super->type];

    if (super->animIndex != 4) {
        InitializeAnimation(super, 4);
    }

    EnqueueSFX(SFX_VO_CUCCO4);
}

void CuccoAggr_CreateFx(CuccoAggrEntity* this) {
    Entity* entity = CreateFx(super, gCuccoAggrFx[super->type], 0);

    if (entity != NULL) {
        entity->x.HALF.HI += gCuccoAggrFxHorizontalOffsets[super->spriteSettings.flipX];
    }
}

void sub_08039298(CuccoAggrEntity* this) {
    if (super->type2 == 0) {
        RegisterCarryEntity(super);
    }
}

void (*const CuccoAggr_Functions[])(Entity*) = {
    (EntityActionPtr)CuccoAggr_OnTick,
    (EntityActionPtr)CuccoAggr_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    (EntityActionPtr)CuccoAggr_OnGrabbed,
};

void (*const gUnk_080CF790[])(CuccoAggrEntity*) = {
    sub_08038D78, sub_08038DA0, sub_08038DC0, sub_08038EE0, sub_08038F20, sub_08038F44, sub_08038FA0,
};

void (*const gUnk_080CF7AC[])(CuccoAggrEntity*) = {
    sub_08038DD8,
    sub_08038E18,
    sub_08038EAC,
    sub_08038ED0,
};

const u8 gUnk_080CF7BC[] = { 0, 0x78 };

const u8 gUnk_080CF7BE[] = { 0x1e, 0x2d, 0x3c, 0x4b };

const u8 gUnk_080CF7C2[] = { 0x80, 0xc0 };

const PosOffset gCuccoAggrSpawnPoints[] = {
    { 0x18, -0x8 }, { 0x38, -0x8 }, { 0x58, -0x8 }, { 0x78, -0x8 }, { 0x98, -0x8 }, { 0xB8, -0x8 },
    { 0xD8, -0x8 }, { 0x18, 0xA8 }, { 0x38, 0xA8 }, { 0x58, 0xA8 }, { 0x78, 0xA8 }, { 0x98, 0xA8 },
    { 0xB8, 0xA8 }, { 0xD8, 0xA8 }, { -0x8, 0x10 }, { -0x8, 0x30 }, { -0x8, 0x50 }, { -0x8, 0x70 },
    { -0x8, 0x90 }, { 0xF8, 0x10 }, { 0xF8, 0x30 }, { 0xF8, 0x50 }, { 0xF8, 0x70 }, { 0xF8, 0x90 },
};

const u16 gUnk_080CF824[] = {
    0x140,
    0x200,
};

const u16 gUnk_080CF828[] = {
    0x384,
    0x3c,
};

const s8 gCuccoAggrFxHorizontalOffsets[] = {
    8,
    -8,
};

const u8 gCuccoAggrFx[] = {
    FX_EGG,
    FX_WOOD2,
    FX_EGG,
};
