/**
 * @file whiteTriangleEffect.c
 * @ingroup Objects
 *
 * @brief White Triangle Effect object
 */
#include "functions.h"
#include "object.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u8 unk_6c[0x15];
    /*0x81*/ u8 unk_81;
    /*0x82*/ s8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
    /*0x85*/ s8 unk_85;
    /*0x86*/ s16 unk_86;
} WhiteTriangleEffectEntity;

typedef struct {
    u16 unk_0;
    u16 unk_1;
    u16 unk_2;
    s16 unk_3;
    u16 unk_4;
    u16 unk_5;
    s16 unk_6;
    u16 unk_7;
    u16 unk_8;
    u16 unk_9;
} struct_081215E8;

extern void sub_0801E49C(s32 baseX, s32 baseY, s32 radius, u32 baseAngle);
extern bool32 gUnk_02036BB8;

void sub_0808C6D4(WhiteTriangleEffectEntity*);
void sub_0808C74C(WhiteTriangleEffectEntity*);
void sub_0808C858(WhiteTriangleEffectEntity*);
void sub_0808C8B8(WhiteTriangleEffectEntity*);
void sub_0808C840(WhiteTriangleEffectEntity*);

const struct_081215E8 gUnk_081215E8[] = {
    { 5, 4, 280, -6, 0, 0, -8, 0, 31, 63 },
    { 6, 2, 0, 4, 0, 0, 8, 0, 63, 31 },
    { 7, 4, 0, 4, 0, 0, -6, 0, 63, 31 },
    { 6, 2, 0, 16, 0, 0, 16, 0, 63, 31 },
};

void WhiteTriangleEffect(WhiteTriangleEffectEntity* this) {
    static void (*const gUnk_08121638[])(WhiteTriangleEffectEntity*) = {
        sub_0808C6D4,
        sub_0808C74C,
    };
    static void (*const gUnk_08121640[])(WhiteTriangleEffectEntity*) = {
        sub_0808C858,
        sub_0808C8B8,
    };

    if (super->type == 0) {
        gUnk_08121638[super->action](this);
    } else {
        gUnk_08121640[super->action](this);
    }
}

void sub_0808C6D4(WhiteTriangleEffectEntity* this) {
    WhiteTriangleEffectEntity* obj;
    const struct_081215E8* ptr = &gUnk_081215E8[super->type2];
    this->unk_86 = ptr->unk_2;
    this->unk_85 = ptr->unk_3;
    this->unk_84 = ptr->unk_4;
    this->unk_83 = ptr->unk_5;
    this->unk_82 = ptr->unk_6;
    this->unk_81 = ptr->unk_7;
    sub_0801E1B8((gScreen.controls.windowInsideControl & 0xff00) | ptr->unk_8, ptr->unk_9);
    super->action = 1;
    sub_0808C74C(this);
    obj = (WhiteTriangleEffectEntity*)CreateObject(WHITE_TRIANGLE_EFFECT, 1, ptr->unk_0);
    if (obj != NULL) {
        obj->unk_6a = ptr->unk_1;
    }
}

void sub_0808C74C(WhiteTriangleEffectEntity* this) {
    if (super->parent != NULL) {
        super->x.HALF.HI = super->parent->x.HALF.HI - gRoomControls.scroll_x;
        super->y.HALF.HI = super->parent->y.HALF.HI - gRoomControls.scroll_y;
    } else {
        super->x.HALF.HI = 0x78;
        super->y.HALF.HI = 0x50;
    }
    if (this->unk_86 < 0) {
        sub_0801E49C(super->x.HALF.HI, super->y.HALF.HI, 0, 0);
        gUnk_02036BB8 = TRUE;
        sub_0808C840(this);
    }
    if (this->unk_86 > 500) {
        sub_0801E49C(super->x.HALF.HI, super->y.HALF.HI, 500, 0);
        gUnk_02036BB8 = 1;
        sub_0808C840(this);
    }
    this->unk_86 += this->unk_85;
    this->unk_85 += this->unk_84;
    if (this->unk_85 > 0x10) {
        this->unk_85 = 0x10;
    }
    if (this->unk_85 < -0x10) {
        this->unk_85 = 0xf0;
    }
    this->unk_83 += this->unk_82;
    this->unk_82 += this->unk_81;
    if (this->unk_82 > 0x10) {
        this->unk_82 = 0x10;
    }
    if (this->unk_82 < -0x10) {
        this->unk_82 = -0x10;
    }
    sub_0801E49C(super->x.HALF.HI, super->y.HALF.HI, this->unk_86, this->unk_83);
}

void sub_0808C840(WhiteTriangleEffectEntity* this) {
    gScreen.controls.layerFXControl = 0;
    sub_0801E104();
    DeleteThisEntity();
}

void sub_0808C858(WhiteTriangleEffectEntity* this) {
    if ((super->type2 & 2) != 0) {
        gScreen.controls.layerFXControl = 0x3fbf;
    } else {
        gScreen.controls.layerFXControl = 0x3fff;
    }
    if ((super->type2 & 1) != 0) {
        gScreen.controls.layerBrightness = 0;
    } else {
        gScreen.controls.layerBrightness = 0x10;
    }
    super->action = 1;
    this->unk_68 = 0x100;
}

void sub_0808C8B8(WhiteTriangleEffectEntity* this) {
    s32 tmp = this->unk_68 -= this->unk_6a;
    if (tmp * 0x10000 < 0) {
        this->unk_68 = 0;
    }
    if ((super->type2 & 1) != 0) {
        gScreen.controls.layerBrightness = 0x10 - ((s16)this->unk_68 >> 4);
    } else {
        gScreen.controls.layerBrightness = (s16)this->unk_68 >> 4;
    }
    if ((s16)this->unk_68 == 0) {
        DeleteThisEntity();
    }
}
