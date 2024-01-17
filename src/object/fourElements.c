/**
 * @file fourElements.c
 * @ingroup Objects
 *
 * @brief Four Elements object
 */
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "message.h"
#include "object.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u8 unk_6a;
} FourElementsEntity;

extern u32 getItemMetaDataGetTextIndex(u32);
extern void EnablePauseMenu(void);

extern u16 script_PlayerGetElement[];

void FourElements_Init(FourElementsEntity*);
void FourElements_Action1(FourElementsEntity*);
void FourElements_Action2(FourElementsEntity*);
void FourElements_Action3(FourElementsEntity*);
void FourElements_Action4(FourElementsEntity*);
void FourElements_Action5(FourElementsEntity*);
void FourElements_Action6(FourElementsEntity*);
void sub_080A0424(FourElementsEntity*);
void sub_080A0444(FourElementsEntity*);

void FourElements(FourElementsEntity* this) {
    static void (*const FourElements_Actions[])(FourElementsEntity*) = {
        FourElements_Init,    FourElements_Action1, FourElements_Action2, FourElements_Action3,
        FourElements_Action4, FourElements_Action5, FourElements_Action6,
    };
    FourElements_Actions[super->action](this);
    sub_08080CB4(super);
}

void FourElements_Init(FourElementsEntity* this) {
    Entity* elementsBackground;
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->spritePriority.b1 = 2;
    super->spriteRendering.b3 = 1;
    super->hitbox = (Hitbox*)&gHitbox_6;
    super->z.HALF.HI = -192;
    this->unk_6a = 0x40;
    switch (super->type) {
        case 0x41:
            gScreen.lcd.displayControl &= 0xfdff;
            super->collisionLayer = 1;
            break;
        case 0x40:
        case 0x42:
        case 0x43:
            break;
    }
    StartPlayerScript(script_PlayerGetElement);
    gScreen.controls.layerFXControl = 0x640;
    gScreen.controls.alphaBlend = 0x1000;
    sub_0805BC4C();
    elementsBackground = CreateObjectWithParent(super, ELEMENTS_BACKGROUND, super->type - 0x40, 0);
    if (elementsBackground != NULL) {
        elementsBackground->parent = super;
        super->child = elementsBackground;
    }
}

void FourElements_Action1(FourElementsEntity* this) {
    if ((gActiveScriptInfo.syncFlags & 4) != 0) {
        sub_080A0424(this);
        if (super->z.HALF.HI < -8) {
            super->z.HALF.HI++;
        } else {
            super->action = 2;
            gActiveScriptInfo.syncFlags |= 2;
        }
    }
}

void FourElements_Action2(FourElementsEntity* this) {
    sub_080A0424(this);
    sub_080A0444(this);
    if (IsCollidingPlayer(super)) {
        DeleteEntity(super->child);
        super->spriteSettings.draw = 0;
        super->action = 3;
        super->timer = 45;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0;
        InitItemGetSequence(super->type, 0, 1);
        sub_0808C650(super, 1);
        SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 2);
        SoundReq(SFX_F8);
        SoundReq(SFX_148);
        SoundReq(BGM_ELEMENT_GET);
        SoundReq(SONG_BGM_0);
    }
}

void FourElements_Action3(FourElementsEntity* this) {
    if (super->timer != 0) {
        sub_080A0424(this);
        if (--super->timer == 0) {
            SetEntityPriority(&gPlayerEntity.base, 0);
        }
    } else {
        RequestPriorityDuration(NULL, 60);
        if (sub_0808C67C()) {
            super->action = 4;
        }
    }
}

void FourElements_Action4(FourElementsEntity* this) {
    RequestPriorityDuration(NULL, 60);
    if (gFadeControl.active == 0) {
        super->action = 5;
        this->unk_68 = 0x1a4;
    }
}

void FourElements_Action5(FourElementsEntity* this) {
    u32 index;
    RequestPriorityDuration(NULL, 10);
    if (--this->unk_68 == 0) {
        super->action = 6;
        index = getItemMetaDataGetTextIndex(super->type);
        MessageNoOverlap(index, super);
    }
}

void FourElements_Action6(FourElementsEntity* this) {
    RequestPriorityDuration(NULL, 10);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        SetPriorityTimer(90);
        gPlayerState.controlMode = 1;
        EnablePauseMenu();
        SetRoomFlag(0);
        DeleteThisEntity();
    }
}

void sub_080A0424(FourElementsEntity* this) {
    if (--this->unk_6a == 0) {
        this->unk_6a = 0x40;
        SoundReq(SFX_178);
    }
}

void sub_080A0444(FourElementsEntity* this) {
    static const s8 gUnk_081248B4[] = {
        -7, -8, -9, -10, -11, -10, -9, -8,
    };
    super->z.HALF.HI = gUnk_081248B4[(super->subtimer++ >> 3) & 7];
}

void sub_080A0464(FourElementsEntity* this, ScriptExecutionContext* context) {
    Entity* element = FindEntityByID(6, FOUR_ELEMENTS, 6);
    if (element != NULL) {
        LookAt(super, context, element->x.HALF.HI, element->y.HALF.HI + 0x18);
    }
}
