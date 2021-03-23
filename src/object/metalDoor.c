#include "global.h"
#include "entity.h"
#include "room.h"
#include "flags.h"
#include "audio.h"
#include "functions.h"

extern u32 sub_08083734(Entity*, u32);
extern void sub_080A080C(Entity*);
extern void sub_080A0870(Entity*);
extern u32 sub_080001DA(u32, u32);

extern void (*const gUnk_0812493C[])(Entity*);

extern Hitbox gUnk_080FD180;

void MetalDoor(Entity* this) {
    gUnk_0812493C[this->action](this);
}

void sub_080A0684(Entity* this) {
    if ((this->cutsceneBeh.HWORD != 0xffff) && CheckFlags(this->cutsceneBeh.HWORD)) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->speed = 0x300;
    this->spriteSettings.b.draw = 0;
    this->frameIndex = 0;
    this->spriteSettings.b.flipY = 1;
    this->hitbox = &gUnk_080FD180;
    this->spritePriority.b0 = 5;
    this->field_0x70.HALF.LO = this->x.HALF.HI;
    this->field_0x70.HALF.HI = this->y.HALF.HI;
    this->field_0x74.HWORD = COORD_TO_TILE(this);
}

void sub_080A0718(Entity* this) {
    if (sub_08083734(this, 2) != 0) {
        this->action = 2;
        this->actionDelay = 0xc;
        this->spriteSettings.b.draw = TRUE;
        this->direction = 0;
        this->y.HALF.HI += 0x24;
        sub_080A080C(this);
    }
}

void sub_080A074C(Entity* this) {
    u8 bVar1;
    Entity* ent;

    sub_0806F69C(this);

    if (--this->actionDelay == 0) {
        this->action = 3;
        this->height.HALF.HI = 0;
        this->x.HALF.HI = this->field_0x70.HALF.LO;
        this->y.HALF.HI = this->field_0x70.HALF.HI;
        ent = CreateFx(this, 0x11, 0x40);
        if (ent != NULL) {
            ent->x.HALF.HI += 0xc;
            ent->y.HALF.HI -= 0xc;
        }
        ent = CreateFx(this, 0x11, 0x40);
        if (ent != NULL) {
            ent->x.HALF.HI -= 0xc;
            ent->y.HALF.HI -= 0xc;
        }
        EnqueueSFX(0x10b);
    }
}

void sub_080A07BC(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        this->action = 4;
        this->actionDelay = 0xc;
        this->direction = 0x10;
        this->y.HALF.HI += 2;
        sub_080A0870(this);
        SoundReq(SFX_10B);
    }
}

void sub_080A07F0(Entity* this) {

    sub_0806F69C(this);

    if (--this->actionDelay == 0) {
        DeleteThisEntity();
    }
}

void sub_080A080C(Entity* this) {
    this->field_0x76.HWORD = sub_080001DA(this->field_0x74.HWORD - 1, this->collisionLayer);
    this->field_0x78.HWORD = sub_080001DA(this->field_0x74.HWORD, this->collisionLayer);
    this->field_0x7a.HWORD = sub_080001DA(this->field_0x74.HWORD + 1, this->collisionLayer);
    SetTile(0x4022, this->field_0x74.HWORD - 1, this->collisionLayer);
    SetTile(0x4022, this->field_0x74.HWORD, this->collisionLayer);
    SetTile(0x4022, this->field_0x74.HWORD + 1, this->collisionLayer);
}

void sub_080A0870(Entity* this) {
    SetTile(this->field_0x76.HWORD, this->field_0x74.HWORD - 1, this->collisionLayer);
    SetTile(this->field_0x78.HWORD, this->field_0x74.HWORD, this->collisionLayer);
    SetTile(this->field_0x7a.HWORD, this->field_0x74.HWORD + 1, this->collisionLayer);
}
