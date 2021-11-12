
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

extern void (*const FireProjectile_Actions[])(Entity*);

void FireProjectile(Entity* this) {
    if (GetNextFunction(this) != 0) {
        DeleteThisEntity();
    }
    FireProjectile_Actions[this->action](this);
}

void FireProjectile_Init(Entity* this) {
    if (this->type == 0) {
        this->action = 1;
        InitializeAnimation(this, this->direction >> 3);
    } else {
        this->action = 2;
        InitializeAnimation(this, this->direction >> 3 | 4);
        EnqueueSFX(SFX_15E);
    }
}

void FireProjectile_Action1(Entity* this) {
    u32 direction;
    Entity* parent = this->parent;
    if (parent == NULL) {
        DeleteEntity(this);
    } else {
        if (parent->next == NULL) {
            DeleteEntity(this);
        } else {
            if (this->spriteSettings.draw == 1) {
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

void FireProjectile_Action2(Entity* this) {
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

void FireProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) != 0) {
        DeleteEntity(this);
    }
}

void (*const FireProjectile_Actions[])(Entity*) = {
    FireProjectile_Init,
    FireProjectile_Action1,
    FireProjectile_Action2,
    FireProjectile_Action3,
};
