#include "global.h"
#include "sound.h"
#include "message.h"
#include "functions.h"
#include "screen.h"
#include "common.h"
#include "save.h"
#include "player.h"
#include "area.h"
#include "game.h"

extern void sub_0805ECEC(u32, u32, u32, u32);
extern bool32 ItemIsBottle(u32);

typedef struct {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    u16 unk_8;
} substruct_160;

typedef struct {
    substruct_160 unk_0;
    u8 unk_9[50];
    substruct_160 unk_40;
} struct_02035160;
extern struct_02035160 gUnk_02035160;

typedef struct {
    u32 unk_0;
    u32 unk_4;
    u32 unk_8;
    u32 unk_c;
    u32 unk_10;
    u32 unk_14;
    u8 unk_18[40];
} struct_02034CF0;

extern struct_02034CF0 gUnk_02034CF0[];

typedef struct {
    struct_02034CF0 unk_0;
    struct_02034CF0 unk_40;
} struct_02034D30;

extern struct_02034D30 gUnk_02034D30;

typedef struct {
    u16 unk_0;
    u16 unk_2;
    u16 unk_4;
    u16 unk_6;
    u8 pad[56];
} substruct_0E2;

typedef struct {
    substruct_0E2 unk_0[2];
} struct_020350E2;

extern struct_020350E2 gUnk_020350E2;

extern u32 gUnk_085C4620[];
extern Frame* gSpriteAnimations_322[];

typedef struct {
    u16 unk_0; // -> gOamCmd._4
    u16 unk_2; // -> gOamCmd._6
    u16 unk_4; // -> element->unk_1a
    u16 spriteIndex;
    void (*updateFunction)(UIElement*);
    u8 buttonElementId;
    u8 unk_d;
    u8 unk_e;
    u8 unk_f;
} UIElementDefinition;

extern UIElementDefinition gUIElementDefinitions[];
extern void (*const ButtonUIElement_Actions[])(UIElement*);
extern const u8 gUnk_080C9044[];
extern void (*const EzloNagUIElement_Actions[])(UIElement*);
extern u16 gUnk_080C9058[];
extern Frame gUnk_080C9094[];
extern u8 RupeeKeyDigits[];

void sub_0801C2F0(u32, u32);
void DrawHearts(void);
void DrawChargeBar(void);
void DrawRupees(void);
void DrawKeys(void);
void CreateUIElement(u32, u32);
void DrawDigits(u32, u32, u32, u32);
void sub_0801CAFC(UIElement*, u32);
void sub_0801CB20(UIElement*, UIElementDefinition*);
UIElement* FindUIElement(u32);
void sub_0801CAD0(UIElement*);
void sub_0801CAB8(UIElement*, Frame*);

void UpdateUIElements(void) {
    u32 index;
    UIElement* element;
    const UIElementDefinition* definition;
    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gUnk_0200AF00.elements[index];
        if (element->used != 0) {
            definition = &gUIElementDefinitions[element->type];
            definition->updateFunction(element);
        }
    }
}

void DrawUIElements(void) {
    u32 index;
    UIElement* element;
    UIElementDefinition* definition;
    index = 0;
    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gUnk_0200AF00.elements[index];
        if (element->used == 1 && element->unk_0_1 == 1) {
            gOamCmd.x = element->x;
            gOamCmd.y = element->y;
            definition = &gUIElementDefinitions[element->type];
            gOamCmd._4 = definition->unk_0;
            gOamCmd._6 = definition->unk_2;
            gOamCmd._8 = element->unk_18 << 0xc | element->unk_1a;
            DrawDirect(definition->spriteIndex, element->frameIndex);
        }
    }
}

void sub_0801C25C(void) {
    u32 uVar1;
    s32 index;
    u8 tmp;
    UIElement* element;

    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gUnk_0200AF00.elements[index];
        if (((element->used) == 1) && ((element->unk_0_1) == 1)) {
            u8 temp = element->unk_0_2;
            if (temp == 1) {
                element->unk_0_2 = 2;
                DmaSet(3, element->firstTile, element->unk_1a * 0x20 + 0x6010000, element->numTiles << 3 | 0x84000000);
            }
        }
    }
    if (gUnk_0200AF00.unk_13 < 0) {
        tmp = gUnk_0200AF00.unk_13 & 0x7f;
        gUnk_0200AF00.unk_13 = tmp;
        sub_0801C2F0(0x11a, tmp);
    }
    if (gUnk_0200AF00.unk_14 < 0) {
        tmp = gUnk_0200AF00.unk_14 & 0x7f;
        gUnk_0200AF00.unk_14 = tmp;
        sub_0801C2F0(0x126, tmp);
    }
}

void sub_0801C2F0(u32 param_1, u32 param_2) {
    u32 uVar1;
    register u32 rem asm("r1");
    vu32* ptr;
    param_1 = param_1 * 0x20 + 0x6010000;

    uVar1 = Div(param_2, 10);
    if (uVar1 > 9) {
        uVar1 = 9;
    }

    DmaSet(3, (gUnk_085C4620 + uVar1 * 8), param_1, 0x84000008);
    DmaSet(3, (gUnk_085C4620 + (rem + 10) * 8), param_1 + 0x20, 0x84000008);
}

void DrawUI(void) {
    gUnk_0200AF00.unk_0 &= ~gUnk_0200AF00.unk_1;
    DrawHearts();
    DrawChargeBar();
    DrawRupees();
    DrawKeys();
    gUnk_0200AF00.unk_0 = 0;
    UpdateUIElements();
}

void InitUI(bool32 keepHealthAndRupees) {
    u32 health;
    u32 rupees;

    if (!keepHealthAndRupees) {
        health = gSave.stats.health >> 1;
        rupees = gSave.stats.rupees;
    } else {
        health = gUnk_0200AF00.health;
        rupees = gUnk_0200AF00.rupees;
    }
    MemClear(&gUnk_0200AF00, sizeof(struct_0200AF00));
    gUnk_0200AF00.health = health;
    gUnk_0200AF00.rupees = rupees;
    gUnk_0200AF00.maxHealth = gSave.stats.maxHealth >> 1;
    LoadPaletteGroup(0xc);
    LoadGfxGroup(0x10);
    MemClear(&gBG0Buffer, 0x800);
    gScreen.bg0.tilemap = &gBG0Buffer;
    gScreen.bg0.control = 0x1f0c;
    gScreen.lcd.displayControl |= 0x100;
    gOAMControls.unk[0].unk7 = 1;
    gOAMControls.unk[0].unk6 = 1;
    gOAMControls.unk[1].unk6 = 1;
    gUnk_0200AF00.unk_13 = 0x7f;
    gUnk_0200AF00.unk_14 = 0x7f;
    gUnk_0200AF00.unk_8 = 0x7f;
    DrawHearts();
    DrawRupees();
    DrawChargeBar();
    DrawKeys();
    gUnk_0200AF00.buttonX[0] = 0xd0;
    gUnk_0200AF00.buttonX[1] = 0xb8;
    gUnk_0200AF00.buttonX[2] = 0xd8;
    gUnk_0200AF00.buttonY[0] = 0x1c;
    gUnk_0200AF00.buttonY[1] = 0x1c;
    gUnk_0200AF00.buttonY[2] = 0xe;
    // TODO why is this array cleared again? Is it filled by the function calls in the mean time?
    MemClear(gUnk_0200AF00.elements, sizeof(gUnk_0200AF00.elements));
    CreateUIElement(UI_ELEMENT_TEXT_R, 9);
    CreateUIElement(UI_ELEMENT_ITEM_A, 0);
    CreateUIElement(UI_ELEMENT_ITEM_B, 0);
    CreateUIElement(UI_ELEMENT_BUTTON_R, 0);
    CreateUIElement(UI_ELEMENT_BUTTON_B, 0);
    CreateUIElement(UI_ELEMENT_BUTTON_A, 0);
    CreateUIElement(UI_ELEMENT_EZLONAGSTART, 0);
    CreateUIElement(UI_ELEMENT_HEART, 0);
}

void RefreshUI(void) {
    gScreen.bg0.updated = 1;
}

void RecoverUI(u32 bottomPt, u32 topPt) {
    gUnk_0200AF00.unk_2 = 0;
    gUnk_0200AF00.unk_10 = 0;
    gUnk_0200AF00.unk_a = 0;
}

void DrawRupees(void) {
    u32 cVar1;
    u32 temp;
    u32 temp2;
    substruct_160* ptr;
    substruct_160* ptr2;
    const u16* ptr3;
    struct_02035160* ptr4;

    if ((gUnk_0200AF00.unk_1 & 0x40) != 0) {
        if (gUnk_0200AF00.unk_a != 0) {
            gUnk_0200AF00.unk_a = 0;
            ptr4 = &gUnk_02035160;
            ptr = &ptr4->unk_0;
            ptr->unk_0 = 0;
            ptr->unk_2 = 0;
            ptr->unk_4 = 0;
            ptr->unk_6 = 0;
            ptr->unk_8 = 0;
            ptr2 = &ptr4->unk_40;
            ptr2->unk_0 = 0;
            ptr2->unk_2 = 0;
            ptr2->unk_4 = 0;
            ptr2->unk_6 = 0;
            ptr2->unk_8 = 0;
            gScreen.bg0.updated = 1;
        }
    } else {
        if (gUnk_0200AF00.unk_a == 0) {
            gUnk_0200AF00.unk_a = 2;
            ptr4 = &gUnk_02035160;
            ptr2 = &ptr4->unk_40;
            ptr3 = gWalletSizes;
            ptr4->unk_0.unk_0 = temp2 = *(ptr3 + (u32)gSave.stats.walletType * 2 + 1);
            ptr4->unk_0.unk_2 = temp2 + 1;
            ptr2->unk_0 = temp2 + 2;
            ptr2->unk_2 = temp2 + 3;
            temp2 = 0xf070;
            ptr4->unk_0.unk_4 = temp2;
            ptr2->unk_4 = temp2 + 1;
            ptr4->unk_0.unk_6 = temp2 + 2;
            ptr2->unk_6 = temp2 + 3;
            ptr4->unk_0.unk_8 = temp2 + 4;
            ptr2->unk_8 = temp2 + 5;
            gScreen.bg0.updated = 1;
            cVar1 = 1;
        } else {
            cVar1 = 0;
        }

        if (gUnk_0200AF00.rupees != gSave.stats.rupees) {
            if (gUnk_0200AF00.rupees < gSave.stats.rupees) {
                gUnk_0200AF00.rupees++;
            } else {
                gUnk_0200AF00.rupees--;
            }
            cVar1 = 2;
        }
        switch (cVar1) {
            case 2:
                temp = gUnk_0200AF00.unk_c;
                temp &= 3;
                if ((temp) == 0) {
                    SoundReq(SFX_RUPEE_GET);
                }
            case 1:
                DrawDigits(0x70, gUnk_0200AF00.rupees,
                           gWalletSizes[(u32)gSave.stats.walletType * 2] <= gUnk_0200AF00.rupees, 3);
                cVar1 = gUnk_0200AF00.unk_c + 1;
            default:
                gUnk_0200AF00.unk_c = cVar1;
                break;
        }
    }
}

// Draw icon with text for rupees or keys
void DrawDigits(u32 iconVramIndex, u32 count, u32 isTextYellow, u32 digits) {
    int iVar2;
    int iVar3;
    u8* puVar4;
    u32 digit;
    vu32* ptr;
    vu32* ptr2;
    register u32 r1 asm("r1");

    puVar4 = RupeeKeyDigits;
    if (isTextYellow == 0) {
        puVar4 -= 0x280;
    }
    iVar3 = (iconVramIndex & 0x3ff) * 0x20;
    iVar2 = iVar3 + 0x600c000;
    switch (digits) {
        case 3:
            digit = Div(count, 100);
            count = r1;
            DmaSet(3, puVar4 + digit * 0x40, iVar2, 0x84000010);
            iVar2 = iVar3 + 0x600c040;
        case 2:
            digit = Div(count, 10);
            count = r1;
            DmaSet(3, puVar4 + digit * 0x40, iVar2, 0x84000010);
            iVar2 += 0x40;
    }

    DmaSet(3, puVar4 + count * 0x40, iVar2, 0x84000010);
}

void sub_0801C66C(void) {
    struct_02034CF0* ptr;
    s32 index;

    if (gUnk_0200AF00.unk_2 != 0) {
        gUnk_0200AF00.unk_2 = 0;
        if (gUnk_0200AF00.maxHealth > 0x28) {
            index = 2;
        } else {
            index = 1;
        }
        ptr = gUnk_02034CF0;
        do {
            ptr->unk_0 = 0;
            ptr->unk_4 = 0;
            ptr->unk_8 = 0;
            ptr->unk_c = 0;
            ptr->unk_10 = 0;
            ptr->unk_14 = 0;
            ptr++;
            index--;
        } while (index > 0);
        gScreen.bg0.updated = 1;
    }
}

ASM_FUNC("asm/non_matching/ui/DrawHearts.inc", void DrawHearts())

void sub_0801C824(void) {
    struct_02034CF0* ptr;

    if (gUnk_0200AF00.unk_6 != 0) {
        gUnk_0200AF00.unk_6 = 0;
        if (gUnk_0200AF00.maxHealth > 4 * 10) {
            ptr = &gUnk_02034D30.unk_40; // Show second row of hearts
        } else {
            ptr = &gUnk_02034D30.unk_0;
        }
        ptr->unk_0 = 0;
        ptr->unk_4 = 0;
        ptr->unk_8 = 0;
        ptr->unk_c = 0;
        ptr->unk_10 = 0;
        ptr->unk_14 = 0;
        gScreen.bg0.updated = 1;
    }
}

ASM_FUNC("asm/non_matching/ui/DrawChargeBar.inc", void DrawChargeBar())

void DrawKeys(void) {
    s32 iVar1;
    substruct_0E2* ptr1;
    substruct_0E2* ptr2;
    u32 temp;

    if (!(((gUnk_0200AF00.unk_1 & 0x80) == 0) && (AreaHasKeys()))) {
        if (gUnk_0200AF00.unk_10 != 0) {
            gUnk_0200AF00.unk_10 = 0;
            ptr1 = &gUnk_020350E2.unk_0[0];
            ptr1->unk_0 = 0;
            ptr1->unk_2 = 0;
            ptr1->unk_4 = 0;
            ptr1->unk_6 = 0;
            gUnk_020350E2.unk_0[1].unk_0 = 0;
            gUnk_020350E2.unk_0[1].unk_2 = 0;
            gUnk_020350E2.unk_0[1].unk_4 = 0;
            gUnk_020350E2.unk_0[1].unk_6 = 0;
            gScreen.bg0.updated = 1;
        }
    } else {
        if (gUnk_0200AF00.unk_10 == 0) {
            ptr1 = &gUnk_020350E2.unk_0[0];
            ptr2 = &gUnk_020350E2.unk_0[1];
            temp = 0xf01c;
            ptr1->unk_0 = temp;
            ptr1->unk_2 = temp + 1;
            ptr2->unk_0 = temp + 2;
            ptr2->unk_2 = temp + 3;
            temp = 0xf076;
            ptr1->unk_4 = temp;
            ptr2->unk_4 = temp + 1;
            ptr1->unk_6 = temp + 2;
            ptr2->unk_6 = temp + 3;
            gScreen.bg0.updated = 1;
        }
        if ((gUnk_0200AF00.unk_12 != gSave.unk45C[gArea.dungeon_idx]) || (gUnk_0200AF00.unk_10 == 0)) {
            gUnk_0200AF00.unk_10 = 2;
            gUnk_0200AF00.unk_12 = gSave.unk45C[gArea.dungeon_idx];
            DrawDigits(0x76, gUnk_0200AF00.unk_12, 0, 2);
        }
    }
}

NONMATCH("asm/non_matching/ui/CreateUIElement.inc", void CreateUIElement(u32 type, u32 type2)) {
    u8 bVar1;
    u32 index;
    UIElement* element;
    UIElementDefinition* definition;

    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gUnk_0200AF00.elements[index];
        if (element->used == 0) {
            definition = &gUIElementDefinitions[type];
            element->type = (u8)type;
            element->type2 = type2;
            element->frameIndex = 0xff;
            element->used = 1;
            element->unk_1a = definition->unk_4;
            element->buttonElementId = definition->buttonElementId;
            return;
        }
    }
}
END_NONMATCH

void sub_0801CAB8(UIElement* element, Frame* frame) {
    element->framePtr = frame;
    element->duration = frame->duration;
    element->spriteSettings = frame->spriteSettings.raw;
    element->frameSettings = frame->frameSettings.raw;
    sub_0801CAFC(element, frame->index);
}

void sub_0801CAD0(UIElement* element) {
    if (--element->duration == 0) {
        Frame* frame = element->framePtr;
        if ((s8)frame->frameSettings.raw < 0) {
            frame -= frame[1].index;
        }
        sub_0801CAB8(element, frame + 1);
    }
}

void sub_0801CAFC(UIElement* element, u32 frameIndex) {
    UIElementDefinition* definition = &gUIElementDefinitions[element->type];
    if (frameIndex != element->frameIndex) {
        element->frameIndex = frameIndex;
        sub_0801CB20(element, definition);
    }
}

void sub_0801CB20(UIElement* element, UIElementDefinition* definition) {
    if (definition->unk_e == 0) {
        SpritePtr* ptr = &gSpritePtrs[definition->spriteIndex];
        SpriteFrame* frame = &ptr->frames[element->frameIndex];
        u32* firstTile = (u32*)(ptr->ptr + frame->firstTileIndex * 0x20);
        u8 numTiles = frame->numTiles;
        if (numTiles == 0) {
            element->unk_0_2 = 0;
        } else {
            if ((element->numTiles != numTiles) || (element->firstTile != firstTile)) {
                element->firstTile = firstTile;
                element->unk_0_2 = 1;
            }
        }
        element->numTiles = numTiles;
    }
}

void ButtonUIElement(UIElement* element) {
    ButtonUIElement_Actions[element->action](element);
}

void ButtonUIElement_Action0(UIElement* element) {
    element->x = gUnk_0200AF00.buttonX[element->type];
    element->y = gUnk_0200AF00.buttonY[element->type] - 0x20;
    element->action = 1;
    element->unk_0_1 = 1;
    sub_0801CAFC(element, element->type);
}

ASM_FUNC("asm/non_matching/ui/ButtonUIElement_Action1.inc", void ButtonUIElement_Action1())

u32 sub_0801CC80(UIElement* element) {
    u8 type = element->type;
    u32 buttonId = (type ^ 3) != 0;
    u32 itemId = gSave.stats.itemButtons[buttonId];
    if (ItemIsBottle(itemId)) {
        itemId = gSave.saved_status.field_0x24[itemId - 6];
    }
    return itemId;
}

void ItemUIElement(UIElement* element) {
    u32 itemMaxNumber;
    u32 itemId;
    u8* puVar3;
    UIElement* element2;
    u32 uVar5;
    u32 playerItemCount;
    u8* psVar8;
    u32 uiElementType;

    element->unk_0_1 = 0;
    itemId = sub_0801CC80(element);
    if (itemId == 0) {
        return;
    }

    if (element->unk_8 != itemId) {
        element->unk_8 = itemId;
        sub_0801CAB8(element, gSpriteAnimations_322[itemId]);
    }

    if (element->type ^ 3) {
        uiElementType = 1;
    } else {
        uiElementType = 0;
    }

    psVar8 = &gUnk_0200AF00.unk_13;
    if (uiElementType != 0) {
        psVar8 = &gUnk_0200AF00.unk_14;
    }

    switch ((s32)element->unk_8) {
        case 7:
        case 8:
            playerItemCount = gSave.stats.bombCount;
            if (*psVar8 != playerItemCount) {
                *psVar8 = playerItemCount + 0x80;
            }
            itemMaxNumber = gBombBagSizes[gSave.stats.bombBagType];
            break;
        case 9:
        case 10:
            playerItemCount = gSave.stats.arrowCount;
            if (*psVar8 != playerItemCount) {
                *psVar8 = playerItemCount + 0x80;
            }
            itemMaxNumber = gQuiverSizes[gSave.stats.quiverType];
            break;
        default:
            itemMaxNumber = 1;
            playerItemCount = 0;
            break;
    }

    uVar5 = 3;
    if (itemMaxNumber <= playerItemCount) {
        uVar5 = 4;
    }
    element->unk_18 = uVar5;
    element2 = FindUIElement(uiElementType);
    if (element2 != 0) {
        element->x = element2->x;
        element->y = element2->y;
        element->unk_0_1 = 1;
        sub_0801CAD0(element);
    }
}

void TextUIElement(UIElement* element) {
    UIElement* buttonUIElement;
    u32 tmp;
    extern struct_0200AF00* ptr;
    u32 tmp1;
    UIElement* ptr2;

    if (element->type2 == 9) {
        tmp = gUnk_0200AF00.unk_2f;
        if (tmp == 0) {
            switch (gArea.portal_mode) {
                case 2:
                    tmp = 0xb;
                    break;
                case 3:
                    tmp = 0xa;
                    break;
                default:
                    tmp = gUnk_0200AF00.unk_2c;
                    break;
            }
        }
        gUnk_0200AF00.unk_32 = tmp;
    }
    tmp = gUnk_0200AF00.unk_30[element->buttonElementId];
    element->unk_0_1 = 0;
    if (tmp != 0) {
        tmp += gUnk_080C9044[((SaveHeader*)0x2000000)->language];
        sub_0801CAFC(element, tmp);
        buttonUIElement = FindUIElement(element->buttonElementId);
        if (buttonUIElement != NULL) {
            element->x = buttonUIElement->x;
            element->y = buttonUIElement->y;
            element->unk_0_1 = 1;
        }
    }
}

UIElement* FindUIElement(u32 type) {
    UIElement* element;
    u32 index;
    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gUnk_0200AF00.elements[index];
        if (element->used != 0 && type == element->type) {
            return element;
        }
    }
    return NULL;
}

void HeartUIElement(UIElement* element) {
    s32 tmp;
    u32 x;
    u16 y;
    u32 health;
    u32 frameIndex;
    element->unk_0_1 = 0;
    if (((gUnk_0200AF00.unk_1 & 0x10) == 0) && ((gMessage.doTextBox & 0x7f) == 0)) {
        health = gUnk_0200AF00.health;
        if (health != 0) {
            element->unk_0_1 = 1;
            // Calculate the position for this heart.
            tmp = ((health + 3) >> 2) * 8;
            x = tmp + 3;
            y = 0xc;
            if (health > 0x28) {
                y = 0x14;
                x = tmp - 0x4d;
            }
            element->x = x;
            element->y = y;
            if ((health & 3) == 0) {
                frameIndex = 4; // Full heart
            } else {
                frameIndex = health & 3; // Quarters
            }
            sub_0801CAFC(element, frameIndex + 0x71);
        }
    }
}

void EzloNagUIElement(UIElement* element) {
    EzloNagUIElement_Actions[element->action](element);
}

void EzloNagUIElement_Action0(UIElement* element) {
    if (gUnk_0200AF00.ezloNagFuncIndex == 1) {
        gUnk_0200AF00.ezloNagFuncIndex = 2;
        element->x = 0x10;
        element->y = 0x90;
        element->unk_6 = 0;
        element->type = UI_ELEMENT_EZLONAGSTART;
        element->action = 1;
        element->unk_0_1 = 1;
        sub_0801CAB8(element, gUnk_080C9094);
    }
}

void EzloNagUIElement_Action1(UIElement* element) {
    u32 tmp = gUnk_080C9058[element->unk_6++];
    sub_0805ECEC(0, tmp, tmp, 0);
    if (tmp == 0) {
        element->action = 2;
        element->type = UI_ELEMENT_EZLONAGACTIVE;
        gUnk_0200AF00.ezloNagFuncIndex = 3;
        SoundReq(SFX_EZLO_UI);
    }
}

void EzloNagUIElement_Action2(UIElement* element) {
    if (gUnk_0200AF00.ezloNagFuncIndex >= 5 || (gMessage.doTextBox & 0x7f)) {
        element->action = 0;
        element->unk_0_1 = 0;
        return;
    }
    sub_0801CAD0(element);
    if (element->frameSettings == 1) {
        gUnk_0200AF00.ezloNagFuncIndex = 4;
    }
}
