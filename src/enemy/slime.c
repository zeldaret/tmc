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
    s8 h, v;
} PACKED PosOffset;

void sub_08044FF8(Entity*);
void Slime_OnTick(Entity*);
void Slime_OnCollision(Entity*);
void Slime_OnGrabbed(Entity*);
void sub_08044FC8(Entity*);
void sub_08044FF8(Entity*);
void sub_08045018(Entity*);
void sub_08045088(Entity*);
void sub_080450A8(Entity*);
void sub_08045178(Entity*, Entity*, int, int);

static void (*const Slime_Functions[])(Entity*) = {
    Slime_OnTick, Slime_OnCollision, GenericKnockback, GenericDeath, GenericConfused, Slime_OnGrabbed,
};

void Slime(Entity* this) {
    EnemyFunctionHandler(this, Slime_Functions);
    SetChildOffset(this, 0, 1, -12);
}

void Slime_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08044FC8, sub_08044FF8, sub_08045018, sub_08045088, sub_080450A8,
    };
    actionFuncs[this->action](this);
}

void Slime_OnCollision(Entity* this) {
    if ((this->health != 0) && (this->cutsceneBeh.HALF.LO != this->health)) {
        this->action = 4;
    } else {
        EnemyFunctionHandlerAfterCollision(this, Slime_Functions);
    }

    if (this->confusedTime != 0) {
        Create0x68FX(this, FX_STARS);
    }
}

void Slime_OnGrabbed(Entity* this) {
}

void sub_08044FC8(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->speed = 128;
    sub_0804A720(this);
    InitializeAnimation(this, 0);
    sub_08044FF8(this);
}

void sub_08044FF8(Entity* this) {
    this->action = 2;
    this->timer = (Random() & 31) + 30;
    this->cutsceneBeh.HALF.LO = this->health;
}

void sub_08045018(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action = 3;
        this->timer = 1;
        if (0 < this->speed) {
            this->timer = FixedDiv(4096, this->speed) >> 8;
        }
        if (sub_08049FA0(this) == 0 && (Random() & 3)) {
            this->direction = (sub_08049EE4(this) + 0xfc + (Random() & 8)) & 24;
            return;
        }
        this->direction = Random() & 24;
    }
}

void sub_08045088(Entity* this) {
    ProcessMovement0(this);
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action = 1;
    }
}

/* Split slime into new ones */
void sub_080450A8(Entity* this) {
    Entity* entities[4];
    Entity* ent;
    s32 count, i;
    const PosOffset* off;
    static const u8 typeEntityCount[4] = { 2, 2, 4, 2 };
    static const PosOffset gUnk_080D16D4[4] = { { 6, 0 }, { -6, 0 }, { 0, 6 }, { 0, -6 } };

    /* Can we create enough new entities? */
    count = typeEntityCount[this->type];
    if (MAX_ENTITIES + 1 - count <= gEntCount)
        return;

    /* Create 2-4 new MiniSlime */
    for (i = 0; i < count; i++)
        entities[i] = CreateEnemy(MINI_SLIME, this->type);

    off = gUnk_080D16D4;
    for (i = 0; i < count; i++) {
        ent = entities[i];
        ent->child = entities[(i + 1) % count];
        ent->parent = entities[(i + count - 1) % count];
        ent->type2 = 1;
        ent->z.HALF.HI = 0;
        ent->iframes = -0x10;

        /* Set MiniSlime offset relative to killed slime. */
        sub_08045178(this, ent, off->h, off->v);
        off++;
    }

    ent = CreateFx(this, FX_DEATH, 0);
    if (ent != NULL)
        CopyPosition(this, ent);

    DeleteEntity(this);
}

void sub_08045178(Entity* this, Entity* child, int h, int v) {
    int x, y;

    if (child == NULL)
        return;

    sub_0804A4E4(this, child);
    if (sub_080B1AF0(child, h, v))
        return;

    x = child->x.HALF.HI + h;
    if (0 <= x && x < (gRoomControls.origin_x + gRoomControls.width))
        child->x.HALF.HI = x;

    y = child->y.HALF.HI + v;
    if (0 <= y && y < (gRoomControls.origin_y + gRoomControls.height))
        child->y.HALF.HI = y;
}
