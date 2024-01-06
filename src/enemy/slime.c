/**
 * @file slime.c
 * @ingroup Enemies
 *
 * @brief Slime enemy
 */
#include "enemy.h"
#include "physics.h"
#include "room.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ u8 unk_84;
} SlimeEntity;

typedef struct {
    s8 h, v;
} PACKED PosOffset;

void sub_08044FF8(SlimeEntity* this);
void Slime_OnTick(SlimeEntity* this);
void Slime_OnCollision(SlimeEntity* this);
void Slime_OnGrabbed(SlimeEntity* this);
void sub_08044FC8(SlimeEntity* this);
void sub_08044FF8(SlimeEntity* this);
void sub_08045018(SlimeEntity* this);
void sub_08045088(SlimeEntity* this);
void sub_080450A8(SlimeEntity* this);
void sub_08045178(SlimeEntity* this, Entity*, int, int);

static void (*const Slime_Functions[])(SlimeEntity*) = {
    Slime_OnTick,
    Slime_OnCollision,
    (void (*)(SlimeEntity*))GenericKnockback,
    (void (*)(SlimeEntity*))GenericDeath,
    (void (*)(SlimeEntity*))GenericConfused,
    Slime_OnGrabbed,
};

void Slime(SlimeEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Slime_Functions);
    EnemySetFXOffset(super, 0, 1, -12);
}

void Slime_OnTick(SlimeEntity* this) {
    static void (*const actionFuncs[])(SlimeEntity*) = {
        sub_08044FC8, sub_08044FF8, sub_08045018, sub_08045088, sub_080450A8,
    };
    actionFuncs[super->action](this);
}

void Slime_OnCollision(SlimeEntity* this) {
    if ((super->health != 0) && (this->unk_84 != super->health)) {
        super->action = 4;
    } else {
        EnemyFunctionHandlerAfterCollision(super, Slime_Functions);
    }

    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
}

void Slime_OnGrabbed(SlimeEntity* this) {
}

void sub_08044FC8(SlimeEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->speed = 128;
    sub_0804A720(super);
    InitializeAnimation(super, 0);
    sub_08044FF8(this);
}

void sub_08044FF8(SlimeEntity* this) {
    super->action = 2;
    super->timer = (Random() & 0x1F) + 30;
    this->unk_84 = super->health;
}

void sub_08045018(SlimeEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action = 3;
        super->timer = 1;
        if (0 < super->speed) {
            super->timer = FixedDiv(0x1000, super->speed) >> 8;
        }
        if (sub_08049FA0(super) == 0 && (Random() & 3)) {
            super->direction = (sub_08049EE4(super) + 0xfc + (Random() & 8)) & 24;
            return;
        }
        super->direction = Random() & 24;
    }
}

void sub_08045088(SlimeEntity* this) {
    ProcessMovement0(super);
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action = 1;
    }
}

/* Split slime into new ones */
void sub_080450A8(SlimeEntity* this) {
    Entity* entities[4];
    Entity* entity;
    s32 count, i;
    const PosOffset* off;
    static const u8 typeEntityCount[4] = { 2, 2, 4, 2 };
    static const PosOffset gUnk_080D16D4[4] = { { 6, 0 }, { -6, 0 }, { 0, 6 }, { 0, -6 } };

    /* Can we create enough new entities? */
    count = typeEntityCount[super->type];
    if (MAX_ENTITIES - count <= gEntCount)
        return;

    /* Create 2-4 new MiniSlime */
    for (i = 0; i < count; i++)
        entities[i] = CreateEnemy(MINI_SLIME, super->type);

    off = gUnk_080D16D4;
    for (i = 0; i < count; i++) {
        entity = entities[i];
        entity->child = entities[(i + 1) % count];
        entity->parent = entities[(i + count - 1) % count];
        entity->type2 = 1;
        entity->z.HALF.HI = 0;
        entity->iframes = -0x10;

        /* Set MiniSlime offset relative to killed slime. */
        sub_08045178(this, entity, off->h, off->v);
        off++;
    }

    entity = CreateFx(super, FX_DEATH, 0);
    if (entity != NULL)
        CopyPosition(super, entity);

    DeleteEntity(super);
}

void sub_08045178(SlimeEntity* this, Entity* child, int offsetX, int offsetY) {
    int x, y;

    if (child == NULL)
        return;

    EnemyCopyParams(super, child);
    if (GetCollisionDataRelativeTo(child, offsetX, offsetY))
        return;

    x = child->x.HALF.HI + offsetX;
    if (0 <= x && x < (gRoomControls.origin_x + gRoomControls.width))
        child->x.HALF.HI = x;

    y = child->y.HALF.HI + offsetY;
    if (0 <= y && y < (gRoomControls.origin_y + gRoomControls.height))
        child->y.HALF.HI = y;
}
