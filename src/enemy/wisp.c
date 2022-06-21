/**
 * @file wisp.c
 * @ingroup Enemies
 *
 * @brief Wisp enemy
 */

#include "collision.h"
#include "enemy.h"
#include "save.h"
#include "object.h"
#include "functions.h"

static void sub_08033744(Entity* this);
void Wisp_OnTick(Entity* this);
void Wisp_OnCollision(Entity* this);
void Wisp_OnGrabbed(Entity* this);
void sub_08033674(Entity* this);
void sub_080336A8(Entity* this);
void sub_080336DC(Entity* this);
void sub_08033650(Entity* this);
void sub_08033658(Entity* this);
void sub_08033660(Entity* this);

static void (*const Wisp_Functions[])(Entity*) = {
    Wisp_OnTick, Wisp_OnCollision, GenericKnockback, GenericDeath, GenericConfused, Wisp_OnGrabbed,
};

void Wisp(Entity* this) {
    EnemyFunctionHandler(this, Wisp_Functions);
}

void Wisp_OnTick(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08033674,
        sub_080336A8,
        sub_080336DC,
    };
    actionFuncs[this->action](this);
}

void Wisp_OnCollision(Entity* this) {
    u32 bits;
    Entity* ent;

    bits = this->contactFlags;
    if ((bits & 0x80) == 0) {
        return;
    }

    switch ((s32)bits & 0x3f) {
        case 0:
            this->action = 2;
            this->spriteSettings.draw = FALSE;
            COLLISION_OFF(this);
            this->field_0x7c.HALF.LO = 0x27c;
            gPlayerState.flags |= PL_DRUGGED;
            gSave.stats.effect = this->type + 1;
            gSave.stats.effectTimer = 600;
            if (this->type == 0) {
                break;
            }
            DeleteThisEntity();
            break;
        case 0xe:
        case 0x15:
            this->health = 0;
            break;
        case 0x14:
            COLLISION_OFF(this);
            this->iframes = 0;
            this->spriteSettings.draw = FALSE;
            ent = CreateFx(this, FX_DEATH, 0);
            if (ent != NULL) {
                this->child = ent;
                this->timer = 14;
                CopyPosition(this, ent);
            }
            DeleteThisEntity();
            break;
    }
}

void Wisp_OnGrabbed(Entity* this) {
    static void (*const subActionFuncs[])(Entity*) = {
        sub_08033650,
        sub_08033658,
        sub_08033660,
    };
    if (sub_0806F520(this)) {
        subActionFuncs[this->subAction](this);
    }
}

void sub_08033650(Entity* this) {
    this->subAction = 2;
}

void sub_08033658(Entity* this) {
    sub_0806F4E8(this);
}

void sub_08033660(Entity* this) {
    if (sub_0806F3E4(this)) {
        GenericDeath(this);
    }
}

void sub_08033674(Entity* this) {
    sub_0804A720(this);
    this->timer = 0;
    this->action = 1;
    this->gustJarFlags = 1;
    this->field_0x80.HWORD = this->x.HALF.HI;
    this->field_0x82.HWORD = this->y.HALF.HI;
    sub_08033744(this);
    InitializeAnimation(this, this->type2);
}

void sub_080336A8(Entity* this) {
    if (--this->timer == 0) {
        sub_08033744(this);
    } else if (this->collisions != COL_NONE) {
        sub_0800417E(this, this->collisions);
    }
    ProcessMovement0(this);
    GetNextFrame(this);
}

void sub_080336DC(Entity* this) {
    switch ((u16)-- this->field_0x7c.HALF.LO) {
        case 0x24:
            this->x.HALF.HI = this->field_0x80.HWORD;
            this->y.HALF.HI = this->field_0x82.HWORD;
            break;
        case 0x18:
            CreateDust(this);
            break;
        case 0xc:
            this->spriteSettings.draw = TRUE;
            break;
        case 0x0:
            this->action = 1;
            COLLISION_ON(this);
            sub_08033744(this);
            break;
    }
}

static void sub_08033744(Entity* this) {
    u32 temp;
    u32 rand = (u32)Random() % 256;
    static const u8 gUnk_080CEBA4[] = { 30, 45, 60, 75, 1, 90, 105, 120 };

    // 8 potential options
    this->timer = gUnk_080CEBA4[(rand & 0x70) >> 4];

    // 4 potential options
    temp = ((rand & 0xc) * 2);

    // 75% chance to pass
    if ((sub_08049FA0(this) == 0) && ((rand % 4) != 0)) {
        temp = sub_08049EE4(this);

        // 50% chance to pass
        if ((rand & 0x80) != 0) {
            temp += 0x4;
            temp &= 0x18;
        } else {
            temp += 0x1c;
            temp &= 0x18;
        }
    }
    this->direction = temp;
}
