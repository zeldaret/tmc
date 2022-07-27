/**
 * @file flame.c
 * @ingroup Objects
 *
 * @brief Flame object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "sound.h"

extern void sub_0807AB44(Entity*, s32, s32);

void (*const Flame_Actions[])(Entity*);

void Flame(Entity* this) {
    Flame_Actions[this->action](this);
}

void Flame_Init(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    if (this->type2 != 0) {
        this->timer = this->type2;
    }
    InitializeAnimation(this, 0);
    switch (this->type) {
        case 1:
            this->y.HALF.HI -= 8;
            this->timer = 40;
            break;
        case 2:
            this->timer = 15;
            sub_08004168(this);
            break;
        case 3:
            CopyPosition(this->parent, this);
            break;
        case 4:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                this->spriteSettings.draw = FALSE;
                this->subAction = 1;
                return;
            }
    }
    EnqueueSFX(SFX_124);
}

void Flame_Action1(Entity* this) {
    u32 val;
    GetNextFrame(this);

    switch (this->type) {
        case 0:
        default:
            if (this->type2 == 0)
                return;
        case 1:
        case 2:
            if (this->timer-- != 0)
                return;
            if (this->type == 2) {
                sub_0807B7D8(((u16*)this->child)[3], COORD_TO_TILE(this), this->collisionLayer);
                sub_0807AB44(this, 0, 0x10);
                sub_0807AB44(this, 0, -0x10);
                sub_0807AB44(this, 0x10, 0);
                sub_0807AB44(this, -0x10, 0);
            }
            DeleteThisEntity();
            break;
        case 3:
            if (this->parent->next == NULL) {
                DeleteThisEntity();
            }
            if (--this->timer == 0) {
                DeleteThisEntity();
            }

            CopyPosition(this->parent, this);
            break;
        case 4:
            val = CheckFlags(this->field_0x86.HWORD);
            if (this->subAction == 0) {
                if (val)
                    return;
                this->subAction = 1;
                this->spriteSettings.draw = 0;
            } else {
                if (!val)
                    return;
                this->subAction = 0;
                this->spriteSettings.draw = 1;
                InitializeAnimation(this, 0);
                EnqueueSFX(SFX_124);
            }
            break;
    }
}

void (*const Flame_Actions[])(Entity*) = {
    Flame_Init,
    Flame_Action1,
};
