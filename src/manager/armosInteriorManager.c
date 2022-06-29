/**
 * @file armosInteriorManager.c
 * @ingroup Managers
 *
 * @brief Armos Interior Manager.
 */
#include "manager/armosInteriorManager.h"
#include "common.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "sound.h"

bool32 sub_0805C920(ArmosInteriorManager*);
void ArmosInteriorManager_Init(ArmosInteriorManager*);
void ArmosInteriorManager_Action1(ArmosInteriorManager*);
void ArmosInteriorManager_Action2(ArmosInteriorManager*);
void ArmosInteriorManager_Action3(ArmosInteriorManager*);

void ArmosInteriorManager_Main(ArmosInteriorManager* this) {
    static void (*const ArmosInteriorManager_Actions[])(ArmosInteriorManager*) = {
        ArmosInteriorManager_Init,
        ArmosInteriorManager_Action1,
        ArmosInteriorManager_Action2,
        ArmosInteriorManager_Action3,
    };
    ArmosInteriorManager_Actions[super->action](this);
    if (CheckLocalFlagByBank(FLAG_BANK_3, super->type + 0x67)) {
        gRoomTransition.armos_data.field_0xac |= (1 << super->type);
    } else {
        gRoomTransition.armos_data.field_0xac &= ~(1 << super->type);
    }
}

void ArmosInteriorManager_Init(ArmosInteriorManager* this) {
    if (sub_0805C920(this)) {
        super->action = 2;
    } else {
        super->action = 1;
    }

    super->timer = 1;
    super->subtimer = 0;
}

void ArmosInteriorManager_Action1(ArmosInteriorManager* this) {
    if (sub_0805C920(this)) {
        super->action = 2;
        super->timer = 1;
        SoundReq(SFX_EM_ARMOS_ON);
    }
}

void ArmosInteriorManager_Action2(ArmosInteriorManager* this) {
    static const u8 gUnk_08108D20[] = { 0x6F, 0x70, 0x71, 0x72, 0x71, 0x70 };

    if (--super->timer == 0) {
        super->timer = 20;

        if (++super->subtimer > 5) {
            super->subtimer = 0;
        }
        LoadPaletteGroup(gUnk_08108D20[super->subtimer]);
        if (super->subtimer == 0) {
            SoundReq(SFX_EM_ARMOS_ON);
        }
    }
    if (sub_0805C920(this) == 0) {
        super->action = 3;
    }
}

void ArmosInteriorManager_Action3(ArmosInteriorManager* this) {
    if (super->subtimer == 0) {
        super->action = 1;
    } else {
        ArmosInteriorManager_Action2(this);
    }
}

bool32 sub_0805C920(ArmosInteriorManager* this) {
    return CheckLocalFlagByBank(FLAG_BANK_3, super->type + 0x67);
}
