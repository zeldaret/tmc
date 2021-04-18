#include "global.h"
#include "screen.h"
#include "screen.h"
#include "entity.h"
#include "player.h"
#include "room.h"
#include "main.h"
#include "flags.h"
#include "save.h"
#include "utils.h"
#include "fileScreen.h"
#include "menu.h"
#include "functions.h"
#include "structures.h"

extern u8 gArea;
extern Entity gPlayerEntity;
extern u32 gUnk_03003FC0;

extern u16 gWalletSizes[4];
extern u8 gUnk_080FCA84[];
extern u8 gUnk_080FCAC8[];
extern u8 gUnk_08127D30[];

void sub_080520C4();
void sub_08052418();

typedef struct {
    u8 _0[8];
    u8 _8[2];
    u16 _a[13];
} struct_080FCAA4;
static_assert(sizeof(struct_080FCAA4) == 0x24);

typedef struct {
    void* _0;
    void* _4;
    void* _8;
    u32 _c;
    u8 _10;
    u8 _11;
    u8 _12;
    u8 _13;
    u32 _14;
} struct_080FCA8C;
static_assert(sizeof(struct_080FCA8C) == 0x18);

extern struct_080FCA8C gUnk_080FCA8C;
extern struct_080FCAA4 gUnk_080FCAA4;

extern void CreateDialogBox();

void sub_0805212C(void) {
    if (gFadeControl.active)
        return;

    if (gMain.field_0x5 == 0) {
        if (gMenu.focusCoords[0] >= 0x26) {
            gMenu.focusCoords[0]--;
        } else {
            gMenu.transitionTimer--;
            if (gMenu.transitionTimer == 0) {
                sub_080520C4(2);
                sub_08052418(0, 0);
                gScreen.lcd.displayControl |= 0x600;
                gFadeControl.field_0x4 = 0xffff;
                DoFade(4, 0x10);
            }
        }
    } else {
        gMain.field_0x5--;
    }
}

void sub_080521A0(void) {
    s32 temp3;
    u32 temp2;

    if (gFadeControl.active)
        return;

    switch (gMenu.menuType) {
        case 0:
            gMenu.transitionTimer = 0x1e;
            gMenu.field_0x3 = 0;
            sub_080A7114(1);
            sub_08052418(0, 0);
            gFadeControl.field_0x4 = 0xffffffff;
            break;
        case 1:
            if (gMenu.transitionTimer == 0) {
                u32 temp = gMenu.field_0x3;
                switch (gInput.newKeys) {
                    case 0x40:
                        temp = 0;
                        break;
                    case 0x80:
                        temp = 1;
                        break;
                    case 0x1:
                        if (gMenu.field_0x3 != 0) {
                            temp2 = 4;
                        } else {
                            CreateDialogBox(8, 0);
                            temp2 = 2;
                        }
                        gMenu.transitionTimer = 0x3c;
                        sub_080A7114(temp2);
                        SoundReq(SFX_TEXTBOX_SELECT);
                        break;
                }
                if (gMenu.field_0x3 != temp) {
                    gMenu.field_0x3 = temp;
                    sub_08052418(0, temp);
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
                break;
            }
            gMenu.transitionTimer--;
            break;
        case 2:
            temp3 = HandleSave(0);
            gMenu.field_0x0 = temp3;
            switch (temp3) {
                case 1:
                    sub_080A7114(4);
                    break;
                case -1:
                    gMenu.transitionTimer = 0x3c;
                    CreateDialogBox(9, 0);
                    sub_080A7114(3);
                    break;
            }
            break;
        case 3:
            if (gMenu.transitionTimer != 0) {
                gMenu.transitionTimer--;
            } else if ((gInput.newKeys & 0xb) != 0) {
                sub_080A7114(0);
            }
            break;
        case 4:
        default:
            gScreen.lcd.displayControl = gScreen.lcd.displayControl & 0xfdff;
            sub_08050384();
            sub_080520C4(3);
            break;
    }
}

void sub_080522F4(void) {
    switch (gMenu.menuType) {
        case 0x0:
            gMenu.transitionTimer = 0x1e;
            gMenu.field_0x3 = 0;
            sub_080A7114(1);
            sub_08052418(1, 0);
            break;
        case 0x1:
            gScreen.lcd.displayControl |= 0x200;
            if (gMenu.transitionTimer != 0) {
                gMenu.transitionTimer--;
            } else {
                u32 temp = gMenu.field_0x3;
                switch (gInput.newKeys) {
                    case 0x40:
                        temp = 0;
                        break;
                    case 0x80:
                        temp = 1;
                        break;
                    case 0x1:
                        sub_080A7114(2);
                        SoundReq(SFX_TEXTBOX_SELECT);
                        if (temp == 0) {
                            DoFade(5, 8);
                        } else {
                            DoFade(7, 8);
                        }
                        break;
                }
                if (gMenu.field_0x3 != temp) {
                    gMenu.field_0x3 = temp;
                    sub_08052418(1, temp);
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
            }
            break;
        case 0x2:
        default:
            if (gFadeControl.active == 0) {
                if (gMenu.field_0x3 == 0) {
                    InitScreen(2);
                } else {
                    DoSoftReset();
                }
            }
            break;
    }
}

void nullsub_107(void) {
}

void sub_080523D4(void) {
    u32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x8600;
    gOamCmd.y = gMenu.focusCoords[0];
    for (i = 0; i < 8; ++i) {
        gOamCmd.x = gUnk_080FCA84[i];
        sub_080ADA14(0x1fd, i);
    }
}

// not sure how to approach this!
NONMATCH("asm/non_matching/game/sub_08052418.inc", void sub_08052418(int param_1, int param_2)) {
    int i;
    struct_080FCA8C temp;

    MemClear(&gBG1Buffer, 0x800);
    gUnk_020227E8._0[0].WORD = 0xf;
    gUnk_020227E8._0[2].WORD = 0xf;
    gUnk_020227E8._0[4].WORD = 0xf;
    gUnk_020227E8._0[6].WORD = 0xf;
    gUnk_020227E8._0[param_2 * 2].BYTES.byte1 = 1;
    MemCopy(&gUnk_080FCA8C, &temp, sizeof(temp));
    i = param_1 * 0xc;
    // temp._0 = gBG1Buffer[gUnk_080FCAA4._8[param_1]][gUnk_080FCAA4._0[gUnk_02000000->gameLanguage + i]] * 2;
    temp._13 = ((temp._13 & 0xfe) | gUnk_080FCAA4._8[i + 1]) & 1;
    sub_0805F46C(gUnk_080FCAA4._a[param_1], &temp);
    gScreen.bg.bg1xOffset = 1;
}
END_NONMATCH

void InitializePlayer(void) {
    Entity* pl;

    sub_080784C8();
    MemClear((void*)&gUnk_03000B80, sizeof(gUnk_03000B80));
    MemClear((void*)&gPlayerState, 0xb0);

    MemFill32(0xffffffff, &gPlayerState.field_0x40, 0x40);
    pl = &gPlayerEntity;
    MemClear((void*)pl, 0x88);
    gRoomControls.cameraTarget = pl;
    gPlayerState.playerAction = gUnk_080FCAC8[gScreenTransition.field_0xf];
    if (!CheckGlobalFlag(0x14)) {
        gPlayerState.flags.all |= 8;
    }
    switch (gScreenTransition.field_0xf) {
        case 0x2:
        case 0x6:
            pl->height.HALF.HI = -0xc0;
            break;
        case 0x4:
            gPlayerState.field_0x34[4] = 0x10;
            pl->direction = gScreenTransition.playerState << 2;
        case 0x3:
            pl->speed = 0xe0;
            break;
        case 0x7:
        case 0x8:
            gPlayerState.field_0x34[4] = 1;
            gPlayerState.field_0x34[5] = gScreenTransition.field_0xf;
            break;
        case 0xa:
            gPlayerState.field_0x34[4] = 1;
            break;
        case 0xb:
            gPlayerState.field_0x34[4] = 3;
            break;
        case 0xc:
            gPlayerState.field_0x34[4] = 4;
    }
    pl->kind = 1;
    pl->flags |= 0xa0;
    pl->spritePriority.b0 = 4;
    pl->currentHealth = gSave.stats.health;
    pl->x.HALF.HI = gScreenTransition.playerStartPos.HALF.x;
    pl->y.HALF.HI = gScreenTransition.playerStartPos.HALF.y;
    pl->animationState = gScreenTransition.playerState;
    pl->collisionLayer = gScreenTransition.playerLayer;
    UpdateSpriteForCollisionLayer(pl);
    AppendEntityToList(pl, 1);
    RegisterPlayerHitbox();
}

bool32 sub_08052620(u32 r0) {
    return gArea == 0x81;
}

bool32 sub_08052638(u32 r0) {
    return gUnk_08127D30[r0 * 4] == 0x81;
}

u32 sub_08052654() {
    return (gArea >> 7) & 1;
}

u32 CheckIsDungeon(void) {
    return (gArea >> 2) & 1;
}

u32 sub_08052670() {
    return (gArea >> 4) & 1;
}

u32 sub_08052680() {
    return (gArea >> 6) & 1;
}

u32 sub_08052690() {
    return (gArea >> 3) & 1;
}

s32 ModHealth(s32 deltaHealth) {
    s32 newHealth;

    newHealth = gStats.health + deltaHealth;
    if (newHealth < 0) {
        newHealth = 0;
    }
    if (gStats.maxHealth < newHealth) {
        newHealth = (u32)gStats.maxHealth;
    }
    gStats.health = newHealth;
    gPlayerEntity.currentHealth = newHealth;
    return newHealth;
}

void ModRupees(s32 rupeeDelta) {
    s32 newRupeeCount;
    Stats* s = &gStats;

    newRupeeCount = s->rupees + rupeeDelta;
    if (newRupeeCount < 0) {
        newRupeeCount = 0;
    } else {
        if (newRupeeCount > gWalletSizes[s->walletType * 2]) {
            newRupeeCount = gWalletSizes[s->walletType * 2];
        }
    }
    s->rupees = newRupeeCount;
}
