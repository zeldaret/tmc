
#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "audio.h"

extern void (*const gUnk_081298B8[])(Entity*);

extern s32 sub_080AF090(Entity*);
extern s32 sub_080A7EB0(Entity*);
extern void sub_08016AD2(Entity*);

void Projectile9(Entity* this) {
    if (GetNextFunction(this) != 0) {
        DeleteThisEntity();
    }
    gUnk_081298B8[this->action](this);
}

void sub_080A8CD4(Entity* this) {
    if (this->type == 0) {
        this->action = 1;
        InitializeAnimation(this, this->direction >> 3);
    } else {
        this->action = 2;
        InitializeAnimation(this, this->direction >> 3 | 4);
        EnqueueSFX(SFX_160);
    }
}

void sub_080A8D0C(Entity* this) {
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

void sub_080A8D60(Entity* this) {
    GetNextFrame(this);
    if (sub_080AF090(this) != 0) {
        if (sub_080A7EB0(this) != 0) {
            DeleteEntity(this);
        } else {
            sub_08016AD2(this);
        }
    } else {
        this->action = 3;
        this->flags &= 0x7f;
        this->speed = 0;
    }
}

void sub_080A8DA0(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteEntity(this);
    }
}
