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
#include "hitbox.h"
#include "object.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u8 unused2[14];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} LightableSwitchEntity;

static void sub_0809EB30(LightableSwitchEntity* this);
static void sub_0809EAD8(LightableSwitchEntity* this);
static void sub_0809EABC(LightableSwitchEntity* this);
static void LightableSwitch_Type0(LightableSwitchEntity* this);
static void LightableSwitch_Type1(LightableSwitchEntity* this);
static void LightableSwitch_Type0_Init(LightableSwitchEntity* this);
static void LightableSwitch_Type0_Action1(LightableSwitchEntity* this);
static void LightableSwitch_Type1_Action3(LightableSwitchEntity* this);
static void LightableSwitch_Type1_Action2(LightableSwitchEntity* this);
static void LightableSwitch_Type1_Action1(LightableSwitchEntity* this);
static void LightableSwitch_Type1_Init(LightableSwitchEntity* this);

void LightableSwitch(LightableSwitchEntity* this) {
    static void (*const LightableSwitch_Types[])(LightableSwitchEntity*) = {
        LightableSwitch_Type0,
        LightableSwitch_Type1,
    };
    LightableSwitch_Types[super->type](this);
    sub_0809EB30(this);
}

void LightableSwitch_Type0(LightableSwitchEntity* this) {
    static void (*const LightableSwitch_Type0_Actions[])(LightableSwitchEntity*) = {
        LightableSwitch_Type0_Init,
        LightableSwitch_Type0_Action1,
    };
    LightableSwitch_Type0_Actions[super->action](this);
}

void LightableSwitch_Type0_Init(LightableSwitchEntity* this) {
    super->action = 1;
    COLLISION_ON(super);
    super->frameIndex = 0;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 0x28;
    super->collisionMask = 10;
    super->hitbox = (Hitbox*)&gHitbox_0;
    sub_0809EAD8(this);
    UpdateSpriteForCollisionLayer(super);
    sub_0809EABC(this);
}

void LightableSwitch_Type0_Action1(LightableSwitchEntity* this) {

    if ((super->contactFlags & CONTACT_NOW) != 0) {
        if (CheckFlags(this->unk_86) != 0) {
            ClearFlag(this->unk_86);
        } else {
            SetFlag(this->unk_86);
        }
        EnqueueSFX(SFX_110);
    }
    sub_0809EABC(this);
}

static void sub_0809EABC(LightableSwitchEntity* this) {
    bool32 anySet = 0;

    if (CheckFlags(this->unk_86)) {
        anySet = 1;
    }
    if (super->frameIndex != anySet) {
        super->frameIndex = anySet;
    }
}

static void sub_0809EAD8(LightableSwitchEntity* this) {
    u8 bVar1;
    Entity* pEVar2;

    if (super->type2 != 0) {

        super->child = GetCurrentRoomProperty(super->type2);
        UpdateRailMovement(super, (u16**)&super->child, &this->unk_74);

    } else {
        SetTile(SPECIAL_TILE_80, COORD_TO_TILE(super), super->collisionLayer);
    }
}

static void sub_0809EB30(LightableSwitchEntity* this) {
    u16 uVar1;
    u16* puVar2;

    if (super->type2 != 0) {
        if ((super->direction & 0x80) == 0) {
            LinearMoveUpdate(super);
        }
        puVar2 = &this->unk_74;
        if (!--*puVar2) {
            UpdateRailMovement(super, (u16**)&super->child, puVar2);
        }
    }
}

void LightableSwitch_Type1(LightableSwitchEntity* this) {
    static void (*const LightableSwitch_Type1_Actions[])(LightableSwitchEntity*) = {
        LightableSwitch_Type1_Init,
        LightableSwitch_Type1_Action1,
        LightableSwitch_Type1_Action2,
        LightableSwitch_Type1_Action3,
    };
    LightableSwitch_Type1_Actions[super->action](this);
}

void LightableSwitch_Type1_Init(LightableSwitchEntity* this) {

    super->action = 1;
    COLLISION_ON(super);
    super->frameIndex = 3;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = 0x28;
    super->collisionMask = 10;
    super->hitbox = (Hitbox*)&gHitbox_0;
    sub_0809EAD8(this);
    UpdateSpriteForCollisionLayer(super);
    if (CheckFlags(this->unk_84)) {
        super->action = 3;
        super->frameIndex = 2;
    }
}

void LightableSwitch_Type1_Action1(LightableSwitchEntity* this) {
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        super->action = 2;
        super->timer = 16;
        super->frameIndex = 2;
        SetFlag(this->unk_86);
        EnqueueSFX(SFX_110);
    }
}

void LightableSwitch_Type1_Action2(LightableSwitchEntity* this) {

    if (CheckFlags(this->unk_84)) {
        super->action = 3;

    } else {
        if (--super->timer == 0) {
            super->action = 1;
            super->frameIndex = 3;
            ClearFlag(this->unk_86);
            EnqueueSFX(SFX_110);
        }
    }
}

void LightableSwitch_Type1_Action3(LightableSwitchEntity* this) {
}
