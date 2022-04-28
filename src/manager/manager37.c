#include "manager.h"
#include "structures.h"
#include "functions.h"
#include "flags.h"
#include "message.h"
#include "sound.h"
#include "save.h"
#include "object.h"
#include "area.h"
#include "enemy.h"
#include "screen.h"

extern ScreenTransitionData gUnk_0813AC34;

void sub_0805E094(void);
void sub_0805DE50(Manager*);
void sub_0805DFE8(Manager*);
void sub_0805DE68(Manager*);
void sub_0805DEB8(Manager*);
void sub_0805DF4C(Manager*);
void sub_0805DF98(Manager*);
void sub_0805DFCC(Manager*);
void sub_0805E078(Manager*);
void sub_0805E000(Manager*);

void Manager37_Main(Manager* this) {
    static void (*const gUnk_08108DBC[])(Manager*) = {
        sub_0805DE50,
        sub_0805DFE8,
    };
    gUnk_08108DBC[this->unk_0a](this);
}

void sub_0805DE50(Manager* this) {
    static void (*const actionFuncs[])(Manager*) = {
        sub_0805DE68, sub_0805DEB8, sub_0805DF4C, sub_0805DF98, sub_0805DFCC,
    };
    actionFuncs[this->action](this);
}

void sub_0805DE68(Manager* this) {
    if (CheckLocalFlag(0x7b) == 0) {
        DeleteThisEntity();
    }
    this->action = 1;
    gRoomTransition.field_0x38 = 0;
    gRoomTransition.field_0x39 = 0x0f;
    *(u8*)&gRoomTransition.field_0x3a = 0x20;
    *((u8*)&gRoomTransition.field_0x3a + 1) = 0x20;
#if !defined(EU) && !defined(JP)
    gSave.timers[3] = 0x1194;
#endif
}

void sub_0805DEB8(Manager* this) {
    s32 distX;
    s32 distY;
    Entity* object;

    distX = gPlayerEntity.x.HALF.HI - (gRoomControls.origin_x + 0x88);
    distY = gPlayerEntity.y.HALF.HI - (gRoomControls.origin_y + 0x40);
    if (distX * distX + distY * distY < 0x901) {
        this->action = 2;
        this->unk_0d = 0;
        this->unk_0e = 0x78;
        SetPlayerControl(2);
        sub_08078B48();
        object = CreateObject(OBJECT_64, 0, 0);
        if (object != NULL) {
            object->x.HALF.HI = gRoomControls.origin_x + 0x88;
            object->y.HALF.HI = gRoomControls.origin_y + 0x48;
        }
        object = CreateSpeechBubbleExclamationMark(&gPlayerEntity, 8, 0xfffffff0);
        if (object != NULL) {
            object->spritePriority.b0 = 3;
        }
        SoundReq(BGM_VAATI_WRATH);
    }
}

void sub_0805DF4C(Manager* this) {
    gPlayerEntity.animationState = 0;
    if (gPlayerEntity.z.HALF.HI != 0) {
        if (gPlayerEntity.y.HALF.HI < (gRoomControls.origin_y + 0x48)) {
            gPlayerEntity.y.HALF.HI = gRoomControls.origin_y + 0x48;
        }
    } else {
        if (--this->unk_0e == 0) {
            this->action = 3;
            this->unk_0e = 0x1e;
            MessageFromTarget(TEXT_INDEX(TEXT_VAATI2, 0x4f));
        }
    }
}

void sub_0805DF98(Manager* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        if (this->unk_0e != 0) {
            this->unk_0e -= 1;
        } else {
            this->action = 4;
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
            SoundReq(SFX_EVAPORATE);
        }
    }
}

void sub_0805DFCC(Manager* this) {
    if (gFadeControl.active == 0) {
        ClearGlobalFlag(ZELDA_CHASE);
        sub_0805E094();
    }
}

void sub_0805DFE8(Manager* this) {
    static void (*const actionFuncs[])(Manager*) = {
        sub_0805E000,
        sub_0805E078,
    };
    actionFuncs[this->action](this);
}

void sub_0805E000(Manager* this) {
    Entity* enemy = CreateEnemy(VAATI_WRATH, 0);
    if (enemy != NULL) {
        enemy->x.HALF.HI = gRoomControls.origin_x + 0xb0;
        enemy->y.HALF.HI = gRoomControls.origin_y + 0x48;
        enemy->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(enemy);
        if ((gRoomTransition.field_0x38 & 1) != 0) {
            DeleteThisEntity();
        }
        *(Entity**)this->unk_18 = enemy;
        this->action = 1;
        SetPlayerControl(3);
        gArea.queued_bgm = 0x80010000;
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 4);
        SoundReq(SFX_APPARATE);
    }
}

void sub_0805E078(Manager* this) {
    if (gFadeControl.active == 0) {
        *(u8*)(((int*)this->unk_18)[0] + 0xd) = 1;
        DeleteThisEntity();
    }
}

void sub_0805E094(void) {
    SetInitializationPriority();
    sub_0808091C((ScreenTransitionData*)&gUnk_0813AC34, TRANSITION_7);
}
