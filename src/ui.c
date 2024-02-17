#include "area.h"
#include "common.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "item.h"
#include "message.h"
#include "player.h"
#include "save.h"
#include "screen.h"
#include "sound.h"
#include "structures.h"

extern void sub_0805ECEC(u32, u32, u32, u32);
extern u32 sub_08000E44(u32);

extern const u16 gUnk_080C8F2C[];
extern u32 gUnk_085C4620[];
extern Frame* gSpriteAnimations_322[];
extern u16 gUnk_080C8F54[];
extern u32 gUnk_080C8F7C[];

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
void RenderDigits(u32, u32, u32, u32);
void sub_0801CAFC(UIElement*, u32);
void sub_0801CB20(UIElement*, UIElementDefinition*);
UIElement* FindUIElement(u32);
void sub_0801CAD0(UIElement*);
void sub_0801CAB8(UIElement*, Frame*);
void EraseChargeBar(void);

void UpdateUIElements(void) {
    u32 index;
    UIElement* element;
    const UIElementDefinition* definition;
    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gHUD.elements[index];
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

    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gHUD.elements[index];
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
    s32 index;
    u8 tmp;
    UIElement* element;

    for (index = 0; index < MAX_UI_ELEMENTS; index++) {
        element = &gHUD.elements[index];
        if (((element->used) == 1) && ((element->unk_0_1) == 1)) {
            u8 temp = element->unk_0_2;
            if (temp == 1) {
                element->unk_0_2 = 2;
                DmaCopy32(3, element->firstTile, element->unk_1a * 0x20 + 0x6010000, (element->numTiles << 3) * 4);
            }
        }
    }
    if (gHUD.unk_13 < 0) {
        tmp = gHUD.unk_13 & 0x7f;
        gHUD.unk_13 = tmp;
        sub_0801C2F0(0x11a, tmp);
    }
    if (gHUD.unk_14 < 0) {
        tmp = gHUD.unk_14 & 0x7f;
        gHUD.unk_14 = tmp;
        sub_0801C2F0(0x126, tmp);
    }
}

void sub_0801C2F0(u32 dest, u32 param_2) {
    u32 tensDigit;
#ifdef NON_MATCHING
    u32 onesDigit;
    union SplitDWord divRem;
#else
    FORCE_REGISTER(u32 onesDigit, r1);
    FORCE_REGISTER(union SplitDWord divRem, r0);
#endif

    dest = dest * 0x20 + 0x6010000;
    divRem = DivAndMod(param_2, 10);
    onesDigit = divRem.HALF_U.HI;
    tensDigit = divRem.HALF_U.LO;

    if (tensDigit >= 10)
        tensDigit = 9;

    DmaCopy32(3, gUnk_085C4620 + tensDigit * 0x8, dest, 0x8 * 4);
    DmaCopy32(3, gUnk_085C4620 + (onesDigit + 10) * 0x8, dest + 0x20, 0x8 * 4);
}

void DrawUI(void) {
    gHUD.unk_0 &= ~gHUD.hideFlags;
    DrawHearts();
    DrawChargeBar();
    DrawRupees();
    DrawKeys();
    gHUD.unk_0 = 0;
    UpdateUIElements();
}

void InitUI(bool32 keepHealthAndRupees) {
    u32 health;
    u32 rupees;

    if (!keepHealthAndRupees) {
        health = gSave.stats.health >> 1;
        rupees = gSave.stats.rupees;
    } else {
        health = gHUD.health;
        rupees = gHUD.rupees;
    }
    MemClear(&gHUD, sizeof(HUD));
    gHUD.health = health;
    gHUD.rupees = rupees;
    gHUD.maxHealth = gSave.stats.maxHealth >> 1;
    LoadPaletteGroup(0xc);
    LoadGfxGroup(0x10);
    MemClear(&gBG0Buffer, sizeof(gBG0Buffer));
    gScreen.bg0.subTileMap = &gBG0Buffer;
    gScreen.bg0.control = 0x1f0c;
    gScreen.lcd.displayControl |= 0x100;
    gOAMControls.unk[0].unk7 = 1;
    gOAMControls.unk[0].unk6 = 1;
    gOAMControls.unk[1].unk6 = 1;
    gHUD.unk_13 = 0x7f;
    gHUD.unk_14 = 0x7f;
    gHUD.unk_8 = 0x7f;
    DrawHearts();
    DrawRupees();
    DrawChargeBar();
    DrawKeys();
    gHUD.buttonX[0] = 0xd0;
    gHUD.buttonX[1] = 0xb8;
    gHUD.buttonX[2] = 0xd8;
    gHUD.buttonY[0] = 0x1c;
    gHUD.buttonY[1] = 0x1c;
    gHUD.buttonY[2] = 0xe;
    // TODO why is this array cleared again? Is it filled by the function calls in the mean time?
    MemClear(gHUD.elements, sizeof(gHUD.elements));
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
    gHUD.unk_2 = 0;
    gHUD.unk_10 = 0;
    gHUD.unk_a = 0;
}

void DrawRupees(void) {
    u32 cVar1;
    u32 temp;
    u32 temp2;
    u16* row1;
    u16* row2;

    if (gHUD.hideFlags & HUD_HIDE_RUPEES) {
        if (gHUD.unk_a != 0) {
            gHUD.unk_a = 0;
            row1 = &gBG0Buffer[0x258];
            row1[0] = 0;
            row1[1] = 0;
            row1[2] = 0;
            row1[3] = 0;
            row1[4] = 0;
            row2 = &gBG0Buffer[0x278];
            row2[0] = 0;
            row2[1] = 0;
            row2[2] = 0;
            row2[3] = 0;
            row2[4] = 0;
            gScreen.bg0.updated = 1;
        }
    } else {
        if (gHUD.unk_a == 0) {
            gHUD.unk_a = 2;
            row1 = &gBG0Buffer[0x258];
            row2 = &gBG0Buffer[0x278];
            row1[0] = temp2 = gWalletSizes[gSave.stats.walletType].iconStartTile;
            row1[1] = temp2 + 1;
            row2[0] = temp2 + 2;
            row2[1] = temp2 + 3;
            temp2 = 0xf070;
            row1[2] = temp2;
            row2[2] = temp2 + 1;
            row1[3] = temp2 + 2;
            row2[3] = temp2 + 3;
            row1[4] = temp2 + 4;
            row2[4] = temp2 + 5;
            gScreen.bg0.updated = 1;
            cVar1 = 1;
        } else {
            cVar1 = 0;
        }

        if (gHUD.rupees != gSave.stats.rupees) {
            if (gHUD.rupees < gSave.stats.rupees) {
                gHUD.rupees++;
            } else {
                gHUD.rupees--;
            }
            cVar1 = 2;
        }
        switch (cVar1) {
            case 2:
                temp = gHUD.unk_c;
                temp &= 3;
                if ((temp) == 0) {
                    SoundReq(SFX_RUPEE_GET);
                }
            case 1:
                RenderDigits(0x70, gHUD.rupees, gWalletSizes[(u32)gSave.stats.walletType].size <= gHUD.rupees, 3);
                cVar1 = gHUD.unk_c + 1;
            default:
                gHUD.unk_c = cVar1;
                break;
        }
    }
}

/**
 * Draw icon with text for rupees or keys
 */
void RenderDigits(u32 iconVramIndex, u32 count, u32 isTextYellow, u32 digits) {
    int iVar2;
    int iVar3;
    u8* puVar4;
    u32 digit;
    vu32* ptr;
    vu32* ptr2;
#ifdef NON_MATCHING
    union SplitDWord divRem;
#else
    FORCE_REGISTER(union SplitDWord divRem, r0);
#endif

    puVar4 = RupeeKeyDigits;
    if (isTextYellow == 0) {
        puVar4 -= 0x280;
    }
    iVar3 = (iconVramIndex & 0x3ff) * 0x20;
    iVar2 = iVar3 + 0x600c000;
    switch (digits) {
        case 3:
            divRem = DivAndMod(count, 100);
            digit = divRem.HALF_U.LO;
            count = divRem.HALF_U.HI;
            DmaCopy32(3, puVar4 + digit * 0x40, iVar2, 0x10 * 4);
            iVar2 += 0x40;
        case 2:
            divRem = DivAndMod(count, 10);
            digit = divRem.HALF_U.LO;
            count = divRem.HALF_U.HI;
            DmaCopy32(3, puVar4 + digit * 0x40, iVar2, 0x10 * 4);
            iVar2 += 0x40;
    }

    DmaCopy32(3, puVar4 + count * 0x40, iVar2, 0x10 * 4);
}

void EraseHearts(void) {
    u32* ptr;
    s32 index;

    if (gHUD.unk_2 != 0) {
        gHUD.unk_2 = 0;
        if (gHUD.maxHealth > 10 * 4) {
            index = 2;
        } else {
            index = 1;
        }
        ptr = (u32*)&gBG0Buffer[0x20];
        do {
            ptr[0] = 0;
            ptr[1] = 0;
            ptr[2] = 0;
            ptr[3] = 0;
            ptr[4] = 0;
            ptr[5] = 0;
            ptr += 0x10;
            index--;
        } while (index > 0);
        gScreen.bg0.updated = 1;
    }
}

void DrawHearts(void) {
    s32 health;
    s32 uVar1;
    s32 uVar2;
    u32 uVar6;
    s32 maxHealth;
    s32 tmp1;
    u16* ptr;

    if (gHUD.hideFlags & HUD_HIDE_HEARTS) {
        EraseChargeBar();
        EraseHearts();
        return;
    }
    maxHealth = gSave.stats.maxHealth / 2;
    if (maxHealth != gHUD.maxHealth) {
        gHUD.maxHealth = maxHealth;
        EraseChargeBar();
        EraseHearts();
    }
    if (gSave.stats.health != 1) {
        health = gSave.stats.health / 2;
    } else {
        health = 1;
    }
    if (health > maxHealth) {
        health = maxHealth;
    }
    maxHealth = 0;
    if (health != gHUD.health) {
        maxHealth = 1;
        if (health > gHUD.health) {
            maxHealth = 2;
        }
    }

    switch (maxHealth) {
        case 2:
            uVar1 = gHUD.unk_5++;
            if ((uVar1 & 1) == 0) {
                if ((uVar1 & 7) == 0) {
                    SoundReq(SFX_HEART_GET);
                }
                gHUD.health++;
            } else {
                maxHealth = 0;
            }
            break;
        case 1:
            gHUD.health--;
            // fallthough
        default:
            gHUD.unk_5 = 0;
            break;
    }
    if ((gHUD.unk_2 == 0) || (maxHealth != 0)) {
        gHUD.unk_2 = 2;
        uVar2 = gHUD.health / 4;
        if (uVar2 > 10) {
            tmp1 = 10;
            uVar6 = uVar2 - 10;
        } else {
            tmp1 = uVar2;
            uVar6 = 0;
        }

        maxHealth = gHUD.maxHealth / 4;
        uVar1 = maxHealth;
        if (maxHealth > 10) {
            maxHealth = 10;
        }

        if (uVar1 - 10 > 0) {
            ptr = &gBG0Buffer[0x40];
            *ptr = 0xf010;
            DmaSet(3, gUnk_080C8F2C + (10 - uVar6), ptr + 1, (uVar1 - 10) | 0x80000000);
        }
        ptr = &gBG0Buffer[0x20];
        *ptr = 0xf010;

        DmaSet(3, gUnk_080C8F2C + (10 - tmp1), ptr + 1, maxHealth | 0x80000000);

        if ((gHUD.health & 3) != 0) {
            if (9 < uVar2) {
                uVar2 -= 10;
                ptr += 0x20;
            }
            ptr[uVar2 + 1] = ((gHUD.health & 3) + 0x11) | 0xf000;
        }
        gScreen.bg0.updated = 1;
    }
}

void EraseChargeBar(void) {
    u32* ptr;

    if (gHUD.unk_6 != 0) {
        gHUD.unk_6 = 0;
        if (gHUD.maxHealth > 10 * 4) {
            ptr = (u32*)&gBG0Buffer[0x60];
        } else {
            ptr = (u32*)&gBG0Buffer[0x40];
        }
        ptr[0] = 0;
        ptr[1] = 0;
        ptr[2] = 0;
        ptr[3] = 0;
        ptr[4] = 0;
        ptr[5] = 0;
        gScreen.bg0.updated = 1;
    }
}

void DrawChargeBar(void) {
    bool32 tmp1;
    u16* BufferPos;
    // these names are almost certainly inaccurate
    u32 chargeTime;
    u32 chargeState;
    u32 chargeFrame;
    union SplitDWord divRem;

    tmp1 = FALSE;
    if (!(gHUD.hideFlags & HUD_HIDE_CHARGE_BAR))
        tmp1 = gPlayerState.chargeState.action != 0;
    if (!tmp1) {
        EraseChargeBar();
        return;
    }
    if (gHUD.maxHealth > 10 * 4)
        BufferPos = &gBG0Buffer[0x60];
    else
        BufferPos = &gBG0Buffer[0x40];

    chargeTime = Div(gPlayerState.chargeState.chargeTimer + 19, 20);
    if (chargeTime > 40)
        chargeTime = 40;

    if (gHUD.unk_6 == 0 || gHUD.unk_7 != chargeTime) {
        gHUD.unk_6 = 1;
        gHUD.unk_7 = chargeTime;

        divRem = DivAndMod(chargeTime, 4);
        chargeState = divRem.HALF_U.LO;
        chargeFrame = divRem.HALF_U.HI;

        BufferPos[0] = 0xf016;
        BufferPos[11] = 0xf416;
        DmaSet(3, &gUnk_080C8F54[10 - chargeState], BufferPos + 1, 0x8000000a);
        if (chargeFrame != 0)
            BufferPos[chargeState + 1] = ((chargeFrame + 0x17U) & 0x3ff) | 0xf000;
        gScreen.bg0.updated = 1;
    }

    switch (gPlayerState.chargeState.action) {
        case 4:
        case 5:
            gHUD.unk_9 += (gPlayerState.chargeState.action == 4) ? 2 : 1;
            chargeState = gHUD.unk_9 >> 4 & 3;
            break;
        default:
            chargeState = 0;
            break;
    }

    if (chargeState == gHUD.unk_8)
        return;

    gHUD.unk_8 = chargeState;

    BufferPos = (u16*)(VRAM + 0xc2c0);
    DmaSet(3, gUnk_080C8F7C[chargeState], BufferPos, 0x84000030);
}

void DrawKeys(void) {
    u16* row1;
    u16* row2;
    u32 temp;

    if (!(((gHUD.hideFlags & HUD_HIDE_KEYS) == 0) && (AreaHasKeys()))) {
        if (gHUD.unk_10 != 0) {
            gHUD.unk_10 = 0;
            row1 = &gBG0Buffer[0x219];
            row1[0] = 0;
            row1[1] = 0;
            row1[2] = 0;
            row1[3] = 0;
            row1[0x20] = 0;
            row1[0x21] = 0;
            row1[0x22] = 0;
            row1[0x23] = 0;
            gScreen.bg0.updated = 1;
        }
    } else {
        if (gHUD.unk_10 == 0) {
            row1 = &gBG0Buffer[0x219];
            row2 = &gBG0Buffer[0x239];
            temp = 0xf01c;
            row1[0] = temp;
            row1[1] = temp + 1;
            row2[0] = temp + 2;
            row2[1] = temp + 3;
            temp = 0xf076;
            row1[2] = temp;
            row2[2] = temp + 1;
            row1[3] = temp + 2;
            row2[3] = temp + 3;
            gScreen.bg0.updated = 1;
        }
        if ((gHUD.dungeonKeys != gSave.dungeonKeys[gArea.dungeon_idx]) || (gHUD.unk_10 == 0)) {
            gHUD.unk_10 = 2;
            gHUD.dungeonKeys = gSave.dungeonKeys[gArea.dungeon_idx];
            RenderDigits(0x76, gHUD.dungeonKeys, 0, 2);
        }
    }
}

void CreateUIElement(u32 type, u32 type2) {
    u32 index;
    UIElement* element;

    for (index = 0; index < MAX_UI_ELEMENTS; index++) {

        element = gHUD.elements;
        element += index;

        if (!element->used) {
            element->type = type;
            element->type2 = type2;
            element->frameIndex = 0xff;
            element->used = 1;
            element->unk_1a = gUIElementDefinitions[type].unk_4;
            // Permuter trickery. TODO find something more senseful?
            index = type;
            element->buttonElementId = gUIElementDefinitions[index].buttonElementId;
            return;
        }
    }
}

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
    element->x = gHUD.buttonX[element->type];
    element->y = gHUD.buttonY[element->type] - 0x20;
    element->action = 1;
    element->unk_0_1 = 1;
    sub_0801CAFC(element, element->type);
}

void ButtonUIElement_Action1(UIElement* element) {
    u32 MAX_MOVEMENT;
    s32 y;
    u32 y_diff;
    s32 x;
    u32 x_diff;

    MAX_MOVEMENT = (!element->type2) ? 4 : 8;

    if (element->type2 == 0 && (((gHUD.hideFlags >> element->type) & 1) || (gMessage.state & MESSAGE_ACTIVE) != 0)) {
        y = (s16)gHUD.buttonY[element->type] - 0x28;
    } else {
        y = (s16)gHUD.buttonY[element->type];
    }

    y -= (s16)element->y;
    y_diff = (y > 0) ? y : -y;

    if ((s32)MAX_MOVEMENT <= (s32)y_diff) {
        y_diff = MAX_MOVEMENT;
    }

    y_diff *= sub_08000E44(y);

    if (y_diff != 0) {
        element->y += y_diff;
    }

    x = (short)gHUD.buttonX[element->type];
    x -= (short)element->x;
    x_diff = (x < 0) ? -x : x;

    if ((int)MAX_MOVEMENT <= (int)x_diff) {
        x_diff = MAX_MOVEMENT;
    }

    x_diff *= sub_08000E44(x);

    if (x_diff != 0) {
        element->x += x_diff;
    }
}

u32 sub_0801CC80(UIElement* element) {
    u8 type = element->type;
    u32 buttonId = (type ^ 3) != 0;
    u32 itemId = gSave.stats.equipped[buttonId];
    if (ItemIsBottle(itemId)) {
        itemId = gSave.stats.bottles[itemId - ITEM_BOTTLE1];
    }
    return itemId;
}

void ItemUIElement(UIElement* element) {
    u32 itemMaxNumber;
    u32 itemId;
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

    psVar8 = &gHUD.unk_13;
    if (uiElementType != 0) {
        psVar8 = &gHUD.unk_14;
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
    u32 frameIndex;

    if (element->type2 == 9) {
        frameIndex = gHUD.rActionPlayerState;
        if (frameIndex == R_ACTION_NONE) {
            switch (gArea.portal_mode) {
                case 2:
                    frameIndex = R_ACTION_SHRINK;
                    break;
                case 3:
                    frameIndex = R_ACTION_GROW;
                    break;
                default:
                    frameIndex = gHUD.rActionInteractObject;
                    break;
            }
        }
        gHUD.buttonText[2] = frameIndex;
    }
    frameIndex = gHUD.buttonText[element->buttonElementId];
    element->unk_0_1 = 0;
    if (frameIndex != 0) {
        frameIndex += gUnk_080C9044[((SaveHeader*)0x2000000)->language];
        sub_0801CAFC(element, frameIndex);
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
        element = &gHUD.elements[index];
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
    if (((gHUD.hideFlags & HUD_HIDE_HEARTS) == 0) && ((gMessage.state & MESSAGE_ACTIVE) == 0)) {
        health = gHUD.health;
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
    if (gHUD.ezloNagFuncIndex == 1) {
        gHUD.ezloNagFuncIndex = 2;
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
        gHUD.ezloNagFuncIndex = 3;
        SoundReq(SFX_EZLO_UI);
    }
}

void EzloNagUIElement_Action2(UIElement* element) {
    if (gHUD.ezloNagFuncIndex >= 5 || (gMessage.state & MESSAGE_ACTIVE)) {
        element->action = 0;
        element->unk_0_1 = 0;
        return;
    }
    sub_0801CAD0(element);
    if (element->frameSettings == 1) {
        gHUD.ezloNagFuncIndex = 4;
    }
}
