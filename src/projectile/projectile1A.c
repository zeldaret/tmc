#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "functions.h"
#include "audio.h"
#include "random.h"

extern void (*const gUnk_0812A4C8[])(Entity*);

extern void (*const gUnk_0812A4DC[])(Entity*);

void sub_080AB4A4(Entity*);

extern void sub_0806F5BC(Entity*, u32, u32);
extern u32 sub_080041DC(Entity*, u32, u32);
s8* sub_080AB4F8(Entity*);

extern s8 gUnk_0812A4EC[];

void Projectile1A(Entity* this) {
    gUnk_0812A4C8[GetNextFunction(this)](this);
}

void sub_080AB2C4(Entity* this) {
    gUnk_0812A4DC[this->action](this);
}

void sub_080AB2DC(Entity* this) {
    if ((this->bitfield & 0x80) != 0) {
        this->action = 3;
        this->flags &= 0x7f;
        InitializeAnimation(this, 0x53);
        if ((this->bitfield & 0x7f) == 0) {
            ModHealth(-4);
        }
    }
}

void sub_080AB318(Entity* this) {
    s32 iVar2;
    u32 rnd;
    u32 x;
    u32 y;
    s8* data;

    this->action = 1;
    this->field_0x20 = -0x10000;
    this->field_0x76.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
    CopyPosition(this->parent, this);
    sub_0806F5BC(this, 0x1000, this->direction);
    this->spritePriority.b0 = 1;
    this->height = this->parent->height;
    InitializeAnimation(this, 0x51);
    SoundReq(SFX_1B5);
    data = sub_080AB4F8(this);
    x = this->x.HALF.HI + data[0];
    y = this->y.HALF.HI + data[1];
    iVar2 = sub_080041DC(this, x, y);
    rnd = Random() & 0x1ff;
    if ((gScreenTransition.frameCount & 1U) != 0) {

        iVar2 += rnd;
        if (0x400 < iVar2) {
            iVar2 = 0x400;
        }

    } else {
        iVar2 -= rnd;
        if (iVar2 < 0x20) {
            iVar2 = 0x20;
        }
    }
    this->field_0x20 = (this->height.WORD / (iVar2 << 8)) << 0xd;

    this->direction = sub_080045B4(this, x, y);
}

void sub_080AB414(Entity* this) {
    GetNextFrame(this);
    sub_0806F69C(this);
    if (sub_08003FC4(this, 0) == 0) {
        this->action = 2;
        this->actionDelay = 0xf;
        InitializeAnimation(this, 0x54);
        sub_080AB4A4(this);
    } else {
        if (++this->actionDelay > 0xe0) {
            DeleteThisEntity();
        }
    }
}

void sub_080AB45C(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        this->action = 3;
        this->flags &= 0x7f;
        InitializeAnimation(this, 0x53);
    }
}

void sub_080AB488(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        DeleteThisEntity();
    }
}

void sub_080AB4A4(Entity* this) {
    u32 tmp;
    u16 tile;

    tmp = this->field_0x76.HWORD;
    tile = TILE(this->x.HALF.HI, this->y.HALF.HI);
    if (tmp != tile) {
        this->field_0x76.HWORD = tile;
        switch (GetTileTypeByEntity(this)) {
            case 0x13:
            case 0x34:
                sub_0807B7D8(0x34c, this->field_0x76.HWORD, this->collisionLayer);
                break;
        }
    }
}

s8* sub_080AB4F8(Entity* this) {
    return &gUnk_0812A4EC[this->type << 5 | this->field_0xf << 1];
}
