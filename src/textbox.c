#include "global.h"
#include "room.h"
#include "entity.h"
#include "functions.h"
#include "textbox.h"
#include "structures.h"

void ShowTextbox();
void TextboxAtPosition();

typedef struct {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3[5];
    u16 _8;
    u8 _b[0x16];
    u8 _20;
    u8 _21;
    u8 _22[0xa];
    void* _2c;
    u8 _30[0x23];
    u8 _53;
    u16 _54;
    u8 _56[0x2];
    void* _58;
    u8 _5c;
    u8 _5d;
    u8 _5e[24];
    u8 _76;
    u8 _77[0x11];
    u8 _88;
    u8 _89;
    u8 _8a;
    u8 _8b[0xe];
    u8 _99;
    u8 _9a;
    u8 _9b;
    u8 _9c;
    u8 _9d;
    u8 _9e[0xa];
} struct_02022780;
extern struct_02022780 gUnk_02022780;
static_assert(sizeof(struct_02022780) == 0xa8);

extern const s32 (*const gUnk_08107BC8[])();
extern const void (*const gUnk_08107BF4[])(struct_02022780*);

extern u32 gUnk_02036A40;
extern u32 gUnk_02036A38;
extern u8 gUnk_02024030;
extern u8 gUnk_020227A0;
extern u8 gUnk_02000D00;
extern u8 gUnk_08107BE0;

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

void sub_080563C8(u32 param_1, u32 param_2) {
    TextboxAtPosition(param_1, 1, param_2);
}

void TextboxAtPosition(u32 index, u32 x, u32 y) {
    ShowTextbox(index);
    gTextBox.textWindowPosX = x;
    gTextBox.textWindowPosY = y;
}

void ShowTextbox(u32 index, u32 param_2, u32* dest) {
    _DmaZero(&gTextBox, 32);
    gTextBox.textIndex = index;
    gTextBox.textSpeed = 99;
    gTextBox.textWindowWidth = 26;
    gTextBox.textWindowHeight = 4;
    gTextBox.textWindowPosX = 1;
    gTextBox.textWindowPosY = 12;
    gTextBox.doTextBox = 1;
}

void sub_08056418(void) {
    _DmaZero(&gTextBox, 32);
    _DmaZero(&gUnk_02022780, 168);
    _DmaZero(&gUnk_02036A40, 8);
    _DmaZero(&gUnk_02036A38, 8);
    _DmaZero(&gUnk_02000040, 4);
}

void sub_08056458(void) {
    int iVar1;

    if (gTextBox.doTextBox == 1) {
        _DmaZero((u32*)&gUnk_02022780, sizeof(gUnk_02022780));
        sub_080564C8(1);
    }

    if (gUnk_02022780._8a != 0) {
        gUnk_02022780._8a--;
    } else {
        do {
            iVar1 = gUnk_08107BC8[gUnk_02022780._88]();
        } while (iVar1 != 0);
    }
    if (gUnk_02022780._9d != 0) {
        gUnk_02022780._9d = 0;
        sub_08056F70();
    }
    sub_08056C68();
    sub_08056D70();
}

void sub_080564C8(u32 a1) {
    gUnk_02022780._88 = a1;
    gUnk_02022780._89 = 0;
}

u32 sub_080564DC(void) {
    gUnk_02022780._99 = 0;
    return 0;
}

// regalloc in loop
NONMATCH("asm/non_matching/textbox/sub_080564EC.inc", u32 sub_080564EC(void)) {
    u32 uVar1;
    char* dest;
    u32 i;
    char c;
    
    _DmaZero((void *)&gUnk_02036A40, 8);
    _DmaZero((void *)&gUnk_02024030, 0x18);
    _DmaZero((void *)&gUnk_02022780, 0xa8);
    _DmaCopy(&gTextBox, &gUnk_02022780, 32);
    if (gUnk_02022780._2 == 0x63) {
        gUnk_02022780._2 = gUnk_02000000->messageSpeed;
    }
    gUnk_02022780._9c = 0xff;
    sub_0805EEB4(&gUnk_02022780._20, gUnk_02022780._8, 32);
    gUnk_02022780._5c = 2;
    gUnk_02022780._5d = 0xe;
    dest = gUnk_02022780._5e;

    for (i = 0; i < 6; ++i) {
        c = gUnk_02002A40.playerName[i];
        if (c == '\0') break;
        dest[i] = c;
    }

    dest[0] = 2;
    dest[1] = 15;
    dest[2] = 0;
    sub_08056FBC(&gUnk_02022780);
    gUnk_02022780._2c = &gUnk_08107BE0;
    gUnk_02022780._58 = &gUnk_02000D00;
    gUnk_02022780._54 = 0xd0;
    sub_08056C54(2);
    sub_08056BDC(0);
    sub_080564C8(2);
    return 1;
}
END_NONMATCH

u32 sub_080565B4(void) {
    if (gUnk_02022780._89 == 0) {
        gUnk_02022780._89 = 1;
        gUnk_02022780._99 = 1;
        sub_08056F88(gUnk_02022780._3[0], gUnk_02022780._53);
        PlaySFX(0x65);
    }

    if (sub_08056CC0(1)) {
        gUnk_02022780._99 = 2;
        sub_080564C8(2);
    }
    return 0;
}

u32 sub_080565F8(void) {
    if (gUnk_02022780._89 == 0) {
        gUnk_02022780._89 = 1;
        gUnk_02022780._99 = 3;
        sub_08056BDC(0);
        PlaySFX(0x66);
    }

    if (sub_08056CC0(-1)) {
        gUnk_02022780._99 = 0;
        sub_080564C8(2);
    }
    return 0;
}

u32 sub_08056640() {
    sub_08056C54(0);
    sub_080564C8(0);
    return 0;
}

u32 sub_08056654(void) {
    sub_08056C54(4);
    gUnk_08107BF4[gUnk_02022780._89](&gUnk_02022780);
    sub_08056CC0(0);
    return 0;
}

void sub_08056684(struct_02022780* this) {
    if ((gUnk_02022780._20 & 1) == 0) {
        if (gUnk_02022780._99 == '\0') {
            sub_080564C8(5);
        }
    } else {
        this->_89 = 1;
    }
}
