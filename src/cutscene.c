/**
 * @file cutscene.c
 *
 * @brief Cutscenes
 */
#include "cutscene.h"

#include "enemy.h"
#include "fade.h"
#include "fileselect.h"
#include "functions.h"
#include "game.h"
#include "main.h"
#include "menu.h"
#include "npc.h"
#include "object.h"
#include "screen.h"
#include "tiles.h"

void sub_08051F78(void);
void sub_08051FF0(void);
void sub_08052004(void);

const EntityData gUnk_080FCB94[] = {
    { OBJECT, 15, CHUCHU_BOSS_CUTSCENE, 0, 0, 0x1c8, 0x288, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

void sub_080535AC(void);
void sub_080535F4(void);
void nullsub_481(void);
void sub_08053618(void);
void (*const gUnk_080FCBB4[])(void) = {
    sub_080535AC,
    sub_080535F4,
    nullsub_481,
    sub_08053618,
};

void CutsceneMain_Init(void) {
    gUnk_080FCBB4[gMenu.overlayType]();
}

void sub_080535AC(void) {
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120;
    gUI.loadGfxOnRestore = TRUE;
    gUpdateVisibleTiles = 1;
    gScreen.lcd.displayControl &= 0xfeff;
    LoadRoomEntityList(gUnk_080FCB94);
    SetFade(FADE_BLACK_WHITE | FADE_INSTANT, 8);
}

void sub_080535F4(void) {
    if (gFadeControl.active == 0) {
        ClearEventPriority();
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
    gUI.nextToLoad = 3; // Subtask_FadeOut
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
        SoundReq(SFX_F0); // TODO Door sound during intro
    }
}

void sub_080536A8(void) {
    sub_080A71C4(5, 5, FADE_INSTANT, 0x10);
}

void sub_080536B8(void) {
    sub_080A71C4(5, 3, FADE_INSTANT, 4);
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

extern Script script_IntroCameraTarget;
extern Script script_ZeldaMoveToLinksHouse;
extern Script script_HouseDoorIntro;
extern Script script_CutsceneOrchestratorIntro2;

const EntityData gUnk_080FCBC4[] = {
    { OBJECT, 79, CUTSCENE_ORCHESTRATOR, 0, 0, 0x230, 0x1a8, (u32)&script_IntroCameraTarget },
    { NPC, 79, ZELDA, 0, 0, 0x230, 0x1a8, (u32)&script_ZeldaMoveToLinksHouse },
    { OBJECT, 79, HOUSE_DOOR_EXT, 3, 3, 0x290, 0x193, (u32)&script_HouseDoorIntro },
    { OBJECT, 79, CUTSCENE_ORCHESTRATOR, 0, 0, 0x2d0, 0x1a8, (u32)&script_CutsceneOrchestratorIntro2 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

extern Script script_CutsceneOrchestratorIntro;
extern Script script_SmithIntro;
extern Script script_ZeldaIntro;
const EntityData gUnk_080FCC14[] = {
    { OBJECT, 79, CUTSCENE_ORCHESTRATOR, 0, 0, 0x0, 0x0, (u32)&script_CutsceneOrchestratorIntro },
    { NPC, 79, SMITH, 0, 0, 0xb8, 0x60, (u32)&script_SmithIntro },
    { NPC, 79, ZELDA, 0, 0, 0x8, 0x5e, (u32)&script_ZeldaIntro },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

extern Script script_ZeldaLeaveLinksHouse;
const EntityData gUnk_080FCC54[] = {
    { NPC, 79, ZELDA, 0, 0, 0xa0, 0x5d, (u32)&script_ZeldaLeaveLinksHouse },
    { OBJECT, 15, HOUSE_DOOR_INT, 4, 256, 0x78, 0x88, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

const Font gUnk_080FCC84 = {
    &gBG1Buffer[0x1cf], BG_TILE_ADDR(0x188), gTextGfxBuffer, 0, 0xf020, 0xf0, 1, 0, 0, 0, 0, 5, 0, 0, 0
};
const Font gUnk_080FCC9C = {
    &gBG1Buffer[0x96], BG_TILE_ADDR(0x188), gTextGfxBuffer, 0, 0xf020, 0x78, 1, 0, 0, 0, 0, 5, 0, 0, 0
};

const struct_080FCCB4 gUnk_080FCCB4[] = {
    { &gUnk_080FCC84, 240, 96, 193, 1 },  { &gUnk_080FCC84, 240, 96, 453, 6 }, { &gUnk_080FCC9C, 120, 160, 363, 4 },
    { &gUnk_080FCC9C, 120, 160, 498, 4 }, { &gUnk_080FCC84, 240, 96, 368, 4 }, { &gUnk_080FCC84, 240, 96, 358, 4 },
};

void sub_08053758(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053904(void);
void sub_08053974(void);
void nullsub_482(void);
void sub_080539BC(void);
void (*const gUnk_080FCCFC[])(void) = {
    sub_08053758, sub_08053800, sub_08053894, sub_08053800, sub_08053894, sub_08053800, sub_08053894, sub_08053800,
    sub_08053894, sub_08053800, sub_08053904, sub_08053974, nullsub_482,  sub_080539BC, nullsub_482,
};

void sub_080536D4(void) {
    gUnk_080FCCFC[gMenu.overlayType]();
}

void sub_0805370C(void);
void (*const gUnk_080FCD38[])(void) = {
    sub_0805370C,
    nullsub_482,
};

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

void sub_08053758(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_08053800(void);
void sub_08053894(void);
void sub_080539F4(void);
void sub_08053A1C(void);
void sub_08053A5C(void);
void sub_08053A90(void);
void (*const gUnk_080FCD40[])(void) = {
    sub_08053758, sub_08053800, sub_08053894, sub_08053800, sub_08053894, sub_08053800,
    sub_08053894, sub_08053800, sub_08053894, sub_08053800, sub_08053894, sub_08053800,
    sub_08053894, sub_080539F4, sub_08053A1C, sub_08053A5C, sub_08053A90,
};

void sub_0805373C(void) {
    gUnk_080FCD40[gMenu.overlayType]();
}

void sub_08053758(void) {
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120;
    gMenu.field_0xa = 0x1e;
    *((u8*)&gMenu + 0x10) = 0; // TODO
    gUI.loadGfxOnRestore = TRUE;
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
    ClearEventPriority();
    SetFade(FADE_IN_OUT | FADE_INSTANT, 0x100);
}

void sub_08053800(void) {
    u32 index;
    const struct_080FCCB4* ptr;
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
        ShowTextBox(TEXT_INDEX(TEXT_PICORI, 1) + index, ptr->font);
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
        LoadRoomEntityList(gUnk_080FCBC4);
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
    LoadRoomEntityList(gUnk_080FCC14);
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
    if (((gMessage.state & MESSAGE_ACTIVE) == 0) && --gMenu.transitionTimer == 0) {
        gMenu.overlayType++;
        SetFade(FADE_IN_OUT | FADE_INSTANT, 8);
    }
}

void sub_08053A90(void) {
    if (gFadeControl.active == 0) {
        gUI.nextToLoad = 3; // Subtask_FadeOut
        SetBGDefaults();
    }
}

extern Script script_CutsceneOrchestratorMinishVaati;
extern Script script_MinishEzlo;
extern Script script_CutsceneMiscObjectMinishCap;
extern Script script_Vaati;

const EntityData gUnk_080FCD84[] = {
    { OBJECT, 79, CUTSCENE_ORCHESTRATOR, 0, 0, 0x0, 0x0, (u32)&script_CutsceneOrchestratorMinishVaati },
    { NPC, 79, MINISH_EZLO, 0, 0, 0x78, 0xd8, (u32)&script_MinishEzlo },
    { OBJECT, 79, CUTSCENE_MISC_OBJECT, 1, 0, 0x78, 0x58, (u32)&script_CutsceneMiscObjectMinishCap },
    { NPC, 79, VAATI, 1, 0, 0x78, 0x68, (u32)&script_Vaati },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

void sub_08053ACC(void);
void sub_08053B00(void);
void sub_08053B10(void);
void (*const gUnk_080FCDD4[])(void) = {
    sub_08053ACC,
    sub_08053B00,
    sub_08053B10,
};

void sub_08053AB0(void) {
    gUnk_080FCDD4[gMenu.overlayType]();
}

void sub_08053ACC(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    sub_08051FF0();
    LoadRoomEntityList(gUnk_080FCD84);
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

extern Script script_CutsceneOrchestratorTakeoverCutscene;
extern Script script_KingDaltusTakeover;
extern Script script_VaatiTakeover;
extern Script script_ZeldaStoneTakeover;
const EntityData gUnk_080FCDE0[] = {
    { OBJECT, 79, CUTSCENE_ORCHESTRATOR, 0, 0, 0x0, 0x0, (u32)&script_CutsceneOrchestratorTakeoverCutscene },
    { NPC, 79, KING_DALTUS, 0, 0, 0x88, 0x58, (u32)&script_KingDaltusTakeover },
    { NPC, 79, VAATI, 1, 0, 0x88, 0xe0, (u32)&script_VaatiTakeover },
    { NPC, 79, ZELDA, 0, 0, 0xb8, 0x58, (u32)&script_ZeldaStoneTakeover },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

extern Script script_MinisterPothoTakeover;
extern Script script_GuardTakeover;
extern Script script_GuardTakeover;
const EntityData gUnk_080FCE30[] = {
    { NPC, 79, MINISTER_POTHO, 0, 0, 0x68, 0x58, (u32)&script_MinisterPothoTakeover },
    { NPC, 79, GUARD_1, 0, 0, 0x78, 0xe8, (u32)&script_GuardTakeover },
    { NPC, 79, GUARD_1, 1, 0, 0x78, 0x108, (u32)&script_GuardTakeover },
    { NPC, 79, GUARD_1, 2, 0, 0x78, 0x128, (u32)&script_GuardTakeover },
    { NPC, 79, GUARD_1, 3, 0, 0x98, 0xe8, (u32)&script_GuardTakeover },
    { NPC, 79, GUARD_1, 4, 0, 0x98, 0x108, (u32)&script_GuardTakeover },
    { NPC, 79, GUARD_1, 5, 0, 0x98, 0x128, (u32)&script_GuardTakeover },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

void sub_08053B74(void);
void sub_08053BAC(void);
void sub_08053BBC(void);
void (*const gUnk_080FCEB0[])(void) = {
    sub_08053B74,
    sub_08053BAC,
    sub_08053BBC,
};

void sub_08053B58(void) {
    gUnk_080FCEB0[gMenu.overlayType]();
}

void sub_08053B74(void) {
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    LoadRoomEntityList(gUnk_080FCDE0);
    ClearEventPriority();
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

extern Script script_ZeldaStoneInDHC;
extern Script script_ZeldaStoneDHC;
const EntityData gUnk_080FCEBC[] = {
    { NPC, 79, ZELDA, 0, 0, 0x78, 0x68, (u32)&script_ZeldaStoneInDHC },
    { NPC, 79, VAATI, 1, 0, 0x78, 0x98, (u32)&script_ZeldaStoneDHC },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
void sub_08053C20(void);
void nullsub_483(void);
void sub_08053C60(void);
void (*const gUnk_080FCEEC[])(void) = {
    sub_08053C20,
    nullsub_483,
    sub_08053C60,
};

void sub_08053C04(void) {
    gUnk_080FCEEC[gMenu.overlayType]();
}

void sub_08053C20(void) {
    gMenu.overlayType = 1;
    gMenu.transitionTimer = 120; // Go to game over after 2 minutes.
    gUpdateVisibleTiles = 1;
    sub_08051FF0();
    LoadStaticBackground(4);
    LoadRoomEntityList(gUnk_080FCEBC);
    SetFade(FADE_INSTANT, 0x10);
    SoundReq(BGM_FIGHT_THEME2);
}

void nullsub_483(void) {
}

void sub_08053C60(void) {
    SetFade(FADE_IN_OUT | FADE_INSTANT, 2);
    SoundReq(SFX_SUMMON);
    SoundReq(SONG_STOP_BGM);
    SetTask(TASK_GAMEOVER);
}

void sub_08053C84(void) {
    gMenu.overlayType = 2;
}
void sub_08053CAC(void);
void sub_08053CAC(void);
void sub_08053E58(void);
void (*const gUnk_080FCEF8[])(void) = {
    sub_08053CAC,
    sub_08053CAC,
    sub_08053E58,
};

void CutsceneMain_Exit(void) {
    gUnk_080FCEF8[gMenu.field_0x3]();
}

const EntityData gUnk_080FCF24[];
const EntityData gUnk_080FCF44[];
const EntityData gUnk_080FCF64[];
const EntityData gUnk_080FCF84[];

const struct_080FCF04 gUnk_080FCF04[] = {
    { gUnk_080FCF24, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_WEST_STAIRS_2F, 0, 0 },
    { gUnk_080FCF44, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_WEST_STAIRS_1F, 0, 0 },
    { gUnk_080FCF64, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_EAST_STAIRS_2F, 0, 0 },
    { gUnk_080FCF84, AREA_FORTRESS_OF_WINDS, ROOM_FORTRESS_OF_WINDS_EAST_STAIRS_1F, 0, 0 },
};

const EntityData gUnk_080FCF24[] = {
    { OBJECT, 15, GROUND_ITEM, 83, 512, 0x88, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

const EntityData gUnk_080FCF44[] = {
    { OBJECT, 15, GROUND_ITEM, 83, 512, 0x68, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

const EntityData gUnk_080FCF64[] = {
    { OBJECT, 15, GROUND_ITEM, 83, 512, 0x88, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

const EntityData gUnk_080FCF84[] = {
    { OBJECT, 15, GROUND_ITEM, 83, 512, 0x68, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

void sub_08053CC8(void);
void sub_08053D34(void);
void sub_08053D90(void);
void sub_08053DB4(void);
void sub_08053E30(void);
void (*const gUnk_080FCFA4[])(void) = {
    sub_08053CC8, sub_08053D34, sub_08053D90, sub_08053DB4, sub_08053E30,
};

void sub_08053CAC(void) {
    gUnk_080FCFA4[gMenu.overlayType]();
}

void sub_08053CC8(void) {
    const struct_080FCF04* ptr;
    ptr = gUnk_080FCF04 + gMenu.field_0x3 * 2;
    gMenu.field_0xc = (void*)&ptr[1];
    LoadRoomEntityList(ptr->entityData);
    LoadRoomEntityList(GetRoomProperty(ptr->area, ptr->room, 1));
    LoadRoomEntityList(GetRoomProperty(ptr->area, ptr->room, 2));
    gMenu.overlayType = 1;
    gScreen.lcd.displayControl &= 0xfeff;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
    if (ptr->room == 0x1d) { // TODO what room is this?
        gMenu.field_0xa = 1;
    }
}

void sub_08053D34(void) {
    if (gMenu.field_0xa != 0) {
        gMenu.field_0xa = 0;
        if (CheckLocalFlagByBank(FLAG_BANK_7, 0x3d)) {
            SetTileType(TILE_TYPE_116, TILE_POS(4, 3), LAYER_BOTTOM);
        }
        if (CheckLocalFlagByBank(FLAG_BANK_7, 0x3e)) {
            SetTileType(TILE_TYPE_116, TILE_POS(12, 3), LAYER_BOTTOM);
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
        struct_080FCF04* ptr = (struct_080FCF04*)gMenu.field_0xc;
        sub_08052FF4(gMenu.field_0xc[4], gMenu.field_0xc[5]);
        InitializeCamera();
        gUpdateVisibleTiles = 1;
        gRoomControls.scroll_x = (s8)ptr->scrollX + gRoomControls.scroll_x;
        gRoomControls.scroll_y = (s8)ptr->scrollY + gRoomControls.scroll_y;
        LoadRoomEntityList(ptr->entityData);
        LoadRoomEntityList((EntityData*)GetRoomProperty(ptr->area, ptr->room, 1));
        LoadRoomEntityList((EntityData*)GetRoomProperty(ptr->area, ptr->room, 2));
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

const EntityData gUnk_080FCFE8[];
const EntityData gUnk_080FD008[];
const EntityData gUnk_080FD028[];
const EntityData gUnk_080FD048[];
const EntityData gUnk_080FD078[];
const EntityData gUnk_080FD098[];
const EntityData gUnk_080FD0C8[];
const EntityData gUnk_080FD0E8[];
const struct_080FCFB8 gUnk_080FCFB8[] = {
    { gUnk_080FCFE8, gUnk_080FD008, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_2F_TOP_LEFT_DARKNUT, 16, 16 },
    { gUnk_080FD028, gUnk_080FD048, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_2F_TOP_RIGHT_DARKNUTS, 16, 16 },
    { gUnk_080FD078, gUnk_080FD098, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_2F_BOTTOM_LEFT_DARKNUTS, 16, 16 },
    { gUnk_080FD0C8, gUnk_080FD0E8, AREA_DARK_HYRULE_CASTLE, ROOM_DARK_HYRULE_CASTLE_2F_BOTTOM_RIGHT_DARKNUT, 16, 16 },
};

const EntityData gUnk_080FCFE8[] = {
    { OBJECT, 15, BOSS_DOOR, 8, 0, 0x88, 0x28, 65535 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD008[] = {
    { ENEMY, 47, DARK_NUT, 2, 0, 0x88, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD028[] = {
    { OBJECT, 15, BOSS_DOOR, 8, 0, 0x88, 0x28, 65535 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD048[] = {
    { ENEMY, 47, DARK_NUT, 1, 0, 0x70, 0x68, 0 },
    { ENEMY, 47, DARK_NUT, 0, 0, 0xa0, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD078[] = {
    { OBJECT, 15, BOSS_DOOR, 10, 0, 0x88, 0xa8, 65535 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD098[] = {
    { ENEMY, 47, DARK_NUT, 0, 0, 0x70, 0x68, 0 },
    { ENEMY, 47, DARK_NUT, 1, 0, 0xa0, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD0C8[] = {
    { OBJECT, 15, BOSS_DOOR, 10, 0, 0x88, 0xa8, 65535 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData gUnk_080FD0E8[] = {
    { ENEMY, 47, DARK_NUT, 2, 0, 0x88, 0x68, 0 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

void sub_08053E74(void);
void sub_08053EC4(void);
void sub_08053EFC(void);
void sub_08053F20(void);
void sub_08053EC4(void);
void sub_08053EFC(void);
void sub_08053F20(void);
void sub_08053EC4(void);
void sub_08053EFC(void);
void sub_08053F20(void);
void sub_08053EC4(void);
void sub_08053F88(void);
void (*const gUnk_080FD108[])(void) = {
    sub_08053E74, sub_08053EC4, sub_08053EFC, sub_08053F20, sub_08053EC4, sub_08053EFC,
    sub_08053F20, sub_08053EC4, sub_08053EFC, sub_08053F20, sub_08053EC4, sub_08053F88,
};

void sub_08053E58(void) {
    gUnk_080FD108[gMenu.overlayType]();
}

void sub_08053E74(void) {
    const struct_080FCFB8* ptr = gUnk_080FCFB8;
    gMenu.field_0xc = (u8*)ptr;
    LoadRoomEntityList(ptr->entityData1);
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
        data = (EntityData**)(gMenu.field_0xc + 4); // TODO entityData2 of struct_080FCFB8
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
    struct_080FCFB8* ptr;
    if (gFadeControl.active == 0) {
        DeleteAllEntities();
        ptr = (struct_080FCFB8*)gMenu.field_0xc;
        sub_08052FF4(ptr->area, ptr->room);
        InitializeCamera();
        gUpdateVisibleTiles = 1;
        gRoomControls.scroll_x = (s8)ptr->scrollX + gRoomControls.scroll_x;
        gRoomControls.scroll_y = (s8)ptr->scrollY + gRoomControls.scroll_y;
        LoadRoomEntityList((ptr)->entityData1);
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

void sub_080536D4(void);
void sub_08053B58(void);
void sub_0805373C(void);
void sub_08053AB0(void);
void sub_080536F0(void);
void sub_08053C04(void);
void (*const gUnk_080FD138[])(void) = {
    sub_080536D4, sub_08053B58, sub_0805373C, sub_08053AB0, sub_080536F0, sub_08053C04,
};

void CutsceneMain_Update(void) {
    gUnk_080FD138[gMenu.field_0x3]();
}
