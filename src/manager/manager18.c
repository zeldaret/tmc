#include "manager.h"
#include "screen.h"
#include "area.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u16 field_0x20;
} Manager18;

void sub_0805AEDC(Manager18*);
void sub_0805AF3C(Manager18*);
extern u16 gUnk_0810865C[];

void Manager18_Main(Manager18* this) {
    if (this == NULL) {
        if (gArea.onEnter != sub_0805AEDC) {
            sub_0805AEDC(NULL);
        }
    } else {
        if (this->manager.action == 0) {
            this->manager.action = 1;
            this->manager.unk_10 |= 0x20;
            this->manager.unk_0e = 0;
            this->manager.unk_0f = 8;
            this->field_0x20 = gUnk_0810865C[0];
            SetDefaultPriority((Entity*)this, PRIO_PLAYER_EVENT);
            if (gArea.onEnter == NULL) {
                RegisterTransitionManager(this, sub_0805AEDC, sub_0805AF3C);
            } else {
                DeleteThisEntity();
            }
        } else {
            if ((gUnk_0810865C[this->manager.unk_0e] != 0) && (--this->manager.unk_0f == 0)) {
                this->manager.unk_0f = 4;
                if (gUnk_0810865C[++this->manager.unk_0e] != 0) {
                    this->field_0x20 = gUnk_0810865C[this->manager.unk_0e];
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

void sub_0805AEDC(Manager18* this) {
    gScreen.bg3.control = BGCNT_SCREENBASE(30) | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(1);
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl =
        BLDCNT_TGT1_BG3 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2 | BLDCNT_TGT2_OBJ | BLDCNT_TGT2_BD;
    gScreen.controls.alphaBlend = (this != NULL) ? this->field_0x20 : BLDALPHA_BLEND(0, 16);
    gScreen.bg3.xOffset = gRoomControls.scroll_x + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.bg3.yOffset = gRoomControls.scroll_y + gRoomControls.bg3OffsetY.HALF.HI;
    if (this != NULL) {
        Manager18_Main(this);
    }
}

void sub_0805AF3C(Manager18* this) {
    this->manager.unk_10 &= 0xdf;
    gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl = 0;
}
