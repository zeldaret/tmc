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
        if (gArea.unk3 != (u32)sub_0805AEDC) {
            sub_0805AEDC(NULL);
        }
    } else {
        if (this->manager.action == 0) {
            this->manager.action = 1;
            this->manager.unk_10 |= 0x20;
            this->manager.unk_0e = 0;
            this->manager.unk_0f = 8;
            this->field_0x20 = gUnk_0810865C[0];
            sub_0805E3A0(this, 6);
            if (gArea.unk3 == 0) {
                sub_08052D74(this, sub_0805AEDC, sub_0805AF3C);
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
            gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
            gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
        }
    }
}

void sub_0805AEDC(Manager18* this) {
    gScreen.affine.bg3Control = 0x1e05;
    gScreen.lcd.displayControl |= 0x800;
    gScreen.controls.layerFXControl = 0x3648;
    gScreen.controls.alphaBlend = (this != NULL) ? this->field_0x20 : 0x1000;
    gScreen.affine.bg3xOffset = gRoomControls.roomScrollX + gRoomControls.bg3OffsetX.HALF.HI;
    gScreen.affine.bg3yOffset = gRoomControls.roomScrollY + gRoomControls.bg3OffsetY.HALF.HI;
    if (this != NULL) {
        Manager18_Main(this);
    }
}

void sub_0805AF3C(Manager18* this) {
    this->manager.unk_10 &= 0xdf;
    gScreen.lcd.displayControl &= 0xf7ff;
    gScreen.controls.layerFXControl = 0;
}
