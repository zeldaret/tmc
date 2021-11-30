#include "entity.h"
#include "functions.h"
#include "player.h"
#include "script.h"
#include "flags.h"
#include "room.h"

extern void (*gUnk_08123D98[])(Entity *);

void sub_0809B7A0(Entity *e);
void sub_0809B7DC(Entity *this);
void sub_0809B7C0(Entity *this);

void Fireplace(Entity *e) {
	gUnk_08123D98[e->action](e);
}

void sub_0809B708(Entity *this) {
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->speed = 0x80;
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0809B7DC(this);
        DeleteThisEntity();
    } else {
        sub_0807B7D8(0x30b, TILE(this->x.HALF.HI, this->y.HALF.HI), 2);
        SetTile(0x4061, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    }
    sub_0809B7A0(this);
}

void sub_0809B7A0(Entity *this) {
    sub_0809B7C0(this);
    if (this->actionDelay) {
        SetFlag(this->field_0x86.HWORD);
        DeleteThisEntity();
    }
}

void sub_0809B7C0(Entity *this) {
    if (GetTileTypeByEntity(this) - 0x4061 > 1) {
        sub_0809B7DC(this);
    }
}

void sub_0809B7DC(Entity *this) {
    sub_0807B7D8(0xc3 << 2, TILE(this->x.HALF.HI, this->y.HALF.HI), 2);
    SetTile(0x4062, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    this->actionDelay = 1;
}
