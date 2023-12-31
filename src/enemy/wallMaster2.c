/**
 * @file wallMaster2.c
 * @ingroup Enemies
 *
 * @brief Wall Master 2 enemy
 */
#include "area.h"
#include "enemy.h"
#include "functions.h"
#include "screenTransitions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u16 unk_7c;
} WallMaster2Entity;

extern Entity* gUnk_020000B0;

void sub_0802CF64(WallMaster2Entity*);
void sub_0802CF8C(WallMaster2Entity*);
void sub_0802CFD8(WallMaster2Entity*);

extern void (*const WallMaster2_Functions[])(WallMaster2Entity*);
extern void (*const gUnk_080CD714[])(WallMaster2Entity*);
extern const u16 gUnk_080CD728[];
extern const u16 gUnk_080CD730[];
extern const s8 gUnk_080CD740[];

void WallMaster2(WallMaster2Entity* this) {
    WallMaster2_Functions[GetNextFunction(super)](this);
    EnemySetFXOffset(super, 0, 1, -0x10);
}

void WallMaster2_OnTick(WallMaster2Entity* this) {
    gUnk_080CD714[super->action](this);
}

void WallMaster2_OnCollision(WallMaster2Entity* this) {
    u8 bVar1 = super->contactFlags & 0x7f;
    switch (super->contactFlags & 0x7f) {
        case 0 ... 1:
        case 0x1e:
            super->action = 3;
            COLLISION_OFF(super);
            InitializeAnimation(super, 1);
            gPlayerEntity.base.flags &= ~ENT_COLLIDE;
            break;
    }
    if (super->confusedTime != 0) {
        EnemyCreateFX(super, FX_STARS);
    }
    EnemyFunctionHandlerAfterCollision(super, (EntityActionArray)WallMaster2_Functions);
}

void WallMaster2_OnGrabbed(WallMaster2Entity* this) {
    /* ... */
}

void sub_0802CCE0(WallMaster2Entity* this) {
    u32 tmp;

    sub_0804A720(super);
    super->action = 1;
    super->timer = 60;
    super->subtimer = Random();
    super->spriteSettings.shadow = 2;
    super->animationState = 0xff;
    super->z.HALF.HI = -2;
    super->collisionLayer = 3;
    tmp = Random();
    this->unk_7a = tmp;
    this->unk_7b = (tmp >> 8) & 0x60;
    this->unk_7c = 0;
    UpdateSpriteForCollisionLayer(super);
    InitializeAnimation(super, 0);
    sub_0802CF64(this);
    sub_0802CFD8(this);
}

void sub_0802CD54(WallMaster2Entity* this) {
    GetNextFrame(super);
    sub_0802CFD8(this);

    if ((this->unk_7c == 0 || --this->unk_7c == 0) && sub_08049FDC(super, 1)) {
        if (this->unk_7b) {
            --this->unk_7b;
        } else {
            u32 tmp;

            super->action = 2;
            tmp = Random() >> 0x10;
            super->timer = tmp;
            super->speed = 0xc0;
            this->unk_78 = gUnk_080CD728[Random() & 3];
            this->unk_7b = (tmp >> 8) & 0x60;
            return;
        }
    }

    if (--super->timer == 0) {
        super->timer = 60;
        sub_0802CF64(this);
    }
    LinearMoveUpdate(super);
}

void sub_0802CDE8(WallMaster2Entity* this) {
    if (--this->unk_78 && sub_08049FDC(super, 1)) {
        if ((super->timer++ & 3) == 0) {
            sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
            sub_0802CF8C(this);
        }
        LinearMoveUpdate(super);
    } else {
        super->action = 1;
        super->timer = 60;
        super->speed = 0x60;
        this->unk_7c = (Random() & 0x38) + 0x96;
    }
    GetNextFrame(super);
    sub_0802CFD8(this);
}

void sub_0802CE68(WallMaster2Entity* this) {
    u8 frames;

    gPlayerState.field_0xa |= 0x80;
    gPlayerState.mobility |= 0x80;
    gPlayerState.flags |= PL_DISABLE_ITEMS;
    if (!EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 4)) {
        super->direction = GetFacingDirection(super, &gPlayerEntity.base);
        LinearMoveUpdate(super);
    }
    sub_0802CFD8(this);
    GetNextFrame(super);
    frames = super->frame & ANIM_DONE;
    if (frames) {
        super->action = 4;
        super->timer = 30;
    } else if (super->frame & 1) {
        super->frame = frames;
        gPlayerEntity.base.spriteSettings.draw = 0;
    }
}

void sub_0802CEF4(WallMaster2Entity* this) {
    sub_0802CFD8(this);
    if (--super->timer == 0) {
        SetInitializationPriority();
        DoExitTransition(gWallMasterScreenTransitions[gArea.dungeon_idx]);
    } else {
        super->z.WORD -= Q_16_16(2);
        if (super->z.HALF.HI < -0x30) {
            super->spriteSettings.shadow = 1;
        }
        gPlayerState.field_0xa |= 0x80;
        gPlayerState.mobility |= 0x80;
    }
}

void sub_0802CF64(WallMaster2Entity* this) {
    if (sub_08049FA0(super)) {
        super->direction = Direction8Round(Random());
    } else {
        super->direction = Direction8RoundUp(sub_08049EE4(super));
    }
    sub_0802CF8C(this);
}

void sub_0802CF8C(WallMaster2Entity* this) {
    int iVar1;
    u32 dir;
    const u16* ptr;

    dir = Direction8RoundUp(super->direction);
    if (dir - Direction8FromAnimationState(super->animationState) + 6 > 12) {
        super->animationState = Direction8ToAnimationState(dir);
        iVar1 = (dir >> 3) * 2;
        ptr = &gUnk_080CD730[iVar1];
        this->unk_74 = ptr[0];
        this->unk_76 = ptr[1];
    } else if (((super->direction + 1) & 7) > 2 && (Direction8ToAnimationState(dir) != super->animationState)) {
        super->animationState = Direction8ToAnimationState(dir);
        iVar1 = (dir >> 3) * 2;
        ptr = &gUnk_080CD730[iVar1];
        this->unk_74 = ptr[0];
        this->unk_76 = ptr[1];
    }
}

void sub_0802CFD8(WallMaster2Entity* this) {
    u32 unk = gUnk_080CD740[(this->unk_7a++ >> 3) & 7];
    SetAffineInfo(super, (s16)this->unk_74 + unk, 0x100 + unk, this->unk_76);
}

// clang-format off
void (*const WallMaster2_Functions[])(WallMaster2Entity*) = {
    WallMaster2_OnTick,
    WallMaster2_OnCollision,
    (void (*)(WallMaster2Entity*)) GenericKnockback2,
    (void (*)(WallMaster2Entity*)) GenericDeath,
    (void (*)(WallMaster2Entity*)) GenericConfused,
    WallMaster2_OnGrabbed,
};

void (*const gUnk_080CD714[])(WallMaster2Entity*) = {
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
