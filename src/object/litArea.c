/**
 * @file litArea.c
 * @ingroup Objects
 *
 * @brief Lit Area object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "room.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u8 unused1[26];
    /*0x86*/ u16 unk_86;
} LitAreaEntity;

void LitArea(LitAreaEntity* this) {
    if (super->action == 0) {
        if (this->unk_86 != 0 && CheckFlags(this->unk_86) == 0) {
            return;
        }
        super->spriteSettings.draw = 1;
        super->action = 1;
        super->spriteRendering.alphaBlend = 2;
        super->spriteRendering.b0 = 3;
        super->frameIndex = 3;
        super->flags |= ENT_PERSIST;
        super->subtimer = gRoomControls.room;
        super->timer = 2;
        this->unk_68 = -2;
        this->unk_6a = 0x80;
        SetAffineInfo(super, 0x80, 0x80, 0);
    } else {
        if (--super->timer == 0) {
            super->timer = 2;
            this->unk_6a += this->unk_68;
            if (this->unk_6a < 0x78) {
                this->unk_68 = 1;
            }
            if (this->unk_6a > 0x88) {
                this->unk_68 = -1;
            }
            SetAffineInfo(super, this->unk_6a, this->unk_6a, 0);
        }
    }
    gScreen.lcd.displayControl |= DISPCNT_OBJWIN_ON;
    gScreen.controls.windowOutsideControl = (gScreen.controls.windowOutsideControl & 0xff) | WINOUT_WINOBJ_BG0 |
                                            WINOUT_WINOBJ_BG1 | WINOUT_WINOBJ_BG2 | WINOUT_WINOBJ_OBJ |
                                            WINOUT_WINOBJ_CLR;
    if ((gRoomControls.room != super->subtimer) && (gRoomControls.reload_flags == 0)) {
        DeleteThisEntity();
    }
}
