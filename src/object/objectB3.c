/**
 * @file objectB3.c
 * @ingroup Objects
 *
 * @brief ObjectB3 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "kinstone.h"

void sub_080A0ADC(Entity*);
void sub_080A0AF0(Entity*);
void sub_080A0AC4(Entity*);
void sub_080A0AD0(Entity*);
void sub_080A0B4C(Entity*);
void sub_080A0B60(Entity*);
void sub_080A0B80(Entity*);

void ObjectB3(Entity* this) {
    static void (*const gUnk_08124A10[])(Entity*) = {
        sub_080A0ADC,
        sub_080A0AF0,
    };
    static void (*const gUnk_08124A18[])(Entity*) = {
        sub_080A0AC4,
        sub_080A0AD0,
    };
    static void (*const gUnk_08124A20[])(Entity*) = {
        sub_080A0B4C,
        sub_080A0B60,
        sub_080A0B80,
    };
    void (*const* ptr)(Entity*);

    switch (this->type) {
        case 0:
            if ((this->flags & 2) != 0) {
                ptr = gUnk_08124A10;
            } else {
                ptr = gUnk_08124A18;
            }
            break;
        case 1:
            ptr = gUnk_08124A20;
            break;
    }
    ptr[this->action](this);
    if (this->action == 0) {
        this->action = 1;
        this->spriteRendering.b3 = 1;
        this->spritePriority.b0 = 0;
        this->spriteOrientation.flipY = 1;
        ChangeObjPalette(this, gUnk_080C9CBC[gFuseInfo._3].unk0);
    }
    GetNextFrame(this);
}

void sub_080A0AC4(Entity* this) {
    InitializeAnimation(this, this->type);
}

void sub_080A0AD0(Entity* this) {
    GravityUpdate(this, 0x80);
}

void sub_080A0ADC(Entity* this) {
    sub_0807DD64(this);
    ExecuteScriptForEntity(this, NULL);
}

void sub_080A0AF0(Entity* this) {
    ExecuteScriptForEntity(this, NULL);
    GetNextFrame(this);
    if (this->animIndex == 5) {
        if ((this->frame & ANIM_DONE) != 0) {
            DeleteThisEntity();
        }
    }
    GravityUpdate(this, 0x80);
}

void sub_080A0B28(Entity* this, ScriptExecutionContext* context) {
    sub_0807DEDC(this, context, this->x.HALF.HI, this->y.HALF.HI);
    this->y.HALF.HI -= 0xb0;
    this->spriteSettings.draw = 0;
}

void sub_080A0B4C(Entity* this) {
    this->x.HALF.HI = 0x78;
    this->y.HALF.HI = 0x50;
    InitializeAnimation(this, 0);
}

void sub_080A0B60(Entity* this) {
    if ((this->frame & 0x40) != 0) {
        this->action = 2;
        SoundReq(SFX_136);
    }
}

void sub_080A0B80(Entity* this) {
    this->y.WORD -= 0x28000;
}
