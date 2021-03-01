#include "global.h"
#include "audio.h"
#include "entity.h"
#include "flags.h"
#include "player.h"
#include "room.h"

extern void sub_0809E96C(Entity*);
extern u32 sub_0800419C(Entity*, Entity*, u32, u32);
extern void CreateSparkle(Entity*);
extern u32 sub_0809E9A0(void);
extern void sub_08078A90(u32);
extern void sub_0809E918(Entity*);
extern void SoundReq(u32);
extern void CreateMinishEntrance(u32 tile);

extern void (*const gUnk_08124354[])(Entity*);

extern u32 gScreenTransition;
extern s16 gUnk_08124364[];

void TreeHidingPortal(Entity* this) {
    gUnk_08124354[this->action](this);
}

void sub_0809E83C(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD)) {
        sub_0809E96C(this);
        DeleteThisEntity();
    }
    this->action = 1;
    this->collisionLayer = 2;
    UpdateSpriteForCollisionLayer(this);
}

void sub_0809E86C(Entity* this) {

    if (sub_0800419C(this, &gPlayerEntity, 0x30, 0x30)) {
        if (CheckGlobalFlag(EZERO_1ST)) {
            if (((gScreenTransition & 3) == 0)) {
                CreateSparkle(this);
            }
        }
    }
    if (sub_0809E9A0() == 0x54) {
        this->action = 2;
        this->actionDelay = 0xf;
        sub_08078A90(1);
    }
}

void sub_0809E8BC(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 3;
        this->actionDelay = 0x3c;
        this->spriteSettings.b.draw = 0;
        sub_0809E96C(this);
        sub_0809E918(this);
    }
}

void sub_0809E8EC(Entity* this) {
    if (--this->actionDelay == 0) {
        SetFlag(this->field_0x86.HWORD);
        sub_08078A90(0);
        SoundReq(SFX_SECRET_BIG);
        DeleteThisEntity();
    }
}

void sub_0809E918(Entity* this) {
    Entity* fx;
    s16* i = gUnk_08124364;
    while (*i != -1000) {
        fx = CreateFx(this, 3, 0);
        if (fx != NULL) {
            fx->x.HALF.HI += i[0];
            fx->y.HALF.HI += i[1];
            fx->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(fx);
        }
        i += sizeof(s16);
    }
}

void sub_0809E96C(Entity* this) {
    CreateMinishEntrance(COORD_TO_TILE_OFFSET(this, 0x20, 0x8));
}
