#include "global.h"
#include "entity.h"
#include "area.h"
#include "main.h"
#include "common.h"
#include "screen.h"
#include "object.h"
#include "functions.h"
#include "game.h"
#include "fileselect.h"

extern void ClearArmosData(void);
extern void sub_080300C4(void);

extern u16 gUnk_020178E0[];
extern u8 gUnk_02017700[];

extern void (*const gUnk_080D4120[])(void);
extern void (*const gUnk_080D412C[])(void);
extern const u16 gUnk_080D4140[];
extern const u8 gUnk_080D4138[];
extern const EntityData* gUnk_080D4110[];

bool32 sub_0804AD18(void);
void sub_0804AD6C(RoomControls*);
void sub_080A71F4(ScreenTransitionData*);
bool32 sub_0804ACA8(void);

bool32 CheckInitPortal(void) {
    if (gArea.portal_in_use) {
        gMain.substate = GAMEMAIN_MINISHPORTAL;
        gArea.filler[8] = 0;
        gArea.filler[9] = 0;
        *(u16*)&gArea.filler[10] = 0;
        SetInitializationPriority();
        return 1;
    } else {
        gArea.filler[18] = gArea.portal_in_use;
        *(vu8*)&gArea.portal_in_use = gArea.portal_in_use;
        return 0;
    }
}

void GameMain_MinishPortal(void) {
    gUnk_080D4120[gArea.filler[8]]();
}

void sub_0804AAD4(void) {
    MemClear(&gUnk_02018EB0, 0x28);
    gUnk_02018EB0.unk_14 = NULL;
    EraseAllEntities();
    CreateObject(MINISH_PORTAL_CLOSEUP, gArea.portal_type, 0);
    gArea.filler[8]++;
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
        gArea.filler[8] = 0;
        MenuFadeIn(6, 0);
        gFadeControl.active = 0;
    }
}

void Subtask_PortalCutscene(void) {
    gUnk_080D412C[gArea.filler[8]]();
}
void sub_0804AB70(void) {
    const u8* ptr;
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
    if ((portalId == 2) && (gUI.roomControls.area != 2)) {
        portalId = 3;
    }
    ptr = &gUnk_080D4138[portalId * 2];
    LoadPaletteGroup(ptr[0]);
    LoadGfxGroup(ptr[1]);
    MemCopy(&gUnk_02017700, gUnk_02017700 + 0x240, 0x20);
    gUsedPalettes |= 0x200000;
    EraseAllEntities();
    LoadRoomEntityList((EntityData*)gUnk_080D4110[portalId]);
    ResetSystemPriority();
    gArea.filler3[0]++;
    SetFade(FADE_INSTANT, 8);
}

void sub_0804AC1C(void) {
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

void sub_0804ACC8(void) {
    if (gFadeControl.active == 0) {
        SetGlobalFlag(gArea.portal_type + ENTRANCE_0);
        sub_0804AD6C(&gUI.roomControls);
        sub_080A71F4(0);
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
        case 0:
        case 1:
        case 2:
            if (!CheckGlobalFlag(ENTRANCE_0 + gArea.portal_type)) {
                return FALSE;
            }
            // else: return TRUE implicitely, because it's stored in r0. But does not match if returning explicitely.
            break;
        case 6:
            return FALSE;
        case 3:
        case 4:
        case 5:
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
    gRoomTransition.player_status.spawn_type = 1;
    gRoomTransition.player_status.area_next = controls->area;
    gRoomTransition.player_status.room_next = controls->room;
    gRoomTransition.player_status.layer = 0;
    ClearArmosData();
    sub_080300C4();
}
