
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

extern void (*const IceProjectile_Actions[])(Entity*);

void IceProjectile(Entity* this) {
    if (GetNextFunction(this) != 0) {
        DeleteThisEntity();
    }
    IceProjectile_Actions[this->action](this);
}

void IceProjectile_Init(Entity* this) {
    if (this->type == 0) {
        this->action = 1;
        InitializeAnimation(this, this->direction >> 3);
    } else {
        this->action = 2;
        InitializeAnimation(this, this->direction >> 3 | 4);
        EnqueueSFX(SFX_160);
    }
}

void IceProjectile_Action1(Entity* this) {
    u32 direction;
    Entity* parent;

    parent = this->parent;
    if (parent == NULL) {
        DeleteEntity(this);
    } else {
        if (parent->next == NULL) {
            DeleteEntity(this);
        } else {
            if (this->spriteSettings.b.draw == 1) {
                CopyPosition(parent, this);
                if (this->actionDelay != 0) {
                    direction = parent->direction & 0x18;
                    this->direction = direction;
                    this->actionDelay = 0;
                    InitializeAnimation(this, direction >> 3);
                }
            }
            GetNextFrame(this);
        }
    }
}

void IceProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (sub_080A7EB0(this) != 0) {
            DeleteEntity(this);
        } else {
            sub_08016AD2(this);
        }
    } else {
        this->action = 3;
        COLLISION_OFF(this);
        this->speed = 0;
    }
}

void IceProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteEntity(this);
    }
}

void (*const IceProjectile_Actions[])(Entity*) = {
    IceProjectile_Init,
    IceProjectile_Action1,
    IceProjectile_Action2,
    IceProjectile_Action3,
};
