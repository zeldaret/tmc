#include "global.h"
#include "sound.h"
#include "entity.h"
#include "flags.h"
#include "player.h"
#include "room.h"
#include "functions.h"
#include "effects.h"
#include "object.h"

extern const s16 gUnk_080B4468[];

void sub_0809E83C(Entity* this);
void sub_0809E86C(Entity* this);
void sub_0809E8BC(Entity* this);
void sub_0809E8EC(Entity* this);

static void sub_0809E96C(Entity* this);
static u32 sub_0809E9A0(void);
static void sub_0809E918(Entity* this);

void TreeHidingPortal(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0809E83C,
        sub_0809E86C,
        sub_0809E8BC,
        sub_0809E8EC,
    };
    actionFuncs[this->action](this);
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
            if (((gRoomTransition.frameCount & 3) == 0)) {
                CreateSparkle(this);
            }
        }
    }
    if (sub_0809E9A0() == 0x54) {
        this->action = 2;
        this->timer = 0xf;
        SetPlayerControl(1);
    }
}

void sub_0809E8BC(Entity* this) {
    if (--this->timer == 0) {
        this->action = 3;
        this->timer = 0x3c;
        this->spriteSettings.draw = 0;
        sub_0809E96C(this);
        sub_0809E918(this);
    }
}

void sub_0809E8EC(Entity* this) {
    if (--this->timer == 0) {
        SetFlag(this->field_0x86.HWORD);
        SetPlayerControl(0);
        SoundReq(SFX_SECRET_BIG);
        DeleteThisEntity();
    }
}

static void sub_0809E918(Entity* this) {
    static const s16 gUnk_08124364[] = {
        0, -4, 8,  -4,  16, -4, 22, -4,  -8, -4,  -16, -4,  -22, -4,  0,  -12, 0,   4,   8,     -12,
        8, 4,  -8, -12, -8, 4,  8,  -16, -8, -16, 12,  -16, -12, -16, 16, -14, -16, -14, -1000, 0,
    };
    Entity* fx;
    const s16* i = gUnk_08124364;
    while (*i != -1000) {
        fx = CreateFx(this, FX_BUSH, 0);
        if (fx != NULL) {
            fx->x.HALF.HI += i[0];
            fx->y.HALF.HI += i[1];
            fx->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(fx);
        }
        i += sizeof(s16);
    }
}

static void sub_0809E96C(Entity* this) {
    CreateMinishEntrance(COORD_TO_TILE_OFFSET(this, 0x20, 0x8));
}

static u32 sub_0809E9A0(void) {
    u32 rv;
    const s16* ptr;

    if (gPlayerEntity.action != PLAYER_BOUNCE) {
        rv = 0;
    } else {
        ptr = &gUnk_080B4468[gPlayerEntity.animationState & 6];
        rv = sub_080B1AE0(COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr[0], -ptr[1]), 1);
    }

    return rv;
}
