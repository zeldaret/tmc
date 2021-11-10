#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

extern void (*const WindProjectile_Actions[])(Entity*);

void WindProjectile(Entity* this) {
    if (GetNextFunction(this) != 0) {
        DeleteThisEntity();
    }
    WindProjectile_Actions[this->action](this);
}

void WindProjectile_Init(Entity* this) {
    if (this->type == 0) {
        this->action = 1;
        InitializeAnimation(this, this->direction >> 3);
    } else {
        this->action = 2;
        InitializeAnimation(this, this->direction >> 3 | 4);
        EnqueueSFX(SFX_15F);
    }
}

void WindProjectile_Action1(Entity* this) {
    u32 direction;
    Entity* parent = this->parent;
    if (parent == NULL) {
        DeleteEntity(this);
    } else {
        if (parent->next == NULL) {
            DeleteEntity(this);
        } else {
            if (this->spriteSettings.b.draw == 1) {
                CopyPosition(parent, this);
                direction = (parent->direction + 4) & 0x18;
                if (this->actionDelay != 0) {
                    this->direction = direction;
                    this->animationState = direction >> 2;
                    this->actionDelay = 0;
                    InitializeAnimation(this, direction >> 3);
                } else {
                    if (direction >> 2 != this->animationState) {
                        this->direction = direction;
                        this->animationState = direction >> 2;
                        InitializeAnimation(this, direction >> 3);
                    }
                }
            }
            GetNextFrame(this);
        }
    }
}

void WindProjectile_Action2(Entity* this) {
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

void WindProjectile_Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteEntity(this);
    }
}

void (*const WindProjectile_Actions[])(Entity*) = {
    WindProjectile_Init,
    WindProjectile_Action1,
    WindProjectile_Action2,
    WindProjectile_Action3,
};
