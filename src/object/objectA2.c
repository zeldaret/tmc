/**
 * @file objectA2.c
 * @ingroup Objects
 *
 * @brief Object A2 object
 */
#include "functions.h"
#include "menu.h"
#include "object.h"
#include "structures.h"

void ObjectA2_Init(Entity*);
void ObjectA2_Action1(Entity*);
void ObjectA2_Action2(Entity*);
void ObjectA2_Action3(Entity*);
void sub_0809F448(Entity*);

void (*const ObjectA2_Actions[])(Entity*) = { ObjectA2_Init, ObjectA2_Action1, ObjectA2_Action2, ObjectA2_Action3 };

const u8 gUnk_08124704[] = { 0, 1, 2, 4 };

typedef struct {
    u8 unk_0;
    u8 unk_1;
} PACKED struct_08124708;

const struct_08124708 gUnk_08124708[5] = { { 0, 0x2F }, { 1, 0x20 }, { 1, 0x16 }, { 2, 0x10 }, { 3, 0x01 } };

void ObjectA2(Entity* this) {
    ObjectA2_Actions[this->action](this);
    GetNextFrame(this);
}

#define fp(n) ((n) << 8)

void ObjectA2_Init(Entity* this) {
    InitializeAnimation(this, 0);
    if (Random() & 0x10) {
        this->spriteSettings.flipX = 1;
    }
    this->x.HALF.HI = Q_8_8(0.16);
    this->y.HALF.HI = Q_8_8(0.285);
    this->z.HALF.HI = Q_8_8(-0.315);
    this->spriteOrientation.flipY = 2;
    this->action = 1;
    ChangeObjPalette(this, gUnk_08124704[this->type]);
    SetEntityPriority(this, PRIO_HIGHEST);
}

void ObjectA2_Action1(Entity* this) {
    LinearMoveUpdate(this);
#ifndef EU
    if (gSaveHeader->language < 2) {
        if (BounceUpdate(this, Q_8_8(32.0)) < BOUNCE_AIRBORNE) {
            this->z.WORD = 0;
            this->action = 2;
            InitializeAnimation(this, 1);
            SoundReq(SFX_186);
        } else {
            this->timer++;
        }
    } else {
#endif
        switch (BounceUpdate(this, Q_8_8(32.0))) {
            default:
                this->timer++;
                break;
            case BOUNCE_DONE_ALL:
                this->action = 2;
                InitializeAnimation(this, 1);
                // fall through
            case BOUNCE_INIT_NEXT:
                this->timer = 0;
                sub_0809F448(this);
                SoundReq(SFX_186);
        }
#ifndef EU
    }
#endif
}

void ObjectA2_Action2(Entity* this) {
    if (this->frame & ANIM_DONE) {
        this->action = 3;
        InitializeAnimation(this, 2);
    }
}

void ObjectA2_Action3(Entity* this) {
    switch (this->frame) {
        case 9:
            this->frame = 0;
            CreateFx(this, FX_BIG_EXPLOSION2, 0);
            gMenu.field_0x0 = 1;
            break;
        case 0x80:
            gMenu.field_0x4 = 1;
            DeleteThisEntity();
    }
}

void sub_0809F448(Entity* this) {
    s32 tmp;
    int rand = Random();
    const struct_08124708* tmp2 = &gUnk_08124708[this->subtimer];
    this->subtimer++;
    tmp = Q_16_16(40.0) - this->x.WORD;
    switch (tmp2->unk_0) {
        case 0:
            tmp = rand % 0x180000;
            if (rand & 0x1000000) {
                tmp = -tmp;
            }
            break;
        case 1:
            tmp += -0x80000 + (rand & 0xFFFFF);
            break;
    }
    this->speed = (tmp > 0 ? tmp : -tmp) / (tmp2->unk_1 << 8);
    this->direction = CalculateDirectionFromOffsets(tmp, 0) >> 3;
}
