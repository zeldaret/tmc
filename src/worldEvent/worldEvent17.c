/**
 * @file worldEvent17.c
 * @ingroup WorldEvents
 *
 * @brief World Event 17
 */
#include "fade.h"
#include "manager.h"
#include "menu.h"
#include "npc.h"
#include "room.h"
#include "script.h"
#include "subtask.h"
#include "manager/bombableWallManager.h"
#include "tiles.h"

// Called Goron Kinstone Fusion Script
void sub_08054EB8(Entity* this, ScriptExecutionContext* context) {
    BombableWallManager* manager = (BombableWallManager*)GetEmptyManager();
    if (manager != NULL) {
        manager->base.kind = MANAGER;
        manager->base.id = BOMBABLE_WALL_MANAGER;
        manager->x = this->x.HALF.HI - gRoomControls.origin_x;
        manager->y = (this->y.HALF.HI - gRoomControls.origin_y) - 0x10;
        manager->layer = LAYER_BOTTOM;
#if defined(EU) || defined(JP) || defined(DEMO_JP)
        manager->flag = 0x77;
#else
        manager->flag = 0x79;
#endif
        AppendEntityToList((Entity*)manager, 6);
    }
}

void sub_08054EFC(Entity* this, ScriptExecutionContext* context) {
    Entity* effect;
    u32 tilePos = COORD_TO_TILE(this) - 0x40;
    SetTile(SPECIAL_TILE_116, tilePos, LAYER_BOTTOM);
    this->collisionLayer = LAYER_TOP;
    UpdateSpriteForCollisionLayer(this);
    effect = CreateFx(this, FX_BIG_EXPLOSION, 0);
    if (effect != NULL) {
        effect->y.HALF.HI -= 0x10;
        SortEntityBelow(this, effect);
    }
    SoundReq(SFX_ITEM_BOMB_EXPLODE);
}

void sub_08054F64(Entity* this, ScriptExecutionContext* context) {
    u32 tmp = this->type2;
    if ((gActiveScriptInfo.syncFlags & tmp) != tmp) {
        gActiveScriptInfo.commandSize = 0;
    } else {
        gActiveScriptInfo.syncFlags &= ~tmp;
        gActiveScriptInfo.flags |= 1;
    }
}

extern Script script_GoronKinstone;
const EntityData gUnk_080FEF48[] = {
    { NPC, 79, GORON, 0, 0, 0x88, 0x368, (u32)&script_GoronKinstone },
#if defined(USA) || defined(DEMO_USA)
    // TODO 0x7c is a flag?
    { MANAGER, 15, MOVEABLE_OBJECT_MANAGER, 0, 0x10e82e00, 0xd8, 0x388, 0x7c1388 },
#else
    { MANAGER, 15, MOVEABLE_OBJECT_MANAGER, 0, 0x10e82e00, 0xd8, 0x388, 0x7a1388 },
#endif
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

extern Script script_Goron1Kinstone2;
extern Script script_Goron2Kinstone2;
const EntityData gUnk_080FEF78[] = {
    { NPC, 79, GORON, 0, 0, 0x68, 0x228, (u32)&script_Goron1Kinstone2 },
    { NPC, 79, GORON, 0, 0, 0x88, 0x288, (u32)&script_Goron2Kinstone2 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};

extern Script script_Goron1Kinstone3;
extern Script script_Goron2Kinstone3;
extern Script script_Goron3Kinstone3;
const EntityData gUnk_080FEFA8[] = {
    { NPC, 79, GORON, 0, 4, 0x48, 0x178, (u32)&script_Goron1Kinstone3 },
    { NPC, 79, GORON, 0, 8, 0x68, 0x178, (u32)&script_Goron2Kinstone3 },
    { NPC, 79, GORON, 0, 2, 0x88, 0x1e8, (u32)&script_Goron3Kinstone3 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
extern Script script_Goron1Kinstone4;
extern Script script_Goron2Kinstone4;
extern Script script_Goron4Kinstone4;
const EntityData gUnk_080FEFE8[] = {
    { NPC, 79, GORON, 0, 4, 0x48, 0x178, (u32)&script_Goron1Kinstone4 },
    { NPC, 79, GORON, 0, 8, 0x68, 0x178, (u32)&script_Goron2Kinstone4 },
    { NPC, 79, GORON, 0, 16, 0x88, 0x178, (u32)&script_Goron2Kinstone4 },
    { NPC, 79, GORON, 0, 2, 0x88, 0x1e8, (u32)&script_Goron4Kinstone4 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
extern Script script_Goron1Kinstone5;
extern Script script_Goron2Kinstone5;
extern Script script_Goron5Kinstone5;
const EntityData gUnk_080FF038[] = {
    { NPC, 79, GORON, 0, 4, 0x28, 0xd8, (u32)&script_Goron1Kinstone5 },
    { NPC, 79, GORON, 0, 8, 0x48, 0xd8, (u32)&script_Goron2Kinstone5 },
    { NPC, 79, GORON, 0, 16, 0x68, 0xd8, (u32)&script_Goron2Kinstone5 },
    { NPC, 79, GORON, 0, 32, 0x88, 0xd8, (u32)&script_Goron2Kinstone5 },
    { NPC, 79, GORON, 0, 2, 0x98, 0x178, (u32)&script_Goron5Kinstone5 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
extern Script script_Goron1Kinstone6;
extern Script script_Goron2Kinstone6;
extern Script script_Goron6Kindstone6;
const EntityData gUnk_080FF098[] = {
    { NPC, 79, GORON, 0, 4, 0x28, 0xd8, (u32)&script_Goron1Kinstone6 },
    { NPC, 79, GORON, 0, 8, 0x48, 0xd8, (u32)&script_Goron2Kinstone6 },
    { NPC, 79, GORON, 0, 16, 0x68, 0xd8, (u32)&script_Goron2Kinstone6 },
    { NPC, 79, GORON, 0, 32, 0x88, 0xd8, (u32)&script_Goron2Kinstone6 },
    { NPC, 79, GORON, 0, 64, 0xa8, 0xd8, (u32)&script_Goron2Kinstone6 },
    { NPC, 79, GORON, 0, 2, 0x98, 0x178, (u32)&script_Goron6Kindstone6 },
    { 0xff, 0, 0, 0, 0, 0x0, 0x0, 0 },
};
const EntityData* const gUnk_080FF108[] = {
    gUnk_080FEF48, gUnk_080FEF78, gUnk_080FEFA8, gUnk_080FEFE8, gUnk_080FF038, gUnk_080FF098,
};

void WorldEvent_17_0(void);
void WorldEvent_17_1(void);
void (*const WorldEvent_17_Functions[])(void) = {
    WorldEvent_17_0,
    WorldEvent_17_1,
};

void WorldEvent_17(void) {
    WorldEvent_17_Functions[gMenu.overlayType]();
}

void WorldEvent_17_0(void) {
    u8* ptr;
    u32 tmp;

    ptr = gMenu.field_0xc;
    LoadRoomEntityList(gUnk_080FF108[ptr[1]]);
    if (ptr[1] != 0) {
        tmp = 3;
    } else {
        tmp = 0;
    }
    sub_08055B70(gMenu.field_0x4, tmp, 0, 0);
    gMenu.overlayType++;
    gUpdateVisibleTiles = 1;
    SetFade(FADE_INSTANT, 0x10);
    gMenu.field_0xa = 0;
    if (CheckLocalFlagByBank(FLAG_BANK_4, GORON_DOUKUTU_01_T1) && (ptr[2] == 0x2f)) {
        gMenu.field_0xa = 1;
    }
}

void WorldEvent_17_1(void) {
    if (gMenu.field_0xa != 0) {
        gMenu.field_0xa = 0;
        SetTileType(TILE_TYPE_116, TILE_POS(7, 16), LAYER_BOTTOM);
    }
}
