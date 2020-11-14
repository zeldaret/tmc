#include "global.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    s8 h, v;
} PACKED PosOffset;

extern void sub_08045524(Entity*);
void sub_08045178(Entity*, Entity*, int, int);

extern void (*const gUnk_080D17E8[])(Entity*);
extern void (*const gUnk_080D1800[])(Entity*);
extern u8 gUnk_080D180C[4]; // Entity count per form
extern PosOffset gUnk_080D1810[4];

extern u8 gEntCount;

void FireballGuy(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080D17E8);
}

void sub_080453A4(Entity* this) {
    gUnk_080D1800[this->action](this);
}

void sub_080453BC(Entity* this) {
    if (this->currentHealth && this->cutsceneBeh.HALF.LO != this->currentHealth) {
        this->action = 2;
    } else {
        sub_0804AA30(this, gUnk_080D17E8);
    }
}

void nullsub_172(void) {
}

void sub_080453E8(Entity* this) {
    this->action = 1;
    this->actionDelay = 0;
    this->spriteSettings.b.draw = 1;
    this->nonPlanarMovement = 0x80;
    this->cutsceneBeh.HALF.LO = this->currentHealth;
    this->field_0x3c |= 0x10;
    sub_0804A720(this);
    InitializeAnimation(this, 0);
    sub_08045524(this);
}

void sub_08045430(Entity* this) {
    sub_080AEFE0(this);
    GetNextFrame(this);
    if (sub_08003FC4(this, 0x1800) == 0)
        sub_08045524(this);
}

/* Split FireballGuy into new ones */
void sub_08045454(Entity* this) {
    Entity* entities[4];
    Entity* ent;
    s32 count, i;
    PosOffset* off;
    u32 tmp;

    /* Can we create enough new entities? */
    count = gUnk_080D180C[this->entityType.form];
    if (72 - count <= gEntCount)
        return;

    /* Create 2-5 new MiniFireballGuy */
    for (i = 0; i < count; i++)
        entities[i] = CreateEnemy(0x59, this->entityType.form);

    off = gUnk_080D1810;
    for (i = 0; i < count; i++) {
        ent = entities[i];
        ent->attachedEntity = entities[(i + 1) % count];
        ent->parent = entities[(i + count - 1) % count];
        tmp = 0;
        ent->entityType.parameter = 1;
        ent->height.HALF.HI = tmp;
        ent->hurtBlinkTime = -0x10;

        /* Set MiniFireballGuy offset relative to killed slime. */
        sub_08045178(this, ent, off->h, off->v);
        off++;
    }

    ent = CreateFx(this, 2, 0);
    if (ent)
        CopyPosition(this, ent);

    DeleteEntity(this);
}

u32 sub_0804A024(Entity*, u32, u32);

void sub_08045524(Entity* this) {
    u32 tmp, tmp1, tmp2;

    this->field_0x20 = 0x1c000;
    tmp = sub_0804A024(this, 1, 8);
    if (tmp != 0xff && (Random() & 3) == 0) {
        this->actionDelay = Random() & 3;
        this->direction = DirectionRound(tmp);
    } else {
        if (this->actionDelay) {
            this->actionDelay--;
            return;
        }
        this->actionDelay = Random() & 3;
        if (sub_08049FA0(this) == 0 && (Random() & 3)) {
            tmp1 = sub_08049EE4(this);
            tmp2 = Random() & 8;
            tmp2 += 0xfc;
            this->direction = DirectionRound(tmp1 + tmp2);
        } else {
            this->direction = DirectionRound(Random());
        }
    }
}
