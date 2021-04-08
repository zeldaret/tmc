#include "global.h"
#include "audio.h"
#include "room.h"
#include "entity.h"
#include "utils.h"
#include "functions.h"
#include "textbox.h"
#include "structures.h"
#include "save.h"

#define TEXTBOX_ADVANCE_KEYS (A_BUTTON | B_BUTTON | DPAD_ANY | R_BUTTON)
#define TEXTBOX_PRESS_ANY_ADVANCE_KEYS ((gInput.newKeys & TEXTBOX_ADVANCE_KEYS) != 0)

#define TEXTBOX_WIDTH 0x20
#define TEXTBOX_POSITION_INDEX(window) ((window).yPos * TEXTBOX_WIDTH + (window).xPos)

extern void WriteBit(u32*, u32);
extern void sub_0805EF40(u8*, u8*);
extern void sub_0801C4A0(u32, u32);
extern void sub_0801C494(void);
extern void sub_0805F918(u32, u32, u32);
extern u32 sub_0801D51C(u32, u8*, u32);

u32 sub_08056FEC(u32, u8*);

u16 sub_08056750(CurrentTextBox*);
u32 sub_0805EFE8(u8*);
void sub_08056ABC(u32, u32);
void sub_080569C4(CurrentTextBox*, u32);
u16 sub_0805F7DC(u32, u8*);
u32 sub_GetFontStrWidth(u8*, u32);
void sub_08056FBC(CurrentTextBox*);
void SetDoTextBox(u32 doTextbox);
void Load_02000D00_Asyc(void);

void DeleteWindow(void);
void CreateWindow(void);
u32 CalcWindowSize(u32 fade);

void DispMessageFrame(u16*, u32, u32, u32);
void DispString(void);
void DispCursor(void);

typedef u32 (*TextBoxFunction)(void);

u32 TextBoxFunction0(void);
u32 TextBoxFunction1(void);
u32 HandleTextBox(void);
u32 TextBoxFunctionOpen(void);
u32 TextBoxFunctionClose(void);
u32 TextBoxFunction5(void);

const TextBoxFunction gTextBoxFunctions[] = {
    TextBoxFunction0, TextBoxFunction1, HandleTextBox, TextBoxFunctionOpen, TextBoxFunctionClose, TextBoxFunction5,
};

extern u8 gUnk_020227DC, gUnk_020227E8, gUnk_020227F0, gUnk_020227F8, gUnk_02022800;
u8* const gUnk_08107BE0[] = {
    &gUnk_020227DC, &gUnk_020227E8, &gUnk_020227F0, &gUnk_020227F8, &gUnk_02022800,
};

typedef void (*TextBoxHandler)(CurrentTextBox*);

void TextBoxHandler0(CurrentTextBox* this);
void TextBoxHandler1(CurrentTextBox* param_1);
void TextBoxHandlerAdvance(CurrentTextBox* ctb);
void TextBoxHandlerNextBox(CurrentTextBox* ctb);
void TextBoxHandler4(CurrentTextBox* ctb);
void TextBoxHandlerQuestion(CurrentTextBox* ctb);

const TextBoxHandler gTextBoxHandlers[] = {
    TextBoxHandler0,       TextBoxHandler1, TextBoxHandlerAdvance,
    TextBoxHandlerNextBox, TextBoxHandler4, TextBoxHandlerQuestion,
};

typedef struct Window {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 xPos;
    u8 yPos;
    u8 width;
    u8 height;
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
extern u8 gUnk_02000D00[0xD00];

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
        gTextBox.doTextBox = 0x88;
    }
}

void TextboxNoOverlapFollow(u32 index) {
    if (gRoomControls.cameraTarget != NULL) {
        TextboxNoOverlap(index, gRoomControls.cameraTarget);
    } else {
        ShowTextbox(index);
    }
}

void TextboxNoOverlap(u32 index, Entity* entity) {
    s16 y;
    s16 height;

    ShowTextbox(index);

    y = entity->y.HALF.HI;
    height = entity->height.HALF.HI;

    if (((y + height) - gRoomControls.roomScrollY) > 0x58) {
        gTextBox.textWindowPosY = 1;
    }
}

void TextBoxAtYPosition(u32 index, u32 y) {
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
            iVar1 = gTextBoxFunctions[gCurrentTextBox._88]();
        } while (iVar1 != 0);
    }
    if (gCurrentTextBox._9d != 0) {
        gCurrentTextBox._9d = 0;
        Load_02000D00_Asyc();
    }
    DeleteWindow();
    CreateWindow();
}

void sub_080564C8(u32 unk) {
    gCurrentTextBox._88 = unk;
    gCurrentTextBox.state = 0;
}

u32 TextBoxFunction0(void) {
    gCurrentTextBox._98.bytes.b1 = 0;
    return 0;
}

// regalloc in loop
NONMATCH("asm/non_matching/textbox/TextBoxFunction1.inc", u32 TextBoxFunction1(void)) {
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
    sub_0805EEB4(&gCurrentTextBox._20, gCurrentTextBox.textBox.textIndex);
    gCurrentTextBox.playerName[0] = 2;
    gCurrentTextBox.playerName[1] = 0xe;
    dest = &gCurrentTextBox.playerName[2];

    for (i = 0; i < FILENAME_LENGTH; ++i) {
        c = gSave.playerName[i];
        if (c == '\0')
            break;
        *dest = c;
        dest++;
    }

    dest[0] = 2;
    dest[1] = 15;
    dest[2] = 0;
    sub_08056FBC(&gCurrentTextBox);
    gCurrentTextBox._2c = &gUnk_08107BE0;
    gCurrentTextBox._50.unk8 = gUnk_02000D00;
    gCurrentTextBox._50.unk4 = 0xd0;
    SetDoTextBox(2);
    sub_08056BDC(0);
    sub_080564C8(2);
    return 1;
}
END_NONMATCH

u32 TextBoxFunctionOpen(void) {
    if (gCurrentTextBox.state == 0) {
        gCurrentTextBox.state = 1;
        gCurrentTextBox._98.bytes.b1 = 1;
        sub_08056F88(gCurrentTextBox.textBox.unk3, gCurrentTextBox._50.unk3);
        SoundReq(SFX_TEXTBOX_OPEN);
    }

    if (CalcWindowSize(1)) {
        gCurrentTextBox._98.bytes.b1 = 2;
        sub_080564C8(2);
    }
    return 0;
}

u32 TextBoxFunctionClose(void) {
    if (gCurrentTextBox.state == 0) {
        gCurrentTextBox.state = 1;
        gCurrentTextBox._98.bytes.b1 = 3;
        sub_08056BDC(0);
        SoundReq(SFX_TEXTBOX_CLOSE);
    }

    if (CalcWindowSize(-1)) {
        gCurrentTextBox._98.bytes.b1 = 0;
        sub_080564C8(2);
    }
    return 0;
}

u32 TextBoxFunction5(void) {
    SetDoTextBox(0);
    sub_080564C8(0);
    return 0;
}

u32 HandleTextBox(void) {
    SetDoTextBox(4);
    gTextBoxHandlers[gCurrentTextBox.state](&gCurrentTextBox);
    CalcWindowSize(0);
    return 0;
}

void TextBoxHandler0(CurrentTextBox* this) {
    if ((gCurrentTextBox._20 & 1) == 0) {
        if (gCurrentTextBox._98.bytes.b1 == 0) {
            sub_080564C8(5);
        }
    } else {
        this->state = 1;
    }
}

void TextBoxHandler1(CurrentTextBox* param_1) {
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
                    param_1->state = 5;
                    sub_08056ABC(0, 0);
                } else {
                    param_1->state = 2;
                }
                break;
            case 1:
                param_1->_8a = 2;
                if (param_1->_98.bytes.b0 == 0) {
                    sub_08056BDC(1);
                } else {
                    param_1->state = 3;
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
void TextBoxHandlerQuestion(CurrentTextBox* ctb) {
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
            ctb->state = 1;
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

void TextBoxHandlerNextBox(CurrentTextBox* ctb) {
    u32 t;
    u8* ptr;
    gTextBox.unk = 0;
    if (ctb->_94 != 0) {
        ctb->_94--;
        if (ctb->_94 != 0)
            return;
        ptr = &ctb->state;
        t = 4;
    } else {
        if (TEXTBOX_PRESS_ANY_ADVANCE_KEYS) {
            SoundReq(0x68); // SFX_TEXTBOX_SWAP
            ctb->_98.bytes.b2 = 0;
            ptr = &ctb->state;
            t = 4;
        } else {
            ptr = &ctb->_98.bytes.b2;
            t = *ptr + 1;
        }
    }
    *ptr = t;
}

void TextBoxHandler4(CurrentTextBox* ctb) {
    sub_08056BDC(0);
    sub_080569C4(ctb, ctb->_8f | 0x40);
    ctb->state = 1;
}

void TextBoxHandlerAdvance(CurrentTextBox* ctb) {
    gTextBox.unk = 0;
    SetDoTextBox(7);
    if ((ctb->_8e != 1) && (ctb->_8e == 2 || TEXTBOX_PRESS_ANY_ADVANCE_KEYS)) {
        sub_080564C8(4);
    }
}

void sub_08056BDC(u32 unk) {
    gCurrentTextBox._98.bytes.b0 = unk;
    if (unk == 0) {
        MemFill32(0xFFFFFFFF, gUnk_02000D00, sizeof(gUnk_02000D00));
        Load_02000D00_Asyc();
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

void SetDoTextBox(u32 doTextbox) {
    gTextBox.doTextBox = gCurrentTextBox.textBox.doTextBox = doTextbox;
}

void DeleteWindow(void) {
    u16* ptr;
    int i, j;

    Window* window = &gCurrentWindow;

    if (window->unk1 != 0) {
        window->unk1 = 0;
        ptr = &gBG0Buffer[TEXTBOX_POSITION_INDEX(*window)];
        i = window->height + 2;
        do {
            j = 0;
            do {
                ptr[j] = 0;
            } while (j++, j < window->width + 2);
            ptr += TEXTBOX_WIDTH;
            i--;
        } while (i > 0);
        sub_0801C4A0(window->yPos, window->height);
        sub_0801C494();
    }
}

u32 CalcWindowSize(u32 fade) {
    u32 scale;
    u32 ret;
    Window* window;

    ret = 0;

    gCurrentTextBox._98.bytes.sizeScale += fade;
    if (gCurrentTextBox._98.bytes.sizeScale < 1) {
        gCurrentTextBox._98.bytes.sizeScale = 0;
    } else {
        if (gCurrentTextBox._98.bytes.sizeScale < 8)
            goto LAB_08056cee;
        gCurrentTextBox._98.bytes.sizeScale = 8;
    }
    ret = 1;
LAB_08056cee:
    window = &gNewWindow;
    if (gCurrentTextBox._98.bytes.sizeScale != 0) {
        scale = gCurrentTextBox._98.bytes.sizeScale;
        window->width = (scale * (gCurrentTextBox.textBox.textWindowWidth << 1)) / 16;
        if ((window->width & 1) != 0) {
            window->width++;
        }
        window->xPos = ((gCurrentTextBox.textBox.textWindowWidth / 2) + gCurrentTextBox.textBox.textWindowPosX) -
                       (window->width / 2);

        window->height = (scale * (gCurrentTextBox.textBox.textWindowHeight << 1)) / 16;
        if ((window->height & 1) != 0) {
            window->height++;
        }
        window->yPos = ((gCurrentTextBox.textBox.textWindowHeight / 2) + gCurrentTextBox.textBox.textWindowPosY) -
                       (window->height / 2);
    } else {
        window->yPos = -1;
        window->xPos = -1;
        window->height = -1;
        window->width = -1;
    }
    window->unk1 = 1;
    return ret;
}

void CreateWindow(void) {
    s32 r0, r3;
    u16* ptr;

    r0 = gCurrentTextBox._98.bytes.sizeScale;
    if (r0 <= 0)
        return;
    ptr = &gBG0Buffer[TEXTBOX_POSITION_INDEX(gNewWindow)];
    r3 = 0xf07b;
    DispMessageFrame(ptr, gNewWindow.width, gNewWindow.height, r3);
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
    u16 *ptr, *ptr2;
    s32 i, j;

    Window* window = &gNewWindow;

    if (window->width != 0) {
        if (window->height != 0) {
            r4 = window->height;
            ptr = &gUnk_02034CB2[TEXTBOX_POSITION_INDEX(*window)];
            i = (s32)(4 - r4) / 2;
            do {
                j = window->width;
                r2 = gUnk_0202281E[i];
                ptr += TEXTBOX_WIDTH;
                r0 = i + 1;
                r4--;
                ptr2 = ptr;
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
    u32 offset;
    u16* ptr;

    if ((gCurrentTextBox._98.word & 0x10ff00) == 0x100200) {
        ptr = &gBG0Buffer[TEXTBOX_POSITION_INDEX(gNewWindow)];
        offset = (((gNewWindow.height + 1) * TEXTBOX_WIDTH) - 2);
        offset += gNewWindow.width;
        ptr += offset;
        *ptr = 0xf080;
    }
}

void Load_02000D00_Asyc(void) {
    LoadResourceAsync(gUnk_02000D00, 0x0600D040, sizeof(gUnk_02000D00));
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
    sub_08056FEC(ctb->textBox.field_0x10, &ctb->_66[0x2]);
    sub_08056FEC(ctb->textBox.field_0x14, &ctb->_66[0xa]);
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
