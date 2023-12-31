/**
 * @file vaati3StartManager.c
 * @ingroup Managers
 *
 * @brief Manages the transition to and start of Vaati3.
 */
#include "manager/vaati3StartManager.h"
#include "area.h"
#include "enemy.h"
#include "flags.h"
#include "functions.h"
#include "message.h"
#include "object.h"
#include "save.h"
#include "screen.h"
#include "screenTransitions.h"
#include "sound.h"
#include "structures.h"

void sub_0805E094(void);
void Vaati3StartManager_Type0(Vaati3StartManager*);
void Vaati3StartManager_Type1(Vaati3StartManager*);
void Vaati3StartManager_Type0_Init(Vaati3StartManager*);
void Vaati3StartManager_Type0_Action1(Vaati3StartManager*);
void Vaati3StartManager_Type0_Action2(Vaati3StartManager*);
void Vaati3StartManager_Type0_Action3(Vaati3StartManager*);
void Vaati3StartManager_Type0_Action4(Vaati3StartManager*);
void Vaati3StartManager_Type1_Action1(Vaati3StartManager*);
void Vaati3StartManager_Type1_Init(Vaati3StartManager*);

void Vaati3StartManager_Main(Vaati3StartManager* this) {
    static void (*const Vaati3StartManager_Types[])(Vaati3StartManager*) = {
        Vaati3StartManager_Type0,
        Vaati3StartManager_Type1,
    };
    Vaati3StartManager_Types[super->type](this);
}

void Vaati3StartManager_Type0(Vaati3StartManager* this) {
    static void (*const Vaati3StartManager_Type0_Actions[])(Vaati3StartManager*) = {
        Vaati3StartManager_Type0_Init,    Vaati3StartManager_Type0_Action1, Vaati3StartManager_Type0_Action2,
        Vaati3StartManager_Type0_Action3, Vaati3StartManager_Type0_Action4,
    };
    Vaati3StartManager_Type0_Actions[super->action](this);
}

void Vaati3StartManager_Type0_Init(Vaati3StartManager* this) {
    if (CheckLocalFlag(0x7b) == 0) {
        DeleteThisEntity();
    }
    super->action = 1;
    gRoomTransition.field_0x38 = 0;
    gRoomTransition.field_0x39 = 0x0f;
    *(u8*)&gRoomTransition.field_0x3a = 0x20;
    *((u8*)&gRoomTransition.field_0x3a + 1) = 0x20;
#if !defined(EU) && !defined(JP)
    gSave.vaati_timer = 0x1194;
#endif
}

void Vaati3StartManager_Type0_Action1(Vaati3StartManager* this) {
    s32 distX;
    s32 distY;
    Entity* object;

    distX = gPlayerEntity.base.x.HALF.HI - (gRoomControls.origin_x + 0x88);
    distY = gPlayerEntity.base.y.HALF.HI - (gRoomControls.origin_y + 0x40);
    if (distX * distX + distY * distY < 0x901) {
        super->action = 2;
        super->subAction = 0;
        super->timer = 120;
        SetPlayerControl(2);
        PausePlayer();
        object = CreateObject(THUNDERBOLT, 0, 0);
        if (object != NULL) {
            object->x.HALF.HI = gRoomControls.origin_x + 0x88;
            object->y.HALF.HI = gRoomControls.origin_y + 0x48;
        }
        object = CreateSpeechBubbleExclamationMark(&gPlayerEntity.base, 8, 0xfffffff0);
        if (object != NULL) {
            object->spritePriority.b0 = 3;
        }
        SoundReq(BGM_VAATI_WRATH);
    }
}

void Vaati3StartManager_Type0_Action2(Vaati3StartManager* this) {
    gPlayerEntity.base.animationState = 0;
    if (gPlayerEntity.base.z.HALF.HI != 0) {
        if (gPlayerEntity.base.y.HALF.HI < (gRoomControls.origin_y + 0x48)) {
            gPlayerEntity.base.y.HALF.HI = gRoomControls.origin_y + 0x48;
        }
    } else {
        if (--super->timer == 0) {
            super->action = 3;
            super->timer = 30;
            MessageFromTarget(TEXT_INDEX(TEXT_VAATI2, 0x4f));
        }
    }
}

void Vaati3StartManager_Type0_Action3(Vaati3StartManager* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        if (super->timer != 0) {
            super->timer--;
        } else {
            super->action = 4;
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
            SoundReq(SFX_EVAPORATE);
        }
    }
}

void Vaati3StartManager_Type0_Action4(Vaati3StartManager* this) {
    if (gFadeControl.active == 0) {
        ClearGlobalFlag(ZELDA_CHASE);
        sub_0805E094();
    }
}

void Vaati3StartManager_Type1(Vaati3StartManager* this) {
    static void (*const Vaati3StartManager_Type1_Actions[])(Vaati3StartManager*) = {
        Vaati3StartManager_Type1_Init,
        Vaati3StartManager_Type1_Action1,
    };
    Vaati3StartManager_Type1_Actions[super->action](this);
}

void Vaati3StartManager_Type1_Init(Vaati3StartManager* this) {
    Entity* enemy = CreateEnemy(VAATI_WRATH, 0);
    if (enemy != NULL) {
        enemy->x.HALF.HI = gRoomControls.origin_x + 0xb0;
        enemy->y.HALF.HI = gRoomControls.origin_y + 0x48;
        enemy->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(enemy);
        if ((gRoomTransition.field_0x38 & 1) != 0) {
            DeleteThisEntity();
        }
        super->child = enemy;
        super->action = 1;
        SetPlayerControl(3);
        gArea.queued_bgm = SONG_STOP_ALL;
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 4);
        SoundReq(SFX_APPARATE);
    }
}

void Vaati3StartManager_Type1_Action1(Vaati3StartManager* this) {
    if (gFadeControl.active == 0) {
        super->child->subAction = 1;
        DeleteThisEntity();
    }
}

void sub_0805E094(void) {
    SetInitializationPriority();
    sub_0808091C(&gUnk_0813AC34, TRANSITION_7);
}
