#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void (*const gUnk_0812A58C[])(Entity*);

extern void (*const gUnk_0812A5A0[])(Entity*);

extern s32 sub_080AF090(Entity*);
bool32 sub_080AB5F4(Entity*);

bool32 sub_080AB634(Entity*);

extern void sub_080043A8(Entity*);
extern void CreateItemOnGround(Entity*);
extern void CreateChestSpawner(Entity*);

extern u32 sub_080177A0(Entity*, Entity*);

void Projectile1B(Entity* this) {
    gUnk_0812A58C[GetNextFunction(this)](this);
}

void sub_080AB52C(Entity* this) {
    gUnk_0812A5A0[this->action](this);
}

void sub_080AB544(Entity* this) {
    u32 tmp;

    if (this->iframes < -4) {
        this->action = 2;
        this->direction = this->field_0x3e;
        tmp = (this->type ^ 2) << 3;
        if (this->direction - tmp + 1 < 3) {
            this->direction = tmp;
        }
        this->speed = 0x280;
    }
}

void sub_080AB580(Entity* this) {
    this->action = 1;
    this->direction = this->type << 3;
    this->height.HALF.HI = 0xfffc;
    InitializeAnimation(this, this->type);
}

void sub_080AB59C(Entity* this) {
    GetNextFrame(this);
    if (sub_080AF090(this) == 0) {
        CreateFx(this, 2, 0);
        DeleteThisEntity();
    }
    sub_080AB5F4(this);
}

void sub_080AB5C4(Entity* this) {
    GetNextFrame(this);
    sub_080AF090(this);
    if ((sub_080AB634(this) == 0) && (this->collisions != 0)) {
        CreateFx(this, 2, 0);
        DeleteThisEntity();
    }
}

bool32 sub_080AB5F4(Entity* this) {
    switch (sub_080043E8(this)) {
        case 1:
            CreateItemOnGround(this);
            return TRUE;
        case 2:
            sub_080043A8(this);
            return TRUE;
        case 3:
            CreateChestSpawner(this);
            return TRUE;
    }
    return FALSE;
}

bool32 sub_080AB634(Entity* this) {
    Entity** entities = ((Entity**)&this->parent->field_0x20);
    u32 i;
    for (i = 0; i <= 3; ++i) {
        if(entities[i] != NULL && (sub_080177A0(this, entities[i]) != 0)) {
            if (entities[i]->action < 3) {
                entities[i]->action = 3;
                entities[i]->actionDelay = 0x1e;
                entities[i]->spriteSettings.b.draw = 0;
                CreateFx(entities[i], 0x45, 0);
            }
            DeleteEntity(this);
            return TRUE;
        }
    }
    return FALSE;
}
