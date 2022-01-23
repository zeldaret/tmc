/**
 * @file wallMaster2.c
 * @ingroup Enemies
 *
 * @brief Wall Master 2 enemy
 */

#include "enemy.h"
#include "area.h"
#include "functions.h"

extern void sub_08001328(Entity*);

extern Entity* gUnk_020000B0;
extern ScreenTransitionData* gUnk_0813AB1C[];

void sub_0802CF64(Entity*);
void sub_0802CF8C(Entity*);
void sub_0802CFD8(Entity*);

extern void (*const gUnk_080CD6FC[])(Entity*);
extern void (*const gUnk_080CD714[])(Entity*);
extern const u16 gUnk_080CD728[];
extern const u16 gUnk_080CD730[];
extern const s8 gUnk_080CD740[];

void WallMaster2(Entity* this) {
    gUnk_080CD6FC[GetNextFunction(this)](this);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_0802CC68(Entity* this) {
    gUnk_080CD714[this->action](this);
}

void sub_0802CC80(Entity* this) {
    u8 bVar1 = this->bitfield & 0x7f;
    switch (this->bitfield & 0x7f) {
        case 0 ... 1:
        case 0x1e:
            this->action = 3;
            COLLISION_OFF(this);
            InitializeAnimation(this, 1);
            gPlayerEntity.flags &= ~0x80;
            break;
    }
    if (this->field_0x43 != 0) {
        sub_0804A9FC(this, 0x1c);
    }
    sub_0804AA30(this, gUnk_080CD6FC);
}

void nullsub_151(Entity* this) {
    /* ... */
}

void sub_0802CCE0(Entity* this) {
    u32 tmp;

    sub_0804A720(this);
    this->action = 1;
    this->actionDelay = 60;
    this->field_0xf = Random();
    this->spriteSettings.shadow = 2;
    this->animationState = 0xff;
    this->z.HALF.HI = -2;
    this->collisionLayer = 3;
    tmp = Random();
    this->field_0x7a.HALF.LO = tmp;
    this->field_0x7a.HALF.HI = (tmp >> 8) & 0x60;
    this->field_0x7c.HALF.LO = 0;
    UpdateSpriteForCollisionLayer(this);
    InitializeAnimation(this, 0);
    sub_0802CF64(this);
    sub_0802CFD8(this);
}

void sub_0802CD54(Entity* this) {
    GetNextFrame(this);
    sub_0802CFD8(this);

    if ((this->field_0x7c.HALF_U.LO == 0 || --this->field_0x7c.HALF_U.LO == 0) && sub_08049FDC(this, 1)) {
        if (this->field_0x7a.HALF.HI) {
            --this->field_0x7a.HALF.HI;
        } else {
            u32 tmp;

            this->action = 2;
            tmp = Random() >> 0x10;
            this->actionDelay = tmp;
            this->speed = 0xc0;
            this->field_0x78.HWORD = gUnk_080CD728[Random() & 3];
            this->field_0x7a.HALF.HI = (tmp >> 8) & 0x60;
            return;
        }
    }

    if (--this->actionDelay == 0) {
        this->actionDelay = 60;
        sub_0802CF64(this);
    }
    LinearMoveUpdate(this);
}

void sub_0802CDE8(Entity* this) {
    if (--this->field_0x78.HWORD && sub_08049FDC(this, 1)) {
        if ((this->actionDelay++ & 3) == 0) {
            sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
            sub_0802CF8C(this);
        }
        LinearMoveUpdate(this);
    } else {
        this->action = 1;
        this->actionDelay = 60;
        this->speed = 0x60;
        this->field_0x7c.HALF.LO = (Random() & 0x38) + 0x96;
    }
    GetNextFrame(this);
    sub_0802CFD8(this);
}

void sub_0802CE68(Entity* this) {
    u8 frames;

    gPlayerState.field_0xa |= 0x80;
    gPlayerState.mobility |= 0x80;
    gPlayerState.flags |= PL_DISABLE_ITEMS;
    if (!isEntityWithinDistance(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 4)) {
        this->direction = GetFacingDirection(this, &gPlayerEntity);
        LinearMoveUpdate(this);
    }
    sub_0802CFD8(this);
    GetNextFrame(this);
    frames = this->frame & 0x80;
    if (frames) {
        this->action = 4;
        this->actionDelay = 30;
    } else if (this->frame & 1) {
        this->frame = frames;
        gPlayerEntity.spriteSettings.draw = 0;
    }
}

void sub_0802CEF4(Entity* this) {
    sub_0802CFD8(this);
    if (--this->actionDelay == 0) {
        SetInitializationPriority();
        DoExitTransition(gUnk_0813AB1C[gArea.dungeon_idx]);
    } else {
        this->z.WORD -= 0x20000;
        if (this->z.HALF.HI < -0x30) {
            this->spriteSettings.shadow = 1;
        }
        gPlayerState.field_0xa |= 0x80;
        gPlayerState.mobility |= 0x80;
    }
}

void sub_0802CF64(Entity* this) {
    if (sub_08049FA0(this)) {
        this->direction = Direction8Round(Random());
    } else {
        this->direction = Direction8RoundUp(sub_08049EE4(this));
    }
    sub_0802CF8C(this);
}

ASM_FUNC("asm/non_matching/wallMaster2/sub_0802CF8C.inc", void sub_0802CF8C(Entity* this))

void sub_0802CFD8(Entity* this) {
    u32 unk = gUnk_080CD740[(this->field_0x7a.HALF.LO++ >> 3) & 7];
    sub_0805EC9C(this, (s16)this->field_0x74.HWORD + unk, 0x100 + unk, this->field_0x76.HWORD);
}

// clang-format off
void (*const gUnk_080CD6FC[])(Entity*) = {
    sub_0802CC68,
    sub_0802CC80,
    sub_08001328,
    sub_0804A7D4,
    sub_08001242,
    nullsub_151,
};

void (*const gUnk_080CD714[])(Entity*) = {
    sub_0802CCE0,
    sub_0802CD54,
    sub_0802CDE8,
    sub_0802CE68,
    sub_0802CEF4,
};

const u16 gUnk_080CD728[] = {
    120, 180, 240, 300,
};

const u16 gUnk_080CD730[] = {
    0xff00, 0x4000,
    0xff00, 0x0000,
    0x0100, 0x0000,
    0x0100, 0xc000,
};

const s8 gUnk_080CD740[] = {
    -2, -4, -2, 0, 2, 4, 2, 0,
};
// clang-format on
