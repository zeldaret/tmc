/**
 * @file wisp.c
 * @ingroup Enemies
 *
 * @brief Wisp enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "object.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[20];
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u8 unused2[2];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
} WispEntity;

static void sub_08033744(WispEntity* this);
void Wisp_OnTick(WispEntity* this);
void Wisp_OnCollision(WispEntity* this);
void Wisp_OnGrabbed(WispEntity* this);
void sub_08033674(WispEntity* this);
void sub_080336A8(WispEntity* this);
void sub_080336DC(WispEntity* this);
void sub_08033650(WispEntity* this);
void sub_08033658(WispEntity* this);
void sub_08033660(WispEntity* this);

static void (*const Wisp_Functions[])(WispEntity*) = {
    Wisp_OnTick,
    Wisp_OnCollision,
    (void (*)(WispEntity*))GenericKnockback,
    (void (*)(WispEntity*))GenericDeath,
    (void (*)(WispEntity*))GenericConfused,
    Wisp_OnGrabbed,
};

void Wisp(WispEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)Wisp_Functions);
}

void Wisp_OnTick(WispEntity* this) {
    static void (*const actionFuncs[])(WispEntity*) = {
        sub_08033674,
        sub_080336A8,
        sub_080336DC,
    };
    actionFuncs[super->action](this);
}

void Wisp_OnCollision(WispEntity* this) {
    u32 bits;
    Entity* entity;

    bits = super->contactFlags;
    if ((bits & CONTACT_NOW) == 0) {
        return;
    }

    switch ((s32)bits & 0x3f) {
        case 0:
            super->action = 2;
            super->spriteSettings.draw = FALSE;
            COLLISION_OFF(super);
            this->unk_7c = 0x27c;
            gPlayerState.flags |= PL_DRUGGED;
            gSave.stats.effect = super->type + 1;
            gSave.stats.effectTimer = 600;
            if (super->type == 0) {
                break;
            }
            DeleteThisEntity();
            break;
        case 0xe:
        case 0x15:
            super->health = 0;
            break;
        case 0x14:
            COLLISION_OFF(super);
            super->iframes = 0;
            super->spriteSettings.draw = FALSE;
            entity = CreateFx(super, FX_DEATH, 0);
            if (entity != NULL) {
                super->child = entity;
                super->timer = 14;
                CopyPosition(super, entity);
            }
            DeleteThisEntity();
            break;
    }
}

void Wisp_OnGrabbed(WispEntity* this) {
    static void (*const subActionFuncs[])(WispEntity*) = {
        sub_08033650,
        sub_08033658,
        sub_08033660,
    };
    if (sub_0806F520(super)) {
        subActionFuncs[super->subAction](this);
    }
}

void sub_08033650(WispEntity* this) {
    super->subAction = 2;
}

void sub_08033658(WispEntity* this) {
    sub_0806F4E8(super);
}

void sub_08033660(WispEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void sub_08033674(WispEntity* this) {
    sub_0804A720(super);
    super->timer = 0;
    super->action = 1;
    super->gustJarFlags = 1;
    this->unk_80 = super->x.HALF.HI;
    this->unk_82 = super->y.HALF.HI;
    sub_08033744(this);
    InitializeAnimation(super, super->type2);
}

void sub_080336A8(WispEntity* this) {
    if (--super->timer == 0) {
        sub_08033744(this);
    } else if (super->collisions != COL_NONE) {
        sub_0800417E(super, super->collisions);
    }
    ProcessMovement0(super);
    GetNextFrame(super);
}

void sub_080336DC(WispEntity* this) {
    switch ((u16)-- this->unk_7c) {
        case 0x24:
            super->x.HALF.HI = this->unk_80;
            super->y.HALF.HI = this->unk_82;
            break;
        case 0x18:
            CreateDust(super);
            break;
        case 0xc:
            super->spriteSettings.draw = TRUE;
            break;
        case 0x0:
            super->action = 1;
            COLLISION_ON(super);
            sub_08033744(this);
            break;
    }
}

static void sub_08033744(WispEntity* this) {
    u32 temp;
    u32 rand = (u32)Random() % 256;
    static const u8 gUnk_080CEBA4[] = { 30, 45, 60, 75, 1, 90, 105, 120 };

    // 8 potential options
    super->timer = gUnk_080CEBA4[(rand & 0x70) >> 4];

    // 4 potential options
    temp = ((rand & 0xc) * 2);

    // 75% chance to pass
    if ((sub_08049FA0(super) == 0) && ((rand % 4) != 0)) {
        temp = sub_08049EE4(super);

        // 50% chance to pass
        if ((rand & 0x80) != 0) {
            temp += 0x4;
            temp &= 0x18;
        } else {
            temp += 0x1c;
            temp &= 0x18;
        }
    }
    super->direction = temp;
}
