#include "global.h"
#include "audio.h"
#include "room.h"
#include "entity.h"
#include "utils.h"
#include "functions.h"
#include "textbox.h"
#include "structures.h"
#include "save.h"

extern void WriteBit(u32*, u32);
extern void sub_0805EF40(u8*, u8*);
extern void sub_0801C4A0(u32, u32);
extern void sub_0801C494(void);
extern void sub_0805F918(u32, u32, u32);
extern u32 sub_0801D51C(u32, u8*, u32);

u32 sub_08056FEC(u32, u8*);

u32 sub_080564DC(void);
u32 sub_080564EC(void);
u32 sub_08056654(void);
u32 sub_080565B4(void);
u32 sub_080565F8(void);
u32 sub_08056640(void);
u16 sub_08056750(CurrentTextBox*);
u32 sub_0805EFE8(u8*);
void sub_08056ABC(u32, u32);
void sub_080569C4(CurrentTextBox*, u32);
u16 sub_0805F7DC(u32, u8*);
u32 sub_GetFontStrWidth(u8*, u32);
void sub_08056FBC(CurrentTextBox*);

u32 (*const gUnk_08107BC8[])(void) = {
    sub_080564DC, sub_080564EC, sub_08056654, sub_080565B4, sub_080565F8, sub_08056640,
};

extern u8 gUnk_020227DC, gUnk_020227E8, gUnk_020227F0, gUnk_020227F8, gUnk_02022800;
u8* const gUnk_08107BE0[] = {
    &gUnk_020227DC, &gUnk_020227E8, &gUnk_020227F0, &gUnk_020227F8, &gUnk_02022800,
};

void sub_08056684(CurrentTextBox*);
void sub_080566B8(CurrentTextBox*);
void sub_08056BA0(CurrentTextBox*);
void sub_08056B1C(CurrentTextBox*);
void sub_08056B7C(CurrentTextBox*);
void sub_080569D4(CurrentTextBox*);

void (*const gUnk_08107BF4[])(CurrentTextBox*) = {
    sub_08056684, sub_080566B8, sub_08056BA0, sub_08056B1C, sub_08056B7C, sub_080569D4,
};

typedef struct Window {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
} Window;
extern Window gCurrentWindow;
extern Window gNewWindow;

extern struct {
    u8 unk_00;
    u8 unk_01[1];
    s8 unk_02;
    s8 unk_03;
    u8 unk_04[4];
    u16 unk_08[4];
    u16 unk_10[4];
} gUnk_02024030;

extern u32 gUnk_0200005C;

extern u8 gUnk_020227A0;
extern u8 gUnk_02000D00;

extern const u8 gUnk_08107C0C[];

s32 sub_08056338(void) {
    s32 result;

    result = -1;
    if (((gTextBox.doTextBox & 0x7f) == 0) && (gUnk_02000040.unk_00 == 3))
        result = gUnk_02000040.unk_01;
    return result;
}

void sub_08056360(void) {
    if ((gTextBox.doTextBox & 0x7f) != 0) {
        gTextBox.doTextBox = 0x80 | 0x8;
    }
}

void TextboxNoOverlapFollow(u32 index) {
    if (gRoomControls.cameraTarget != NULL) {
        TextboxNoOverlap(index, gRoomControls.cameraTarget);
    } else {
        ShowTextbox(index);
    }
}

void TextboxNoOverlap(u32 index, Entity* ent) {
    s16 y;
    s16 h;

    ShowTextbox(index);

    y = ent->y.HALF.HI;
    h = ent->height.HALF.HI;

    if (((y + h) - gRoomControls.roomScrollY) > 0x58) {
        gTextBox.textWindowPosY = 1;
    }
}

void sub_080563C8(u32 index, u32 y) {
    TextboxAtPosition(index, 1, y);
}

void TextboxAtPosition(u32 index, u32 x, u32 y) {
    ShowTextbox(index);
    gTextBox.textWindowPosX = x;
    gTextBox.textWindowPosY = y;
}

void ShowTextbox(u32 index) {
    MemClear(&gTextBox, sizeof(gTextBox));
    gTextBox.textIndex = index;
    gTextBox.textSpeed = 99;
    gTextBox.textWindowWidth = 26;
    gTextBox.textWindowHeight = 4;
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = 12;
    gTextBox.doTextBox = 1;
}

void MessageInitialize(void) {
    MemClear(&gTextBox, sizeof(gTextBox));
    MemClear(&gCurrentTextBox, sizeof(gCurrentTextBox));
    MemClear(&gNewWindow, sizeof(gNewWindow));
    MemClear(&gCurrentWindow, sizeof(gCurrentWindow));
    MemClear(&gUnk_02000040, 4);
}

void MessageUpdate(void) {
    int iVar1;

    if (gTextBox.doTextBox == 1) {
        MemClear((u32*)&gCurrentTextBox, sizeof(gCurrentTextBox));
        sub_080564C8(1);
    }

    if (gCurrentTextBox._8a != 0) {
        gCurrentTextBox._8a--;
    } else {
        do {
            iVar1 = gUnk_08107BC8[gCurrentTextBox._88]();
        } while (iVar1 != 0);
    }
    if (gCurrentTextBox._9d != 0) {
        gCurrentTextBox._9d = 0;
        sub_08056F70();
    }
    DeleteWindow();
    CreateWindow();
}

void sub_080564C8(u32 a1) {
    gCurrentTextBox._88 = a1;
    gCurrentTextBox._89 = 0;
}

u32 sub_080564DC(void) {
    gCurrentTextBox._98.bytes.b1 = 0;
    return 0;
}

// regalloc in loop
NONMATCH("asm/non_matching/textbox/sub_080564EC.inc", u32 sub_080564EC(void)) {
    u32 uVar1;
    char* dest;
    u32 i;
    char c;

    MemClear((void*)&gNewWindow, 8);
    MemClear((void*)&gUnk_02024030, 0x18);
    MemClear((void*)&gCurrentTextBox, sizeof(gCurrentTextBox));
    MemCopy(&gTextBox, &gCurrentTextBox, sizeof(gTextBox));
    if (gCurrentTextBox.textBox.textSpeed == 0x63) {
        gCurrentTextBox.textBox.textSpeed = gUnk_02000000->messageSpeed;
    }
    gCurrentTextBox._9c = 0xff;
    sub_0805EEB4(&gCurrentTextBox._20, gCurrentTextBox.textBox.textIndex /*, 32*/);
    gCurrentTextBox._5c = 2;
    gCurrentTextBox._5d = 0xe;
    dest = gCurrentTextBox._5e;

    for (i = 0; i < 6; ++i) {
        c = gSave.playerName[i];
        if (c == '\0')
            break;
        dest[i] = c;
    }

    dest[0] = 2;
    dest[1] = 15;
    dest[2] = 0;
    sub_08056FBC(&gCurrentTextBox);
    gCurrentTextBox._2c = &gUnk_08107BE0;
    gCurrentTextBox._50.unk8 = &gUnk_02000D00;
    gCurrentTextBox._50.unk4 = 0xd0;
    sub_08056C54(2);
    sub_08056BDC(0);
    sub_080564C8(2);
    return 1;
}
END_NONMATCH

u32 sub_080565B4(void) {
    if (gCurrentTextBox._89 == 0) {
        gCurrentTextBox._89 = 1;
        gCurrentTextBox._98.bytes.b1 = 1;
        sub_08056F88(gCurrentTextBox.textBox.unk3, gCurrentTextBox._50.unk3);
        SoundReq(SFX_TEXTBOX_OPEN);
    }

    if (sub_08056CC0(1)) {
        gCurrentTextBox._98.bytes.b1 = 2;
        sub_080564C8(2);
    }
    return 0;
}

u32 sub_080565F8(void) {
    if (gCurrentTextBox._89 == 0) {
        gCurrentTextBox._89 = 1;
        gCurrentTextBox._98.bytes.b1 = 3;
        sub_08056BDC(0);
        SoundReq(SFX_TEXTBOX_CLOSE);
    }

    if (sub_08056CC0(-1)) {
        gCurrentTextBox._98.bytes.b1 = 0;
        sub_080564C8(2);
    }
    return 0;
}

u32 sub_08056640(void) {
    sub_08056C54(0);
    sub_080564C8(0);
    return 0;
}

u32 sub_08056654(void) {
    sub_08056C54(4);
    gUnk_08107BF4[gCurrentTextBox._89](&gCurrentTextBox);
    sub_08056CC0(0);
    return 0;
}

void sub_08056684(CurrentTextBox* this) {
    if ((gCurrentTextBox._20 & 1) == 0) {
        if (gCurrentTextBox._98.bytes.b1 == '\0') {
            sub_080564C8(5);
        }
    } else {
        this->_89 = 1;
    }
}

void sub_080566B8(CurrentTextBox* param_1) {
    u32 uVar3;
    s32 iVar4;
    int iVar5;
    int iVar6;

    if (param_1->_95 != 0) {
        param_1->_95--;
    } else {
        if ((gInput.heldKeys & B_BUTTON) != 0) {
            iVar4 = 8;
        } else {
            iVar4 = 1;
        }
        param_1->_92 -= iVar4;
        if (param_1->_92 < 1) {
            iVar5 = 0;
            do {
                iVar5++;
                param_1->_92 += gUnk_08107C0C[param_1->textBox.textSpeed];
            } while (param_1->_92 < 1);
            iVar6 = 0;
            do {
                uVar3 = sub_08056750(param_1);
                if (((uVar3 == 0) || (param_1->_95 != 0)) || (param_1->_8a != 0))
                    break;
                iVar6 += uVar3;
                iVar5--;
            } while (0 < iVar5);
            if (iVar6 != 0) {
                gCurrentTextBox._9d = 1;
            } else {
                param_1->_92 = 0;
            }
        }
    }
}

NONMATCH("asm/non_matching/textbox/sub_08056750.inc", u16 sub_08056750(CurrentTextBox* param_1)) {
    s32 r0, r1, r2, r3;
    u32 r7;
    s32 tmp;
    u32 t;
    u32* t2;

    r7 = param_1->_24;

    if (r7 == 0) {
        r7 = sub_0805EFE8(&param_1->_20);
        switch (r7) {
            case 0:
                if (gUnk_02000040.unk_00 == 1) {
                    param_1->_89 = 5;
                    sub_08056ABC(0, 0);
                } else {
                    param_1->_89 = 2;
                }
                break;
            case 1:
                param_1->_8a = 2;
                if (param_1->_98.bytes.b0 == 0) {
                    sub_08056BDC(1);
                } else {
                    param_1->_89 = 3;
                }
                break;
            case 2:
                sub_080564C8(3);
                break;
            case 3:
                sub_080564C8(4);
                break;
            case 4:
                param_1->_50.unk6 +=
                    (param_1->_50.unk4 - param_1->_50.unk6 - sub_GetFontStrWidth(&param_1->_20, 0)) / 2;
                break;
            case 5:
                gTextBox.unk = param_1->_22;
                break;
            case 6:
                t2 = &gUnk_0200005C;
                t = param_1->_22;
                WriteBit(t2, 0x1f & t);
                break;
            case 7:
                switch (param_1->_22) {
                    case 0xe:
                        param_1->_91 = param_1->_8f;
                        r3 = 2;
                        break;
                    case 0xf:
                        r3 = param_1->_91;
                        break;
                    default:
                        r3 = param_1->_22;
                        break;
                }
                param_1->_90 = 0;
                sub_080569C4(param_1, r3);
                break;
            case 8:
                SoundReq(param_1->_22);
                break;
            case 9:
                gCurrentTextBox.textBox.unk3 = param_1->_22;
                sub_08056F88(param_1->_22, param_1->_50.unk3);
                break;
            case 10:
                param_1->textBox.textWindowPosY = param_1->_22;
                break;
            case 12:
                if (gUnk_02000040.unk_00 != 1) {
                    MemClear(&gUnk_02000040, 4);
                    MemClear(&gUnk_02024030, sizeof(gUnk_02024030));
                    gUnk_02024030.unk_00 = 1;
                    gUnk_02000040.unk_00 = 1;
                }
                if (gUnk_02024030.unk_02 > 3)
                    break;

                gUnk_02024030.unk_10[gUnk_02024030.unk_02] = param_1->_26;
                gUnk_02024030.unk_08[gUnk_02024030.unk_02] = param_1->_50.unk6;
                gUnk_02024030.unk_02++;
                param_1->_50.unk6 += 8;
                break;
            case 13:
                switch (param_1->_22) {
                    case 0xff:
                        param_1->_8e = 1;
                        break;
                    case 0xfe:
                        param_1->_8e = 2;
                        break;
                    default:
                        param_1->_95 = param_1->_22;
                        break;
                }
                break;
            case 14:
                r1 = param_1->_22;
                param_1->_94 = r1;
                break;
            default:
                break;
        }
        if (r7 >> 8 == 0)
            return 0;
    }
    if (gCurrentTextBox._98.bytes.b1 != 2) {
        sub_080564C8(3);
        return 0;
    }
    if (gTextBox.unk == 0) {
        gTextBox.unk = 0x80;
    }
    param_1->_24 = 0;
    if (r7 >> 8 == 7) {
        param_1->_90 = param_1->_8f | 0x80;
        sub_080569C4(param_1, 0);
    } else {
        if ((param_1->_90 & 0x80) != 0) {
            r3 = param_1->_90;
            param_1->_90 = 0;
            sub_080569C4(param_1, r3);
        }
    }
    return sub_0805F7DC(r7, &param_1->_30[0x20]);
}
END_NONMATCH

void sub_080569C4(CurrentTextBox* ctb, u32 unk) {
    u32 temp = unk & 0x7;
    ctb->_8f = temp;
    ctb->_50.unk2 = temp;
}

extern u8 gUnk_08107C14;
extern u8 gUnk_08107C0F;
void sub_080569D4(CurrentTextBox* ctb) {
    s32 r1, r5, r6;
    u32 error;
    u8* ptr1;
    u8* ptr2;

    r5 = gUnk_02024030.unk_03;
    switch (gInput.newKeys) {
        case START_BUTTON:
        case A_BUTTON:
            r1 = gUnk_02024030.unk_10[r5];
            if (r1 == 0) {
                ptr2 = &gUnk_08107C14;
                ptr1 = &ctb->_20;
            } else {
                ctb->textBox.textIndex = r1;
                sub_0805EEB4(&ctb->_20, r1);
                ptr2 = &gUnk_08107C0F;
                ptr1 = &ctb->_20;
            }
            sub_0805EF40(ptr1, ptr2);
            gUnk_02000040.unk_01 = gUnk_02024030.unk_03;
            gUnk_02000040.unk_00 = 3;
            MemClear(&gUnk_02024030, sizeof(gUnk_02024030));
            SoundReq(0x6a); // SFX_TEXTBOX_SELECT
            ctb->_89 = 1;
            break;
        case DPAD_LEFT:
            r5--;
            break;
        case DPAD_RIGHT:
            r5++;
            break;
        default:
            break;
    }
    r5 = (r5 + gUnk_02024030.unk_02) % gUnk_02024030.unk_02;
    r6 = gUnk_02024030.unk_03;
    if (r5 != r6) {
        gUnk_02024030.unk_03 = r5;
        SoundReq(0x69); // SFX_TEXTBOX_CHOICE
        error = 1;
    } else {
        error = 0;
    }
    if (gUnk_02000040.unk_00 == 1) {
        gUnk_02024030.unk_00 = gUnk_02000040.unk_00 = 2;
        error = 1;
    }
    if (error != 0) {
        sub_08056ABC(r5, r6);
    }
}

void sub_08056ABC(u32 unk_0, u32 unk_1) {
    u16 t;
    t = gCurrentTextBox._50.unk6;
    gCurrentTextBox._50.unk6 = gUnk_02024030.unk_08[unk_1];
    sub_0805F8E4(0, &gCurrentTextBox._50);
    gCurrentTextBox._50.unk6 = gUnk_02024030.unk_08[unk_0];
    sub_0805F8E4(1, &gCurrentTextBox._50);
    gCurrentTextBox._50.unk6 = t;
    gCurrentTextBox._9d = 1;
}

void sub_08056B1C(CurrentTextBox* ctb) {
    u32 t;
    u8* ptr;
    gTextBox.unk = 0;
    if (ctb->_94 != 0) {
        ctb->_94--;
        if (ctb->_94 != 0)
            return;
        ptr = &ctb->_89;
        t = 4;
    } else {
        if ((gInput.newKeys & 0x1f3) != 0) {
            SoundReq(0x68); // SFX_TEXTBOX_SWAP
            ctb->_98.bytes.b2 = 0;
            ptr = &ctb->_89;
            t = 4;
        } else {
            ptr = &ctb->_98.bytes.b2;
            t = *ptr + 1;
        }
    }
    *ptr = t;
}

void sub_08056B7C(CurrentTextBox* ctb) {
    sub_08056BDC(0);
    sub_080569C4(ctb, ctb->_8f | 0x40);
    ctb->_89 = 1;
}

void sub_08056BA0(CurrentTextBox* ctb) {
    gTextBox.unk = 0;
    sub_08056C54(7);
    if ((ctb->_8e != 1) && ((ctb->_8e == 2 || ((gInput.newKeys & 0x1f3) != 0)))) {
        sub_080564C8(4);
    }
}

void sub_08056BDC(u32 unk) {
    gCurrentTextBox._98.bytes.b0 = unk;
    if (unk == 0) {
        MemFill32(-1, &gUnk_02000D00, 0xd00);
        sub_08056F70();
        gCurrentTextBox._9e = 0xf082;
        gCurrentTextBox._a0 = 0xf083;
        gCurrentTextBox._a2 = 0xf0b6;
        gCurrentTextBox._a4 = 0xf0b7;
        gCurrentTextBox._50.unk6 = 0;
        gCurrentTextBox._50.unk4 = 0xd0;
    } else {
        gCurrentTextBox._50.unk6 = 0xd0;
        gCurrentTextBox._50.unk4 = 0x1a0;
    }
    sub_080569C4(&gCurrentTextBox, gCurrentTextBox._8f | 0x40);
}

void sub_08056C54(u32 unk) {
    gTextBox.doTextBox = gCurrentTextBox.textBox.doTextBox = unk;
}

void DeleteWindow(void) {
    u32 r0;
    u16* ptr;
    u16* ptr2;
    int i, j;

    Window* tp = &gCurrentWindow;

    if (tp->unk1 != 0) {
        tp->unk1 = 0;
        r0 = tp->unk5 << 5;
        r0 += tp->unk4;
        ptr = &((u16*)(&gBG0Buffer.filler0))[r0];
        i = tp->unk7 + 2;
        do {
            j = 0;
            do {
                ptr[j] = 0;
            } while (j++, j < tp->unk6 + 2);
            ptr += 0x20;
            i--;
        } while (i > 0);
        sub_0801C4A0(tp->unk5, tp->unk7);
        sub_0801C494();
    }
}

u32 sub_08056CC0(u32 unk) {
    u32 iVar1;
    u32 uVar2;
    u32 uVar3;
    Window* ptr;

    uVar3 = 0;

    // inline function?
    gCurrentTextBox._98.bytes.b3 += unk;
    if (gCurrentTextBox._98.bytes.b3 < 1) {
        gCurrentTextBox._98.bytes.b3 = 0;
    } else {
        if (gCurrentTextBox._98.bytes.b3 < 8)
            goto LAB_08056cee;
        gCurrentTextBox._98.bytes.b3 = 8;
    }
    uVar3 = 1;
LAB_08056cee:
    ptr = &gNewWindow;
    if (gCurrentTextBox._98.bytes.b3 != 0) {
        iVar1 = gCurrentTextBox._98.bytes.b3;
        uVar2 = (iVar1 * (gCurrentTextBox.textBox.textWindowWidth << 1)) / 16;
        ptr->unk6 = uVar2;
        if ((uVar2 & 1) != 0) {
            ptr->unk6++;
        }
        ptr->unk4 =
            ((gCurrentTextBox.textBox.textWindowWidth / 2) + gCurrentTextBox.textBox.textWindowPosX) - (ptr->unk6 / 2);
        uVar2 = (iVar1 * (gCurrentTextBox.textBox.textWindowHeight << 1)) / 16;
        ptr->unk7 = uVar2;
        if ((uVar2 & 1) != 0) {
            ptr->unk7++;
        }
        ptr->unk5 =
            ((gCurrentTextBox.textBox.textWindowHeight / 2) + gCurrentTextBox.textBox.textWindowPosY) - (ptr->unk7 / 2);
    } else {
        ptr->unk5 = 0xff;
        ptr->unk4 = -1;
        ptr->unk7 = -1;
        ptr->unk6 = -1;
    }
    ptr->unk1 = 1;
    return uVar3;
}

void DispMessageFrame(u16*, u32, u32, u32);
extern void DispString(void);
extern void DispCursor(void);

void CreateWindow(void) {
    s32 r0, r3;
    u16* ptr;

    r0 = gCurrentTextBox._98.bytes.b3;
    if (r0 <= 0)
        return;
    r0 = ((gNewWindow.unk5 << 5) + gNewWindow.unk4);
    ptr = &((u16*)(&gBG0Buffer.filler0))[r0];
    r3 = 0xf07b;
    DispMessageFrame(ptr, gNewWindow.unk6, gNewWindow.unk7, r3);
    DispString();
    DispCursor();
    gCurrentWindow = gNewWindow;
    sub_0801C494();
}

NONMATCH("asm/non_matching/textbox/DispMessageFrame.inc",
         void DispMessageFrame(u16* buffer, u32 width_, u32 height_, u32 flags_)) {
}
END_NONMATCH

extern u16 gUnk_02034CB2[];
extern u16 gUnk_0202281E[];

void DispString(void) {
    u32 r0, r2, r4;
    u16 *r5, *ptr2;
    s32 i, j;

    Window* window = &gNewWindow;

    if (window->unk6 != 0) {
        if (window->unk7 != 0) {
            r4 = window->unk7;
            r5 = &gUnk_02034CB2[(window->unk5 << 5) + window->unk4];
            i = (s32)(4 - r4) / 2;
            do {
                j = window->unk6;
                r2 = gUnk_0202281E[i];
                r5 += 0x20;
                r0 = i + 1;
                r4--;
                ptr2 = r5;
                do {
                    *ptr2 = r2;
                    ptr2++;
                    r2 += 2;
                    j--;
                } while (j > 0);
                i = r0;
            } while (r4 != 0);
        }
    }
}

void DispCursor(void) {
    u32 r0;
    u16* ptr;

    if ((gCurrentTextBox._98.word & 0x10ff00) == 0x100200) {
        ptr = &((u16*)(gBG0Buffer.filler0))[(gNewWindow.unk5 << 5) + gNewWindow.unk4];
        r0 = (((gNewWindow.unk7 + 1) << 5) - 2);
        r0 += gNewWindow.unk6;
        ptr += r0;
        *ptr = 0xf080;
    }
}

void sub_08056F70(void) {
    LoadResourceAsync(&gUnk_02000D00, 0x0600D040, 0xd00);
}

void sub_08056F88(u32 unk_1, u32 unk_2) {
    u32 uVar1;

    if (0xf < unk_1) {
        unk_1 = 0;
    }
    uVar1 = unk_1 << 4 | unk_2;
    if (gCurrentTextBox._9c != uVar1) {
        gCurrentTextBox._9c = uVar1;
        sub_0805F918(unk_1, unk_2, 0x0600CF60);
    }
}

void sub_08056FBC(CurrentTextBox* ctb) {
    sub_08056FEC(ctb->textBox.field_0x10, &ctb->_5e[0xa]);
    sub_08056FEC(ctb->textBox.field_0x14, &ctb->_5e[0x12]);
    sub_08056FEC(ctb->textBox.field_0x18, &ctb->_77[0x1]);
    sub_08056FEC(ctb->textBox.field_0x1c, &ctb->_77[0x9]);
}

NONMATCH("asm/non_matching/textbox/sub_08056FEC.inc", u32 sub_08056FEC(u32 param_1, u8* param_2)) {
    u32 uVar1;
    int iVar2;
    int iVar3;
    int iVar4;
    u8 local_1c[8];

    uVar1 = sub_0801D51C(param_1, param_2, param_1);
    uVar1 = uVar1 & 0xfffffff;
    iVar4 = 0;
    do {
        local_1c[iVar4++] = uVar1 & 0xf;
        uVar1 = uVar1 / 16;
    } while (uVar1 != 0);
    for (iVar3 = 0; --iVar4 >= 0; iVar3++) {
        param_2[iVar3] = local_1c[iVar4] | 0x30;
    }
    param_2[iVar3] = 0;
    return iVar4;
}
END_NONMATCH
