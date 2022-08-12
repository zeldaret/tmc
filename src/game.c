/**
 * @file game.c
 * @ingroup Tasks
 *
 * @brief Game task
 */

#include "global.h"
#include "area.h"
#include "asm.h"
#include "common.h"
#include "droptables.h"
#include "enemy.h"
#include "entity.h"
#include "fileselect.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "itemMetaData.h"
#include "main.h"
#include "menu.h"
#include "message.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "save.h"
#include "screen.h"
#include "sound.h"
#include "subtask.h"
#include "itemMetaData.h"
#include "player.h"
#include "transitions.h"
#include "roomid.h"
#include "ui.h"
#include "kinstone.h"
#include "manager/diggingCaveEntranceManager.h"

// Game task

typedef void(GameState)(void);
typedef void(GameMainState)(void);

static GameState GameTask_Transition;
static GameState GameTask_Init;
static GameState GameTask_Exit;
static GameState GameTask_Main;

static GameMainState GameMain_InitRoom;
static GameMainState GameMain_ChangeRoom;
static GameMainState GameMain_Update;
static GameMainState GameMain_ChangeArea;
GameMainState GameMain_MinishPortal;
static GameMainState GameMain_BarrelUpdate;
/*static GameMainState 00000000;*/
GameMainState GameMain_Subtask;

// Cutscene subtask

typedef void(AuxCutsceneState)(void);
typedef void(CutsceneMainState)(void);

static AuxCutsceneState AuxCutscene_Init;
static AuxCutsceneState AuxCutscene_Main;
static AuxCutsceneState AuxCutscene_Exit;

CutsceneMainState CutsceneMain_Init;
CutsceneMainState CutsceneMain_Update;
CutsceneMainState CutsceneMain_Exit;

// Game Over task

typedef void(GameOverState)(void);

static GameOverState GameOver_Init;
static GameOverState GameOver_FadeIn;
static GameOverState GameOver_TextMove;
static GameOverState GameOver_Update;
static GameOverState GameOver_Exit;

extern u8 gUpdateVisibleTiles;

extern u16 gUnk_020178E0[];
extern u8 gUnk_02024090[];
extern const u16 gUnk_080FD5A8[];

extern void** gAreaTilesets[];
extern void** gAreaRoomMaps[];
extern void* gAreaMetatiles[];
extern void* gUnk_080B755C[];
extern void** gAreaTable[];

extern void FinalizeSave(void);
extern void ClearArmosData(void);
extern void ClearRoomMemory(void);
extern void ClearMenuSavestate(void);
extern void ResetUI(void);
extern void sub_0806FD8C(void);
extern void sub_080300C4(void);
extern u32 sub_0805BC04(void);
extern void DeleteSleepingEntities(void);
extern bool32 UpdateLightLevel(void);
extern void sub_080185F8(void);
extern void UpdateDoorTransition(void);
extern bool32 CheckInitPortal(void);
extern void UpdateCarriedObject(void);
extern void CollisionMain(void);
extern void sub_0805BB74(s32);
extern void CreateZeldaFollower(void);
extern void LoadRoomGfx(void);
extern void RecycleEntities(void);
extern void sub_0804AF90(void);
extern void CallRoomProp6(void);
extern void UpdateScroll(void);
extern void UpdateBgAnimations(void);
extern void CleanUpGFXSlots(void);
extern void sub_080ADE24(void);
extern void sub_0801AE44(u32);
extern void GenerateAreaHint(void);
extern void ForceSetPlayerState(u32);
extern void UpdateRoomTracker(void);
extern void InitScriptData(void);
extern void sub_08054524(void);
extern void sub_080186D4(void);
extern void sub_0806F364(void);
extern void sub_08052FF4(u32 area, u32 room);
extern void CloneMapData(void);
extern void InitializeCamera(void);
extern void SetBGDefaults(void);
extern void LoadItemGfx(void);

static void LoadRoomBgm(void);
static void sub_08052010(void);
static void ResetTmpFlags(void);
static void InitializeEntities(void);
static void CheckAreaDiscovery(void);
static void CreateMiscManager(void);
static void UpdateWindcrests(void);
static void UpdateFakeScroll(void);
static void UpdatePlayerMapCoords(void);
static void sub_08052C3C(void);
static void UpdateTimerCallbacks(void);
static void sub_08051D98(void);
static void sub_08051DCC(void);
static bool32 CheckGameOver(void);
static bool32 CheckRoomExit(void);
static void UpdatePlayerRoomStatus(void);
static void sub_0805329C(void);
static void InitializePlayer(void);
/* static */ void sub_08051F9C(u32 a1, u32 a2, u32 a3, u32 a4);
static void DrawGameOverText(void);
static u32 StairsAreValid(void);
static void ClearFlagArray(const u16*);
static void DummyHandler(u32* a1);
static void sub_08053434(u32* a1);
static void sub_080534E4(u32* a1);
static void InitAllRoomResInfo(void);
static void InitRoomResInfo(RoomResInfo* info, RoomHeader* hdr, u32 area, u32 room);
static void sub_080532E4(void);
static void ResetTimerFlags(void);
bool32 ItemIsBottle(u32);
void ModArrows(s32);
void ModShells(s32);

typedef struct {
    u8 dest_off[8];
    u8 _8;
    u8 right_align;
    u16 _a;
} PopupOption;

typedef struct {
    u8 area;
    RoomID room : 8;
    u8 _2;
    u8 _3;
    u16 x;
    u16 y;
} CutsceneData;
static const CutsceneData sCutsceneData[];

extern u8 gUnk_0200AF14;
extern u8 gUnk_080FE1C6[];
extern void (*const gUnk_080FE2AC[])(void);

extern u8 gUnk_080FE1DD[];

extern void (*const gUnk_080FE2A0[])(void);

extern void (*const gUnk_080FCBB4[])(void);

extern const EntityData gUnk_080FCB94[];

void sub_08052004(void);

extern void (*const gUnk_080FCCFC[])(void);

extern void (*const gUnk_080FCD38[])(void);

extern const EntityData gUnk_080FCC54[];

void sub_08051FF0(void);

extern void (*const gUnk_080FCD40[])(void);

extern const EntityData gUnk_080FCBC4[];
void sub_08051F78(void);

extern const EntityData gUnk_080FCC14[];

extern void DeleteAllEntities(void);

extern void (*const gUnk_080FCDD4[])(void);

extern const EntityData gUnk_080FCD84[];

extern void (*const gUnk_080FCEB0[])(void);

extern const EntityData gUnk_080FCDE0[];

extern void (*const gUnk_080FCEEC[])(void);

extern const EntityData gUnk_080FCEBC[];

extern void (*const gUnk_080FCEF8[])(void);

extern void (*const gUnk_080FCFA4[])(void);

extern void* GetRoomProperty(u32, u32, u32);

extern void (*const gUnk_080FD108[])(void);

extern const EntityData* gUnk_080FCFB8[];

extern void (*const gUnk_080FD138[])(void);

extern const u16 gUnk_080FD964[];
extern const u8 gUnk_080FCF04[];

extern void ClearBgAnimations(void);

void sub_08054974(s32, s32);
void sub_080548E8(void);

extern void sub_0806F38C(void);

extern void sub_08018710(u32);

typedef struct {
    Font* font;
    u16 width;
    u16 height;
    u16 transitionTimer;
    u16 fadeSpeed;
} struct_080FCCB4;

extern struct_080FCCB4 gUnk_080FCCB4[];

void GameTask(void) {
    static GameState* const sStates[] = {
        GameTask_Transition,
        GameTask_Init,
        GameTask_Main,
        GameTask_Exit,
    };

    gRoomTransition.frameCount++;
    sStates[gMain.state]();
#ifdef DEMO_USA
    if (gSave.demo_timer != 0) {
        if (--gSave.demo_timer == 0) {
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 2);
            gMain.state = GAMETASK_EXIT;
        }
    }
#endif
}

static void GameTask_Transition(void) {
    // wait for file select to fade out
    if (gFadeControl.active)
        return;

    DispReset(1);
    InitSoundPlayingInfo();
    zMallocInit();
    ResetUI();
    ClearMenuSavestate();
    MemClear(&gRoomTransition, sizeof(gRoomTransition));
    ClearRoomMemory();
    ClearArmosData();

    FinalizeSave();
    // spawn in with saved status
    MemCopy(&gSave.saved_status, &gRoomTransition.player_status, sizeof(gRoomTransition.player_status));
    gRoomTransition.type = TRANSITION_FADE_BLACK_SLOW;
    ResetTmpFlags();

    gMain.state = GAMETASK_INIT;
    gMain.substate = GAMEMAIN_INITROOM;
}

static void GameTask_Init(void) {
    DispReset(1);
    gFadeControl.mask = 0xffffffff;
    MemClear(&gOAMControls, 0xB74);
    MemClear(&gUI, sizeof(gUI));
    EraseAllEntities();
    SetBGDefaults();
    ClearTilemaps();
    ResetPalettes();
    ResetPaletteTable(1);
    sub_0806FD8C();
    gRoomControls.area = gRoomTransition.player_status.area_next;
    gRoomControls.room = gRoomTransition.player_status.room_next;
    LoadGfxGroups();
    gGFXSlots.unk0 = 1;
    gMain.state = GAMETASK_MAIN;
}

static void GameTask_Main(void) {
    static GameMainState* const sStates[] = {
        GameMain_InitRoom,
        GameMain_ChangeRoom,
        GameMain_Update,
        GameMain_ChangeArea,
        GameMain_MinishPortal,
        GameMain_BarrelUpdate,
        0,
        GameMain_Subtask,
    };
    sStates[gMain.substate]();
}

static void GameMain_InitRoom(void) {
    SetInitializationPriority();
    gScreen.lcd.displayControl = DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    gMain.substate = GAMEMAIN_CHANGEROOM;
    gRoomTransition.transitioningOut = 0;
    gRoomTransition.field_0x4[0] = 0;
    gRoomTransition.field_0x4[1] = 0;
    MessageInitialize();
    InitRoom();
    InitUI(FALSE);
    InitializeEntities();
#ifndef EU
    sub_0801855C();
#endif
}

static void GameMain_ChangeRoom(void) {
    UpdateEntities();
    if (!UpdateLightLevel())
        UpdateScroll();
    UpdateBgAnimations();
    UpdateScrollVram();
    DrawUI();
    UpdateManagers();
    FlushSprites();
    DrawUIElements();
    UpdateCarriedObject();
    DrawEntities();
    CopyOAM();

    if (gFadeControl.active || gRoomControls.reload_flags != 0)
        return;

    UpdateFakeScroll();
    if (gArea.bgm != gArea.queued_bgm) {
        gArea.bgm = gArea.queued_bgm;
        SoundReq(gArea.queued_bgm | SONG_PLAY_VOL_RESET);
    }

    DeleteSleepingEntities();

    if (sub_0805BC04())
        return;

    UpdatePlayerMapCoords();
    ResetSystemPriority();
    UpdateWindcrests();
    sub_080300C4();
    gMain.substate = GAMEMAIN_UPDATE;
    SetPlayerControl(0);
    gPauseMenuOptions.disabled = 0;
#if defined(USA) || defined(DEMO_USA)
    if (gArea.unk28.inventoryGfxIdx != 0xff) {
        sub_0801855C();
    }
    CreateMiscManager();
    CheckAreaDiscovery();
#elif defined(EU)
    CheckAreaDiscovery();
    sub_0801855C();
#elif defined(JP)
    CheckAreaDiscovery();
    if (gArea.unk28.inventoryGfxIdx != 0xff) {
        sub_0801855C();
    }
#elif defined(DEMO_JP)
    if (gRoomTransition.field_0x2c[4])
        CheckAreaDiscovery();
    if (gArea.unk28.inventoryGfxIdx != 0xff) {
        sub_0801855C();
    }
    CreateMiscManager();
#endif
    if (!gRoomVars.field_0x0) {
        RequestPriorityDuration(NULL, 1);
    }
}

static void GameMain_Update(void) {
    if (CheckInitPauseMenu() || CheckInitPortal()) {
        return;
    }
    UpdateTimerCallbacks();

    // leave early if player is now entering a portal
    if (gMain.substate != GAMEMAIN_UPDATE) {
        return;
    }

    if ((gMessage.doTextBox & 0x7f) || gPriorityHandler.priority_timer != 0)
        sub_08078B48();

    FlushSprites();
    UpdateEntities();
    UpdateDoorTransition();
    CollisionMain();
    UpdateScroll();
    UpdateBgAnimations();
    UpdateScrollVram();
    sub_08052C3C();
    DrawUI();
    UpdateManagers();
    DrawUIElements();
    UpdateCarriedObject();
    DrawEntities();
    CheckRoomExit();
    UpdatePlayerMapCoords();
    CheckGameOver();
    sub_080185F8();
    CopyOAM();
    switch (gRoomControls.reload_flags) {
        case RELOAD_ALL:
            gPlayerState.queued_action = PLAYER_ROOMTRANSITION;
            gMain.substate = GAMEMAIN_CHANGEROOM;
            SetRoomReloadPriority();
            sub_08051D98();
            break;
        case RELOAD_ENTITIES:
            gPlayerState.queued_action = PLAYER_ROOMTRANSITION;
            gMain.substate = GAMEMAIN_CHANGEROOM;
            SetRoomReloadPriority();
            sub_08051DCC();
            break;
    }
}

static void GameMain_BarrelUpdate(void) {
    if (CheckInitPauseMenu())
        return;

    UpdateEntities();
    CollisionMain();
    DrawUI();
    UpdateManagers();
    FlushSprites();
    DrawUIElements();
    UpdateCarriedObject();
    DrawEntities();
    CheckRoomExit();
    CheckGameOver();
    CopyOAM();
    if (!gFadeControl.active)
        ResetSystemPriority();
}

static void GameMain_ChangeArea(void) {
    FlushSprites();
    DrawUIElements();
    DrawEntities();
    gMain.pad = 1;
    CopyOAM();
    if (!gFadeControl.active) {
        DispReset(1);
        gMain.state = GAMETASK_INIT;
        gMain.substate = GAMEMAIN_INITROOM;
        gRoomTransition.transitioningOut = 1;
    }
}

static void GameTask_Exit(void) {
#ifdef DEMO_USA
    if (!gFadeControl.active)
        DoSoftReset();
#else
    SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 8);
    SetTask(TASK_GAMEOVER);
#endif
}

static void InitializeEntities(void) {
    sub_08052EA0();
    sub_0804AF90();
    CallRoomProp6();
    InitializePlayer();
    gDiggingCaveEntranceTransition.entrance = NULL;
    InitializeCamera();
    gUpdateVisibleTiles = 1;
    LoadRoomBgm();
    SetColor(0, 0);
    LoadRoom();
    CreateZeldaFollower();
    CallRoomProp5And7();
    sub_0805329C();
    UpdateScrollVram();
    sub_0805BB74(-1);
    UpdatePlayerRoomStatus();
}

static void sub_08051D98(void) {
    sub_08052EA0();
    gRoomVars.field_0x0 = 1;

    // remove old entities, unless persistent
    RecycleEntities();

    sub_0804AF90();
    CallRoomProp6();
    LoadRoomGfx();
    LoadRoomBgm();
    LoadRoom();
    CallRoomProp5And7();
    SetPlayerControl(1);
}

static void sub_08051DCC(void) {
    gRoomControls.area = gRoomTransition.player_status.area_next;
    gRoomControls.room = gRoomTransition.player_status.room_next;
    RoomExitCallback();
    gRoomTransition.type = TRANSITION_3;
    InitRoom();
    sub_08052EA0();
    RecycleEntities();
    sub_0804AF90();
    CallRoomProp6();
    LoadRoomBgm();
}

static void UpdateWindcrests(void) {
    if (AreaIsOverworld()) {
        struct_08127F94* i;
        u32 hi_x, hi_y;
        s32 x, y;

        x = gPlayerEntity.x.HALF.HI;
        if (x < 0)
            x += 0xf;
        hi_x = x >> 4;

        y = gPlayerEntity.y.HALF.HI;
        if (y < 0)
            y += 0xf;
        hi_y = y >> 4;

        for (i = gUnk_08127F94; i->_0 != 0xFF; i++) {
            if (i->_0 <= hi_x && i->_2 >= hi_x && i->_1 <= hi_y && i->_3 >= hi_y) {
                gSave.windcrests |= 1 << i->_4;
                break;
            }
        }
    }
}

void Subtask_AuxCutscene(void) {
    static AuxCutsceneState* const sStates[] = {
        AuxCutscene_Init,
        AuxCutscene_Main,
        AuxCutscene_Exit,
    };

    sStates[gMenu.menuType]();
}

static void AuxCutscene_Init(void) {
    const CutsceneData* p = &sCutsceneData[gUI.field_0x3];
    gRoomControls.area = p->area;
    gRoomControls.room = p->room;
    LoadGfxGroups();
    gArea.localFlagOffset = GetFlagBankOffset(gRoomControls.area);
    SetCurrentRoomPropertyList(p->area, p->room);
    LoadAuxiliaryRoom(p->area, p->room);
    gRoomControls.scroll_x = gRoomControls.origin_x + p->x;
    gRoomControls.scroll_y = gRoomControls.origin_y + p->y;
    gMenu.field_0x0 = p->_2;
    gMenu.field_0x3 = p->_3 & 0xf;
    gMenu.field_0xc = (void*)p;
    gMenu.menuType++;
    gMenu.overlayType = 0;
    gMenu.transitionTimer = 300;
    AuxCutscene_Main(); // init
}

static void AuxCutscene_Main(void) {
    static CutsceneMainState* const sStates[] = {
        CutsceneMain_Init,
        CutsceneMain_Update,
        CutsceneMain_Exit,
    };

    sStates[gMenu.field_0x0]();
    FlushSprites();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    UpdateScroll();
    UpdateBgAnimations();
    UpdateManagers();
    UpdateScrollVram();
}

static const CutsceneData sCutsceneData[] = {
    { AREA_MINISH_WOODS, 0, 0, 0, 336, 528 },
    { AREA_HYRULE_FIELD, 1, 1, 0, 472, 312 },
    { AREA_HYRULE_CASTLE, 2, 1, 1, 16, 16 },
    { AREA_SANCTUARY, 2, 1, 2, 0, 0 },
    { AREA_EZLO_CUTSCENE, 0, 1, 3, 0, 0 },
    { AREA_HOUSE_INTERIORS_2, 16, 1, 4, 0, 0 },
    { AREA_DARK_HYRULE_CASTLE_OUTSIDE, 0, 1, 5, 0, 40 },
    { AREA_FORTRESS_OF_WINDS, 28, 2, 0, 0, 0 },
    { AREA_FORTRESS_OF_WINDS, 29, 2, 1, 0, 0 },
    { AREA_DARK_HYRULE_CASTLE, 14, 2, 2, 16, 16 },
};

static void AuxCutscene_Exit(void) {
    u32 flag = sCutsceneData[gUI.field_0x3]._3;
    if (flag & 0xF0) {
        MenuFadeIn(2, flag >> 4);
    } else {
        gUI.nextToLoad = 3;
        SetFadeInverted(0x10);
        MessageInitialize();
    }
}

void sub_08051F78(void) {
    u32 idx = gUI.field_0x3;
    const CutsceneData* p = &sCutsceneData[idx];
    sub_08051F9C(p->area, p->room, p->x, p->y);
}

void sub_08051F9C(u32 a1, u32 a2, u32 a3, u32 a4) {
    u32 tmp = gScreen.lcd.displayControl & (DISPCNT_WIN0_ON | DISPCNT_WIN1_ON);
    sub_08052FF4(a1, a2);
    gRoomControls.scroll_x = gRoomControls.origin_x + a3;
    gRoomControls.scroll_y = gRoomControls.origin_y + a4;
    InitializeCamera();
    gUpdateVisibleTiles = 1;
    gUsedPalettes = 0;
    gScreen.lcd.displayControl |= tmp;
}

void sub_08051FF0(void) {
    sub_0804B0B0(gMenu.field_0xc[0], gMenu.field_0xc[1]);
}

void sub_08052004(void) {
    gMenu.menuType = 2;
}

static void sub_08052010(void) {
    InitSoundPlayingInfo();
    MessageInitialize();
    DispReset(1);
    MemClear(gBG1Buffer, sizeof(gBG1Buffer));
    MemClear(gBG2Buffer, sizeof(gBG2Buffer));
    sub_080A4D34();
    LoadPaletteGroup(0xA);
    SetColor(0, 0);
    LoadGfxGroup(4);
    MemClear((void*)0x06000000, 0x20);
    MemClear(&gGenericMenu, sizeof(gGenericMenu));
    gScreen.lcd.displayControl |= DISPCNT_OBJ_ON;
    gScreen.bg1.control = BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(28) | BGCNT_CHARBASE(0);
    gScreen.bg2.control = BGCNT_PRIORITY(1) | BGCNT_SCREENBASE(29) | BGCNT_CHARBASE(1);
    gScreen.bg1.updated = 1;
    gScreen.bg2.updated = 1;
}

void GameOverTask(void) {
    static GameOverState* const sStates[] = {
        GameOver_Init, GameOver_FadeIn, GameOver_TextMove, GameOver_Update, GameOver_Exit,
    };

    sStates[gMain.state]();
    if (gMain.state != GAMETASK_TRANSITION) {
        FlushSprites();
        DrawGameOverText();
        CopyOAM();
    }
}

static void switch_state(u32 idx) {
    gMain.state = idx;
    SetMenuType(0);
}

static void GameOver_Init(void) {
    if (gFadeControl.active)
        return;
    sub_08052010();
    gGenericMenu.unk10.a[0] = 80;
    gMenu.transitionTimer = 60;
    gSave.stats.health = 24;
    gMain.field_0x5 = 60;
    SoundReq(BGM_GAMEOVER);
    SetFadeInverted(4);
    gFadeControl.mask = 0xFFFF0001;
    switch_state(GAMETASK_INIT);
}

static void GameOver_FadeIn(void) {
    if (gFadeControl.active)
        return;

    if (gMain.field_0x5 == 0) {
        if (gGenericMenu.unk10.a[0] >= 38) {
            gGenericMenu.unk10.a[0]--;
        } else {
            gMenu.transitionTimer--;
            if (gMenu.transitionTimer == 0) {
                switch_state(GAMETASK_MAIN);
#if defined(DEMO_USA) || defined(DEMO_JP)
                SoundReq(SONG_VOL_FADE_OUT);
                SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
#else
                SetPopupState(0, 0);
                gScreen.lcd.displayControl |= DISPCNT_BG1_ON | DISPCNT_BG2_ON;
                gFadeControl.mask = 0x0000ffff;
                SetFade(FADE_INSTANT, 16);
#endif
            }
        }
    } else {
        gMain.field_0x5--;
    }
}

static void GameOver_TextMove(void) {
#if defined(DEMO_USA) || defined(DEMO_JP)
    if (gFadeControl.active == 0) {
        DoSoftReset();
    }
}
#else
    s32 temp3;
    u32 temp2;

    if (gFadeControl.active)
        return;

    switch (gMenu.menuType) {
        case 0:
            gMenu.transitionTimer = 30;
            gMenu.field_0x3 = 0;
            SetMenuType(1);
            SetPopupState(0, 0);
            gFadeControl.mask = 0xffffffff;
            return;
        case 1:
            if (gMenu.transitionTimer == 0) {
                u32 temp = gMenu.field_0x3;
                switch (gInput.newKeys) {
                    case DPAD_UP:
                        temp = 0;
                        break;
                    case DPAD_DOWN:
                        temp = 1;
                        break;
                    case A_BUTTON:
                        if (gMenu.field_0x3 != 0) {
                            temp2 = 4;
                        } else {
                            CreateDialogBox(8, 0);
                            temp2 = 2;
                        }
                        gMenu.transitionTimer = 60;
                        SetMenuType(temp2);
                        SoundReq(SFX_TEXTBOX_SELECT);
                        break;
                }
                if (gMenu.field_0x3 != temp) {
                    gMenu.field_0x3 = temp;
                    SetPopupState(0, temp);
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
                return;
            }
            gMenu.transitionTimer--;
            return;
        case 2:
            temp3 = HandleSave(0);
            gMenu.field_0x0 = temp3;
            switch (temp3) {
                case 1:
                    SetMenuType(4);
                    break;
                case -1:
                    gMenu.transitionTimer = 60;
                    CreateDialogBox(9, 0);
                    SetMenuType(3);
                    break;
            }
            return;
        case 3:
            if (gMenu.transitionTimer != 0) {
                gMenu.transitionTimer--;
            } else if (gInput.newKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) {
                SetMenuType(0);
            }
            return;
        case 4:
        default:
            gScreen.lcd.displayControl &= ~DISPCNT_BG1_ON;
            sub_08050384();
            switch_state(GAMETASK_EXIT);
            return;
    }
}
#endif

static void GameOver_Update(void) {
    switch (gMenu.menuType) {
        case 0x0:
            gMenu.transitionTimer = 30;
            gMenu.field_0x3 = 0;
            SetMenuType(1);
            SetPopupState(1, 0);
            return;
        case 0x1:
            gScreen.lcd.displayControl |= DISPCNT_BG1_ON;
            if (gMenu.transitionTimer != 0) {
                gMenu.transitionTimer--;
                return;
            } else {
                u32 temp = gMenu.field_0x3;
                switch (gInput.newKeys) {
                    case DPAD_UP:
                        temp = 0;
                        break;
                    case DPAD_DOWN:
                        temp = 1;
                        break;
                    case A_BUTTON:
                        SetMenuType(2);
                        SoundReq(SFX_TEXTBOX_SELECT);
                        if (temp == 0) {
                            SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
                        } else {
                            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 8);
                        }
                        break;
                }
                if (gMenu.field_0x3 != temp) {
                    gMenu.field_0x3 = temp;
                    SetPopupState(1, temp);
                    SoundReq(SFX_TEXTBOX_CHOICE);
                }
            }
            return;
        case 0x2:
        default:
            if (gFadeControl.active == 0) {
                if (gMenu.field_0x3 == 0) {
                    SetTask(TASK_GAME);
                } else {
                    DoSoftReset();
                }
            }
            return;
    }
}

// Unused, since task is set above
// if we got here, it would be a softlock
static void GameOver_Exit(void) {
}

static void DrawGameOverText(void) {
    static const u8 sOffsets[] = {
        48, 68, 88, 108, 137, 156, 174, 192,
    };

    u32 i;

    gOamCmd._4 = 0;
    gOamCmd._6 = 0;
    gOamCmd._8 = 0x8600;
    gOamCmd.y = gGenericMenu.unk10.a[0];
    for (i = 0; i < 8; ++i) {
        gOamCmd.x = sOffsets[i];
#ifdef EU
        DrawDirect(0x1fc, i);
#else
        DrawDirect(0x1fd, i);
#endif
    }
}

void SetPopupState(u32 type, u32 choice_idx) {
    static const Font sDefaultFont = {
        .dest = gBG1Buffer,
        .gfx_dest = (u16*)0x06006000,
        .buffer_loc = gTextGfxBuffer,
        ._c = 0,
        .gfx_src = 0xD300,
        .width = 0xE0,
        .right_align = 0,
        .sm_border = 0,
        .unused = 0,
        .draw_border = 0,
        .border_type = 0,
        .fill_type = 6,
        .charColor = 4,
        ._16 = 1,
        .stylized = 0,
    };
    static const PopupOption sPopupOptions[] = {
        { { 11, 11, 11, 10, 11, 10, 10, 0 }, 8, 0, 16 },
        { { 10, 11, 11, 9, 11, 9, 9, 0 }, 8, 0, 17 },
        { { 15, 15, 15, 15, 15, 15, 15, 0 }, 5, 1, 13 },
    };

    Font font;
    const PopupOption* opt;
    u32 fakematch;

    MemClear(gBG1Buffer, sizeof gBG1Buffer);
    gUnk_020227E8[0]._0.WORD = 0xf;
    gUnk_020227E8[1]._0.WORD = 0xf;
    gUnk_020227E8[2]._0.WORD = 0xf;
    gUnk_020227E8[3]._0.WORD = 0xf;
    *(&gUnk_020227E8[choice_idx]._0.BYTES.byte0 + 1) = fakematch = 1;

    MemCopy(&sDefaultFont, &font, sizeof font);
    opt = &sPopupOptions[type];
    font.dest = sDefaultFont.dest + (opt->dest_off[gSaveHeader->language] + opt->_8 * 32);
    font.right_align = opt->right_align;
    sub_0805F46C(opt->_a, &font);
    gScreen.bg1.updated = fakematch;
}

static void InitializePlayer(void) {
    static const u8 sPlayerSpawnStates[] = {
        [PL_SPAWN_DEFAULT] = PLAYER_INIT,
        [PL_SPAWN_MINISH] = PLAYER_MINISH,
        [PL_SPAWN_DROP] = PLAYER_INIT,
        [PL_SPAWN_WALKING] = PLAYER_ROOMTRANSITION,
        [PL_SPAWN_STEP_IN] = PLAYER_ROOM_EXIT,
        [PL_SPAWN_SLEEPING] = PLAYER_SLEEP,
        [PL_SPAWN_DROP_MINISH] = PLAYER_MINISH,
        [PL_SPAWN_STAIRS_ASCEND] = PLAYER_USEENTRANCE,
        [PL_SPAWN_STAIRS_DESCEND] = PLAYER_USEENTRANCE,
        [PL_SPAWN_9] = PLAYER_MINISH,
        [PL_SPAWN_PARACHUTE_FORWARD] = PLAYER_WARP,
        [PL_SPAWN_PARACHUTE_UP] = PLAYER_WARP,
        [PL_SPAWN_FAST_TRAVEL] = PLAYER_WARP,
    };

    Entity* pl;

    sub_080784C8();
    MemClear(&gActiveItems, sizeof(gActiveItems));
    MemClear(&gPlayerState, sizeof(gPlayerState));
    MemFill32(0xffffffff, &gPlayerState.path_memory, sizeof(gPlayerState.path_memory));
    MemClear(&gPlayerEntity, sizeof(gPlayerEntity));

    pl = &gPlayerEntity;

    gRoomControls.camera_target = pl;
    gPlayerState.queued_action = sPlayerSpawnStates[gRoomTransition.player_status.spawn_type];
    if (!CheckGlobalFlag(EZERO_1ST)) {
        gPlayerState.flags |= PL_NO_CAP;
    }
    switch (gRoomTransition.player_status.spawn_type) {
        case PL_SPAWN_DROP:
        case PL_SPAWN_DROP_MINISH:
            pl->z.HALF.HI = -0xc0;
            break;
        case PL_SPAWN_STEP_IN:
            gPlayerState.field_0x38 = 16;
            pl->direction = Direction8FromAnimationState(gRoomTransition.player_status.start_anim);
        case PL_SPAWN_WALKING:
            pl->speed = 224;
            break;
        case PL_SPAWN_STAIRS_ASCEND:
        case PL_SPAWN_STAIRS_DESCEND:
            gPlayerState.field_0x38 = 1;
            gPlayerState.field_0x39 = gRoomTransition.player_status.spawn_type;
            break;
        case PL_SPAWN_PARACHUTE_FORWARD:
            gPlayerState.field_0x38 = 1;
            break;
        case PL_SPAWN_PARACHUTE_UP:
            gPlayerState.field_0x38 = 3;
            break;
        case PL_SPAWN_FAST_TRAVEL:
            gPlayerState.field_0x38 = 4;
    }

    pl->kind = PLAYER;
    pl->flags |= ENT_COLLIDE | ENT_PERSIST;
    pl->spritePriority.b0 = 4;
    pl->health = gSave.stats.health;
    pl->x.HALF.HI = gRoomTransition.player_status.start_pos_x;
    pl->y.HALF.HI = gRoomTransition.player_status.start_pos_y;
    pl->animationState = gRoomTransition.player_status.start_anim;
    pl->collisionLayer = gRoomTransition.player_status.layer;
    UpdateSpriteForCollisionLayer(pl);
    AppendEntityToList(pl, 1);
    RegisterPlayerHitbox();
}

bool32 AreaIsOverworld(void) {
#ifdef EU
    return gArea.areaMetadata == 0x01;
#else
    return gArea.areaMetadata == 0x81;
#endif
}

bool32 CheckAreaOverworld(u32 area) {
#if EU
    return gAreaMetadata[area].flags == 0x01;
#else
    return gAreaMetadata[area].flags == 0x81;
#endif
}

#ifndef EU
bool32 AreaAllowsWarp(void) {
    return (gArea.areaMetadata >> 7) & 1;
}
#endif

bool32 AreaIsDungeon(void) {
    return (gArea.areaMetadata >> 2) & 1;
}

bool32 AreaHasEnemies(void) {
    return (gArea.areaMetadata >> 4) & 1;
}

bool32 AreaHasNoEnemies(void) {
    return (gArea.areaMetadata >> 6) & 1;
}

bool32 AreaHasMap(void) {
    return (gArea.areaMetadata >> 3) & 1;
}

s32 ModHealth(s32 delta) {
    s32 newHealth;
    Stats* stats = &gSave.stats;

    newHealth = stats->health + delta;
    if (newHealth < 0) {
        newHealth = 0;
    }
    if (stats->maxHealth < newHealth) {
        newHealth = (u32)stats->maxHealth;
    }
    stats->health = newHealth;
    gPlayerEntity.health = newHealth;
    return newHealth;
}

void ModRupees(s32 delta) {
    s32 newRupeeCount;
    Stats* s = &gSave.stats;

    newRupeeCount = s->rupees + delta;
    if (newRupeeCount < 0) {
        newRupeeCount = 0;
    } else {
        if (newRupeeCount > gWalletSizes[s->walletType * 2]) {
            newRupeeCount = gWalletSizes[s->walletType * 2];
        }
    }
    s->rupees = newRupeeCount;
}

void sub_080526F8(s32 a1) {
    if (AreaHasKeys()) {
        u8* p = &gSave.unk45C[gArea.dungeon_idx];
        if (*p + a1 < 0)
            *p = 0;
        else
            *p += a1;
    }
}

bool32 AreaHasKeys(void) {
    return (gArea.areaMetadata >> 1) & 1;
}

bool32 HasDungeonMap(void) {
    u32 tmp;

    if (AreaHasKeys())
        tmp = gSave.unk45C[gArea.dungeon_idx];
    return tmp ? 1 : 0;
}

bool32 HasDungeonCompass(void) {
    u32 tmp;

    if (AreaHasKeys())
        tmp = gSave.unk46C[gArea.dungeon_idx] & 4;
    return tmp ? 1 : 0;
}

bool32 HasDungeonBigKey(void) {
    if (!AreaHasKeys())
        return 0;
    return (gSave.unk46C[gArea.dungeon_idx] >> 1) & 1;
}

bool32 HasDungeonSmallKey(void) {
    u32 tmp;

    if (!AreaHasKeys())
        return 0;
    return gSave.unk46C[gArea.dungeon_idx] & 1;
}

void RestoreGameTask(u32 a1) {
    LoadGfxGroups();
#ifndef EU
    CleanUpGFXSlots();
#endif
    sub_080ADE24();
    InitUI(TRUE);
    sub_0801AE44(a1);
    MemCopy(gUnk_02024090, gPaletteBuffer, 1024);
    gUsedPalettes = 0xffffffff;
}

static void LoadRoomBgm(void) {
    gArea.queued_bgm = gAreaMetadata[gRoomControls.area]._3;
    if (CheckLocalFlagByBank(FLAG_BANK_10, LV6_KANE_START)) {
        gArea.queued_bgm = BGM_FIGHT_THEME2;
    }
}

#ifndef EU
void sub_08052878(void) {
    gArea.bgm = gArea.queued_bgm;
    SoundReq(SONG_STOP_ALL);
}

static void sub_0805289C(void) {
    gArea.queued_bgm = gArea.bgm;
}
#endif

static bool32 CheckGameOver(void) {
    if (gRoomTransition.field_0x4[1]) {
        InitFade();
        gMain.state = GAMETASK_EXIT;
        gMain.substate = GAMEMAIN_INITROOM;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
        SoundReq(SONG_STOP_BGM);
        return TRUE;
    }
    return FALSE;
}

void RoomExitCallback(void) {
    if (gArea.transitionManager != NULL && gArea.onExit != NULL)
        gArea.onExit(gArea.transitionManager);
}

static bool32 CheckRoomExit(void) {
    if (gRoomTransition.transitioningOut && gSave.stats.health != 0 && gPlayerState.framestate != PL_STATE_DIE) {
        if (StairsAreValid()) {
            gRoomTransition.transitioningOut = 0;
            return FALSE;
        }

        switch (gRoomTransition.type) {
            case TRANSITION_CUT:
                SetFade(FADE_IN_OUT | FADE_INSTANT | FADE_MOSAIC, 8);
                break;
            case TRANSITION_CUT_FAST:
                SetFade(FADE_IN_OUT | FADE_INSTANT | FADE_MOSAIC, 3);
                break;
            case TRANSITION_FADE_WHITE_SLOW:
                SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
                break;
            case TRANSITION_FADE_BLACK_SLOW:
                SetFade(FADE_IN_OUT | FADE_INSTANT, 4);
                break;
            case TRANSITION_FADE_BLACK:
                SetFade(FADE_IN_OUT | FADE_INSTANT, 16);
                break;
            case TRANSITION_FADE_BLACK_FAST:
                SetFade(FADE_IN_OUT | FADE_INSTANT, 256);
                break;
            case TRANSITION_7:
            case TRANSITION_FADE_WHITE_FAST:
                SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 256);
                break;
            default:
                SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 16);
                break;
        }
        RoomExitCallback();
        gMain.substate = GAMEMAIN_CHANGEAREA;
        *(&gMain.pauseInterval + 1) = 1;
        return TRUE;
    }
    return FALSE;
}

static u32 StairsAreValid(void) {
    static const u16 sStairTypes[] = { 0x91, PL_SPAWN_STAIRS_ASCEND, 0x92, PL_SPAWN_STAIRS_DESCEND,
                                       0x93, PL_SPAWN_STAIRS_ASCEND, 0x94, PL_SPAWN_STAIRS_DESCEND,
                                       0x95, PL_SPAWN_STAIRS_ASCEND, 0x96, PL_SPAWN_STAIRS_DESCEND,
                                       0x97, PL_SPAWN_STAIRS_ASCEND, 0x98, PL_SPAWN_STAIRS_DESCEND,
                                       0 };

    const u16* i;
    u32 tgt = gRoomTransition.stairs_idx;

    for (i = sStairTypes; i[0] != 0; i += 2) {
        if (tgt == i[0]) {
            gPlayerState.queued_action = PLAYER_USEENTRANCE;
            gPlayerState.field_0x38 = 0;
            gPlayerState.field_0x39 = i[1];
            if (!gRoomTransition.player_status.spawn_type)
                gRoomTransition.player_status.spawn_type = i[1];
            return 1;
        }
    }
    return 0;
}

void InitParachuteRoom(void) {
    gRoomTransition.transitioningOut = 1;
    gRoomTransition.player_status.start_pos_x = (gPlayerEntity.x.HALF.HI - gRoomControls.origin_x) & 0x3F8;
    gRoomTransition.player_status.start_pos_y = (gPlayerEntity.y.HALF.HI - gRoomControls.origin_y) & 0x3F8;
    gRoomTransition.player_status.start_anim = 4;
    gRoomTransition.player_status.spawn_type = PL_SPAWN_PARACHUTE_FORWARD;
    gRoomTransition.player_status.area_next = gRoomControls.area;
    gRoomTransition.player_status.room_next = gRoomControls.room - 1;
}

static void InitRoomTransition(void) {
    switch (gRoomTransition.type) {
        case TRANSITION_CUT:
            SetFade(FADE_INSTANT | FADE_MOSAIC, 8);
            break;
        case TRANSITION_CUT_FAST:
            SetFade(FADE_INSTANT | FADE_MOSAIC, 3);
            break;
        case TRANSITION_FADE_WHITE_SLOW:
            SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 4);
            break;
        case TRANSITION_3:
            break;
        case TRANSITION_FADE_BLACK_FAST:
            SetFade(FADE_IN_OUT | FADE_INSTANT, 256);
            break;
        case TRANSITION_7:
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 256);
            break;
        case TRANSITION_FADE_BLACK:
            SetFade(FADE_INSTANT, 16);
            break;
        case TRANSITION_FADE_WHITE_FAST:
            SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
            break;
        default:
            SetFadeInverted(16);
            break;
    }
}

bool32 CanDispEzloMessage(void) {
    s32 tmp = PL_STATE_WALK;

    if (!(gInput.heldKeys & SELECT_BUTTON) || gPlayerState.controlMode != CONTROL_ENABLED ||
        gPauseMenuOptions.disabled || gUnk_0200AF00.unk_1)
        return FALSE;

    if ((gPlayerState.flags & (PL_NO_CAP | PL_CAPTURED | PL_DISABLE_ITEMS)) || (gPlayerState.framestate_last > tmp) ||
        gPlayerState.item || gPlayerEntity.field_0x7a.HWORD)
        return FALSE;

    if ((gPlayerEntity.z.HALF.HI & 0x8000) && !gPlayerState.field_0xa)
        return FALSE;

    GenerateAreaHint();
    ForceSetPlayerState(PL_STATE_TALKEZLO);
    SetPlayerEventPriority();
    return TRUE;
}

void DisplayEzloMessage(void) {
    u32 height;
    u32 idx;
#if defined(JP) || defined(EU)
    idx = 0x10;
#else
    idx = 0x11;
#endif

    if (gRoomTransition.player_status.field_0x24[idx] == 0) {
        height = gPlayerEntity.y.HALF.HI - gRoomControls.scroll_y > 96 ? 1 : 13;
    } else {
        height = gRoomTransition.player_status.field_0x24[idx];
    }
    MessageAtHeight(gRoomTransition.hint_idx, height);
}

#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
static void CreateMiscManager(void) {
    Entity* e = NULL;

    if (gRoomTransition.player_status.field_0x24[13])
        return;
    gRoomTransition.player_status.field_0x24[13] = 1;
#ifndef DEMO_JP
    gRoomTransition.player_status.field_0x24[10] = gArea.locationIndex;
#endif
    e = (Entity*)GetEmptyManager();
    if (e == NULL)
        return;
    e->kind = MANAGER;
    e->id = MISC_MANAGER;
    e->type = 15;
    AppendEntityToList(e, 0);
}
#endif

static void sub_08052C3C(void) {
    if (gArea.portal_mode == 0)
        gArea.portal_timer = 0;
    if (gArea.portal_timer) {
        gArea.portal_timer--;
        gArea.portal_mode = 0;
    }
}

static void UpdatePlayerMapCoords(void) {
    if (!AreaHasNoEnemies()) {
        if (AreaIsOverworld()) {
            gRoomTransition.player_status.overworld_map_x = gPlayerEntity.x.HALF_U.HI;
            gRoomTransition.player_status.overworld_map_y = gPlayerEntity.y.HALF_U.HI;
        } else if (AreaIsDungeon()) {
            gRoomTransition.player_status.dungeon_map_x = gPlayerEntity.x.HALF.HI;
            gRoomTransition.player_status.dungeon_map_y = gPlayerEntity.y.HALF.HI;
        }
    }
}

void SetWorldMapPos(u32 area, u32 room, u32 x, u32 y) {
    RoomHeader* hdr = gAreaRoomHeaders[area] + room;
    gRoomTransition.player_status.overworld_map_x = hdr->map_x + x;
    gRoomTransition.player_status.overworld_map_y = hdr->map_y + y;
}

void SetDungeonMapPos(u32 area, u32 room, u32 x, u32 y) {
    RoomHeader* hdr = gAreaRoomHeaders[area] + room;
    gRoomTransition.player_status.dungeon_map_x = hdr->map_x + x;
    gRoomTransition.player_status.dungeon_map_y = hdr->map_y + y;
}

void InitRoom(void) {
    AreaHeader* a_hdr = NULL;

    MemClear(&gArea, sizeof gArea);
    a_hdr = &gAreaMetadata[gRoomControls.area];
    gArea.areaMetadata = a_hdr->flags;
    gArea.locationIndex = a_hdr->location;
    gArea.dungeon_idx = a_hdr->location - 23;
    gArea.localFlagOffset = gLocalFlagBanks[a_hdr->flag_bank];
    gArea.flag_bank = a_hdr->flag_bank;
    gArea.portal_timer = 180;
    gArea.lightLevel = 256;
    InitRoomTransition();
    InitAllRoomResInfo();
}

u32 GetFlagBankOffset(u32 idx) {
    AreaHeader* a_hdr = &gAreaMetadata[idx];
    return gLocalFlagBanks[a_hdr->flag_bank];
}

void RegisterTransitionManager(void* mgr, void (*onEnter)(), void (*onExit)()) {
    if (gMain.substate != GAMEMAIN_SUBTASK) {
        gArea.transitionManager = mgr;
        gArea.onEnter = onEnter;
        gArea.onExit = onExit;
    }
}

static void InitAllRoomResInfo(void) {
    RoomHeader* r_hdr = gAreaRoomHeaders[gRoomControls.area];
    RoomResInfo* info = gArea.roomResInfos;
    u32 i;
    for (i = 0; i < MAX_ROOMS && *(u16*)r_hdr != 0xFFFF; i++, r_hdr++) {
        if (r_hdr->tileset_id != 0xFFFF)
            InitRoomResInfo(info, r_hdr, gRoomControls.area, i);
        info++;
    }
    gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
}

static void InitRoomResInfo(RoomResInfo* info, RoomHeader* r_hdr, u32 area, u32 room) {
    info->map_x = r_hdr->map_x;
    info->map_y = r_hdr->map_y;
    info->pixel_width = r_hdr->pixel_width;
    info->pixel_height = r_hdr->pixel_height;
    info->tileset = *(gAreaTilesets[area] + r_hdr->tileset_id);
    info->map = *(gAreaRoomMaps[area] + room);
    info->metatiles = gAreaMetatiles[area];
    info->bg_anim = gUnk_080B755C[area];
    info->exits = gExitLists[area][room];
    if (gAreaTable[area] != NULL) {
        info->properties = *(gAreaTable[area] + room);
    }
}

RoomResInfo* GetCurrentRoomInfo(void) {
    return &gArea.roomResInfos[gRoomControls.room];
}

void sub_08052EA0(void) {
    MemClear(&gRoomVars, sizeof gRoomVars);
    gRoomVars.unk_10[0] = -1;
    gRoomVars.unk_10[1] = gRoomVars.unk_10[0];
    gRoomVars.unk_10[2] = gRoomVars.unk_10[0];
    gRoomVars.unk_10[3] = gRoomVars.unk_10[0];
    gRoomVars.lightLevel = 256;
    gArea.locationIndex = gAreaMetadata[gRoomControls.area].location;
    UpdateRoomTracker();
    InitScriptData();
    sub_08054524();
    sub_080186D4();
    sub_0806F364();
    UpdateGlobalProgress();
}

static u32 sub_08052EF4(s32 idx) {
    AreaHeader* a_hdr = NULL;
    u32 i = idx < 0 ? gRoomControls.area : idx;
    a_hdr = &gAreaMetadata[i];
    return gLocalFlagBanks[a_hdr->flag_bank];
}

/**
 * @brief If enabled, this type of transition does not change the room
 * and keeps all entities.
 */
static void UpdateFakeScroll(void) {
    u32 x, y;
    LinkedList* ll;
    Entity* e;

    if (gArea.unk_0c_0 == 0 || !gRoomVars.field_0x0)
        return;

    y = 0;
    x = 0;

    // WTF?
    switch (gRoomControls.scroll_direction) {
        case 0:
            y = gArea.pCurrentRoomInfo->pixel_height;
        case 1:
            y = gArea.pCurrentRoomInfo->pixel_height;
        case 2:
            y = gArea.pCurrentRoomInfo->pixel_height;
        case 3:
            x = gArea.pCurrentRoomInfo->pixel_width;
    }

    gArea.pCurrentRoomInfo->map_x += x;
    gArea.pCurrentRoomInfo->map_y += y;
    gRoomControls.origin_x += x;
    gRoomControls.origin_y += y;
    gRoomControls.scroll_x += x;
    gRoomControls.scroll_y += y;

    ll = gEntityLists;
    do {
        for (e = ll->first; e != (Entity*)ll; e = e->next) {
            if (e->kind != MANAGER) {
                e->x.HALF.HI += x;
                e->y.HALF.HI += y;
            }
        }
    } while (++ll < gEntityLists + 9);
}

void LoadAuxiliaryRoom(u32 area, u32 room) {
    sub_08052FF4(area, room);
    gRoomControls.camera_target = NULL;
    CloneMapData();
    InitializeCamera();
}

void sub_08052FF4(u32 area, u32 room) {
    RoomHeader* r_hdr = NULL;

    ClearTilemaps();
    SetBGDefaults();
    gRoomControls.area = area;
    gRoomControls.room = room;
    gScreen.lcd.displayControl = 0x1740;
    MemClear(&gArea.currentRoomInfo, sizeof gArea.currentRoomInfo);
    gArea.pCurrentRoomInfo = &gArea.currentRoomInfo;
    r_hdr = gAreaRoomHeaders[area] + room;
    gArea.currentRoomInfo.map_x = r_hdr->map_x;
    gArea.currentRoomInfo.map_y = r_hdr->map_y;
    gArea.currentRoomInfo.pixel_width = r_hdr->pixel_width;
    gArea.currentRoomInfo.pixel_height = r_hdr->pixel_height;
    gArea.currentRoomInfo.tileset = *(gAreaTilesets[area] + r_hdr->tileset_id);
    gArea.currentRoomInfo.map = *(gAreaRoomMaps[area] + room);
    gArea.currentRoomInfo.metatiles = gAreaMetatiles[area];
    gArea.currentRoomInfo.bg_anim = gUnk_080B755C[area];
}

void ChangeLightLevel(s32 lightLevel) {
    lightLevel += gRoomVars.lightLevel;
    if (lightLevel < 0)
        lightLevel = 0;
    if (lightLevel > 256)
        lightLevel = 256;
    gRoomVars.lightLevel = lightLevel;
}

static void sub_080530B0(void) {
    static const u16 sMinecartData[] = { 0x189, 0x0, 0x102, 0x4, 0x1af, 0x0, 0x204, 0x0,
                                         0x1cf, 0x0, 0x10,  0x4, 0x0,   0x0, 0x0,   0x0 };

    MemCopy(sMinecartData, gRoomTransition.minecart_data, sizeof sMinecartData);
}

void UpdateGlobalProgress(void) {
    u8 pcnt = 1;
    if (CheckLocalFlagByBank(FLAG_BANK_3, SEIIKI_STAINED_GLASS)) {
        pcnt = 9;
    } else if (CheckGlobalFlag(LV5_CLEAR)) {
        pcnt = 8;
    } else if (CheckLocalFlagByBank(FLAG_BANK_3, OUBO_KAKERA)) {
        pcnt = 7;
    } else if (CheckGlobalFlag(LV4_CLEAR)) {
        pcnt = 6;
    } else if (CheckGlobalFlag(LV3_CLEAR)) {
        pcnt = 5;
    } else if (CheckLocalFlagByBank(FLAG_BANK_1, SOUGEN_08_TORITSUKI)) {
        pcnt = 4;
    } else if (CheckGlobalFlag(LV1_CLEAR)) {
        pcnt = 2;
    }
    gSave.global_progress = pcnt;
}

static u32 sub_08053144(void) {
    u32 ret;

    if (CheckGlobalFlag(ENDING))
        return 0;
    ret = 0;
    if (gArea.locationIndex != 0)
        ret = !!(gRoomTransition.player_status.field_0x24[10] ^ gArea.locationIndex);
    return ret;
}

static void CheckAreaDiscovery(void) {
    if (!sub_08053144())
        return;

    gRoomTransition.player_status.field_0x24[10] = gArea.locationIndex;

    if (!CheckGlobalFlag(TABIDACHI))
        return;

    if (!CheckGlobalFlag(ENDING)) {
        Entity* e = (Entity*)GetEmptyManager();
        if (e != NULL) {
            e->kind = MANAGER;
            e->id = ENTER_ROOM_TEXTBOX_MANAGER;
            AppendEntityToList(e, 8);
            if (!gRoomVars.field_0x0 && !ReadBit(gSave.areaVisitFlags, gArea.locationIndex)) {
                e->type2 = 1;
                SetPlayerControl(3);
                SetInitializationPriority();
            }
        }
    }
    WriteBit(gSave.areaVisitFlags, gArea.locationIndex);
}

static void UpdatePlayerRoomStatus(void) {
    gPlayerState.startPosX = gPlayerEntity.x.HALF.HI;
    gPlayerState.startPosY = gPlayerEntity.y.HALF.HI;
    if (sub_08053144()) {
        MemCopy(&gRoomTransition.player_status, &gSave.saved_status, sizeof gRoomTransition.player_status);
        if (AreaIsDungeon()) {
            gRoomTransition.player_status.dungeon_area = gRoomControls.area;
            gRoomTransition.player_status.dungeon_room = gRoomControls.room;
            gRoomTransition.player_status.dungeon_x = gPlayerEntity.x.HALF.HI;
            gRoomTransition.player_status.dungeon_y = gPlayerEntity.y.HALF.HI;
        }
    }
}

void sub_08053250(void) {
    gRoomTransition.player_status.spawn_type = PL_SPAWN_DEFAULT;
    gRoomTransition.player_status.start_pos_x = gPlayerEntity.x.HALF.HI - gRoomControls.origin_x;
    gRoomTransition.player_status.start_pos_y = gPlayerEntity.y.HALF.HI - gRoomControls.origin_y;
    gRoomTransition.player_status.start_anim = gPlayerEntity.animationState;
    gRoomTransition.player_status.layer = gPlayerEntity.collisionLayer;
    gRoomTransition.player_status.area_next = gRoomControls.area;
    gRoomTransition.player_status.room_next = gRoomControls.room;
    MemCopy(&gRoomTransition.player_status, &gSave.saved_status, sizeof gRoomTransition.player_status);
}

static void sub_0805329C(void) {
    if (sub_08053144()) {
        switch (gRoomControls.area) {
            case AREA_DEEPWOOD_SHRINE:
                gSave.unk7 = 0;
                break;
            case AREA_CAVE_OF_FLAMES:
                sub_080530B0();
                break;
            case AREA_OUTER_FORTRESS_OF_WINDS:
                sub_080532E4();
                break;
            default:
                ResetTimerFlags();
                break;
        }
    }
}

static void sub_080532E4(void) {
    s32 x, y;

    RoomHeader* r_hdr = gAreaRoomHeaders[AREA_FORTRESS_OF_WINDS] + 33;

    gRoomTransition.player_status.dungeon_area = AREA_FORTRESS_OF_WINDS;
    gRoomTransition.player_status.dungeon_room = 33;

    gRoomTransition.player_status.dungeon_x = r_hdr->map_x + r_hdr->pixel_width / 2;
    gRoomTransition.player_status.dungeon_map_x = gRoomTransition.player_status.dungeon_x;
    gRoomTransition.player_status.dungeon_y = r_hdr->map_y + r_hdr->pixel_height + 0xa0;
    gRoomTransition.player_status.dungeon_map_y = gRoomTransition.player_status.dungeon_y;
}

void LoadGfxGroups(void) {
    MemClear(&gBG0Buffer, sizeof gBG0Buffer);
    MemClear(&gBG1Buffer, sizeof gBG1Buffer);
    MemClear(&gBG2Buffer, sizeof gBG2Buffer);
    MemClear(&gBG3Buffer, sizeof gBG3Buffer);
    LoadGfxGroup(16);
    LoadGfxGroup(23);
    if (gRoomControls.area == AREA_CASTOR_WILDS)
        LoadGfxGroup(26);
    LoadItemGfx();
    LoadPaletteGroup(11);
    LoadPaletteGroup(12);
    SetColor(0, 0);
}

void LoadItemGfx(void) {
    LoadGfxGroup(GetInventoryValue(ITEM_REMOTE_BOMBS) ? 24 : 25);
    if (GetInventoryValue(ITEM_LIGHT_ARROW))
        LoadGfxGroup(29);
    LoadGfxGroup(GetInventoryValue(ITEM_MAGIC_BOOMERANG) ? 28 : 27);
}

void sub_080533CC(void) {
    u16* p1 = gUnk_020178E0;
    u16* p2 = gUnk_020178E0 - 0x100;
    *p2++ = *p1++;
    *p2++ = *p1++;
    *p2++ = *p1++;
    *p2++ = *p1++;
    *p2++ = *p1++;
    gUsedPalettes |= 8;
}

static void UpdateTimerCallbacks(void) {
    static void (*const sHandlers[])(u32*) = {
        sub_08053434, DummyHandler, sub_080534E4, DummyHandler, DummyHandler, DummyHandler, DummyHandler, DummyHandler,
    };

    u32* p;
    u32 i;

    p = gSave.timers;
    for (i = 0; i < 8; i++, p++) {
        (sHandlers[i])(p);
    }
}

static void DummyHandler(u32* a1) {
}

static void sub_08053434(u32* a1) {
    if (gArea.locationIndex == 29 && *a1) {
        if (!--*a1) {
            ResetTimerFlags();
            MenuFadeIn(5, 6);
        }
    }
}

static void ResetTimerFlags(void) {
    static const u16 sClearFlags[] = { FLAG_BANK_10, LV6_GUFUU1_GISHIKI, FLAG_BANK_10, LV6_GUFUU1_DEMO,
                                       FLAG_BANK_10, LV6_ZELDA_DISCURSE, FLAG_BANK_10, LV6_00_ESCAPE,
                                       FLAG_BANK_10, LV6_GUFUU2_DEAD,    FLAG_BANK_G,  ENDING,
                                       FLAG_BANK_10, LV6_KANE_START,     FLAG_BANK_10, LV6_KANE_1ST,
                                       FLAG_BANK_10, LV6_KANE_2ND,       FLAG_BANK_10, LV6_SOTO_ENDING,
                                       0xFFFF };

    gSave.timers[0] = 0;
    if (CheckLocalFlagByBank(FLAG_BANK_10, LV6_ZELDA_DISCURSE))
        ClearGlobalFlag(ZELDA_CHASE);
    ClearFlagArray(sClearFlags);
}

void StartDarkNutTimer(void) {
    gSave.timers[0] = 10800;
}

void sub_080534AC(void) {
    if (CheckLocalFlagByBank(FLAG_BANK_10, LV6_KANE_START)) {
        ClearLocalFlagByBank(FLAG_BANK_10, LV6_KANE_START);
        gSave.timers[0] = 0;
        SoundReq(SONG_STOP_BGM);
    }
}

static void sub_080534E4(u32* a1) {
    if (gRoomControls.area != AREA_VEIL_FALLS_TOP) {
        if (*a1)
            --*a1;
    }
}

void InitBiggoronTimer(void) {
    gSave.timers[2] = 36000;
}

static void ResetTmpFlags(void) {
    static const u16 sClearFlags[] = { FLAG_BANK_2, BILL00_SHICHOU_00, FLAG_BANK_2, BILL0A_YADO_TAKARA_00,
                                       FLAG_BANK_2, BILL0C_SCHOOLR_00, FLAG_BANK_1, MACHI00_00,
                                       FLAG_BANK_1, MACHI00_02,        FLAG_BANK_2, MHOUSE06_00,
                                       FLAG_BANK_2, MHOUSE14_00,       FLAG_BANK_2, MHOUSE2_00_02,
                                       FLAG_BANK_2, MHOUSE2_01_T0,     FLAG_BANK_2, MHOUSE2_02_KAME,
                                       FLAG_BANK_2, SHOP00_ITEM_01,    FLAG_BANK_2, SHOP01_CAFE_01,
                                       0xFFFF };

    ResetTimerFlags();
    ClearFlagArray(sClearFlags);

    if (!CheckGlobalFlag(WATERBEAN_PUT))
        ClearGlobalFlag(WATERBEAN_OUT);
    if (!GetInventoryValue(ITEM_EARTH_ELEMENT))
        ClearGlobalFlag(LV1_CLEAR);
    if (!GetInventoryValue(ITEM_FIRE_ELEMENT))
        ClearGlobalFlag(LV2_CLEAR);
    if (!GetInventoryValue(ITEM_WATER_ELEMENT))
        ClearGlobalFlag(LV4_CLEAR);
}

static void ClearFlagArray(const u16* p) {
    const u16* i;

    for (i = p; i[0] != 0xFFFF; i += 2)
        ClearLocalFlagByBank(i[0], i[1]);
}

void CutsceneMain_Init(void) {
    gUnk_080FCBB4[gMenu.overlayType]();
}

void sub_080535AC(void) {
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120;
    gUI.field_0x6 = 1;
    gUpdateVisibleTiles = 1;
    gScreen.lcd.displayControl &= 0xfeff;
    LoadRoomEntityList((EntityData*)gUnk_080FCB94);
    SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
}

void sub_080535F4(void) {
    if (gFadeControl.active == 0) {
        ResetSystemPriority();
        gMenu.overlayType = 2;
    }
}

void nullsub_481(void) {
}

void sub_08053618(void) {
    gMenu.transitionTimer--;
    if (gMenu.transitionTimer == 0) {
        sub_08052004();
    }
}

void sub_08053634(void) {
    gUI.nextToLoad = 3;
    MessageInitialize();
}

void sub_08053648(void) {
    Entity* obj = CreateObject(SMOKE, 0, 0);
    if (obj != NULL) {
        obj->x.HALF.HI = gRoomControls.origin_x + 0x2d0;
        obj->y.HALF.HI = gRoomControls.origin_y + 0x148;
    }
}

void sub_0805367C(void) {
    gMenu.overlayType++;
}

void sub_0805368C(void) {
    Entity* entity = FindEntityByID(OBJECT, HOUSE_DOOR_INT, 6);
    if (entity != NULL) {
        DeleteEntity(entity);
        SoundReq(SFX_F0);
    }
}

void sub_080536A8(void) {
    sub_080A71C4(5, 5, FADE_INSTANT, 0x10);
}

void sub_080536B8(void) {
    sub_080A71C4(5, 3, FADE_INSTANT, 4);
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_080536D4(void) {
    gUnk_080FCCFC[gMenu.overlayType]();
}

void sub_080536F0(void) {
    gUnk_080FCD38[gMenu.overlayType]();
}

void sub_0805370C(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_08051FF0();
    LoadRoomEntityList((EntityData*)gUnk_080FCC54);
    SetFade(FADE_INSTANT, 0x10);
}

void sub_0805373C(void) {
    gUnk_080FCD40[gMenu.overlayType]();
}

void sub_08053758(void) {
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120;
    gMenu.field_0xa = 0x1e;
    *((u8*)&gMenu + 0x10) = 0; // TODO
    gUI.field_0x6 = 1;
    gMapBottom.bgSettings = NULL;
    gMapTop.bgSettings = NULL;
    gRoomControls.camera_target = NULL;
    gRoomControls.scroll_y = 0;
    gRoomControls.scroll_x = 0;
    ClearBgAnimations();
    DispReset(0);
    gScreen.lcd.displayControl = 0x2640;
    gScreen.controls.layerFXControl = 0x2244;
    gScreen.controls.alphaBlend = 0x1000;
    gScreen.controls.windowInsideControl = 0x1f;
    gScreen.controls.windowOutsideControl = 0x3f;
    gScreen.controls.window0HorizontalDimensions = 0xf0;
    gScreen.controls.window0VerticalDimensions = 0x60;
    gScreen.bg1.control = 0x1c4e;
    gScreen.bg2.control = 0x1dc1;
    SoundReq(BGM_STORY);
    ResetSystemPriority();
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_08053800(void) {
    u32 index;
    struct_080FCCB4* ptr;
    if (gFadeControl.active == 0) {
        index = gGenericMenu.unk10.a[0];
        ptr = &gUnk_080FCCB4[index];
        gGenericMenu.base.transitionTimer = ptr->transitionTimer;
        gGenericMenu.base.field_0xa = 0x1e;
        gGenericMenu.unk10.a[0]++;
        gGenericMenu.base.overlayType++;
        gGenericMenu.base.storyPanelIndex = 0;
        LoadPaletteGroup(index + 0x8a);
        LoadGfxGroup(index + 0x3a);
        MemClear(&gBG1Buffer, 0x800);
        sub_0805F46C(index + 0xf01, ptr->font);
        gScreen.bg1.updated = 1;
        gScreen.controls.alphaBlend = 0x10;
        gScreen.controls.window0HorizontalDimensions = ptr->width;
        gScreen.controls.window0VerticalDimensions = ptr->height;
        SetFade(FADE_INSTANT, ptr->fadeSpeed);
    }
}

void sub_08053894(void) {
    u32 tmp;
    if (gFadeControl.active == 0) {
        gMenu.transitionTimer--;
        if (gMenu.field_0xa != 0) {
            gMenu.field_0xa--;
        } else {
            if (((gRoomTransition.frameCount & 1) == 0) && (gMenu.storyPanelIndex < 0x10)) {
                tmp = ++gMenu.storyPanelIndex << 0x18;
                gScreen.controls.alphaBlend = (tmp >> 0x10) | (0x10 - ((tmp) >> 0x19));
            }
        }
        if (gMenu.transitionTimer == 0) {
            gMenu.overlayType++;
            SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
        }
    }
}

void sub_08053904(void) {
    u32 tmp;
    if (gFadeControl.active == 0) {
        gMenu.transitionTimer--;
        if (gMenu.field_0xa != 0) {
            gMenu.field_0xa--;
        } else {
            if (((gRoomTransition.frameCount & 1) == 0) && (gMenu.storyPanelIndex < 0x10)) {
                tmp = ++gMenu.storyPanelIndex << 0x18;
                gScreen.controls.alphaBlend = (tmp >> 0x10) | (0x10 - (tmp >> 0x19));
            }
        }
        if (gMenu.transitionTimer == 0) {
            gMenu.overlayType++;
            SetFade(FADE_IN_OUT | FADE_INSTANT, 1);
        }
    }
}

void sub_08053974(void) {
    if (gFadeControl.active == 0) {
        InitFade();
        DispReset(1);
        SetBGDefaults();
        sub_08051F78();
        LoadRoomEntityList((EntityData*)&gUnk_080FCBC4);
        SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
        gMenu.overlayType++;
    }
}

void nullsub_482(void) {
}

void sub_080539BC(void) {
    SetBGDefaults();
    DeleteAllEntities();
    sub_08051F9C(0x22, 0x11, 0, 0);
    sub_0804B0B0(0x22, 0x11);
    LoadRoomEntityList((EntityData*)&gUnk_080FCC14);
    gMenu.overlayType++;
}

void sub_080539F4(void) {
    if (gFadeControl.active == 0) {
        DispReset(1);
        gMenu.overlayType++;
        gMenu.transitionTimer = 60;
    }
}

void sub_08053A1C(void) {
    gMenu.transitionTimer--;
    if (gMenu.transitionTimer == 0) {
        gMenu.overlayType++;
        gMenu.transitionTimer = 8;
        MessageFromTarget(TEXT_INDEX(TEXT_PICORI, 0x07));
        gMessage.textWindowPosX = 1;
        gMessage.textWindowPosY = 8;
        SetFade(FADE_INSTANT, 8);
    }
}

void sub_08053A5C(void) {
    if (((gMessage.doTextBox & 0x7f) == 0) && --gMenu.transitionTimer == 0) {
        gMenu.overlayType++;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    }
}

void sub_08053A90(void) {
    if (gFadeControl.active == 0) {
        gUI.nextToLoad = 3;
        SetBGDefaults();
    }
}

void sub_08053AB0(void) {
    gUnk_080FCDD4[gMenu.overlayType]();
}

void sub_08053ACC(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_08051FF0();
    LoadRoomEntityList((EntityData*)&gUnk_080FCD84);
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_08053B00(void) {
    gMenu.overlayType++;
}

void sub_08053B10(void) {
    if (CheckRoomFlag(1)) {
        gMenu.menuType++;
        DispReset(1);
        SetFade(FADE_INSTANT, 0x100);
    }
}

void sub_08053B3C(void) {
    sub_080A71C4(5, 4, FADE_IN_OUT | FADE_INSTANT, 0x100);
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_08053B58(void) {
    gUnk_080FCEB0[gMenu.overlayType]();
}

void sub_08053B74(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    LoadRoomEntityList((EntityData*)&gUnk_080FCDE0);
    ResetSystemPriority();
    ResetEntityPriority();
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_08053BAC(void) {
    gMenu.overlayType++;
}

void sub_08053BBC(void) {
    if (CheckRoomFlag(0)) {
        gMenu.menuType++;
        DispReset(1);
        SetFade(FADE_INSTANT, 0x100);
    }
}

void sub_08053BE8(void) {
    sub_080A71C4(5, 2, FADE_IN_OUT | FADE_INSTANT, 0x100);
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_08053C04(void) {
    gUnk_080FCEEC[gMenu.overlayType]();
}

void sub_08053C20(void) {
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120;
    gUpdateVisibleTiles = 1;
    sub_08051FF0();
    sub_0805B4D0(4);
    LoadRoomEntityList((EntityData*)&gUnk_080FCEBC);
    SetFade(FADE_INSTANT, 0x10);
    SoundReq(BGM_FIGHT_THEME2);
}

void nullsub_483(void) {
}

void sub_08053C60(void) {
    SetFade(FADE_IN_OUT | FADE_INSTANT, 2);
    SoundReq(SFX_SUMMON);
    SoundReq(SONG_STOP_BGM);
    SetTask(3);
}

void sub_08053C84(void) {
    gMenu.overlayType = 2;
}

void CutsceneMain_Exit(void) {
    gUnk_080FCEF8[gMenu.field_0x3]();
}

void sub_08053CAC(void) {
    gUnk_080FCFA4[gMenu.overlayType]();
}

void sub_08053CC8(void) {
    const u8* ptr;
    ptr = gUnk_080FCF04 + gMenu.field_0x3 * 0x10;
    gMenu.field_0xc = (void*)&ptr[8];
    LoadRoomEntityList(*(EntityData**)(&ptr[0]));
    LoadRoomEntityList(GetRoomProperty(ptr[4], ptr[5], 1));
    LoadRoomEntityList(GetRoomProperty(ptr[4], ptr[5], 2));
    gMenu.overlayType = 1;
    gScreen.lcd.displayControl &= 0xfeff;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
    if (ptr[5] == 0x1d) {
        gMenu.field_0xa = 1;
    }
}

void sub_08053D34(void) {
    if (gMenu.field_0xa != 0) {
        gMenu.field_0xa = 0;
        if (CheckLocalFlagByBank(FLAG_BANK_7, 0x3d)) {
            SetTileType(0x74, 0xc4, 1);
        }
        if (CheckLocalFlagByBank(FLAG_BANK_7, 0x3e)) {
            SetTileType(0x74, 0xcc, 1);
        }
    }
    if (gFadeControl.active == 0) {
        gMenu.transitionTimer = 120;
        gMenu.overlayType++;
    }
}

void sub_08053D90(void) {
    gMenu.transitionTimer--;
    if (gMenu.transitionTimer == 0) {
        gMenu.overlayType++;
        SetFadeInverted(0x10);
    }
}

void sub_08053DB4(void) {
    if (gFadeControl.active == 0) {
        u8* ptr = gMenu.field_0xc;
        sub_08052FF4(gMenu.field_0xc[4], gMenu.field_0xc[5]);
        InitializeCamera();
        gUpdateVisibleTiles = 1;
        gRoomControls.scroll_x = (s8)ptr[6] + gRoomControls.scroll_x;
        gRoomControls.scroll_y = (s8)ptr[7] + gRoomControls.scroll_y;
        LoadRoomEntityList(*(EntityData**)ptr);
        LoadRoomEntityList((EntityData*)GetRoomProperty(ptr[4], ptr[5], 1));
        LoadRoomEntityList((EntityData*)GetRoomProperty(ptr[4], ptr[5], 2));
        gMenu.transitionTimer = 120;
        gMenu.overlayType++;
        SetFadeInverted(0x10);
    }
}

void sub_08053E30(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
    }
}

void sub_08053E58(void) {
    gUnk_080FD108[gMenu.overlayType]();
}

void sub_08053E74(void) {
    const EntityData** ptr = gUnk_080FCFB8;
    gMenu.field_0xc = (u8*)ptr;
    LoadRoomEntityList((EntityData*)ptr[0]);
    gMenu.transitionTimer = 120;
    gMenu.field_0xa = 0x3c;
    gMenu.overlayType++;
    gScreen.lcd.displayControl &= 0xfeff;
    gUpdateVisibleTiles = 1;
    SetMinPriority(1);
    SetFade(FADE_INSTANT, 8);
}

void sub_08053EC4(void) {
    EntityData** data;
    if ((gFadeControl.active == 0) && (--gMenu.field_0xa == 0)) {
        data = (EntityData**)(gMenu.field_0xc + 4);
        gMenu.field_0xc += 0xc;
        LoadRoomEntityList(*data);
        gMenu.overlayType++;
    }
}

void sub_08053EFC(void) {
    if (--gMenu.transitionTimer == 0) {
        gMenu.overlayType++;
        SetFadeInverted(8);
    }
}

void sub_08053F20(void) {
    u8* ptr;
    if (gFadeControl.active == 0) {
        DeleteAllEntities();
        ptr = gMenu.field_0xc;
        sub_08052FF4(gMenu.field_0xc[8], gMenu.field_0xc[9]);
        InitializeCamera();
        gUpdateVisibleTiles = 1;
        gRoomControls.scroll_x = (s8)ptr[10] + gRoomControls.scroll_x;
        gRoomControls.scroll_y = (s8)ptr[0xb] + gRoomControls.scroll_y;
        LoadRoomEntityList(*(EntityData**)ptr);
        gMenu.transitionTimer = 120;
        gMenu.field_0xa = 0x3c;
        gMenu.overlayType++;
        SetFadeInverted(8);
    }
}

void sub_08053F88(void) {
    if ((gFadeControl.active == 0) && --gMenu.transitionTimer == 0) {
        gMenu.menuType++;
        ResetEntityPriority();
    }
}

void CutsceneMain_Update(void) {
    gUnk_080FD138[gMenu.field_0x3]();
}

u32 GetSaleItemConfirmMessageID(u32 item) {
    const u16* ptr = &gUnk_080FD964[item * 4];
    return ptr[2];
}

s32 GetItemPrice(u32 item) {
    const u16* ptr = &gUnk_080FD964[item * 4];
    return ptr[0];
}

u32 GiveItem(Item item, u32 param_2) {
    u32 uVar4;
    u32 result;
    u32 uVar9;
    const ItemMetaData* metaData;

    uVar4 = GetInventoryValue(item);
    metaData = &gItemMetaData[item];

    if (uVar4 == 0) {
        result = *(u16*)&metaData->textId;
    } else {
        result = *(u16*)&metaData->unk6;
    }
    if (!ItemIsBottle(item)) {
        PutItemOnSlot(item);
        if (uVar4 == 0) {
            SetInventoryValue(item, 1);
        }
    }
    switch (metaData->unk1) {
        case 0:
        default:
            break;
        case 1:
            ModHealth(metaData->unk2);
            SoundReq(SFX_HEART_GET);
            break;
        case 2:
            ModRupees((u32)gUnk_080FD5A8[metaData->unk2]);
            SoundReq(SFX_RUPEE_GET);
            break;
        case 3:
            uVar9 = 0;
            while (TRUE) {
                if (3 < uVar9) {
                    return result;
                }
                if (GetInventoryValue(ITEM_BOTTLE1 + uVar9) == 0)
                    break;
                uVar9++;
            }
            item = ITEM_BOTTLE1 + uVar9;
            if (gSave.stats.bottles[uVar9] == 0) {
                gSave.stats.bottles[uVar9] = 0x20;
            }
            SetInventoryValue(item, 1);
            PutItemOnSlot(item);
            break;
        case 4:
            uVar9 = 0;
            while (gSave.stats.bottles[uVar9] != 0x20) {
                uVar9++;
                if (3 < uVar9) {
                    return result;
                }
            }
            if (3 < uVar9) {
                break;
            }
            gSave.stats.bottles[uVar9] = (u8)item;
            SetInventoryValue(item, 1);
            SoundReq(SFX_ITEM_GET);
            break;
        case 5:
            sub_080526F8(1);
            SoundReq(SFX_103);
            break;
        case 6:
            gSave.unk46C[gArea.dungeon_idx] |= metaData->unk2;
            break;
        case 0xd:
            sub_0801E738(0x72);
            break;
        case 0x12:
            if (item == ITEM_BOOMERANG) {
                SetInventoryValue(ITEM_MAGIC_BOOMERANG, 0);
            } else {
                SetInventoryValue(ITEM_BOOMERANG, 0);
            }
        case 0x11:
            LoadItemGfx();
            break;
        case 7:
            if (item == ITEM_BOMBS) {
                SetInventoryValue(ITEM_REMOTE_BOMBS, 0);
            } else {
                SetInventoryValue(ITEM_BOMBS, 0);
            }
            ModBombs(99);
            LoadItemGfx();
            break;
        case 8:
            if (uVar4 == 0) {
                SetInventoryValue(ITEM_BOMBS, 1);
                PutItemOnSlot(7);
            } else {
                gSave.stats.bombBagType++;
                if (3 < gSave.stats.bombBagType) {
                    gSave.stats.bombBagType = 3;
                }
            }
            ModBombs(99);
            break;
        case 9:
            ModBombs(metaData->unk2);
            SoundReq(SFX_103);
            break;
        case 0xb:
            if (GetInventoryValue(ITEM_LARGE_QUIVER) == 0) {
                SetInventoryValue(ITEM_LARGE_QUIVER, 1);
            }
            ModArrows(99);
            LoadItemGfx();
            break;
        case 0xa:
            gSave.stats.quiverType++;
            if (3 < gSave.stats.quiverType) {
                gSave.stats.quiverType = 3;
            }
            ModArrows(99);
            break;
        case 0xc:
            ModArrows(metaData->unk2);
            SoundReq(SFX_103);
            break;
        case 0x0e:
            SetInventoryValue(ITEM_SHELLS, 1);
            ModShells(param_2);
            SoundReq(SFX_103);
            break;
        case 0x0f:
            sub_0801E738(param_2);
            break;
        case 0x10:
            gSave.stats.walletType++;
            if (gSave.stats.walletType < 4) {
                break;
            }
            gSave.stats.walletType = 3;
            break;
    }
    return result;
}

// TODO Adapt ItemMetaData struct
void sub_08054288(s32 param_1) {
    const ItemMetaData* ptr1 = gItemMetaData;
    u16* ptr = (u16*)&((ptr1)[param_1]);
    MessageFromTarget(ptr[3]);
}

u32 getItemMetaDataGetTextIndex(s32 itemIndex) {
    const ItemMetaData* ptr1 = gItemMetaData;
    u16* ptr = (u16*)&((ptr1)[itemIndex]);
    return ptr[2];
}

u32 sub_080542AC(u32 param_1) {
    const ItemMetaData* ptr1 = gItemMetaData;
    u8* ptr = (u8*)&((ptr1)[param_1]);
    return ptr[3] & 1;
}

void ModShells(s32 shells) {
    if (shells == 0) {
        shells = 1;
    }
    shells += gSave.stats.shells;
    if (shells < 0) {
        shells = 0;
    } else if (999 < shells) {
        shells = 999;
    }
    gSave.stats.shells = shells;
}

void ModBombs(s32 bombs) {
    s32 bombCount = bombs;
    s32 bagSize;
    bombCount += gSave.stats.bombCount;
    bagSize = gBombBagSizes[gSave.stats.bombBagType];
    if (bombCount < 0) {
        bombCount = 0;
    } else if (bagSize < bombCount) {
        bombCount = bagSize;
    }
    gSave.stats.bombCount = bombCount;
}

void ModArrows(s32 arrows) {
    s32 quiverSize;
    s32 arrowCount = arrows;
    arrowCount += gSave.stats.arrowCount;
    quiverSize = gQuiverSizes[gSave.stats.quiverType];
    if (arrowCount < 0) {
        arrowCount = 0;
    } else if (quiverSize < arrowCount) {
        arrowCount = quiverSize;
    }
    gSave.stats.arrowCount = arrowCount;
}

/**
 * @brief Returns the slot the item is equipped in.
 *
 * 0: A
 * 1: B
 * 2: Not equipped
 */
EquipSlot IsItemEquipped(u32 itemId) {
    EquipSlot equipSlot;

    if (itemId == gSave.stats.itemButtons[SLOT_A]) {
        equipSlot = EQUIP_SLOT_A;
    } else if (itemId == gSave.stats.itemButtons[SLOT_B]) {
        equipSlot = EQUIP_SLOT_B;
    } else {
        equipSlot = EQUIP_SLOT_NONE;
    }
    return equipSlot;
}

void PutItemOnSlot(u32 itemId) {
    EquipSlot equipSlot;
    u32 itemId2 = itemId;
    if (itemId2 < 0x47) {
        SetInventoryValue(0, 1);
    }
    if (itemId2 - 1 < 0x1f) {
        equipSlot = EQUIP_SLOT_NONE;
        if (gSave.stats.itemButtons[SLOT_A] == ITEM_NONE) {
            equipSlot = EQUIP_SLOT_A;
        } else if (gSave.stats.itemButtons[SLOT_B] == ITEM_NONE) {
            equipSlot = EQUIP_SLOT_B;
        }
        if (equipSlot == EQUIP_SLOT_NONE) {
            u32 temp = gItemMetaData[itemId2].menuSlot;
            if (temp == gItemMetaData[gSave.stats.itemButtons[SLOT_A]].menuSlot) {
                equipSlot = EQUIP_SLOT_A;
            } else {
                if (temp == gItemMetaData[gSave.stats.itemButtons[SLOT_B]].menuSlot) {
                    equipSlot = EQUIP_SLOT_B;
                }
            }
            if (equipSlot == EQUIP_SLOT_NONE) {
                return;
            }
        }
        ForceEquipItem(itemId2, equipSlot);
    }
}

void ForceEquipItem(u32 itemId, u32 equipSlot) {
    u32 otherItem;
    u32 otherItemSlot;
    u32 replacedItem;

    if ((itemId - 1 < 0x1f) && (equipSlot < EQUIP_SLOT_NONE)) {
        otherItemSlot = equipSlot == EQUIP_SLOT_A;
        replacedItem = gSave.stats.itemButtons[equipSlot];
        otherItem = gSave.stats.itemButtons[otherItemSlot];
        if (gItemMetaData[otherItem].menuSlot == gItemMetaData[itemId].menuSlot) {
            otherItem = replacedItem;
        }
        gSave.stats.itemButtons[equipSlot] = itemId;
        gSave.stats.itemButtons[otherItemSlot] = otherItem;
        gUnk_0200AF00.unk_13 = 0x7f;
        gUnk_0200AF00.unk_14 = 0x7f;
    }
}

u32 SetBottleContents(u32 itemId, u32 bottleIndex) {
    if (bottleIndex > 3) {
        bottleIndex = 0;
        for (bottleIndex = 0; gSave.stats.bottles[bottleIndex] != ITEM_BOTTLE_EMPTY;) {
            if (++bottleIndex > 3) {
                return bottleIndex;
            }
        }
        if (bottleIndex > 3) {
            return bottleIndex;
        }
    }
    gSave.stats.bottles[bottleIndex] = itemId;
    return bottleIndex;
}

bool32 ItemIsSword(u32 item) {
    switch (item) {
        case ITEM_SMITH_SWORD:
        case ITEM_GREEN_SWORD:
        case ITEM_RED_SWORD:
        case ITEM_BLUE_SWORD:
        case ITEM_FOURSWORD:
            return TRUE;
        default:
            return FALSE;
    }
}

bool32 ItemIsShield(u32 id) {
    switch (id) {
        case ITEM_SHIELD:
        case ITEM_MIRROR_SHIELD:
            return TRUE;
        default:
            return FALSE;
    }
}

bool32 ItemIsBottle(u32 id) {
    switch (id) {
        case ITEM_BOTTLE1:
        case ITEM_BOTTLE2:
        case ITEM_BOTTLE3:
        case ITEM_BOTTLE4:
            return TRUE;
        default:
            return FALSE;
    }
}

u32 GetBottleContaining(u32 id) {
    if (id == gSave.stats.bottles[0]) {
        return 1;
    } else if (id == gSave.stats.bottles[1]) {
        return 2;
    } else if (id == gSave.stats.bottles[2]) {
        return 3;
    } else if (id == gSave.stats.bottles[3]) {
        return 4;
    } else {
        return 0;
    }
}

void sub_08054524(void) {
    u32 bVar1;

    bVar1 = gArea.locationIndex;
    if (gArea.locationIndex == 0) {
        bVar1 = gRoomTransition.player_status.field_0x24[0xa];
    }
    if (bVar1 > 0x16) {
        bVar1 = 0;
    }

    bVar1 = gUnk_080FE1C6[bVar1];
    MemCopy(&gAreaDroptables[bVar1], &gRoomVars.currentAreaDroptable, sizeof(Droptable));
}

void DisableRandomDrops(void) {
    gRoomVars.randomDropsDisabled = TRUE;
}

void EnableRandomDrops(void) {
    gRoomVars.randomDropsDisabled = FALSE;
}

extern void sub_08000F14(s16*, const s16*, const s16*, const s16*);
extern u32 sub_08000F2C(s16*, const s16*, const s16*, const s16*);
u32 CreateItemDrop(Entity* arg0, u32 itemId, u32 itemParameter);
u32 CreateRandomItemDrop(Entity* arg0, u32 arg1) {
    extern const u8 gUnk_080FE1B4[] /* = {
         ITEM_NONE,         ITEM_RUPEE1,  ITEM_RUPEE5, ITEM_RUPEE20,        ITEM_HEART,         ITEM_FAIRY,
         ITEM_BOMBS5,       ITEM_ARROWS5, ITEM_SHELLS, ITEM_KINSTONE_GREEN, ITEM_KINSTONE_BLUE, ITEM_KINSTONE_RED,
         ITEM_ENEMY_BEETLE, ITEM_NONE,    ITEM_NONE,   ITEM_NONE,           ITEM_NONE,          ITEM_NONE,
     }*/;

    int r0, r1, rand, summOdds, item;
    u32 r3;
    const Droptable *ptr2, *ptr3, *ptr4;
    Droptable droptable;
    r3 = arg1;
    if (gRoomVars.randomDropsDisabled != TRUE) {
        ptr2 = &gDroptableModifiers[DROPTABLE_NONE];
        ptr4 = NULL;
        switch (r3) {
            case 1 ... 12:
                ptr4 = &gEnemyDroptables[r3];
                break;
#ifndef EU
            case 24:
            case 25:
                r0 = gRoomVars.unk2;
                ptr4 = &gUnk_0800191C[0];
                if (r0) {
                    ptr4++;
                }
                break;
#endif
            case 16 ... 23:
#ifdef EU
            case 24:
#endif
                ptr2 = &gObjectDroptables[r3 - 16];
            case 15:
                ptr4 = &gRoomVars.currentAreaDroptable;
                break;
            case 0:
            default:
                break;
        }
        if (ptr4 != 0) {
            if ((r1 = gSave.stats.picolyteType) == 0) {
                // nop
                ptr3 = &gDroptableModifiers[DROPTABLE_NONE];
            } else {
#ifdef EU
                ptr3 = &gEnemyDroptables[r1 + 9];
#else
                ptr3 = &gEnemyDroptables[r1 + 6];
#endif
            }
            // vector addition, s0 = ptr4 + ptr2 + ptr3
            sub_08000F14(droptable.a, ptr4->a, ptr2->a, ptr3->a);
            if (gSave.stats.health <= 8) {
                droptable.s.hearts += 5;
            }
            if (gSave.stats.bombCount == 0) {
                droptable.s.bombs += 3;
            }
            if (gSave.stats.arrowCount == 0) {
                droptable.s.arrows += 3;
            }
            if (gSave.stats.rupees <= 10) {
                droptable.s.rupee5++;
            }
            ptr2 = &gDroptableModifiers[DROPTABLE_NONE];
            r0 = gSave.stats.hasAllFigurines;
            ptr3 = &gDroptableModifiers[DROPTABLE_NONE];
            // don't drop shells anymore
            if (r0 != 0) {
                ptr2 = &gDroptableModifiers[DROPTABLE_NO_SHELLS];
            }
            // don't drop kinstones anymore
            if (gSave.didAllFusions != 0) {
                ptr3 = &gDroptableModifiers[DROPTABLE_NO_KINSTONES];
            }
            // vector addition, s0 = s0 + ptr2 + ptr3
            // resulting values are clamped to be >= 0
            // returns sum over s0
            summOdds = sub_08000F2C(droptable.a, droptable.a, ptr2->a, ptr3->a);
            rand = Random();
            item = (rand >> 0x18);
            item &= 0xF;
            rand = rand % summOdds;
            {
                u32 r3;
                for (r3 = 0, r1 = 0; r3 < 0x10; r3++, item = (item + 1) & 0xF) {
                    if ((r1 += droptable.a[item]) > rand) {
                        break;
                    }
                }
            }
            r1 = gUnk_080FE1B4[item];
            if (r1 != ITEM_NONE) {
                return CreateItemDrop(arg0, r1, 0);
            }
        }
    }
    return ITEM_NONE;
}

u32 CreateItemDrop(Entity* arg0, u32 itemId, u32 itemParameter) {
    u32 adjustedParam = itemParameter;
    Entity* itemEntity;

    switch (itemId) {
        case ITEM_ENEMY_BEETLE:
            if (!GetInventoryValue(ITEM_SMITH_SWORD)) {
                return ITEM_NONE;
            }
            break;
        case ITEM_BOMBS5:
            if (!GetInventoryValue(ITEM_BOMBBAG)) {
                return ITEM_NONE;
            }
            break;
        case ITEM_ARROWS5:
            if (!GetInventoryValue(ITEM_BOW)) {
                return ITEM_NONE;
            }
            break;
        case ITEM_SHELLS: {
            if (!GetInventoryValue(ITEM_EARTH_ELEMENT)) {
                return ITEM_NONE;
            }
            if (itemParameter == 0) {
                adjustedParam = 1;
            }
            break;
        }
        case ITEM_KINSTONE:
        case ITEM_KINSTONE_GREEN ... ITEM_KINSTONE_RED: {
            u32 rand;

            if (GetInventoryValue(ITEM_KINSTONE_BAG) == 0) {
                return ITEM_NONE;
            }
            if (3 < gRoomVars.filler1[0]) {
                return ITEM_NONE;
            }

            if (itemId != ITEM_KINSTONE) {
                adjustedParam = itemId - ITEM_KINSTONE_GREEN;
                rand = (Random() & 0x3f);
                adjustedParam = gUnk_080FE1DD[(rand + adjustedParam * 0x40)];
                if (adjustedParam == 0) {
                    itemId = ITEM_NONE;
                } else {
                    itemId = ITEM_KINSTONE;
                }
            }
            break;
        }
    }
    if (itemId != ITEM_NONE) {
        if (itemId != ITEM_ENEMY_BEETLE) {
            itemEntity = CreateObject(GROUND_ITEM, itemId, adjustedParam);
            if (itemEntity != NULL) {
                if (arg0 == &gPlayerEntity) {
                    itemEntity->timer = 1;
                } else {
                    itemEntity->timer = 0;
                }
                if (arg0->kind == OBJECT) {
                    if (arg0->id == 99) {
                        arg0->child = itemEntity;
                    } else if (arg0->id == 0x1e) {
                        itemEntity->direction = arg0->animationState << 3 | 0x80;
                        itemEntity->speed = 0xc0;
                        itemEntity->zVelocity = Q_16_16(1.5);
                    }
                }
                CopyPosition(arg0, itemEntity);
            }
        } else {
            itemEntity = CreateEnemy(BEETLE, 0);
            if (itemEntity != NULL) {
                itemEntity->x.HALF.HI = arg0->x.HALF.HI;
                itemEntity->y.HALF.HI = arg0->y.HALF.HI;
                itemEntity->collisionLayer = arg0->collisionLayer;
                UpdateSpriteForCollisionLayer(itemEntity);
            }
        }
    }
    return itemId;
}

void Subtask_WorldEvent(void) {
#if !(defined(DEMO_USA) || defined(DEMO_JP))
    gUnk_080FE2A0[gMenu.menuType]();
#endif
}

void sub_0805488C(void) {
    const struct_080FE320* ptr = &gUnk_080FE320[gUI.field_0x3];
    gMenu.field_0x0 = ptr->evt_type;
    gMenu.field_0x3 = ptr->entity_idx;
    gMenu.field_0x4 = gUI.field_0x3;
    gMenu.field_0xc = (u8*)ptr;
    gMenu.menuType++;
    gMenu.overlayType = 0;
    gMenu.transitionTimer = 300;
    DispReset(0);
    sub_08054974(gUI.field_0x3, 1);
    sub_0806F364();
    ClearRoomFlag(0xff);
    sub_080548E8();
}

void sub_080548E8(void) {
    gUnk_080FE2AC[gMenu.field_0x0]();
    FlushSprites();
    UpdateEntities();
    DrawEntities();
    CopyOAM();
    UpdateScroll();
    UpdateBgAnimations();
    UpdateScrollVram();
}

void sub_08054920(void) {
    MessageInitialize();
    sub_0806F38C();
    if (gUnk_080C9CBC[gFuseInfo._3]._5[1] != 0) {
        MenuFadeIn(10, gUI.field_0x3);
    } else {
        gUI.nextToLoad = 3;
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
    }
}

void sub_08054968(void) {
    gMenu.menuType = 2;
}

void sub_08054974(s32 param_1, s32 param_2) {
    struct_080FE320* ptr = &gUnk_080FE320[param_1];
    SetCurrentRoomPropertyList(ptr->area, ptr->room);
    gRoomControls.area = ptr->area;
    gRoomControls.room = ptr->room;
    LoadGfxGroups();
    gArea.localFlagOffset = GetFlagBankOffset(gRoomControls.area);
    if (param_2 != 0) {
        LoadAuxiliaryRoom(ptr->area, ptr->room);
    } else {
        sub_08052FF4(ptr->area, ptr->room);
        InitializeCamera();
        gUpdateVisibleTiles = 1;
    }
    gScreen.lcd.displayControl &= 0x1fff;
    gRoomControls.scroll_x = gRoomControls.origin_x + ptr->_4;
    gRoomControls.scroll_y = gRoomControls.origin_y + ptr->_6;
    if (ptr->area == AREA_HYRULE_TOWN) {
        TryLoadPrologueHyruleTown();
    }
    sub_08018710(gUI.field_0x3);
}

void sub_08054A14(s32 param_1) {
    struct_080FE320* ptr = &gUnk_080FE320[param_1];
    if (ptr->_11 < 0xe) {
        SetLocalFlagByBank(gLocalFlagBanks[ptr->_11], ptr->flag);
    }
}
