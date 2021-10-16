#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "functions.h"
#include "audio.h"
#include "random.h"

extern void sub_0806F5BC(Entity*, u32, u32);
extern u32 sub_080041DC(Entity*, u32, u32);

extern void (*const V1FireProjectile_Functions[])(Entity*);
extern void (*const V1FireProjectile_Actions[])(Entity*);
extern const s8 gUnk_0812A4EC[];

void sub_080AB4A4(Entity*);
s8* sub_080AB4F8(Entity*);

void V1FireProjectile(Entity* this) {
    V1FireProjectile_Functions[GetNextFunction(this)](this);
}

void V1FireProjectile_OnTick(Entity* this) {
    V1FireProjectile_Actions[this->action](this);
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

void V1FireProjectile_Init(Entity* this) {
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

void V1FireProjectile_Action1(Entity* this) {
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

void V1FireProjectile_Action2(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        this->action = 3;
        this->flags &= 0x7f;
        InitializeAnimation(this, 0x53);
    }
}

void V1FireProjectile_Action3(Entity* this) {
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
    return (s8*)&gUnk_0812A4EC[this->type << 5 | this->field_0xf << 1];
}

void (*const V1FireProjectile_Functions[])(Entity*) = {
    V1FireProjectile_OnTick, sub_080AB2DC, DeleteEntity, DeleteEntity, DeleteEntity,
};
void (*const V1FireProjectile_Actions[])(Entity*) = {
    V1FireProjectile_Init,
    V1FireProjectile_Action1,
    V1FireProjectile_Action2,
    V1FireProjectile_Action3,
};
const s8 gUnk_0812A4EC[] = { 16,  0,   64,  -48, 80,  -32, 80,  0,   80,  32,  64,  48,  32,  16, 48,  0,  32,  -16,
                             80,  -64, 80,  -64, 32,  0,   48,  -32, 64,  -16, 64,  16,  48,  32, 16,  16, 64,  16,
                             64,  32,  48,  48,  32,  64,  16,  64,  16,  32,  32,  16,  80,  16, 80,  48, 64,  64,
                             48,  80,  16,  80,  16,  48,  32,  32,  48,  16,  0,   16,  -48, 48, -32, 64, 32,  64,
                             48,  48,  80,  80,  0,   80,  -80, 80,  0,   32,  64,  64,  48,  80, -48, 80, -64, 64,
                             -16, 16,  0,   48,  16,  16,  -16, 16,  -64, 16,  -64, 32,  -48, 48, -32, 64, -16, 64,
                             -16, 32,  -32, 16,  -80, 16,  -80, 48,  -64, 64,  -48, 80,  -16, 80, -16, 48, -32, 32,
                             -48, 16,  -16, 0,   -64, -48, -80, -32, -80, 0,   -80, 32,  -64, 48, -32, 16, -48, 0,
                             -32, -16, -80, -64, -80, -64, -32, 0,   -48, -32, -64, -16, -64, 16, -48, 32 };
