#include "global.h"
#include "functions.h"
#include "main.h"
#include "utils.h"
#include "textbox.h"
#include "fileScreen.h"
#include "screen.h"

extern void (*const demoFunctions[])(void);
void sub_080A30AC();

extern u8 gUnk_02000004;
void sub_080A3198(u32, u32);

extern u8 gUnk_02017760[];
extern u8 gUnk_08A05751[];

// sprite_table
extern void gUnk_089FD1B4;
extern void gUnk_089FD2F4;

extern u8 gUnk_02000006;

extern u16 gUnk_08127CC8[4];
extern void* gUnk_08127C98;
extern u8 gUnk_08A068BF[129];

void HandleChooseDemoScreen(void) {
    FlushSprites();
    demoFunctions[gMain.funcIndex]();
    sub_080A30AC();
    sub_080AD918();
}

void sub_080A2E40(void) {
    DispReset(1);
    InitSoundPlayingInfo();
    MemClear((void*)VRAM, 0x80);
    MessageInitialize();
    EraseAllEntities();
    ResetPalettes();
    sub_0801CFA8(0);
    MemClear(&gUnk_02032EC0, sizeof gUnk_02032EC0);
    MemClear(&gChooseFileState, sizeof gChooseFileState);
    MemClear(&gBG0Buffer, sizeof gBG0Buffer);
    sub_08053320();
    LoadPaletteGroup(0xb5);
    LoadGfxGroup(0x56);
    MemCopy(&gUnk_089FD1B4, &gUnk_02017760[0], 0x100);
    MemCopy(&gUnk_089FD1B4, &gUnk_02017760[0x200], 0x100);
    MemCopy(&gUnk_089FD2F4, (void*)0x6000000, 0x8000);
    MemCopy(&gUnk_089FD2F4, (void*)0x6010000, 0x8000);
    MemCopy(&gUnk_08A05751, &gBG1Buffer, 0x800);
    MemCopy(&gUnk_08A05751[0x800], &gBG2Buffer, 0x800);
    gScreen.lcd.displayControl = 0x1f00;
    gScreen.bg1.control = 0x1c81;
    gScreen.bg2.control = 0x1d82;
    gScreen.bg3.control = 0x1e0b;
    gScreen.bg1.updated = 1;
    gScreen.bg2.updated = 1;
    gScreen.bg3.updated = 1;
    gScreen.controls.layerFXControl = 0x1044;
    gScreen.controls.alphaBlend = 0xb04;
    {
        // TODO write to 0x2000004
        u32 addr = (0x80 << 0x12);
        *(u8*)(addr + 4) = 0;
    }
    sub_080A3198(0, 0);
    gMain.funcIndex = 1;
    SoundReq(BGM_FILE_SELECT);
    DoFade(4, 8);
}

void sub_080A2F8C(void) {
    if (gFadeControl.active == 0) {
        switch (gMain.transition) {
            case 0:
                gMain.transition = 1;
                {
                    // TODO write to 0x2000005
                    u32 addr = (0x80 << 0x12);
                    *(u8*)(addr + 5) = 1;
                    *(u8*)(addr + 6) = 1;
                }
                gMain.funcIndex = 2;
                DoFade(5, 8);
                break;
            case 1:
                InitScreen(2);
                break;
        }
    }
}

// The condition on the left dpad is very convuluted for some reason (instead oj just an equality check).
// This causes the entire function heirarchy to change on a whim and I couldn't quite figure out
// the correct conditions/code to make it like the original function.
NONMATCH("asm/non_matching/demoScreen/sub_080A2FD0.inc", void sub_080A2FD0(void)) {
    s32 tmp;
    u32 tmp2;
    u32 val;
    s32 tmp3;
    u32 unk_0x0;
    u32 tmp4;
    s32 tmp5;
    u32 keys;

    if (gFadeControl.active == 0) {
        val = 0;
        keys = gInput.heldKeys;
        switch (keys) {
            case DPAD_RIGHT: {
                if (gChooseFileState.unk_0x0 == 0) {
                    val = 1;
                    gChooseFileState.unk_0x20 = 4;
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
            }
            case DPAD_LEFT: {
                if (gChooseFileState.unk_0x0 == 0) {
                    val = -1;
                    gChooseFileState.unk_0x20 = 0xfc;
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
            }
            case START_BUTTON:
            case A_BUTTON: {
                if (gChooseFileState.unk_0x0 == 0) {
                    gMain.screen = 2;
                    gMain.funcIndex = gChooseFileState.unk_0x0;
                    SoundReq(SFX_TEXTBOX_SELECT);
                }
            }
        }
        tmp = gSaveHeader->saveFileId;
        tmp2 = val + 3;
        tmp += tmp2;
        gSaveHeader->saveFileId = tmp % 3;

        tmp3 = gChooseFileState.unk_0x10;

        tmp = gSaveHeader->saveFileId;
        tmp *= 0x68;

        if (tmp != tmp3) {
            tmp5 = gChooseFileState.unk_0x20;
            tmp5 += tmp3;
            gChooseFileState.unk_0x10 = (tmp5 + (0x9c << 1)) % (0x9c << 1);
            unk_0x0 = 1;
        } else {
            unk_0x0 = 0;
        }

        gChooseFileState.unk_0x0 = unk_0x0;
        sub_080A3198(gSaveHeader->saveFileId, 0);
    }
}
END_NONMATCH

NONMATCH("asm/non_matching/demoScreen/sub_080A30AC.inc", void sub_080A30AC(void)) {
    u32 unk_0x10;
    u8* ptr;
    u8* currentPtr;
    u32 offset;
    u32 xoffset;
    gOamCmd._4 = 0x2000;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0xc00;
    gOamCmd.y = 0x40;
    unk_0x10 = gChooseFileState.unk_0x10;
    gOamCmd.x = 0xFFFFFED8 - unk_0x10;
    offset = *(u32*)gUnk_08A068BF;
    ptr = gUnk_08A068BF - 0xc;
    sub_080ADA04(&gOamCmd, ptr + offset);
    // FIX: original assembly uses r1 for xoffset for no apparent reason. Could not make it compile to do the same.
    // Maybe the original code was some sort of loop unrolling.
    xoffset = -0xc0;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(ptr + 4));
    xoffset = -0x58;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(ptr + 8));
    xoffset = 0x10;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(gUnk_08A068BF));
    xoffset = 0x78;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(ptr + 4));
    xoffset = 0xe0;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(ptr + 8));
    xoffset = 0xa4 << 1;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(gUnk_08A068BF));
    xoffset = 0xd8 << 1;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(ptr + 4));
    xoffset = 0x86 << 2;
    gOamCmd.x = xoffset - unk_0x10;
    sub_080ADA04(&gOamCmd, ptr + *(u32*)(ptr + 8));
}
END_NONMATCH

void sub_080A3198(u32 param_1, u32 param_2) {
    u16 r4 = gUnk_08127CC8[param_1];

    if (gChooseFileState.unk_0x12 != r4) {
        gChooseFileState.unk_0x12 = r4;
        MemClear(gUnk_08127C98 - 0x1e, 0x180);

        if (r4 != 0) {
            sub_0805F46C(r4, &gUnk_08127C98);
        }

        gScreen.bg0.updated = 1;
    }
}
