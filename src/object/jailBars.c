#include "global.h"
#include "entity.h"
#include "flags.h"
#include "room.h"
#include "audio.h"

extern void sub_080A0960(Entity*, u32);
extern void sub_0801AF18(u8*, u32, u32);

extern void (*const gUnk_08124950[])(Entity*);
extern u8 gUnk_08124960;
extern u8 gUnk_0812497A;

void JailBars(Entity* this) {
    gUnk_08124950[this->action](this);
}

void sub_080A08C4(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) == 0) {
        this->action = 1;
        sub_080A0960(this, 0);
    } else {
        this->action = 3;
        InitializeAnimation(this, 1);
        sub_080A0960(this, 1);
    }
    this->spriteSettings.b.draw = 3; // ???
    this->collisionLayer = 1;
    UpdateSpriteForCollisionLayer(this);
}

void sub_080A0910(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        this->action = 2;
        sub_080A0960(this, 1);
        SoundReq(SFX_10B);
    }
}

void sub_080A0938(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.b.f3) != 0) {
        this->action = 3;
        InitializeAnimation(this, 1);
    }
}

void nullsub_127(Entity* this) {
}

void sub_080A0960(Entity* this, u32 arg1) {
    u8* puVar1;

    puVar1 = &gUnk_08124960;
    if (arg1 == 1) {
        puVar1 = &gUnk_0812497A;
    }
    sub_0801AF18(puVar1, COORD_TO_TILE(this), 1);
}
