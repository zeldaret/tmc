/**
 * @file enterPortalSubtask.c
 * @ingroup Subtasks
 *
 * @brief Enter Portal Subtask
 */
#include "enterPortalSubtask.h"

#include "area.h"
#include "common.h"
#include "entity.h"
#include "fileselect.h"
#include "functions.h"
#include "game.h"
#include "main.h"
#include "object.h"
#include "screen.h"
#include "subtask.h"

extern void ClearArmosData(void);
extern void sub_080300C4(void);

bool32 sub_0804AD18(void);
void sub_0804AD6C(RoomControls*);
bool32 sub_0804ACA8(void);

// Entities spawned inside the portal transition cutscene.
const EntityData gUnk_080D3E90[] = {
    { OBJECT, 15, PORTAL_FALLING_PLAYER, 0, 0, 132, 156, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 0, 6, 120, 208, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 1, 1, 132, 160, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 2, 2, 96, 192, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 3, 3, 128, 208, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 5, 0, 120, 104, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 6, 1, 216, 200, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 7, 2, 120, 292, 0 },
    { OBJECT, 15, PORTAL_MUSHROOM_STALKS, 8, 3, 17, 200, 0 },
    { 0xff, 0, 0, 0, 0, 0, 0, 0 },
};
const EntityData gUnk_080D3F30[] = {
    { OBJECT, 15, PORTAL_FALLING_PLAYER, 0, 0, 132, 156, 0 }, //
    { OBJECT, 15, MACRO_CRYSTAL, 0, 6, 120, 200, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 1, 3, 132, 160, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 2, 2, 96, 192, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 3, 1, 128, 208, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 5, 0, 120, 104, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 6, 1, 216, 200, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 7, 2, 120, 292, 0 },
    { OBJECT, 15, MACRO_CRYSTAL, 8, 3, 17, 200, 0 },
    { 0xff, 0, 0, 0, 0, 0, 0, 0 },
};
const EntityData gUnk_080D3FD0[] = {
    { OBJECT, 15, PORTAL_FALLING_PLAYER, 0, 0, 132, 156, 0 },
    { OBJECT, 15, MACRO_LEAF, 0, 6, 120, 208, 0 },
    { OBJECT, 15, MACRO_LEAF, 1, 1, 132, 160, 0 },
    { OBJECT, 15, MACRO_LEAF, 2, 2, 96, 192, 0 },
    { OBJECT, 15, MACRO_LEAF, 3, 3, 128, 208, 0 },
    { OBJECT, 15, MACRO_LEAF, 5, 0, 120, 104, 0 },
    { OBJECT, 15, MACRO_LEAF, 6, 1, 216, 200, 0 },
    { OBJECT, 15, MACRO_LEAF, 7, 2, 120, 300, 0 },
    { OBJECT, 15, MACRO_LEAF, 8, 3, 17, 200, 0 },
    { 0xff, 0, 0, 0, 0, 0, 0, 0 },
};
const EntityData gUnk_080D4070[] = {
    { OBJECT, 15, PORTAL_FALLING_PLAYER, 0, 0, 132, 156, 0 },
    { OBJECT, 15, MACRO_LEAF, 9, 6, 120, 208, 0 },
    { OBJECT, 15, MACRO_LEAF, 10, 1, 132, 160, 0 },
    { OBJECT, 15, MACRO_LEAF, 11, 2, 96, 192, 0 },
    { OBJECT, 15, MACRO_LEAF, 12, 3, 128, 208, 0 },
    { OBJECT, 15, MACRO_LEAF, 14, 0, 120, 104, 0 },
    { OBJECT, 15, MACRO_LEAF, 15, 1, 216, 200, 0 },
    { OBJECT, 15, MACRO_LEAF, 16, 2, 120, 300, 0 },
    { OBJECT, 15, MACRO_LEAF, 17, 3, 17, 200, 0 },
    { 0xff, 0, 0, 0, 0, 0, 0, 0 },
};

const EntityData* const gUnk_080D4110[] = {
    gUnk_080D3E90,
    gUnk_080D3F30,
    gUnk_080D3FD0,
    gUnk_080D4070,
};

void sub_0804AAD4(void);
void sub_0804AB04(void);
void sub_0804AB24(void);
void Subtask_PortalCutscene_0(void);
void Subtask_PortalCutscene_1(void);
void Subtask_PortalCutscene_2(void);

void (*const gUnk_080D4120[])(void) = {
    sub_0804AAD4,
    sub_0804AB04,
    sub_0804AB24,
};
void (*const Subtask_PortalCutscene_Functions[])(void) = {
    Subtask_PortalCutscene_0,
    Subtask_PortalCutscene_1,
    Subtask_PortalCutscene_2,
};

const struct_080D4138 gUnk_080D4138[] = {
    { 95, 39 },
    { 96, 40 },
    { 97, 41 },
    { 98, 42 },
};

// x, y values. But they cannot be put in a struct matching?
const s16 gUnk_080D4140[] = {
    0,   -22, //
    22,  0,   //
    0,   22,  //
    -22, 0,
};

bool32 CheckInitPortal(void) {
    if (gArea.portal_in_use) {
        gMain.substate = GAMEMAIN_MINISHPORTAL;
        gArea.filler3[0] = 0;
        gArea.filler3[1] = 0;
        gArea.field_0x10 = 0;
        SetInitializationPriority();
        return TRUE;
    } else {
        gArea.portal_mode = 0;
        gArea.portal_in_use = FALSE;
        return FALSE;
    }
}

void GameMain_MinishPortal(void) {
    gUnk_080D4120[gArea.filler3[0]]();
}

void sub_0804AAD4(void) {
    MemClear(&gUnk_02018EB0, 0x28);
    gUnk_02018EB0.unk_14 = NULL;
    EraseAllEntities();
    CreateObject(MINISH_PORTAL_CLOSEUP, gArea.portal_type, 0);
    gArea.filler3[0]++;
}

void sub_0804AB04(void) {
    UpdateEntities();
    if (gArea.field_0x10 != 0) {
        FlushSprites();
        DrawEntities();
        CopyOAM();
    }
}

void sub_0804AB24(void) {
    if (!gFadeControl.active) {
        gScreen.lcd.displayControl = 0;
        sub_0801E104();
        gArea.filler3[0] = 0;
        MenuFadeIn(6, 0);
        gFadeControl.active = 0;
    }
}

void Subtask_PortalCutscene(void) {
    Subtask_PortalCutscene_Functions[gArea.filler3[0]]();
}
void Subtask_PortalCutscene_0(void) {
    const struct_080D4138* ptr;
    RoomControls* controls;
    u32 portalId;

    DispReset(0);
    gScreen.lcd.displayControl = 0x1240;
    gScreen.bg1.control = 0x9e83;
    controls = &gRoomControls;
    gScreen.bg1.xOffset = 0;
    controls->scroll_x = 0;
    gScreen.bg1.yOffset = 0;
    controls->scroll_y = 0;
    portalId = gArea.portal_type;
    if ((portalId == PT_2) && (gUI.roomControls.area != 2)) {
        portalId = PT_DUNGEON;
    }
    ptr = &gUnk_080D4138[portalId];
    LoadPaletteGroup(ptr->paletteGroup);
    LoadGfxGroup(ptr->gfxGroup);
    MemCopy(gPaletteBuffer + 3 * 16, gPaletteBuffer + 21 * 16, 16 * 2);
    gUsedPalettes |= 1 << 21;
    EraseAllEntities();
    LoadRoomEntityList(gUnk_080D4110[portalId]);
    ClearEventPriority();
    gArea.filler3[0]++;
    SetFade(FADE_INSTANT, 8);
}

void Subtask_PortalCutscene_1(void) {
    s32 tmp;

    UpdateEntities();
    if (gUnk_02018EB0.unk_14 != NULL) {
        tmp = gRoomControls.scroll_y + 0x50 - gUnk_02018EB0.unk_14->y.HALF.HI - gUnk_02018EB0.unk_14->z.HALF.HI;
        if (tmp != 0) {
            tmp = gRoomControls.scroll_y = gRoomControls.scroll_y - tmp;
            if (tmp * 0x10000 < 0) {
                gRoomControls.scroll_y = 0;
            }
            if (0x9f < gRoomControls.scroll_y) {
                gRoomControls.scroll_y = 0x9f;
            }
        }
    }
    gScreen.bg1.xOffset = gRoomControls.scroll_x;
    gScreen.bg1.yOffset = gRoomControls.scroll_y;
    FlushSprites();
    DrawEntities();
    CopyOAM();
    if ((gUnk_02018EB0.unk_1b != 0) || sub_0804ACA8()) {
        gArea.filler3[0]++;
        SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 0x10);
    }
}

bool32 sub_0804ACA8(void) {
    if ((gInput.newKeys & (R_BUTTON | B_BUTTON)) == 0) {
        return 0;
    } else {
        return sub_0804AD18();
    }
}

void Subtask_PortalCutscene_2(void) {
    if (gFadeControl.active == 0) {
        SetGlobalFlag(gArea.portal_type + ENTRANCE_0);
        sub_0804AD6C(&gUI.roomControls);
        sub_080A71F4(NULL);
    }
}

void RespawnAsMinish(void) {
    if (sub_0804AD18()) {
        sub_0804AD6C(&gRoomControls);
        SetInitializationPriority();
        SoundReq(SFX_F8);
    }
}

bool32 sub_0804AD18(void) {
    switch (gArea.portal_type) {
        case PT_TREESTUMP:
        case PT_ROCK:
        case PT_2:
            if (!CheckGlobalFlag(ENTRANCE_0 + gArea.portal_type)) {
                return FALSE;
            }
            // else: return TRUE implicitely, because it's stored in r0. But does not match if returning explicitely.
            break;
        case PT_TOD:
            return FALSE;
        case PT_DUNGEON:
        case PT_JAR:
        case PT_5:
        default:
            return FALSE;
    }
}

void sub_0804AD6C(RoomControls* controls) {
    Area* area;
    gRoomTransition.transitioningOut = 1;
    gRoomTransition.type = 0;
    area = &gArea;
    gRoomTransition.player_status.start_pos_x =
        (area->portal_x + gUnk_080D4140[area->portal_exit_dir * 2]) - controls->origin_x;
    gRoomTransition.player_status.start_pos_y =
        (area->portal_y + gUnk_080D4140[area->portal_exit_dir * 2 + 1]) - controls->origin_y;
    gRoomTransition.player_status.start_anim = area->portal_exit_dir << 1;
    gRoomTransition.player_status.spawn_type = PL_SPAWN_MINISH;
    gRoomTransition.player_status.area_next = controls->area;
    gRoomTransition.player_status.room_next = controls->room;
    gRoomTransition.player_status.layer = 0;
    ClearArmosData();
    sub_080300C4();
}

// TODO end of portal cutscene subtask?
