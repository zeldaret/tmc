#include "enemy.h"
#include "entity.h"
#include "functions.h"

void sub_08022EAC(Entity*);
void sub_08022F14(Entity*);

extern void (*const gUnk_080CBB90[])(Entity*);
extern void (*const gUnk_080CBBA0[])(Entity*);
extern void (*const gUnk_080CBBB4[])(Entity*);
extern void (*const gUnk_080CBBBC[])(Entity*);

extern u8 gEntCount;
extern const s8 gUnk_080CBBC4[];

void Moldorm(Entity* this) {
    gUnk_080CBB90[this->entityType.form](this);
}

void sub_08022BA0(Entity* this) {
    this->field_0x78.HALF.HI++;
    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
    EnemyFunctionHandler(this, gUnk_080CBBA0);
    sub_08022EAC(this);
}

void sub_08022BD4(Entity* this) {
    gUnk_080CBBB4[this->action](this);
}

void sub_08022BEC(Entity* this) {
    if (this->field_0x7a.HALF.LO != this->currentHealth)
        this->field_0x7a.HALF.HI = 30;

    this->field_0x7a.HALF.LO = this->currentHealth;
    this->actionDelay = 1;
    this->direction = this->field_0x3e;

    this->animationState = ((this->direction + 2) & 0x1c) >> 2;
    this->frameIndex = this->animationState;

    this->attachedEntity->hurtBlinkTime = this->hurtBlinkTime;
    (*(Entity**)&this->field_0x7c)->hurtBlinkTime = this->hurtBlinkTime;
    (*(Entity**)&this->field_0x80)->hurtBlinkTime = this->hurtBlinkTime;
    sub_0804AA30(this, gUnk_080CBBA0);
}

void sub_08022C58(Entity* this) {
    Entity *tail0, *tail1, *tail2;

    this->flags &= ~0x80;

    if (gEntCount >= 0x45)
        return;

    tail0 = CreateEnemy(0xd, 1);
    this->attachedEntity = tail0;
    tail0->spritePriority.b0 = 5;
    tail0->parent = this;
    CopyPosition(this, tail0);

    tail1 = CreateEnemy(0xd, 2);
    tail0->attachedEntity = tail1;
    tail1->spritePriority.b0 = 5;
    tail1->parent = this;
    CopyPosition(this, tail1);

    tail2 = CreateEnemy(0xd, 3);
    tail1->attachedEntity = tail2;
    tail2->spritePriority.b0 = 5;
    tail2->parent = this;
    CopyPosition(this, tail2);

    sub_0804A720(this);
    this->action = 1;
    this->actionDelay = 1;
    this->field_0xf = 1;
    this->flags = this->flags | 0x80;
    this->parent = this;
    this->attachedEntity = tail0;
    *(Entity**)&this->field_0x7c = tail1;
    *(Entity**)&this->field_0x80 = tail2;

    this->direction = Random() & 0x1f;
    this->animationState = ((this->direction + 2) & 0x1c) >> 2;
    this->frameIndex = this->animationState;
    this->field_0x7a.HALF.LO = this->currentHealth;
}

void sub_08022D40(Entity* this) {
    if (this->field_0x7a.HALF.HI) {
        if (this->field_0x7a.HALF.HI-- & 1) {
            this->animationState = (this->animationState + 1) & 7;
            this->frameIndex = this->animationState;
        }
    } else {
        sub_08022F14(this);
        ProcessMovement(this);

        if (this->collisions) {
            sub_0800417E(this, this->collisions);
            this->animationState = ((this->direction + 2) & 0x1c) >> 2;
            this->frameIndex = this->animationState;
        }
    }
}

void sub_08022D90(Entity* this) {
    if (this->parent->next) {
        Entity* parent;

        gUnk_080CBBBC[this->action](this);
        parent = this->parent;
        this->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = parent->spriteRendering.b3;
        this->collisionLayer = parent->collisionLayer;
    } else {
        DeleteEntity(this);
    }
}

void sub_08022DE8(Entity* this) {
    this->action = 1;
    this->field_0x7c.BYTES.byte0 = 0x88;
    this->field_0x7c.BYTES.byte1 = 0x88;
    this->field_0x7c.BYTES.byte2 = 0x88;
    this->field_0x7c.BYTES.byte3 = 0x88;
    this->field_0x80.HALF.LO = 0x88;
    this->field_0x80.HALF.HI = 0x88;
    this->field_0x82.HALF.LO = 0x88;
    this->field_0x82.HALF.HI = 0x88;
    this->animationState = this->parent->animationState;
    *(u32*)&this->cutsceneBeh = this->animationState * 0x11111111;

    if (this->entityType.form != 3) {
        this->frameIndex = this->entityType.form + 7;
    } else {
        this->frameIndex = this->animationState + 10;
    }
}

NAKED
void sub_08022E40(Entity* this) {
    asm(".include \"asm/non_matching/moldorm/sub_08022E40.inc\"");
}

NAKED
void sub_08022EAC(Entity* this) {
    asm(".include \"asm/non_matching/moldorm/sub_08022EAC.inc\"");
}

void sub_08022F14(Entity* this) {
    if (sub_08049FA0(this) == 0) {
        u32 bVar6 = (sub_08049EE4(this) - this->direction) & 0x1f;
        if (8 < ((bVar6 + 4) & 0x1f)) {
            this->field_0xf = 8;
            if (bVar6 < 0x10) {
                this->field_0x78.HALF.LO = 1;
            } else {
                this->field_0x78.HALF.LO = -1;
            }
        }
    }

    if (--this->actionDelay == 0) {
        this->actionDelay = 4;

        if (--this->field_0xf == 0) {
            this->field_0xf = 8;
            this->field_0x78.HALF.LO = gUnk_080CBBC4[Random() & 1];
        }

        this->direction += this->field_0x78.HALF.LO;
        this->direction &= 0x1f;

        this->animationState = ((this->direction + 2) & 0x1c) >> 2;
        this->frameIndex = this->animationState;
    }
}

// clang-format off
void (*const gUnk_080CBB90[])(Entity*) = {
    sub_08022BA0,
    sub_08022D90,
    sub_08022D90,
    sub_08022D90,
};

void (*const gUnk_080CBBA0[])(Entity*) = {
    sub_08022BD4,
    sub_08022BEC,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
};

void (*const gUnk_080CBBB4[])(Entity*) = {
    sub_08022C58,
    sub_08022D40,
};

void (*const gUnk_080CBBBC[])(Entity*) = {
    sub_08022DE8,
    sub_08022E40,
};

const s8 gUnk_080CBBC4[] = {
    1, -1, 0, 0,
};
// clang-format off
