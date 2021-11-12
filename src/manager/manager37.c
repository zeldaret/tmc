#include "manager.h"
#include "structures.h"
#include "functions.h"
#include "flags.h"
#include "textbox.h"
#include "audio.h"
#include "save.h"
#include "object.h"
#include "area.h"
#include "enemy.h"

extern ScreenTransitionData gUnk_0813AC34;

extern void (*const gUnk_08108DBC[])(Manager*);

extern void (*const gUnk_08108DC4[])(Manager*);

extern void (*const gUnk_08108DD8[])(Manager*);

void sub_0805E094(void);

extern Entity* CreateSpeechBubbleExclamationMark(Entity*, u32, u32);

void Manager37_Main(Manager* this) {
    gUnk_08108DBC[this->unk_0a](this);
}

void sub_0805DE50(Manager* this) {
    gUnk_08108DC4[this->action](this);
}

void sub_0805DE68(Manager* this) {
    if (CheckLocalFlag(0x7b) == 0) {
        DeleteThisEntity();
    }
    this->action = 1;
    gScreenTransition.field_0x38 = 0;
    gScreenTransition.field_0x39 = 0x0f;
    *(u8*)&gScreenTransition.field_0x3a = 0x20;
    *((u8*)&gScreenTransition.field_0x3a + 1) = 0x20;
#if !defined(EU) && !defined(JP)
    gSave.unk498 = 0x1194;
#endif
}

void sub_0805DEB8(Manager* this) {
    s32 distX;
    s32 distY;
    Entity* object;

    distX = gPlayerEntity.x.HALF.HI - (gRoomControls.roomOriginX + 0x88);
    distY = gPlayerEntity.y.HALF.HI - (gRoomControls.roomOriginY + 0x40);
    if (distX * distX + distY * distY < 0x901) {
        this->action = 2;
        this->unk_0d = 0;
        this->unk_0e = 0x78;
        sub_08078A90(2);
        sub_08078B48();
        object = CreateObject(OBJECT_64, 0, 0);
        if (object != NULL) {
            object->x.HALF.HI = gRoomControls.roomOriginX + 0x88;
            object->y.HALF.HI = gRoomControls.roomOriginY + 0x48;
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
        if (gPlayerEntity.y.HALF.HI < (gRoomControls.roomOriginY + 0x48)) {
            gPlayerEntity.y.HALF.HI = gRoomControls.roomOriginY + 0x48;
        }
    } else {
        if (--this->unk_0e == 0) {
            this->action = 3;
            this->unk_0e = 0x1e;
            MessageFromTarget(0x164f);
        }
    }
}

void sub_0805DF98(Manager* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        if (this->unk_0e != 0) {
            this->unk_0e -= 1;
        } else {
            this->action = 4;
            DoFade(7, 4);
            SoundReq(SFX_EVAPORATE);
        }
    }
}

void sub_0805DFCC(void) {
    if (gFadeControl.active == 0) {
        ClearGlobalFlag(ZELDA_CHASE);
        sub_0805E094();
    }
}

void sub_0805DFE8(Manager* this) {
    gUnk_08108DD8[this->action](this);
}

void sub_0805E000(Manager* this) {
    Entity* enemy = CreateEnemy(VAATI_WRATH, 0);
    if (enemy != NULL) {
        enemy->x.HALF.HI = gRoomControls.roomOriginX + 0xb0;
        enemy->y.HALF.HI = gRoomControls.roomOriginY + 0x48;
        enemy->collisionLayer = 1;
        UpdateSpriteForCollisionLayer(enemy);
        if ((gScreenTransition.field_0x38 & 1) != 0) {
            DeleteThisEntity();
        }
        *(Entity**)this->unk_18 = enemy;
        this->action = 1;
        sub_08078A90(3);
        gArea.pMusicIndex = 0x80010000;
        DoFade(6, 4);
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
    sub_0805E5A8();
    sub_0808091C((ScreenTransitionData*)&gUnk_0813AC34, 7);
}
