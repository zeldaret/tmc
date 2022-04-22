#include "global.h"
#include "asm.h"
#include "entity.h"
#include "room.h"
#include "flags.h"
#include "sound.h"
#include "functions.h"
#include "effects.h"
#include "hitbox.h"

extern u32 sub_08083734(Entity*, u32);
void sub_080A080C(Entity*);
void sub_080A0870(Entity*);
void sub_080A0684(Entity*);
void sub_080A0718(Entity*);
void sub_080A074C(Entity*);
void sub_080A07BC(Entity*);
void sub_080A07F0(Entity*);

void MetalDoor(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_080A0684, sub_080A0718, sub_080A074C, sub_080A07BC, sub_080A07F0,
    };
    actionFuncs[this->action](this);
}

void sub_080A0684(Entity* this) {
    if ((this->cutsceneBeh.HWORD != 0xffff) && CheckFlags(this->cutsceneBeh.HWORD)) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->speed = 0x300;
    this->spriteSettings.draw = 0;
    this->frameIndex = 0;
    this->spriteSettings.flipY = 1;
    this->hitbox = (Hitbox*)&gHitbox_3;
    this->spritePriority.b0 = 5;
    this->field_0x70.HALF.LO = this->x.HALF.HI;
    this->field_0x70.HALF.HI = this->y.HALF.HI;
    this->field_0x74.HWORD = COORD_TO_TILE(this);
}

void sub_080A0718(Entity* this) {
    if (sub_08083734(this, 2) != 0) {
        this->action = 2;
        this->timer = 0xc;
        this->spriteSettings.draw = TRUE;
        this->direction = 0;
        this->y.HALF.HI += 0x24;
        sub_080A080C(this);
    }
}

void sub_080A074C(Entity* this) {
    u8 bVar1;
    Entity* ent;

    LinearMoveUpdate(this);

    if (--this->timer == 0) {
        this->action = 3;
        this->z.HALF.HI = 0;
        this->x.HALF.HI = this->field_0x70.HALF.LO;
        this->y.HALF.HI = this->field_0x70.HALF.HI;
        ent = CreateFx(this, FX_DASH, 0x40);
        if (ent != NULL) {
            ent->x.HALF.HI += 0xc;
            ent->y.HALF.HI -= 0xc;
        }
        ent = CreateFx(this, FX_DASH, 0x40);
        if (ent != NULL) {
            ent->x.HALF.HI -= 0xc;
            ent->y.HALF.HI -= 0xc;
        }
        EnqueueSFX(SFX_10B);
    }
}

void sub_080A07BC(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        this->action = 4;
        this->timer = 0xc;
        this->direction = 0x10;
        this->y.HALF.HI += 2;
        sub_080A0870(this);
        SoundReq(SFX_10B);
    }
}

void sub_080A07F0(Entity* this) {

    LinearMoveUpdate(this);

    if (--this->timer == 0) {
        DeleteThisEntity();
    }
}

void sub_080A080C(Entity* this) {
    this->field_0x76.HWORD = GetTileIndex(this->field_0x74.HWORD - 1, this->collisionLayer);
    this->field_0x78.HWORD = GetTileIndex(this->field_0x74.HWORD, this->collisionLayer);
    this->field_0x7a.HWORD = GetTileIndex(this->field_0x74.HWORD + 1, this->collisionLayer);
    SetTile(0x4022, this->field_0x74.HWORD - 1, this->collisionLayer);
    SetTile(0x4022, this->field_0x74.HWORD, this->collisionLayer);
    SetTile(0x4022, this->field_0x74.HWORD + 1, this->collisionLayer);
}

void sub_080A0870(Entity* this) {
    SetTile(this->field_0x76.HWORD, this->field_0x74.HWORD - 1, this->collisionLayer);
    SetTile(this->field_0x78.HWORD, this->field_0x74.HWORD, this->collisionLayer);
    SetTile(this->field_0x7a.HWORD, this->field_0x74.HWORD + 1, this->collisionLayer);
}
