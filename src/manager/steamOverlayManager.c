/**
 * @file steamOverlayManager.c
 * @ingroup Managers
 *
 * @brief Steamy overlay bg in Cave of Flames.
 */
#include "manager/steamOverlayManager.h"
#include "flags.h"
#include "main.h"
#include "physics.h"
#include "room.h"
#include "screen.h"

const u16 gUnk_08108588[] = { 0x1000, 0xF01, 0xE02, 0xD03, 0xC04, 0xB05, 0xA06, 0x907, 0x808 };

const u16 gUnk_0810859A[] = { 0x808, 0x907, 0xA06, 0x907 };

extern u16 gUnk_02017AA0[];

void SteamOverlayManager_Init(SteamOverlayManager*);
void SteamOverlayManager_Action4(SteamOverlayManager*);
u32 sub_08059F9C(SteamOverlayManager*);
void SteamOverlayManager_Action1(SteamOverlayManager*);
void SteamOverlayManager_Action2(SteamOverlayManager*);
void sub_0805A098(SteamOverlayManager*);
void SteamOverlayManager_Action3(SteamOverlayManager*);
void sub_0805A114(u32, u32);
void sub_0805A1D8(SteamOverlayManager*);
void nullsub_495(void*);
void sub_0805A25C(void*);

void SteamOverlayManager_Main(SteamOverlayManager* this) {
    static void (*const SteamOverlayManager_Actions[])(SteamOverlayManager*) = {
        SteamOverlayManager_Init,    SteamOverlayManager_Action1, SteamOverlayManager_Action2,
        SteamOverlayManager_Action3, SteamOverlayManager_Action4,
    };
    this->unk_20++;
    SteamOverlayManager_Actions[super->action](this);
    sub_0805A1D8(this);
}

void SteamOverlayManager_Init(SteamOverlayManager* this) {
    if (EntityHasDuplicateID((Entity*)this)) {
        DeleteThisEntity();
    }
    this->unk_22 = 1;
    this->unk_20 = 0;
    super->timer = 0;
    super->subtimer = 4;
    super->action = 4;
    super->flags |= ENT_PERSIST;
    gScreen.bg3.control = 0x1E04;
    gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
    gScreen.controls.layerFXControl = 0x3E48;
    gScreen.controls.alphaBlend = 0x1000;
    gScreen.bg3.xOffset = 0x80;
    gScreen.bg3.yOffset = 0;
    RegisterTransitionManager(this, nullsub_495, sub_0805A25C);
}

void SteamOverlayManager_Action4(SteamOverlayManager* this) {
    u32 tmp = --super->subtimer;
    if (tmp == 0) {
        super->subtimer = 4;
        if (sub_08059F9C(this)) {
            if (gUnk_08108588[super->timer] != 0x808) {
                this->unk_22 = 1;
                this->unk_24 = tmp;
                gScreen.controls.alphaBlend = gUnk_08108588[++super->timer];
            } else {
                this->unk_22 = tmp;
            }
        } else {
            this->unk_22 = 1;
            if (gUnk_08108588[super->timer] != 0x1000) {
                gScreen.controls.alphaBlend = gUnk_08108588[--super->timer];
            }
        }
    }
}

u32 sub_08059F9C(SteamOverlayManager* this) {
    switch (gRoomControls.room) {
        case 1:
            if (CheckLocalFlag(0x16)) {
                return 0;
            }
            sub_0805A25C(this);
            DeleteThisEntity();
            break;
        case 7:
            sub_0805A25C(this);
            DeleteThisEntity();
            break;
        case 0:
        case 8 ... 9:
        case 23:
            return 1;
        case 2 ... 6:
        case 10 ... 22:
        default:
            return 0;
    }
}

void SteamOverlayManager_Action1(SteamOverlayManager* this) {
    sub_0805A098(this);
}

void SteamOverlayManager_Action2(SteamOverlayManager* this) {
    if (--super->subtimer == 0) {
        super->subtimer = 4;
        gScreen.controls.alphaBlend = gUnk_08108588[super->timer++];
        if (super->timer == 9) {
            super->action = 1;
            this->unk_22 = 0;
        }
    }
    sub_0805A098(this);
}

void sub_0805A098(SteamOverlayManager* this) {
    switch (gRoomControls.room) {
        case 0:
        case 8:
        case 9:
        case 0x17:
            return;
        default:
            super->action = 3;
    }
}

void SteamOverlayManager_Action3(SteamOverlayManager* this) {
    if (--super->subtimer == 0) {
        super->subtimer = 4;
        gScreen.controls.alphaBlend = gUnk_08108588[super->timer--];
        if (super->timer == 0xFF) {
            gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
            DisableVBlankDMA();
            DeleteThisEntity();
        }
    }
}

void sub_0805A114(u32 unk0, u32 unk1) {
    s32 i;
    u16* p = &gUnk_02017AA0[gUnk_03003DE4[0] * 0x500];
    for (i = 0; i < 0xA0; i++) {
        s32 tmp = i + gScreen.bg3.yOffset;
        switch ((tmp >> 3) & 7) {
            case 4:
                tmp -= 8;
                tmp &= 0xF8;
                break;
            case 1:
            case 7:
                tmp &= 0xF0;
                break;
            case 0:
            case 2 ... 3:
            case 5 ... 6:
            default:
                tmp &= 0xF8;
        }
        *p++ = gScreen.bg3.xOffset + ((gSineTable[(unk1 + tmp) & 0xFF] * unk0) >> 8);
    }
    SetVBlankDMA((u16*)&gUnk_02017AA0[gUnk_03003DE4[0] * 0x500], (u16*)REG_ADDR_BG3HOFS,
                 ((DMA_ENABLE | DMA_START_HBLANK | DMA_16BIT | DMA_REPEAT | DMA_SRC_INC | DMA_DEST_RELOAD) << 16) +
                     0x1);
}

void sub_0805A1D8(SteamOverlayManager* this) {
    gRoomControls.bg3OffsetX.WORD -= 0x1000;
    gScreen.bg3.xOffset = gRoomControls.bg3OffsetX.HALF.HI;
    gRoomControls.bg3OffsetY.WORD -= 0x1000;
    gScreen.bg3.yOffset = gRoomControls.bg3OffsetY.HALF.HI;
    if (gScreen.lcd.displayControl & DISPCNT_BG3_ON) {
        sub_0805A114(6, this->unk_20 >> 1);
        if (this->unk_22 == 0 && (gMain.ticks & 0x1F) == 0) {
            this->unk_24++;
            this->unk_24 &= 3;
            gScreen.controls.alphaBlend = gUnk_0810859A[this->unk_24];
        }
    }
}

void nullsub_495(void* this) {
}

void sub_0805A25C(void* this) {
    gScreen.controls.layerFXControl = 0;
    gScreen.lcd.displayControl &= ~DISPCNT_BG3_ON;
    DisableVBlankDMA();
}
