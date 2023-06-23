/**
 * @file lightableSwitch.c
 * @ingroup Objects
 *
 * @brief Lightable Switch object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "hitbox.h"
#include "object.h"
#include "room.h"
#include "sound.h"

static void sub_0809EB30(Entity*);
static void sub_0809EAD8(Entity*);
static void sub_0809EABC(Entity*);
static void LightableSwitch_Type0(Entity*);
static void LightableSwitch_Type1(Entity*);
static void LightableSwitch_Type0_Init(Entity*);
static void LightableSwitch_Type0_Action1(Entity*);
static void LightableSwitch_Type1_Action3(Entity*);
static void LightableSwitch_Type1_Action2(Entity*);
static void LightableSwitch_Type1_Action1(Entity*);
static void LightableSwitch_Type1_Init(Entity*);

void LightableSwitch(Entity* this) {
    static void (*const LightableSwitch_Types[])(Entity*) = {
        LightableSwitch_Type0,
        LightableSwitch_Type1,
    };
    LightableSwitch_Types[this->type](this);
    sub_0809EB30(this);
}

void LightableSwitch_Type0(Entity* this) {
    static void (*const LightableSwitch_Type0_Actions[])(Entity*) = {
        LightableSwitch_Type0_Init,
        LightableSwitch_Type0_Action1,
    };
    LightableSwitch_Type0_Actions[this->action](this);
}

void LightableSwitch_Type0_Init(Entity* this) {
    this->action = 1;
    COLLISION_ON(this);
    this->frameIndex = 0;
    this->collisionFlags = 7;
    this->hurtType = 0x48;
    this->hitType = 0x28;
    this->flags2 = 10;
    this->hitbox = (Hitbox*)&gHitbox_0;
    sub_0809EAD8(this);
    UpdateSpriteForCollisionLayer(this);
    sub_0809EABC(this);
}

void LightableSwitch_Type0_Action1(Entity* this) {

    if ((this->contactFlags & 0x80) != 0) {
        if (CheckFlags(this->field_0x86.HWORD) != 0) {
            ClearFlag(this->field_0x86.HWORD);
        } else {
            SetFlag(this->field_0x86.HWORD);
        }
        EnqueueSFX(SFX_110);
    }
    sub_0809EABC(this);
}

static void sub_0809EABC(Entity* this) {
    bool32 anySet = 0;

    if (CheckFlags(this->field_0x86.HWORD)) {
        anySet = 1;
    }
    if (this->frameIndex != anySet) {
        this->frameIndex = anySet;
    }
}

static void sub_0809EAD8(Entity* this) {
    u8 bVar1;
    Entity* pEVar2;

    if (this->type2 != 0) {

        this->child = GetCurrentRoomProperty(this->type2);
        UpdateRailMovement(this, (u16**)&this->child, &this->field_0x74.HWORD);

    } else {
        SetMetaTile(0x4050, COORD_TO_TILE(this), this->collisionLayer);
    }
}

static void sub_0809EB30(Entity* this) {
    u16 uVar1;
    u16* puVar2;

    if (this->type2 != 0) {
        if ((this->direction & 0x80) == 0) {
            LinearMoveUpdate(this);
        }
        puVar2 = &this->field_0x74.HWORD;
        if (!--*puVar2) {
            UpdateRailMovement(this, (u16**)&this->child, puVar2);
        }
    }
}

void LightableSwitch_Type1(Entity* this) {
    static void (*const LightableSwitch_Type1_Actions[])(Entity*) = {
        LightableSwitch_Type1_Init,
        LightableSwitch_Type1_Action1,
        LightableSwitch_Type1_Action2,
        LightableSwitch_Type1_Action3,
    };
    LightableSwitch_Type1_Actions[this->action](this);
}

void LightableSwitch_Type1_Init(Entity* this) {

    this->action = 1;
    COLLISION_ON(this);
    this->frameIndex = 3;
    this->collisionFlags = 7;
    this->hurtType = 0x48;
    this->hitType = 0x28;
    this->flags2 = 10;
    this->hitbox = (Hitbox*)&gHitbox_0;
    sub_0809EAD8(this);
    UpdateSpriteForCollisionLayer(this);
    if (CheckFlags(this->cutsceneBeh.HWORD) != 0) {
        this->action = 3;
        this->frameIndex = 2;
    }
}

void LightableSwitch_Type1_Action1(Entity* this) {
    if ((this->contactFlags & 0x80) != 0) {
        this->action = 2;
        this->timer = 16;
        this->frameIndex = 2;
        SetFlag(this->field_0x86.HWORD);
        EnqueueSFX(SFX_110);
    }
}

void LightableSwitch_Type1_Action2(Entity* this) {

    if (CheckFlags(this->cutsceneBeh.HWORD) != 0) {
        this->action = 3;

    } else {
        if (--this->timer == 0) {
            this->action = 1;
            this->frameIndex = 3;
            ClearFlag(this->field_0x86.HWORD);
            EnqueueSFX(SFX_110);
        }
    }
}

void LightableSwitch_Type1_Action3(Entity* this) {
}
