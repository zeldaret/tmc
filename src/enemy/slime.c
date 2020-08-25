#include "global.h"
#include "entity.h"
#include "room.h"
#include "functions.h"

typedef struct {
    void* field_0x0;
    void* entityCount;
    u8 freezeTime;
} EntityHandler;

typedef struct {
    s8 h, v;
} PACKED PosOffset;

void sub_08044FF8(Entity*);
void sub_08045178(Entity*, Entity*, int, int);

extern void sub_0804A9FC(Entity*, u32);
extern void sub_0804A720(Entity*);
extern u32 sub_0806FA04(u32, u32);
extern u32 sub_08049FA0(Entity*);
extern u32 sub_08049EE4(Entity*);
extern void sub_0804A4E4(Entity*, Entity*);
extern u32 sub_080002CC(Entity*, s32, s32);

extern void (*const gUnk_080D16BC[])(Entity*);
extern void (*const gUnk_080D16A4[])(Entity*);
extern u8 gUnk_080D16D0[4]; // Entity count per form
extern PosOffset gUnk_080D16D4[4];

extern u8 gEntCount;
extern EntityHandler gUnk_03003DB8;

void Slime(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080D16A4);
    SetChildOffset(this, 0, 1, -12);
}

void sub_08044F70(Entity* this) {
    gUnk_080D16BC[this->action](this);
}

void sub_08044F88(Entity* this) {
    if ((this->currentHealth != 0) && (this->cutsceneBeh.HALF.LO != this->currentHealth)) {
        this->action = 4;
    } else {
        sub_0804AA30(this, gUnk_080D16A4);
    }

    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 28);
    }
}

void nullsub_171() {
}

void sub_08044FC8(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->nonPlanarMovement = 128;
    sub_0804A720(this);
    InitializeAnimation(this, 0);
    sub_08044FF8(this);
}

void sub_08044FF8(Entity* this) {
    this->action = 2;
    this->actionDelay = (Random() & 31) + 30;
    this->cutsceneBeh.HALF.LO = this->currentHealth;
}

void sub_08045018(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->actionDelay = 1;
        if (0 < this->nonPlanarMovement) {
            this->actionDelay = sub_0806FA04(4096, this->nonPlanarMovement) >> 8;
        }
        if (sub_08049FA0(this) == 0 && (Random() & 3)) {
            this->direction = (sub_08049EE4(this) + 0xfc + (Random() & 8)) & 24;
            return;
        }
        this->direction = Random() & 24;
    }
}

void sub_08045088(Entity* this) {
    sub_080AEF88(this);
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        this->action = 1;
    }
}

/* Split slime into new ones */
void sub_080450A8(Entity* this) {
    Entity* entities[4];
    Entity* ent;
    s32 count, i;
    PosOffset* off;

    /* Can we create enough new entities? */
    count = gUnk_080D16D0[this->entityType.form];
    if (72 - count <= gEntCount)
        return;

    /* Create 2-4 new MiniSlime */
    for (i = 0; i < count; i++)
        entities[i] = CreateEnemy(0x57, this->entityType.form);

    off = gUnk_080D16D4;
    for (i = 0; i < count; i++) {
        ent = entities[i];
        ent->attachedEntity = entities[(i + 1) % count];
        ent->parent = entities[(i + count - 1) % count];
        ent->entityType.parameter = 1;
        ent->height.HALF.HI = 0;
        ent->hurtBlinkTime = -0x10;

        /* Set MiniSlime offset relative to killed slime. */
        sub_08045178(this, ent, off->h, off->v);
        off++;
    }

    ent = CreateFx(this, 2, 0);
    if (ent)
        CopyPosition(this, ent);

    DeleteEntity(this);
}

void sub_08045178(Entity* this, Entity* child, int h, int v) {
    int x, y;

    if (child == NULL)
        return;

    sub_0804A4E4(this, child);
    if (sub_080002CC(child, h, v))
        return;

    x = child->x.HALF.HI + h;
    if (0 <= x && x < (gRoomControls.roomOriginX + gRoomControls.width))
        child->x.HALF.HI = x;

    y = child->y.HALF.HI + v;
    if (0 <= y && y < (gRoomControls.roomOriginY + gRoomControls.height))
        child->y.HALF.HI = y;
}
