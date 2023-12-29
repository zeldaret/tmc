/**
 * @file secretManager.c
 * @ingroup Managers
 *
 * @brief Sets a flag and plays a sound if another flag is set.
 *
 * unk_0a = 0 for testing one flag unk_0a = 1 for testing multiple flags
 */
#include "manager/secretManager.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "sound.h"

void SecretManager_Type0_Action2(SecretManager*);
void SecretManager_Type0(SecretManager*);
void SecretManager_Type1(SecretManager*);
void SecretManager_Type0_Init(SecretManager*);
void SecretManager_Type0_Action1(SecretManager*);
void SecretManager_Type0_Action2(SecretManager*);
void SecretManager_Type1_Action2(SecretManager*);
void SecretManager_Type1_Action1(SecretManager*);
void SecretManager_Type1_Init(SecretManager*);

void SecretManager_Main(SecretManager* this) {
    static void (*const SecretManager_Types[])(SecretManager*) = {
        SecretManager_Type0,
        SecretManager_Type1,
    };
    SecretManager_Types[super->type](this);
}

void SecretManager_Type0(SecretManager* this) {
    static void (*const SecretManager_Type0_Actions[])(SecretManager*) = {
        SecretManager_Type0_Init,
        SecretManager_Type0_Action1,
        SecretManager_Type0_Action2,
    };
    SecretManager_Type0_Actions[super->action](this);
}

void SecretManager_Type0_Init(SecretManager* this) {
    if (CheckFlags(this->field_0x3c) != 0) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->field_0x3e) != 0) {
        SetFlag(this->field_0x3c);
        DeleteThisEntity();
    }
    super->action = 1;
    if (super->timer == 0) {
        super->timer = 30;
    }
    SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
}

void SecretManager_Type0_Action1(SecretManager* this) {
    if ((CheckFlags(this->field_0x3e) != 0) && (gPriorityHandler.priority_timer < 2)) {
        super->action = 2;
        if (super->timer == 1) {
            SecretManager_Type0_Action2(this);
        }
        RequestPriorityDuration((Entity*)this, super->timer);
    }
}

void SecretManager_Type0_Action2(SecretManager* this) {
    if (gPriorityHandler.priority_timer == 0) {
        if (this->field_0x38 != SFX_NONE) {
            SoundReq(this->field_0x38);
        } else {
            SoundReq(SFX_SECRET);
        }
        if (this->field_0x3c != 0) {
            SetFlag(this->field_0x3c);
        }
        DeleteThisEntity();
    }
}

void SecretManager_Type1(SecretManager* this) {
    static void (*const SecretManager_Type1_Actions[])(SecretManager*) = {
        SecretManager_Type1_Init,
        SecretManager_Type1_Action1,
        SecretManager_Type1_Action2,
    };
    SecretManager_Type1_Actions[super->action](this);
}

void SecretManager_Type1_Init(SecretManager* this) {
    CheckFlags(this->field_0x3e);
    super->action = 1;
    if (super->timer == 0) {
        super->timer = 30;
    }
    super->subtimer = super->timer;
    SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
}

void SecretManager_Type1_Action1(SecretManager* this) {
    if (CheckFlags(this->field_0x3e) != 0) {
        super->action = 2;
        super->timer = super->subtimer;
    }
}

void SecretManager_Type1_Action2(SecretManager* this) {
    if (super->timer != 0) {
        if (--super->timer == 0) {
            Sound sound;
            if (this->field_0x38 != SFX_NONE) {
                sound = this->field_0x38;
            } else {
                sound = SFX_SECRET;
            }
            SoundReq(sound);
            SetFlag(this->field_0x3c);
        }
    } else {
        if (CheckFlags(this->field_0x3e) == 0) {
            super->action = 1;
            ClearFlag(this->field_0x3c);
        }
    }
}
