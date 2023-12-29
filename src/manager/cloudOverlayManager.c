/**
 * @file cloudOverlayManager.c
 * @ingroup Managers
 *
 * @brief Cloud bg overlay for Hyrule Fields.
 */
#include "manager/cloudOverlayManager.h"
#include "area.h"
#include "functions.h"
#include "screen.h"

void sub_0805AEDC(CloudOverlayManager*);
void sub_0805AF3C(CloudOverlayManager*);

void CloudOverlayManager_Main(CloudOverlayManager* this) {
    static const u16 gUnk_0810865C[] = {
        0xf01, 0xe02, 0xe03, 0xe04, 0, 0,
    };
    if (this == NULL) {
        if (gArea.onEnter != sub_0805AEDC) {
            sub_0805AEDC(NULL);
        }
    } else {
        if (super->action == 0) {
            super->action = 1;
            super->flags |= ENT_PERSIST;
            super->timer = 0;
            super->subtimer = 8;
            this->field_0x20 = gUnk_0810865C[0];
            SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
            if (gArea.onEnter == NULL) {
                RegisterTransitionManager(this, sub_0805AEDC, sub_0805AF3C);
            } else {
                DeleteThisEntity();
            }
        } else {
            if ((gUnk_0810865C[super->timer] != 0) && (--super->subtimer == 0)) {
                super->subtimer = 4;
                if (gUnk_0810865C[++super->timer] != 0) {
                    this->field_0x20 = gUnk_0810865C[super->timer];
                    gScreen.controls.alphaBlend = this->field_0x20;
                }
            }
            gRoomControls.bg3OffsetX.WORD -= 0x2000;
            gRoomControls.bg3OffsetY.WORD -= 0x1000;
            gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805AEDC(CloudOverlayManager* this) {
    gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1);
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl =
        BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
    gScreen.controls.alphaBlend = (this != NULL) ? this->field_0x20 : BLDALPHA_BLEND(0, 16);
    gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
    if (this != NULL) {
        CloudOverlayManager_Main(this);
    }
}

void sub_0805AF3C(CloudOverlayManager* this) {
    super->flags &= ~ENT_PERSIST;
    gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl = 0;
}
