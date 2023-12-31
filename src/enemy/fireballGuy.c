/**
 * @file fireballGuy.c
 * @ingroup Enemies
 *
 * @brief Fireball Guy enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ u8 unk_84;
} FireballGuyEntity;

typedef struct {
    s8 h, v;
} PACKED PosOffset;

extern void sub_08045524(FireballGuyEntity*);
void sub_08045178(Entity*, Entity*, int, int);
void FireballGuy_OnTick(FireballGuyEntity*);
void FireballGuy_OnCollision(FireballGuyEntity*);
void FireballGuy_OnGrabbed(FireballGuyEntity*);
void FireballGuy_Init(FireballGuyEntity*);
void FireballGuy_Action1(FireballGuyEntity*);
void FireballGuy_Action2(FireballGuyEntity*);

static void (*const FireballGuy_Functions[])(FireballGuyEntity*) = {
    FireballGuy_OnTick,
    FireballGuy_OnCollision,
    (void (*)(FireballGuyEntity*))GenericKnockback,
    (void (*)(FireballGuyEntity*))GenericDeath,
    (void (*)(FireballGuyEntity*))GenericConfused,
    FireballGuy_OnGrabbed,
};

void FireballGuy(FireballGuyEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)FireballGuy_Functions);
}

void FireballGuy_OnTick(FireballGuyEntity* this) {
    static void (*const FireballGuy_Actions[])(FireballGuyEntity*) = {
        FireballGuy_Init,
        FireballGuy_Action1,
        FireballGuy_Action2,
    };
    FireballGuy_Actions[super->action](this);
}

void FireballGuy_OnCollision(FireballGuyEntity* this) {
    if (super->health && this->unk_84 != super->health) {
        super->action = 2;
    } else {
        EnemyFunctionHandlerAfterCollision(super, FireballGuy_Functions);
    }
}

void FireballGuy_OnGrabbed(FireballGuyEntity* this) {
}

void FireballGuy_Init(FireballGuyEntity* this) {
    super->action = 1;
    super->timer = 0;
    super->spriteSettings.draw = 1;
    super->speed = 0x80;
    this->unk_84 = super->health;
    super->collisionFlags |= 0x10;
    sub_0804A720(super);
    InitializeAnimation(super, 0);
    sub_08045524(this);
}

void FireballGuy_Action1(FireballGuyEntity* this) {
    ProcessMovement2(super);
    GetNextFrame(super);
    if (GravityUpdate(super, Q_8_8(24.0)) == 0)
        sub_08045524(this);
}

/* Split FireballGuy into new ones */
void FireballGuy_Action2(FireballGuyEntity* this) {
    // Entity count per form
    static const u8 typeEntityCount[4] = { 2, 3, 4, 5 };
    static const PosOffset gUnk_080D1810[4] = { { 6, 0 }, { -6, 0 }, { 0, 6 }, { 0, -6 } };
    Entity* entities[4];
    Entity* entity;
    s32 count, i;
    const PosOffset* off;
    u32 tmp;

    /* Can we create enough new entities? */
    count = typeEntityCount[super->type];
    if (MAX_ENTITIES - count <= gEntCount)
        return;

    /* Create 2-5 new MiniFireballGuy */
    for (i = 0; i < count; i++)
        entities[i] = CreateEnemy(MINI_FIREBALL_GUY, super->type);

    off = gUnk_080D1810;
    for (i = 0; i < count; i++) {
        entity = entities[i];
        entity->child = entities[(i + 1) % count];
        entity->parent = entities[(i + count - 1) % count];
        tmp = 0;
        entity->type2 = 1;
        entity->z.HALF.HI = tmp;
        entity->iframes = -0x10;

        /* Set MiniFireballGuy offset relative to killed slime. */
        sub_08045178(super, entity, off->h, off->v);
        off++;
    }

    entity = CreateFx(super, FX_DEATH, 0);
    if (entity != NULL)
        CopyPosition(super, entity);

    DeleteEntity(super);
}

u32 sub_0804A024(Entity*, u32, u32);

void sub_08045524(FireballGuyEntity* this) {
    u32 tmp, tmp1, tmp2;

    super->zVelocity = Q_16_16(1.75);
    tmp = sub_0804A024(super, 1, 8);
    if (tmp != DIR_NONE && (Random() & 3) == 0) {
        super->timer = Random() & 3;
        super->direction = DirectionRound(tmp);
    } else {
        if (super->timer != 0) {
            super->timer--;
            return;
        }
        super->timer = Random() & 3;
        if (sub_08049FA0(super) == 0 && (Random() & 3)) {
            tmp1 = sub_08049EE4(super);
            tmp2 = Random() & 8;
            tmp2 += 0xfc;
            super->direction = DirectionRound(tmp1 + tmp2);
        } else {
            super->direction = DirectionRound(Random());
        }
    }
}
