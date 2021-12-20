#include "object.h"
#include "menu.h"
#include "structures.h"
#include "functions.h"

void sub_0809F318(Entity*);
void sub_0809F374(Entity*);
void sub_0809F3E8(Entity*);
void sub_0809F408(Entity*);
void sub_0809F448(Entity*);

void (*const gUnk_081246F4[])(Entity*) = { sub_0809F318, sub_0809F374, sub_0809F3E8, sub_0809F408 };

const u8 gUnk_08124704[] = { 0, 1, 2, 4 };

typedef struct {
    u8 unk_0;
    u8 unk_1;
} PACKED struct_08124708;

const struct_08124708 gUnk_08124708[5] = { { 0, 0x2F }, { 1, 0x20 }, { 1, 0x16 }, { 2, 0x10 }, { 3, 0x01 } };

void ObjectA2(Entity* this) {
    gUnk_081246F4[this->action](this);
    GetNextFrame(this);
}

void sub_0809F318(Entity* this) {
    InitializeAnimation(this, 0);
    if (Random() & 0x10) {
        this->spriteSettings.flipX = 1;
    }
    this->x.HALF.HI = 0x28;
    this->y.HALF.HI = 0x48;
    this->z.HALF.HI = 0xFFB0;
    this->spriteOrientation.flipY = 2;
    this->action = 1;
    ChangeObjPalette(this, gUnk_08124704[this->type]);
    SetDefaultPriority(this, PRIO_HIGHEST);
}

void sub_0809F374(Entity* this) {
    sub_0806F69C(this);
#ifndef EU
    if (gSaveHeader->gameLanguage < 2) {
        if (sub_080044EC(this, 0x2000) < 2) {
            this->z.WORD = 0;
            this->action = 2;
            InitializeAnimation(this, 1);
            SoundReq(SFX_186);
        } else {
            this->actionDelay++;
        }
    } else {
#endif
        switch (sub_080044EC(this, 0x2000)) {
            default:
                this->actionDelay++;
                break;
            case 0:
                this->action = 2;
                InitializeAnimation(this, 1);
                // fall through
            case 1:
                this->actionDelay = 0;
                sub_0809F448(this);
                SoundReq(SFX_186);
        }
#ifndef EU
    }
#endif
}

void sub_0809F3E8(Entity* this) {
    if (this->frame & 0x80) {
        this->action = 3;
        InitializeAnimation(this, 2);
    }
}

void sub_0809F408(Entity* this) {
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
    const struct_08124708* tmp2 = &gUnk_08124708[this->field_0xf];
    this->field_0xf++;
    tmp = 0x280000 - this->x.WORD;
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
    this->direction = sub_080045DA(tmp, 0) >> 3;
}
