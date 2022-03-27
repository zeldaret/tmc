#include "global.h"
#include "sound.h"
#include "manager.h"
#include "flags.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 unk_20[0x08];
    u16 unk_28;
    u16 unk_2a;
    u16 unk_2c;
    u16 unk_2e;
    u16 unk_30;
    u16 unk_32;
    u8 unk_34[0x04];
    s16 unk_38;
    s16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} Manager5;

void sub_08057AE8(Manager5*);
void sub_08057BA4(Manager5*);
void sub_08057C28(Manager5*);

const u16 gUnk_08108024[] = { 0, -1, 1, 0, 0, 1, -1, 0 };
const u16 gUnk_08108034[] = { 0, 1, -1, 0, 0, -1, 1, 0 };

void (*const gUnk_08108044[])(Manager5*) = { sub_08057AE8, sub_08057BA4, sub_08057C28 };

void Manager5_Main(Manager5* this) {
    gUnk_08108044[this->manager.action](this);
}

void sub_08057CA4(Manager5*, u32, u32);

void sub_08057AE8(Manager5* this) {
    u32 tmp;
    tmp = (this->manager.unk_0b & 0x3) << 1;
    if (this->manager.unk_0e == 1) {
        this->unk_30 = 0x323;
    } else {
        this->unk_30 = tmp & 2 ? 0x37 : 0x36;
    }
    this->unk_28 = gUnk_08108024[tmp];
    this->unk_2a = gUnk_08108024[tmp + 1];
    this->unk_2c = gUnk_08108034[tmp];
    this->unk_2e = gUnk_08108034[tmp + 1];
    this->unk_32 = ((this->manager.unk_0b >> 2) & 0xF) + 1;
    this->manager.unk_0e = 0x1C;
    this->manager.unk_0f = 0;
    this->manager.action = (this->manager.unk_0b & 0x80) ? 2 : 1;
    if (this->manager.action != 2 || !CheckFlags(this->unk_3e))
        return;
    for (; this->unk_32; this->unk_32--) {
        sub_08057CA4(this, this->unk_28, this->unk_2a);
        sub_0807B7D8(this->unk_30, this->unk_38 | (this->unk_3a << 6), this->unk_3c);
    }
    DeleteManager(&this->manager);
}

void sub_08057BA4(Manager5* this) {
    if (--this->manager.unk_0e)
        return;
    this->manager.unk_0e = 8;
    if (CheckFlags(this->unk_3e)) {
        if (this->unk_32 == this->manager.unk_0f)
            return;
        sub_08057CA4(this, this->unk_28, this->unk_2a);
        sub_0807B7D8(this->unk_30, this->unk_38 | (this->unk_3a << 6), this->unk_3c);
        this->manager.unk_0f++;
        SoundReq(SFX_HEART_GET);
    } else {
        if (!this->manager.unk_0f)
            return;
        RestorePrevTileEntity(this->unk_38 | (this->unk_3a << 6), this->unk_3c);
        sub_08057CA4(this, this->unk_2c, this->unk_2e);
        this->manager.unk_0f--;
        SoundReq(SFX_HEART_GET);
    }
}

void sub_08057C28(Manager5* this) {
    if (!this->manager.unk_0d) {
        if (!CheckFlags(this->unk_3e))
            return;
        this->manager.unk_0d++;
    } else {
        if (--this->manager.unk_0e)
            return;
        this->manager.unk_0e = 8;
        if (this->unk_32 != this->manager.unk_0f) {
            sub_08057CA4(this, this->unk_28, this->unk_2a);
            sub_0807B7D8(this->unk_30, this->unk_38 | (this->unk_3a << 6), this->unk_3c);
            this->manager.unk_0f++;
            SoundReq(SFX_HEART_GET);
        } else {
            if (this->unk_30 != 0x323) {
                SoundReq(SFX_SECRET);
            }
            DeleteManager(&this->manager);
        }
    }
}

void sub_08057CA4(Manager5* this, u32 unk1, u32 unk2) {
    this->unk_38 += unk1;
    this->unk_3a += unk2;
}
