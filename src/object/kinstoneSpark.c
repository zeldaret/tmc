/**
 * @file kinstoneSpark.c
 * @ingroup Objects
 *
 * @brief Kinstone Fusion Particle object
 */
#include "functions.h"
#include "kinstone.h"
#include "object.h"

void sub_080A0ADC(Entity*);
void sub_080A0AF0(Entity*);
void sub_080A0AC4(Entity*);
void sub_080A0AD0(Entity*);
void sub_080A0B4C(Entity*);
void sub_080A0B60(Entity*);
void sub_080A0B80(Entity*);

void KinstoneSpark(Entity* this) {
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
        ChangeObjPalette(this, gKinstoneWorldEvents[gFuseInfo.kinstoneId].objPalette);
    }
    GetNextFrame(this);
}

void sub_080A0AC4(Entity* this) {
    InitializeAnimation(this, this->type);
}

void sub_080A0AD0(Entity* this) {
    GravityUpdate(this, Q_8_8(0.5));
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
    GravityUpdate(this, Q_8_8(0.5));
}

void sub_080A0B28(Entity* this, ScriptExecutionContext* context) {
    LookAt(this, context, this->x.HALF.HI, this->y.HALF.HI);
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
    this->y.WORD -= Q_16_16(2.5);
}
