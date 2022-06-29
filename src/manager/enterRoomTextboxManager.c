/**
 * @file enterRoomTextboxManager.c
 * @ingroup Managers
 *
 * @brief Shows textbox when entering the room.
 */
#include "manager/enterRoomTextboxManager.h"
#include "area.h"
#include "common.h"
#include "functions.h"
#include "game.h"
#include "message.h"
#include "screen.h"

extern u8 gUnk_02034DF0[0x2F2];

extern const u16 gUnk_08108DE8[];
extern void (*const EnterRoomTextboxManager_Actions[])(EnterRoomTextboxManager*);
extern const u8 gUnk_08108E30[0x18];
extern const u8 gUnk_08108E48[0x18];
extern const u8 gUnk_08108E60[];

extern void sub_0805F46C(void*, const void*);

void sub_0805E140(EnterRoomTextboxManager*);
void sub_0805E18C(EnterRoomTextboxManager*); // unused?
void sub_0805E1D8(EnterRoomTextboxManager*);
void sub_0805E1F8(u32, u32);

void EnterRoomTextboxManager_Main(EnterRoomTextboxManager* this) {
    EnterRoomTextboxManager_Actions[super->action](this);
    if ((gRoomControls.room != this->unk_20) || (gMessage.doTextBox & 0x7F)) {
        sub_0805E1D8(this);
    }
}

void sub_0805E140(EnterRoomTextboxManager* this) {
    super->flags |= ENT_PERSIST;
    super->action = 1;
    this->unk_20 = gRoomControls.room;
    super->timer = 120;
    super->subtimer = 60;
    SetDefaultPriority((Entity*)this, PRIO_HIGHEST);
    sub_0805E1F8(gUnk_08108DE8[gArea.locationIndex], AreaIsDungeon());
}

void sub_0805E18C(EnterRoomTextboxManager* this) {
    if (gFadeControl.active)
        return;
    if (super->type2) {
        if (--super->subtimer == 0) {
            super->type2 = 0;
            gPlayerState.controlMode = CONTROL_1;
            ResetSystemPriority();
        }
    }
    if (--super->timer == 0) {
        sub_0805E1D8(this);
    }
}

void sub_0805E1D8(EnterRoomTextboxManager* this) {
    MemClear(&gUnk_02034DF0, 0x80);
    gScreen.bg0.updated = 1;
    DeleteThisEntity();
}

void sub_0805E1F8(u32 unk0, u32 unk1) {
    struct {
        u8 unk_00[4];
        u8 unk_04;
        u8 unk_05;
        u8 unk_06[3];
    } PACKED tmp;
    const u8* tmp2;
    MemClear(&gUnk_02034DF0, 0x80);
    MemCopy(gUnk_08108E60, &tmp, sizeof(tmp));
    tmp.unk_04 = unk0 >> 8;
    tmp.unk_05 = unk0;
    tmp2 = gUnk_08108E48;
    if (!unk1)
        tmp2 = gUnk_08108E30;
    sub_0805F46C(&tmp, tmp2);
    gScreen.bg0.updated = 1;
}
