/**
 * @file staticBackgroundManager.c
 * @ingroup Managers
 *
 * @brief Sets up static bg 3 images?
 */
#include "manager/staticBackgroundManager.h"
#include "common.h"
#include "functions.h"
#include "screen.h"

void sub_0805B4B4(StaticBackgroundManager*);
void sub_0805B448(StaticBackgroundManager*);
void sub_0805B474(StaticBackgroundManager*);

void sub_0806D0F8(void); // in bigGoron?

static const u8 gUnk_08108C28[] = { 0x14, 0x0, 0x0,  0x0, 0x15, 0x0, 0x0,  0x0, 0x14, 0x0, 0xd8, 0x0, 0x2f, 0x0,
                                    0x70, 0x0, 0x4b, 0x0, 0x0,  0x0, 0x4e, 0x0, 0x0,  0x0, 0x4d, 0x1, 0x0,  0x0 };
static const u16 gUnk_08108C44[] = { 0, 0, -0x28, 0x70, 0, 0, 0, 0 };

void StaticBackgroundManager_Main(StaticBackgroundManager* this) {
    static void (*const gUnk_08108C54[])(StaticBackgroundManager*) = {
        sub_0805B448,
        sub_0805B474,
    };

    s32 iVar3;
    const u8* tmp;

    if (EntityHasDuplicateID((Entity*)this) != 0) {
        DeleteThisEntity();
    }
    tmp = gUnk_08108C28 + super->type * 4;
    if (super->action == 0) {
        super->action = 1;
        super->flags |= ENT_PERSIST;
        SetEntityPriority((Entity*)this, PRIO_PLAYER_EVENT);
        if (super->type != 0) {
            RegisterTransitionManager(this, sub_0805B4B4, NULL);
        }
        iVar3 = 0x100 - (u32)gRoomControls.height;
        if (iVar3 < 0) {
            iVar3 = 0;
        }
        this->field_0x20 = iVar3 + (s8)tmp[2];
        gUnk_08108C54[tmp[1]](this);
    }
    if (gRoomControls.reload_flags == 0) {
        gUnk_08108C54[tmp[1]](this);
    }
}

void sub_0805B448(StaticBackgroundManager* this) {
    gScreen.bg3.xOffset = (gRoomControls.scroll_x - gRoomControls.origin_x) >> 2;
    gScreen.bg3.yOffset = ((gRoomControls.scroll_y - gRoomControls.origin_y) >> 1) + this->field_0x20;
}

void sub_0805B474(StaticBackgroundManager* this) {
    s32 tmp = ((gRoomControls.scroll_y - gRoomControls.origin_y) * 0x60) / (gRoomControls.height - DISPLAY_HEIGHT);
    gScreen.bg3.yOffset = gRoomControls.origin_y + tmp;
    gScreen.bg3.xOffset = gRoomControls.scroll_x - ((gRoomControls.width - 0x100) / 2);
}

void sub_0805B4B4(StaticBackgroundManager* this) {
    LoadStaticBackground(super->type);
    if (super->type == 2) {
        sub_0806D0F8();
    }
    StaticBackgroundManager_Main(this);
}

void LoadStaticBackground(u32 param_1) {
    static const u8 gUnk_08108C5C[] = { 0x14, 0x15, 0x14, 0x2f, 0x4b, 0x4e, 0x4d, 0 };
    s32 iVar1;
    u32 uVar2;

    LoadGfxGroup(gUnk_08108C5C[param_1]);
    gScreen.bg3.control = 0x1e07;
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.bg3.xOffset = (gRoomControls.scroll_x - gRoomControls.origin_x) >> 2;

    uVar2 = (gRoomControls.scroll_y - gRoomControls.origin_y) >> 1;
    iVar1 = 0x100 - gRoomControls.height;
    if (iVar1 < 0) {
        iVar1 = 0;
    }
    gScreen.bg3.yOffset = uVar2 + iVar1 + gUnk_08108C44[param_1];
}
