/**
 * @file gameUtils.c
 *
 * @brief Game Utils
 */
#include "area.h"
#include "backgroundAnimations.h"
#include "enemy.h"
#include "entity.h"
#include "fade.h"
#include "fileselect.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "itemMetaData.h"
#include "main.h"
#include "menu.h"
#include "npc.h"
#include "object.h"
#include "save.h"
#include "screen.h"
#include "script.h"
#include "sound.h"
#include "ui.h"

u32 StairsAreValid(void);
void ClearFlagArray(const u16*);
void DummyHandler(u32* a1);
void DarknutTimerHandler(u32* a1);
void BiggoronTimerHandler(u32* a1);
void InitAllRoomResInfo(void);
void InitRoomResInfo(RoomResInfo* info, RoomHeader* hdr, u32 area, u32 room);
void sub_080532E4(void);
void ResetTimerFlags(void);

extern void** gAreaTileSets[];
extern void** gAreaRoomMaps[];
extern void* gAreaTiles[];
extern void** gAreaTable[];

typedef struct {
    u8 dest_off[8];
    u8 _8;
    u8 right_align;
    u16 _a;
} PopupOption;

extern u8 gUnk_0200AF14;

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
    ShowTextBox(opt->_a, &font);
    gScreen.bg1.updated = fakematch;
}

void InitializePlayer(void) {
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

    ResetPossibleInteraction();
    MemClear(&gActiveItems, sizeof(gActiveItems));
    MemClear(&gPlayerState, sizeof(gPlayerState));
    MemFill32(0xffffffff, &gPlayerState.path_memory, sizeof(gPlayerState.path_memory));
    MemClear(&gPlayerEntity.base, sizeof(gPlayerEntity));

    pl = &gPlayerEntity.base;

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
    return gArea.areaMetadata == AR_IS_OVERWORLD;
#else
    return gArea.areaMetadata == (AR_ALLOWS_WARP | AR_IS_OVERWORLD);
#endif
}

bool32 CheckAreaOverworld(u32 area) {
#if EU
    return gAreaMetadata[area].flags == AR_IS_OVERWORLD;
#else
    return gAreaMetadata[area].flags == (AR_ALLOWS_WARP | AR_IS_OVERWORLD);
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
        newHealth = stats->maxHealth;
    }
    stats->health = newHealth;
    gPlayerEntity.base.health = newHealth;
    return newHealth;
}

void ModRupees(s32 delta) {
    s32 newRupeeCount;
    Stats* s = &gSave.stats;

    newRupeeCount = s->rupees + delta;
    if (newRupeeCount < 0) {
        newRupeeCount = 0;
    } else {
        if (newRupeeCount > gWalletSizes[s->walletType].size) {
            newRupeeCount = gWalletSizes[s->walletType].size;
        }
    }
    s->rupees = newRupeeCount;
}

void ModDungeonKeys(s32 keys) {
    if (AreaHasKeys()) {
        u8* p = &gSave.dungeonKeys[gArea.dungeon_idx];
        if (*p + keys < 0)
            *p = 0;
        else
            *p += keys;
    }
}

bool32 AreaHasKeys(void) {
    return (gArea.areaMetadata >> 1) & 1;
}

bool32 HasDungeonSmallKey(void) {
    u32 tmp;

    if (AreaHasKeys())
        tmp = gSave.dungeonKeys[gArea.dungeon_idx];
    return tmp ? 1 : 0;
}

bool32 HasDungeonBigKey(void) {
    u32 tmp;

    if (AreaHasKeys())
        tmp = gSave.dungeonItems[gArea.dungeon_idx] & 4;
    return tmp ? 1 : 0;
}

bool32 HasDungeonCompass(void) {
    if (!AreaHasKeys())
        return 0;
    return (gSave.dungeonItems[gArea.dungeon_idx] >> 1) & 1;
}

bool32 HasDungeonMap(void) {
    if (!AreaHasKeys())
        return 0;
    return gSave.dungeonItems[gArea.dungeon_idx] & 1;
}

extern u8 gPaletteBufferBackup[];
void RestoreGameTask(bool32 loadGfx) {
    LoadGfxGroups();
#ifndef EU
    CleanUpGFXSlots();
#endif
    sub_080ADE24();
    InitUI(TRUE);
    sub_0801AE44(loadGfx);
    MemCopy(gPaletteBufferBackup, gPaletteBuffer, 1024);
    gUsedPalettes = 0xffffffff;
}

void LoadRoomBgm(void) {
    gArea.queued_bgm = gAreaMetadata[gRoomControls.area].queueBgm;
    if (CheckLocalFlagByBank(FLAG_BANK_10, LV6_KANE_START)) {
        gArea.queued_bgm = BGM_FIGHT_THEME2;
    }
}

#ifndef EU
void sub_08052878(void) {
    gArea.bgm = gArea.queued_bgm;
    SoundReq(SONG_STOP_ALL);
}

void sub_0805289C(void) {
    gArea.queued_bgm = gArea.bgm;
}
#endif

bool32 CheckGameOver(void) {
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

bool32 CheckRoomExit(void) {
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

u32 StairsAreValid(void) {
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
    gRoomTransition.player_status.start_pos_x = (gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x) & 0x3F8;
    gRoomTransition.player_status.start_pos_y = (gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y) & 0x3F8;
    gRoomTransition.player_status.start_anim = 4;
    gRoomTransition.player_status.spawn_type = PL_SPAWN_PARACHUTE_FORWARD;
    gRoomTransition.player_status.area_next = gRoomControls.area;
    gRoomTransition.player_status.room_next = gRoomControls.room - 1;
}

void InitRoomTransition(void) {
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
        gPauseMenuOptions.disabled || gHUD.hideFlags != HUD_HIDE_NONE)
        return FALSE;

    if ((gPlayerState.flags & (PL_NO_CAP | PL_CAPTURED | PL_DISABLE_ITEMS)) || (gPlayerState.framestate_last > tmp) ||
        gPlayerState.item || gPlayerEntity.unk_7a)
        return FALSE;

    if ((gPlayerEntity.base.z.HALF.HI & 0x8000) && !gPlayerState.field_0xa)
        return FALSE;

    GenerateAreaHint();
    ForceSetPlayerState(PL_STATE_TALKEZLO);
    SetPlayerEventPriority();
    return TRUE;
}

void DisplayEzloMessage(void) {
    u32 height;
    u32 idx;
    if (gRoomTransition.hint_height == 0) {
        height = gPlayerEntity.base.y.HALF.HI - gRoomControls.scroll_y > 96 ? 1 : 13;
    } else {
        height = gRoomTransition.hint_height;
    }
    MessageAtHeight(gRoomTransition.hint_idx, height);
}

#if defined(USA) || defined(DEMO_USA) || defined(DEMO_JP)
void CreateMiscManager(void) {
    Entity* e = NULL;

    if (gRoomTransition.field31)
        return;
    gRoomTransition.field31 = 1;
#ifndef DEMO_JP
    gRoomTransition.location = gArea.locationIndex;
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

void DecreasePortalTimer(void) {
    if (gArea.portal_mode == 0)
        gArea.portal_timer = 0;
    if (gArea.portal_timer) {
        gArea.portal_timer--;
        gArea.portal_mode = 0;
    }
}

void UpdatePlayerMapCoords(void) {
    if (!AreaHasNoEnemies()) {
        if (AreaIsOverworld()) {
            gRoomTransition.player_status.overworld_map_x = gPlayerEntity.base.x.HALF_U.HI;
            gRoomTransition.player_status.overworld_map_y = gPlayerEntity.base.y.HALF_U.HI;
        } else if (AreaIsDungeon()) {
            gRoomTransition.player_status.dungeon_map_x = gPlayerEntity.base.x.HALF.HI;
            gRoomTransition.player_status.dungeon_map_y = gPlayerEntity.base.y.HALF.HI;
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
    const AreaHeader* a_hdr = NULL;

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
    const AreaHeader* a_hdr = &gAreaMetadata[idx];
    return gLocalFlagBanks[a_hdr->flag_bank];
}

void RegisterTransitionManager(void* mgr, void (*onEnter)(), void (*onExit)()) {
    if (gMain.substate != GAMEMAIN_SUBTASK) {
        gArea.transitionManager = mgr;
        gArea.onEnter = onEnter;
        gArea.onExit = onExit;
    }
}

void InitAllRoomResInfo(void) {
    RoomHeader* r_hdr = gAreaRoomHeaders[gRoomControls.area];
    RoomResInfo* info = gArea.roomResInfos;
    u32 i;
    for (i = 0; i < MAX_ROOMS && *(u16*)r_hdr != 0xFFFF; i++, r_hdr++) {
        if (r_hdr->tileSet_id != 0xFFFF)
            InitRoomResInfo(info, r_hdr, gRoomControls.area, i);
        info++;
    }
    gArea.pCurrentRoomInfo = GetCurrentRoomInfo();
}

void InitRoomResInfo(RoomResInfo* info, RoomHeader* r_hdr, u32 area, u32 room) {
    info->map_x = r_hdr->map_x;
    info->map_y = r_hdr->map_y;
    info->pixel_width = r_hdr->pixel_width;
    info->pixel_height = r_hdr->pixel_height;
    info->tileSet = *(gAreaTileSets[area] + r_hdr->tileSet_id);
    info->map = *(gAreaRoomMaps[area] + room);
    info->tiles = gAreaTiles[area];
    info->bg_anim = (void*)gUnk_080B755C[area];
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
    gRoomVars.graphicsGroups[0] = -1;
    gRoomVars.graphicsGroups[1] = gRoomVars.graphicsGroups[0];
    gRoomVars.graphicsGroups[2] = gRoomVars.graphicsGroups[0];
    gRoomVars.graphicsGroups[3] = gRoomVars.graphicsGroups[0];
    gRoomVars.lightLevel = 256;
    gArea.locationIndex = gAreaMetadata[gRoomControls.area].location;
    UpdateRoomTracker();
    InitScriptData();
    sub_08054524();
    sub_080186D4();
    sub_0806F364();
    UpdateGlobalProgress();
}

u32 sub_08052EF4(s32 idx) {
    const AreaHeader* a_hdr = NULL;
    u32 i = idx < 0 ? gRoomControls.area : idx;
    a_hdr = &gAreaMetadata[i];
    return gLocalFlagBanks[a_hdr->flag_bank];
}

/**
 * @brief If enabled, this type of transition does not change the room
 * and keeps all entities.
 */
void UpdateFakeScroll(void) {
    u32 x, y;
    LinkedList* ll;
    Entity* e;

    if (gArea.unk_0c_0 == 0 || !gRoomVars.didEnterScrolling)
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

    ClearTileMaps();
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
    gArea.currentRoomInfo.tileSet = *(gAreaTileSets[area] + r_hdr->tileSet_id);
    gArea.currentRoomInfo.map = *(gAreaRoomMaps[area] + room);
    gArea.currentRoomInfo.tiles = gAreaTiles[area];
    gArea.currentRoomInfo.bg_anim = (void*)gUnk_080B755C[area];
}

void ChangeLightLevel(s32 lightLevel) {
    lightLevel += gRoomVars.lightLevel;
    if (lightLevel < 0)
        lightLevel = 0;
    if (lightLevel > 256)
        lightLevel = 256;
    gRoomVars.lightLevel = lightLevel;
}

void sub_080530B0(void) {
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

u32 sub_08053144(void) {
    u32 ret;

    if (CheckGlobalFlag(ENDING))
        return 0;
    ret = 0;
    if (gArea.locationIndex != 0)
        ret = !!(gRoomTransition.location ^ gArea.locationIndex);
    return ret;
}

void CheckAreaDiscovery(void) {
    if (!sub_08053144())
        return;

    gRoomTransition.location = gArea.locationIndex;

    if (!CheckGlobalFlag(TABIDACHI))
        return;

    if (!CheckGlobalFlag(ENDING)) {
        Entity* e = (Entity*)GetEmptyManager();
        if (e != NULL) {
            e->kind = MANAGER;
            e->id = ENTER_ROOM_TEXTBOX_MANAGER;
            AppendEntityToList(e, 8);
            if (!gRoomVars.didEnterScrolling && !ReadBit(gSave.areaVisitFlags, gArea.locationIndex)) {
                e->type2 = 1;
                SetPlayerControl(3);
                SetInitializationPriority();
            }
        }
    }
    WriteBit(gSave.areaVisitFlags, gArea.locationIndex);
}

void UpdatePlayerRoomStatus(void) {
    gPlayerState.startPosX = gPlayerEntity.base.x.HALF.HI;
    gPlayerState.startPosY = gPlayerEntity.base.y.HALF.HI;
    if (sub_08053144()) {
        MemCopy(&gRoomTransition.player_status, &gSave.saved_status, sizeof gRoomTransition.player_status);
        if (AreaIsDungeon()) {
            gRoomTransition.player_status.dungeon_area = gRoomControls.area;
            gRoomTransition.player_status.dungeon_room = gRoomControls.room;
            gRoomTransition.player_status.dungeon_x = gPlayerEntity.base.x.HALF.HI;
            gRoomTransition.player_status.dungeon_y = gPlayerEntity.base.y.HALF.HI;
        }
    }
}

void sub_08053250(void) {
    gRoomTransition.player_status.spawn_type = PL_SPAWN_DEFAULT;
    gRoomTransition.player_status.start_pos_x = gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x;
    gRoomTransition.player_status.start_pos_y = gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y;
    gRoomTransition.player_status.start_anim = gPlayerEntity.base.animationState;
    gRoomTransition.player_status.layer = gPlayerEntity.base.collisionLayer;
    gRoomTransition.player_status.area_next = gRoomControls.area;
    gRoomTransition.player_status.room_next = gRoomControls.room;
    MemCopy(&gRoomTransition.player_status, &gSave.saved_status, sizeof gRoomTransition.player_status);
}

void sub_0805329C(void) {
    if (sub_08053144()) {
        switch (gRoomControls.area) {
            case AREA_DEEPWOOD_SHRINE:
                gSave.dws_barrel_state = 0;
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

void sub_080532E4(void) {
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
    u16* p1 = gPaletteBuffer + 288;
    u16* p2 = gPaletteBuffer + 32;
    *p2++ = *p1++;
    *p2++ = *p1++;
    *p2++ = *p1++;
    *p2++ = *p1++;
    *p2++ = *p1++;
    gUsedPalettes |= 1 << 3;
}

void UpdateTimerCallbacks(void) {
    static void (*const sHandlers[])(u32*) = {
        DarknutTimerHandler, DummyHandler, BiggoronTimerHandler, DummyHandler,
        DummyHandler,        DummyHandler, DummyHandler,         DummyHandler,
    };

    u32* p;
    u32 i;

    p = &gSave.darknut_timer;
    for (i = 0; i < 8; i++, p++) {
        (sHandlers[i])(p);
    }
}

void DummyHandler(u32* timer) {
}

void DarknutTimerHandler(u32* timer) {
    if (gArea.locationIndex == 29 && *timer) { // AREA_DARK_HYRULE_CASTLE
        if (!--*timer) {
            ResetTimerFlags();
            MenuFadeIn(5, 6);
        }
    }
}

void ResetTimerFlags(void) {
    static const u16 sClearFlags[] = {
        FLAG_BANK_10, LV6_GUFUU1_GISHIKI, //
        FLAG_BANK_10, LV6_GUFUU1_DEMO,    //
        FLAG_BANK_10, LV6_ZELDA_DISCURSE, //
        FLAG_BANK_10, LV6_00_ESCAPE,      //
        FLAG_BANK_10, LV6_GUFUU2_DEAD,    //
        FLAG_BANK_G,  ENDING,             //
        FLAG_BANK_10, LV6_KANE_START,     //
        FLAG_BANK_10, LV6_KANE_1ST,       //
        FLAG_BANK_10, LV6_KANE_2ND,       //
        FLAG_BANK_10, LV6_SOTO_ENDING,    //
        0xFFFF,
    };

    gSave.darknut_timer = 0;
    if (CheckLocalFlagByBank(FLAG_BANK_10, LV6_ZELDA_DISCURSE))
        ClearGlobalFlag(ZELDA_CHASE);
    ClearFlagArray(sClearFlags);
}

void StartDarkNutTimer(void) {
    gSave.darknut_timer = 10800;
}

void sub_080534AC(void) {
    if (CheckLocalFlagByBank(FLAG_BANK_10, LV6_KANE_START)) {
        ClearLocalFlagByBank(FLAG_BANK_10, LV6_KANE_START);
        gSave.darknut_timer = 0;
        SoundReq(SONG_STOP_BGM);
    }
}

void BiggoronTimerHandler(u32* timer) {
    if (gRoomControls.area != AREA_VEIL_FALLS_TOP && *timer)
        --*timer;
}

void InitBiggoronTimer(void) {
    gSave.biggoron_timer = 36000;
}

void ResetTmpFlags(void) {
    static const u16 sClearFlags[] = {
        FLAG_BANK_2, BILL00_SHICHOU_00,     //
        FLAG_BANK_2, BILL0A_YADO_TAKARA_00, //
        FLAG_BANK_2, BILL0C_SCHOOLR_00,     //
        FLAG_BANK_1, MACHI00_00,            //
        FLAG_BANK_1, MACHI00_02,            //
        FLAG_BANK_2, MHOUSE06_00,           //
        FLAG_BANK_2, MHOUSE14_00,           //
        FLAG_BANK_2, MHOUSE2_00_02,         //
        FLAG_BANK_2, MHOUSE2_01_T0,         //
        FLAG_BANK_2, MHOUSE2_02_KAME,       //
        FLAG_BANK_2, SHOP00_ITEM_01,        //
        FLAG_BANK_2, SHOP01_CAFE_01,        //
        0xFFFF,
    };

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

void ClearFlagArray(const u16* p) {
    const u16* i;

    for (i = p; i[0] != 0xFFFF; i += 2)
        ClearLocalFlagByBank(i[0], i[1]);
}
