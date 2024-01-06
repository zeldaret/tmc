#include "global.h"
#include "common.h"
#include "structures.h"
#include "functions.h"
#include "asm.h"
#include "enemy.h"
#include "message.h"
#include "fileselect.h"

extern void UnpackTextNibbles(void*, u8*);

extern u8 gUnk_02036AD8;
extern u8 gUnk_02036A58;

extern u32* Translations[];
typedef struct {
    u8 unk0;
    u8 unk1;
} UStruct;

void sub_0805F820(WStruct* r0, u32* r1);
bool32 sub_0805EF40(Token* tok, const u8*);
void InitToken(Token* token, u32 textIndexOrPtr);
u32 sub_0805F6A4(Token*, WStruct*);
u32 GetCharacter(Token* tok);
u32 GetFontStrWith(Token*, u32);
s32 sub_0805F67C(short*, s32, s32);
void sub_0805F918(u32, u32, void*);
bool32 sub_0805F5CC(Font*, Token*, WStruct*);
void sub_0805EEB4(Token*, u32);
u32 sub_0805EF8C(Token*);
u32 sub_0805EFB4(Token*);
u32 sub_0805F9A0(u32);

static u32 sub_0805F8F8(u32 idx);
static u32 sub_0805F7A0(u32 param_1);

typedef struct {
    u16 unk0;
    s8 unk2;
    s8 unk3;
    u8 filler[0x4];
    u16 unk8[4];
    u16 unk10[4];
} struct_gUnk_02034330;

extern struct_gUnk_02034330 gUnk_02034330;
extern WStruct gUnk_02036540[4];

extern u32* gTranslations[];
extern u8* gUnk_08109230[]; // TODO needs to be u8, but then is not passed correctly?
extern u32 gUnk_08109244;   // TODO structure?
extern u32* gUnk_08109248[];
extern u32 gUnk_0810926C[];
extern void* gUnk_081092AC[]; // TODO structure?
extern u16 gUnk_081092D4;     // TODO array?
typedef struct {
    u8 filler0[12][16];
} VStruct;
extern VStruct gUnk_0810942E[]; // TODO structure?
extern u8 gUnk_081094CE;        // TODO structure? array?

void sub_0805EEB4(Token* token, u32 textIndex) {
    u32 langIndex;
    u32* puVar2;
    u8* puVar5;
    s32 iVar3;
    u32 uVar4;
    u32 uVar6;
    u32 uVar7;

    token->textIndex = (u16)textIndex;
    langIndex = gSaveHeader->language;
    if (((1 < langIndex) && (textIndex >> 8 == 1)) && (textIndex < 0x119)) {
        langIndex = 3;
    }
    puVar2 = gTranslations[langIndex];
    iVar3 = puVar2[(u8)(textIndex >> 8)];
    puVar2 = (u32*)((s32)puVar2 + iVar3);
    iVar3 = puVar2[(u8)textIndex];
    uVar6 = *(gTranslations[langIndex]) >> 2;
    uVar7 = *puVar2 >> 2;
    uVar4 = 0;
    if (((token->textIndex >> 8) >= uVar6) || ((u8)token->textIndex >= uVar7)) {
        uVar4 = 1;
    } else {
        if (*(char*)((s32)puVar2 + iVar3) == 0) {
            uVar4 = 2;
        }
    }
    switch (uVar4) {
        case 1:
        case 2:
            puVar2 = &gUnk_08109244;
            iVar3 = 0;
            break;
    }
    puVar2 = (u32*)((s32)puVar2 + iVar3);
    sub_0805EF40(token, (u8*)puVar2);
}

bool32 sub_0805EF40(Token* token, const u8* param_2) {
    if (token->unk00 != 0) {
        if (6 < token->unk01) {
            return 0;
        }
        token->unk01++;
    }
    token->buf[token->unk01] = param_2;
    token->unk00 = 1;
    return 1;
}

u32 sub_0805EF8C(Token* token) {
    if (token->unk00 == 0) {
        return 0;
    }
    return (token->buf[token->unk01]++)[0];
}

u32 sub_0805EFB4(Token* token) {
    u32 rv = token->unk01;

    if (token->unk01 != 0) {
        token->unk01--;
    } else {
        token->unk00 = 0;
    }
    return rv;
}

u32 GetCharacter(Token* token) {
    u32 uVar3;
    u32 code;
    u32 uVar6;
    u8** ppuVar7;
    s32 iVar8;

    do {
        code = sub_0805EF8C(token);
        token->code = (u8)code;
        iVar8 = 0;
        switch (code) {
            case 0:
                iVar8 = sub_0805EFB4(token);
                code = 0;
                break;
            case 1:
                uVar6 = sub_0805EF8C(token);
                token->param = (u16)uVar6;
                code = 6;
                if (uVar6 < 0xb) {
                    code = 5;
                }
                break;
            case 2:
                uVar3 = sub_0805EF8C(token);
                token->param = uVar3;
                code = 7;
                break;
            case 3:
                uVar6 = sub_0805EF8C(token) << 8;
                uVar6 += sub_0805EF8C(token);
                token->param = uVar6;
                code = 8;
                break;
            case 4:
                uVar6 = sub_0805EF8C(token);
                switch (uVar6) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 0xb:
                    case 0xc:
                    case 0xd:
                    case 0xe:
                    case 0xf:
                        code = 9;
                        break;
                    case 0x10:
                        uVar6 = sub_0805EF8C(token);
                        code = 10;
                        break;
                    case 0x11:
                        code = 2;
                        break;
                    case 0x12:
                        code = 3;
                        break;
                    case 0x13:
                        code = 4;
                        break;
                    case 0x14:
                    case 0x15:
                        code = 0xb;
                        if ((uVar6 ^ 0x14) != 0) {
                            uVar6 = 1;
                        } else {
                            uVar6 = 0;
                        }
                }
                token->param = (u16)uVar6;
                break;
            case 5:
                uVar6 = sub_0805EF8C(token);
                if (uVar6 == 0xff) {
                    uVar6 = 0;
                } else {
                    uVar6 <<= 8;
                    uVar6 += sub_0805EF8C(token);
                }
                token->_6 = uVar6;
                code = 0xc;
                break;
            case 6:
                uVar6 = sub_0805EF8C(token);
                switch (uVar6) {
                    case 0 ... 4:
                        ppuVar7 = (u8**)token->_c;
                        if (ppuVar7 == NULL) {
                            ppuVar7 = gUnk_08109230;
                        }
                        sub_0805EF40(token, ppuVar7[uVar6]);
                        break;
                    case 5:
                        uVar6 = sub_0805EF8C(token) << 8;
                        uVar6 += sub_0805EF8C(token);
                        sub_0805EEB4(token, uVar6);
                        break;
                    default:
                        break;
                }
                iVar8 = 1;
                break;
            case 7:
                uVar6 = sub_0805EF8C(token) << 8;
                uVar6 += sub_0805EF8C(token);
                token->unk00 = 0;
                token->unk01 = 0;
                sub_0805EEB4(token, uVar6);
                iVar8 = 1;
                break;
            case 8:
                uVar3 = sub_0805EF8C(token);
                token->param = uVar3;
                code = 0xd;
                break;
            case 9:
                uVar3 = sub_0805EF8C(token);
                token->param = uVar3;
                code = 0xe;
                break;
            case 10:
                code = 1;
                break;
            case 0xb:
                code = sub_0805EF8C(token);
                code |= 0x400;
                break;
            case 0xc:
                code = sub_0805EF8C(token);
                code |= 0x700;
                break;
            case 0xd:
                code = sub_0805EF8C(token);
                code |= 0x500;
                break;
            case 0xe:
                code = sub_0805EF8C(token);
                code |= 0x600;
                break;
            case 0xf:
                code = sub_0805EF8C(token);
                code |= 0x300;
                break;
            default:
                code += 0x100;
                break;
        }
    } while (iVar8);

    if (code >> 8 != 0) {
        switch (token->unk05) {
            case 0:
                break;
            case 1:
                code = sub_0805F9A0(code);
                break;
        }
        token->extended = (u16)code;
    }
    return code;
}

u32* sub_0805F25C(u32 param_1) {
    u32 uVar1;

    uVar1 = param_1 >> 8 & 0xf;
    param_1 = param_1 & 0xff;
    switch (uVar1) {
        case 0:
        case 1:
            if (0x7f < param_1 && gSaveHeader->language != 0) {
                param_1 = param_1 - 0x80;
                uVar1 = 2;
            }
            break;
        case 2:
        case 3:
        case 4:
            break;
        case 5:
        case 6:
        case 7:
        case 8:
            param_1 = param_1 << 1;
            break;
    }
    return gUnk_08109248[uVar1] + param_1 * 0x10;
}

WStruct* sub_0805F2C8(void) {
    u32 uVar2;

    for (uVar2 = 0; uVar2 < ARRAY_COUNT(gUnk_02036540); uVar2++) {
        if ((gUnk_02036540[uVar2].unk00) == 0) {
            MemClear(&gUnk_02036540[uVar2], sizeof(WStruct));
            gUnk_02036540[uVar2].unk00 = 1;
            return &gUnk_02036540[uVar2];
        }
    }

    return NULL;
}

void sub_0805F300(WStruct* param_1) {
    u32 uVar2;

    for (uVar2 = 0; uVar2 < ARRAY_COUNT(gUnk_02036540); uVar2++) {
        if (&gUnk_02036540[uVar2] == param_1) {
            MemClear(&gUnk_02036540[uVar2], sizeof(WStruct));
            return;
        }
    }
}

u32 GetFontStrWith(Token* param_1, u32 param_2) {
    u32 character;
    u32* puVar2;
    u32 uVar3;
    u32 uVar4;
    u16 uVar5;
    u32 rv;
    u32 r9;
    Token token;
    s32 local_28;
    s32 local_24;

    MemCopy(param_1, &token, sizeof(Token));
    local_24 = 0;
    local_28 = 0;
    rv = 0;
    uVar5 = 0;
    do {
        uVar4 = 0;
        r9 = 1;
        while (r9) {
            character = GetCharacter(&token);
            switch (character) {
                case 0xc:
                    uVar4 += 8;
                    break;
                case 0xb:
                    uVar5 = token.param;
                    break;
                case 0:
                case 1:
                    r9 = 0;
                    break;
                case 2 ... 10:
                case 0xd:
                case 0xe:
                    break;
                default:
                    if (uVar5 == 0) {
                        puVar2 = (u32*)sub_0805F25C(character);
                        if (4 < character >> 8) {
                            uVar3 = sub_0805F7A0(puVar2[0x10]);
                            uVar4 += (uVar3 >> 8);
                        }
                        uVar3 = sub_0805F7A0(*puVar2);
                        uVar4 += (uVar3 >> 8);
                    } else if (character >> 8 >= 5) {
                        uVar4 += 0x10;
                    } else {
                        uVar4 += 8;
                    }
                    if (token.unk05 == 1 && uVar4 > 1) {
                        uVar4--;
                    }
            }
        }
        if (uVar4 > rv) {
            rv = uVar4;
        }
        if (uVar4 != 0) {
            local_28++;
        } else {
            local_24++;
        }
    } while ((param_2 != 0) && (character != 0));

    if (param_2 != 0) {
        return local_24 << 0x18 | local_28 << 0x10 | rv;
    }
    return rv;
}

void InitToken(Token* token, u32 textIndexOrPtr) {
    MemClear(token, sizeof(Token));
    if (textIndexOrPtr >= 0x10000) {
        sub_0805EF40(token, (u8*)textIndexOrPtr);
    } else {
        sub_0805EEB4(token, textIndexOrPtr);
    }
}

u32 ShowTextBox(u32 textIndexOrPtr, const Font* paramFont) {
    u32 uVar1;
    WStruct* pWVar4;
    u32 uVar5;
    u16* puVar6;
    u32 uVar7;
    u32 uVar8;
    u16* puVar9;
    u32 iVar10;
    Token token;
    Font font;
    u32 fontStr;
    u32 temp2;
    u32 temp3;

    pWVar4 = sub_0805F2C8();
    if (pWVar4 != NULL) {
        MemCopy(paramFont, &font, sizeof(Font));
        InitToken(&token, textIndexOrPtr);
        token.unk05 = font.stylized & 3;
        pWVar4->unk04 = font.stylized;
        pWVar4->unk4 = font.width;
        pWVar4->unk8 = font.buffer_loc;
        pWVar4->charColor = font.charColor;
        pWVar4->bgColor = font.fill_type;
        if (font.draw_border) {
            sub_0805F918(font.border_type, font.fill_type, font.gfx_dest);
            font.gfx_dest = (void*)((s32)font.gfx_dest + 0xe0);
            fontStr = GetFontStrWith(&token, 1);
            iVar10 = (fontStr >> 0x18) * (u32)font._16 + ((u8)((s32)fontStr >> 0x10) << 1);
            uVar8 = (u16)fontStr;
            temp3 = uVar8;
            if (font.width < (s32)temp3) {
                temp3 = font.width;
            }
            uVar8 = (temp3 + 7);
            temp2 = ~7;
            uVar8 = font.sm_border ? uVar8 & temp2 : font.width;

            puVar9 = font.dest;
            font.dest += 0x20;

            if (font.right_align) {
                uVar8 = (uVar8 + 0xf) & ~0xf;
                puVar9 -= (uVar8 >> 4) + 1;
            } else {
                font.dest++;
            }
            uVar8 = uVar8 >> 3;
            textIndexOrPtr = font.gfx_src;
            DispMessageFrame(puVar9, uVar8, iVar10, textIndexOrPtr);
            puVar9 = puVar9 + 1;
            font.gfx_src = font.gfx_src + 7;
            textIndexOrPtr = font.gfx_src - 1;
            while (iVar10-- > 0) {
                puVar9 += 0x20;
                puVar6 = puVar9;
                for (uVar5 = uVar8; (s32)uVar5-- > 0;) {
                    *puVar6++ = textIndexOrPtr;
                }
            }
        }
        MemClear(&gUnk_02034330, sizeof(gUnk_02034330));
        while ((s16)sub_0805F5CC(&font, &token, pWVar4) != 0) {}
        sub_0805F300(pWVar4);
    }
    return 0;
}

bool32 sub_0805F5CC(Font* param_1, Token* param_2, WStruct* param_3) {
    u16 uVar2;
    u32 uVar3;
    s32 iVar4;
    u16* puVar5;
    u32 fontStr;

    uVar3 = sub_0805F8F8(param_1->fill_type);
    MemFill32(uVar3, param_1->buffer_loc, ((param_1->width + 7) & 0x1f8) << 3);
    fontStr = GetFontStrWith(param_2, 0);
    param_3->unk6 = param_1->right_align ? ((8 - ((fontStr + 1) >> 1)) & 7) : 0;

    puVar5 = (u16*)sub_0805F6A4(param_2, param_3);
    if (puVar5) {
        iVar4 = (s32)(param_3->unk6 + 7) / 8;
        puVar5 = param_1->dest;
        if (param_1->right_align) {
            puVar5 -= (iVar4 + 1U) >> 1;
        }
        param_1->gfx_src = sub_0805F67C(puVar5, param_1->gfx_src, iVar4);
        param_1->dest += 0x40;
        iVar4 *= 0x40;
        MemCopy(param_1->buffer_loc, param_1->gfx_dest, iVar4);
        param_1->gfx_dest = (void*)((s32)param_1->gfx_dest + iVar4);
    } else {
        if (param_2->code == 10) {
            param_1->dest += param_1->_16 * 0x20;
        }
    }
    return param_2->code > 0;
}

s32 sub_0805F67C(short* param_1, s32 param_2, s32 param_3) {
    for (param_3--; param_3 != -1; param_3--) {
        param_1[0] = param_2++;
        param_1[0x20] = param_2++;
        param_1++;
    }
    return param_2;
}

u32 sub_0805F6A4(Token* param_1, WStruct* param_2) {
    u32 uVar1;
    u32 uVar3;
    s32 iVar4;
    u32 r7;

    iVar4 = 0;
    r7 = 1;
    do {
        uVar1 = GetCharacter(param_1);
        r7 = 1;
        switch (uVar1) {
            case 7:
                if (param_1->param < 0xe) {
                    param_2->charColor = param_1->param;
                }
                break;
            case 0:
            case 1:
                r7 = 0;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 0xd:
            case 0xe:
                break;

            case 0xc:
                uVar3 = gUnk_02034330.unk2;
                if (uVar3 < 4) {
                    gUnk_02034330.unk2 = uVar3 + 1;
                    gUnk_02034330.unk10[uVar3] = param_1->_6;
                    gUnk_02034330.unk8[uVar3] = param_2->unk6;
                }
                param_2->unk6 += 8;
                iVar4 += 8;
                break;
            case 0xb:
                param_2->unk1 = param_1->param;
                break;
            default:
                iVar4 += sub_0805F7DC(uVar1, param_2);
                if ((param_1->unk05 == 1) && (1 < param_2->unk6)) {
                    iVar4--;
                    param_2->unk6 = param_2->unk6 - 1;
                }
                break;
        }
    } while (r7);

    return iVar4;
}

u32 sub_0805F76C(u32 textIdOrPtr, WStruct* param_2) {
    Token stackToken;

    InitToken(&stackToken, textIdOrPtr);
    stackToken.unk05 = param_2->unk04 & 3;
    return sub_0805F6A4(&stackToken, param_2);
}

static u32 sub_0805F7A0(u32 param_1) {
    u32 mask;
    u32 i;
    u32 j;

    mask = 0xf;
    for (i = 0; i < 8; i++) {
        if (mask != (param_1 & mask))
            break;
        mask <<= 4;
    }
    for (j = i; (i < 8 && (mask != (param_1 & mask))); mask <<= 4, i++) {}
    i -= j;
    return (i << 8) | j;
}

u32 sub_0805F7DC(u32 r0, WStruct* r1) {
    u32 temp;
    u32 temp2;
    u32* offset;

    if (r1->unk4 <= r1->unk6)
        return 0;

    offset = sub_0805F25C(r0);
    temp = r1->unk6;
    if ((r0 >> 8) > 4) {
        sub_0805F820(r1, offset);
        offset += 0x10;
    }

    sub_0805F820(r1, offset);
    if (r1->unk6 > r1->unk4) {
        r1->unk6 = r1->unk4;
    }
    return r1->unk6 - temp;
}

void sub_0805F820(WStruct* r0, u32* r1) {
    u32 bVar1;
    u32 bVar2;
    s32 uVar3;
    s32 uVar4;
    void* uVar5;
    u32 uVar6;
    u32 uVar7;
    u8* puVar8;
    u8* temp;
    void* buffer_loc;
    VStruct* temp3;
    u32 temp4;

    if (r0->unk4 - r0->unk6 > 0) {
        UnpackTextNibbles(r1, &gUnk_02036A58);
        if (r0->unk1 == 0) {
            u32 tmp = sub_0805F7A0(*r1);
            uVar6 = tmp & 0xf;
            uVar3 = tmp >> 8;
        } else {
            uVar6 = 0;
            uVar3 = 8;
        }

        uVar4 = r0->unk4 - r0->unk6;
        if (uVar4 > 8) {
            uVar4 = 8;
        }
        if (uVar4 < uVar3) {
            uVar3 = uVar4;
        }

        puVar8 = &gUnk_02036A58 + uVar6;
        buffer_loc = r0->unk8;
        temp = gUnk_0810942E[r0->bgColor].filler0[r0->charColor * 2];
        uVar7 = r0->unk6;
        r0->unk6 += uVar3;

        temp4 = r0->unk04;
        if (temp4 != 1) {
            while (uVar3-- > 0) {
                sub_080026C4(puVar8, buffer_loc, temp, uVar7);
                puVar8++;
                uVar7++;
            }
        } else {
            while (uVar3-- > 0) {
                sub_080026F2(puVar8, buffer_loc, temp, uVar7);
                puVar8++;
                uVar7++;
            }
        }
    }
}

void sub_0805F8E4(u32 r0, WStruct* r1) {
    u32 old = r1->unk1;
    r1->unk1 = 1;
    sub_0805F7DC(r0, r1);
    r1->unk1 = old;
}

static u32 sub_0805F8F8(u32 idx) {
    u8* temp = &gUnk_0810942E[idx].filler0[10][10];
    return gUnk_0810926C[*temp];
}

void sub_0805F918(u32 idx, u32 idx2, void* dest) {
    u32 i;
    void* puVar1;
    u8* puVar2;
    u32 j;
    u32 idx3;
    u8* temp;
    u8* temp2;

    MemFill32(sub_0805F8F8(idx2), &gUnk_02036AD8, 0xe0);
    puVar1 = gUnk_081092AC[idx];

    temp = &gUnk_081094CE + idx2 * 0xc0;
    idx3 = 0;
    for (i = 0; i < 3; i++) {
        puVar2 = &gUnk_02036A58;
        UnpackTextNibbles(puVar1, &gUnk_02036A58);
        puVar1 += 0x40;

        for (j = 0; j < 8; j++) {
            sub_080026C4(puVar2, &gUnk_02036AD8, temp, idx3);
            puVar2++;
            idx3++;
        }
    }
    LoadResourceAsync((const void*)&gUnk_02036AD8, (u32)dest, 0xe0);
}

u32 sub_0805F9A0(u32 r0) {
    if (gSaveHeader->language == 0) {
        u16* val = &gUnk_081092D4;
        u32 i = 0;

        do {
            if (*val == r0) {
                return i + 0x800;
            }
            i++;
            val++;
        } while (*val != 0);
    } else if (r0 == 0x31a) {
        r0 = 1;
        r0 &= 0xff;
    }
    return (r0 & 0xff) + 0x800;
}
