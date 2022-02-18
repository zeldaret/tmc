
#include "manager.h"
#include "area.h"
#include "main.h"
#include "screen.h"
#include "player.h"
#include "room.h"
#include "coord.h"
#include "functions.h"
#include "common.h"

typedef struct {
    Manager manager;
    s32 unk20;
} Manager22;

extern void sub_0801E120(void);
extern void sub_0801E154(u32);
extern u32 CheckRectOnScreen(s32, s32, u32, u32);
extern void sub_0801E160(u32, u32, u32);

u32 sub_0805BA78();
void sub_0805BAD4();

void Manager22_Main(Manager22* this) {
    s32 sVar1;
    u32 uVar3;

    if (gArea.unk_0b == 0) {
        sub_0801E104();
        gScreen.lcd.displayControl &= ~(DISPCNT_BG3_ON | DISPCNT_WIN0_ON);
        DeleteThisEntity();
    }
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->manager.unk_10 |= 0x20;
        this->manager.unk_0e = 17;
        this->unk20 = 0;
        SetDefaultPriority((Entity*)this, 6);
        sub_0801E120();
        sub_0801E154(this->manager.unk_0e);
    }
    if (gMain.substate == 2) {
        gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
        sub_0805BA78();
        sub_0805BAD4();
    }
    if (gArea.unk_0b == 2) {
        gScreen.lcd.displayControl &= ~DISPCNT_WIN0_ON;
    } else {
        if (CheckRectOnScreen(gPlayerEntity.x.HALF.HI - gRoomControls.origin_x,
                              gPlayerEntity.y.HALF.HI - gRoomControls.origin_y, 0, 0)) {
            gScreen.lcd.displayControl |= DISPCNT_WIN0_ON;
        } else {
            gScreen.lcd.displayControl &= ~DISPCNT_WIN0_ON;
        }
        uVar3 = this->manager.unk_0e;
        if (((gPlayerState.flags & PL_USE_LANTERN)) && (gArea.unk_0b)) {
            if (uVar3 < 0x48) {
                uVar3 += 4;
                sub_0801E154(uVar3);
                this->unk20 = 0;
            } else if ((gRoomTransition.frameCount & 3) == 0) {
                this->manager.unk_0f += 0x10;
                sVar1 = gSineTable[this->manager.unk_0f];
                this->unk20 = sVar1 >> 7;
                sub_0801E154(uVar3 + this->unk20);
            }
        } else {
            this->unk20 = 0;
            if (0x11 < uVar3) {
                uVar3 -= 4;
                if (uVar3 < 0x11) {
                    uVar3 = 0x11;
                }
                sub_0801E154(uVar3);
            }
        }

        this->manager.unk_0e = uVar3;
        sub_0801E160(gPlayerEntity.x.HALF.HI - gRoomControls.scroll_x,
                     gPlayerEntity.y.HALF.HI - gRoomControls.scroll_y - 9 + gPlayerEntity.z.HALF.HI,
                     uVar3 + this->unk20);
    }
}

#define ABS(x) ((unsigned)(x < 0 ? -(x) : x))

u32 sub_0805BA78() {
    u32 uVar1;
    s32 iVar1;
    s32 iVar2;

    iVar2 = (short)gArea.lightLevel;
    iVar1 = gRoomVars.lightLevel;

    if (iVar1 < 0) {
        iVar1 = 0;
    }

    if (0x100 < iVar1) {
        iVar1 = 0x100;
    }

    if (iVar2 != iVar1) {
        if (ABS(iVar1 - iVar2) <= 4) {
            iVar2 = iVar1;
        } else {
            if (iVar1 < iVar2) {
                iVar2 = iVar2 - 4;
            } else {
                if (iVar1 > iVar2) {
                    iVar2 = iVar2 + 4;
                }
            }
        }
        gArea.lightLevel = iVar2;
    } else {
        return 0;
    }
    return 1;
}

extern u16 gUnk_08108CA8[];

void sub_0805BAD4() {
    static const u16 gUnk_08108CA8[] = { 0x10,  0x10f, 0x20e, 0x30d, 0x40c, 0x50b, 0x60a, 0x709,  0x808,
                                         0x907, 0xa06, 0xb05, 0xc04, 0xd03, 0xe02, 0xf01, 0x1000, 0x00 };
    if (gArea.unk_0b) {
        gScreen.controls.alphaBlend = gUnk_08108CA8[(gArea.lightLevel << 0x10) >> 0x14];
    }
}

void sub_0805BB00(s32 lightLevel, s32 param_2) {
    if (gArea.unk_0b == 0) {
        Manager* pManager = GetEmptyManager();
        if (pManager != 0) {
            pManager->type = 9;
            pManager->subtype = 34;
            AppendEntityToList((Entity*)pManager, 0);
        }
    }
    MemFill16(0xf, BG_SCREEN_ADDR(0x1E), BG_SCREEN_SIZE);
    gScreen.bg3.control = 0x1e0c;
    gScreen.controls.layerFXControl = 0x3e48;
    gRoomVars.lightLevel = lightLevel;
    if (param_2) {
        gArea.unk_0b = 1;
    } else {
        gArea.unk_0b = 2;
    }
}

void sub_0805BB74(s32 lightLevel) {
    Manager22* manager;

    if (lightLevel < 0) {
        lightLevel = gRoomVars.lightLevel;
    }
    gArea.lightLevel = lightLevel;
    gRoomVars.lightLevel = gArea.lightLevel;
    manager = (Manager22*)DeepFindEntityByID(MANAGER, 0x22);
    if (manager) {
        Manager22_Main(manager);
        gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
        sub_0805BA78();
        sub_0805BAD4();
    }
}

s32 UpdateLightLevel() {
    s32 iVar1;

    iVar1 = 0;
    if (gArea.unk_0b && gRoomVars.lightLevel < (s16)gArea.lightLevel) {
        gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
        iVar1 = sub_0805BA78();
        if (iVar1) {
            sub_0805BAD4();
        }
    }
    return iVar1;
}

s32 sub_0805BC04(void) {
    s32 iVar1;

    iVar1 = 0;
    if (gArea.unk_0b && gRoomVars.lightLevel > (short)gArea.lightLevel) {
        gScreen.lcd.displayControl |= DISPCNT_BG3_ON;
        iVar1 = sub_0805BA78();
        if (iVar1) {
            sub_0805BAD4();
        }
    }
    return iVar1;
}

void sub_0805BC4C() {
    if (gArea.unk_0b != 0) {
        gArea.unk_0b = 0;
        gScreen.lcd.displayControl &= ~(DISPCNT_BG3_ON | DISPCNT_WIN0_ON);
    }
}
