#include "global.h"
#include "manager.h"
#include "screen.h"
#include "area.h"
#include "textbox.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 unk_20;//unused
    u8 unk_21[0x13];//unused
    u16 unk_34;//unused
    u16 unk_36;//unused
    s16 unk_38;//unused
    s16 unk_3A;//unused
    u16 unk_3C;//unused
    u16 unk_3E;//unused
} Manager39;

extern u8 gUnk_02034DF0[0x2F2];

extern const u16 gUnk_08108DE8[];
extern void (* const gUnk_08108E28[])(Manager39*);
extern const u8 gUnk_08108E30[0x18];
extern const u8 gUnk_08108E48[0x18];
extern const u8 gUnk_08108E60[];

extern void _DmaCopy(const void* src, void* dest, u32 size);
extern void sub_0805F46C(void*, const void*);
extern u32 CheckIsDungeon(void);
extern void sub_0805E5B4(void);

void sub_0805E140(Manager39*);
void sub_0805E18C(Manager39*); //unused?
void sub_0805E1D8(Manager39*);
void sub_0805E1F8(u32, u32);

void sub_0805E0FC(Manager39* this) {
    gUnk_08108E28[this->manager.action](this);
    if ((gRoomControls.roomID != this->unk_20)
     || (gTextBox.doTextBox & 0x7F)) {
        sub_0805E1D8(this);
    }
}

void sub_0805E140(Manager39* this) {
    this->manager.unk_10 |= 0x20;
    this->manager.action = 1;
    this->unk_20 = gRoomControls.roomID;
    this->manager.unk_0e = 0x78;
    this->manager.unk_0f = 0x3c;
    sub_0805E3A0((Entity*) this, 7);
    sub_0805E1F8(gUnk_08108DE8[gArea.locationIndex], CheckIsDungeon());
}

void sub_0805E18C(Manager39* this) {
    if (gFadeControl.active) return;
    if (this->manager.unk_0b) {
        if (!--this->manager.unk_0f) {
            this->manager.unk_0b = 0;
            gPlayerState.field_0x8b = 1;
            sub_0805E5B4();
        }
    }
    if (!--this->manager.unk_0e) {
        sub_0805E1D8(this);
    }
}

void sub_0805E1D8(Manager39* this) {
    MemClear32(&gUnk_02034DF0, 0x80);
    gScreen.bg.bg3Control = 1;
    DeleteThisEntity();
}

void sub_0805E1F8(u32 unk0, u32 unk1) {
    struct {
        u8 unk_00[4];
        u8 unk_04;
        u8 unk_05;
        u8 unk_06[3];
    } PACKED tmp;
    const u8 * tmp2;
    MemClear32(&gUnk_02034DF0, 0x80);
    _DmaCopy(gUnk_08108E60, &tmp, sizeof(tmp));
    tmp.unk_04 = unk0>>8;
    tmp.unk_05 = unk0;
    tmp2 = gUnk_08108E48;
    if (!unk1) tmp2 = gUnk_08108E30;
    sub_0805F46C(&tmp, tmp2);
    gScreen.bg.bg3Control = 1;
}
