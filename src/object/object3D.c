/**
 * @file object3D.c
 * @ingroup Objects
 *
 * @brief Object3D object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "area.h"
#include "screen.h"
#include "main.h"
#include "structures.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
} Object3DEntity;

void Object3D_Init(Object3DEntity*);
void Object3D_Action1(Object3DEntity*);
void Object3D_Action2(Object3DEntity*);
void sub_0808D030(void);

void Object3D(Object3DEntity* this) {
    static void (*const Object3D_Actions[])(Object3DEntity*) = {
        Object3D_Init,
        Object3D_Action1,
        Object3D_Action2,
    };
    Object3D_Actions[super->action](this);
}

void Object3D_Init(Object3DEntity* this) {
    super->action = 1;
    super->x.HALF.HI = gArea.portal_x - gRoomControls.scroll_x;
    super->y.HALF.HI = gArea.portal_y - gRoomControls.scroll_y;
    this->unk_68 = 0x80;
    super->updatePriority = 6;
    sub_0801E1B8(0x1f17, 0);
    sub_0801E1EC(super->x.HALF.HI, super->y.HALF.HI, this->unk_68);
}

void Object3D_Action1(Object3DEntity* this) {
#ifdef EU
    static const u16 gUnk_081216C8[] = { 206, 19, 333, 208, 16, 333, 207, 1, 333, 0 };
#else
    static const u16 gUnk_081216C8[] = { 206, 19, 334, 208, 16, 334, 207, 1, 334, 0 };
#endif
    const u16* ptr;
    this->unk_68 -= 2;
    if (this->unk_68 >= 0x15) {
        sub_0801E1EC(super->x.HALF.HI, super->y.HALF.HI, this->unk_68);
    } else {
        gScreen.controls.windowOutsideControl = 0x10;
        sub_0808D030();
        ResetPaletteTable(0);
        ResetPalettes();
        gGFXSlots.unk0 = 1;
        ptr = &gUnk_081216C8[super->type * 3];
        LoadFixedGFX(super, ptr[0]);
        LoadObjPalette(super, ptr[1]);
        super->spriteIndex = ptr[2];
        if (super->type == 2) {
            super->frameIndex = 2;
        }
        super->action = 2;
        super->spriteSettings.draw = 2;
        super->spriteOrientation.flipY = 0;
        super->spriteRendering.b3 = 0;
        super->spritePriority.b0 = 0;
        super->timer = 30;
        super->subtimer = 255;
        super->spriteRendering.b0 = 3;
        SetAffineInfo(super, 0x100, 0x100, 0);
        gArea.field_0x10 = 1;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    }
}

void sub_0808D030(void) {
    struct OamData* ptr;
    s32 index;

    ptr = gOAMControls.oam;
    index = 0x80;
    MemClear(&gOAMControls, 0xb74);
    while (index != 0) {
        // TODO split up into bitfield writes?
        *(u16*)ptr = 0x2a0;
        ptr++;
        index--;
    }
    gOAMControls.field_0x0 = 1;
}

void Object3D_Action2(Object3DEntity* this) {
    u32 tmp = super->timer--;
    if (tmp != 0) {
        if (this->unk_68 != 0) {
            this->unk_68 -= 2;
        } else {
            this->unk_68 = 0;
        }
        sub_0801E1EC(super->x.HALF.HI, super->y.HALF.HI, this->unk_68);
        if (0x80 < super->subtimer) {
            super->subtimer -= 8;
        }
        SetAffineInfo(super, super->subtimer, super->subtimer, 0);
    } else {
        gArea.filler3[0]++;
        gArea.field_0x10 = 0;
        DeleteThisEntity();
    }
}
