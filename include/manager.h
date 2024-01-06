#ifndef MANAGER_H
#define MANAGER_H

#include "global.h"
#include "entity.h"

union SplitSHWord {
    s16 SHWORD;
    struct {
        u8 LO, HI;
    } PACKED HALF;
} PACKED;

typedef struct Manager {
    /*0x00*/ struct Manager* prev; /**< previous Manager */
    /*0x00*/ struct Manager* next; /**< next Manager */
    /*0x08*/ u8 kind;              /**< @see EntityKind */
    /*0x09*/ u8 id;                /**< Manager id. @see Managers */
    /*0x0a*/ u8 type;              /**< For use internally to allow different variations. */
    /*0x0b*/ u8 type2;             /**< For use internally. */
    /*0x0c*/ u8 action;            /**< Current action. Usually used to index a function table. */
    /*0x0d*/ u8 subAction;         /**< Optional sub-action. */
    /*0x0e*/ u8 timer;             /**< General purpose timer. */
    /*0x0f*/ u8 subtimer;          /**< General purpose timer. */
    /*0x10*/ u8 flags;             /**< @see EntityFlags */
    /*0x11*/ u8 unused[3];         /**< Not used by any manager. */
    /*0x14*/ Entity* parent;       /**< Parent Entity. */
    /*0x18*/ Entity* child;        /**< Child Entity. */
    /*0x1c*/ u8 unused2[0x4];      /**< Not used by any manager. */
} Manager;

typedef enum {
    MANAGER_NONE,
    LIGHT_RAY_MANAGER,
    VERTICAL_MINISH_PATH_BACKGROUND_MANAGER,
    MINISH_PORTAL_MANAGER,
    DIGGING_CAVE_ENTRANCE_MANAGER,
    BRIDGE_MANAGER,
    SPECIAL_WARP_MANAGER,
    MINISH_VILLAGE_MANAGER,
    HORIZONTAL_MINISH_PATH_BACKGROUND_MANAGER,
    MINISH_RAFTERS_BACKGROUND_MANAGER,
    EZLO_HINT_MANAGER,
    FIGHT_MANAGER,
    ROLLING_BARREL_MANAGER,
    TILE_CHANGE_OBSERVE_MANAGER,
    ENTITY_SPAWN_MANAGER,
    MISC_MANAGER,
    WEATHER_CHANGE_MANAGER,
    FLAG_AND_OPERATOR_MANAGER,
    HYRULE_TOWN_TILESET_MANAGER,
    HOUSE_SIGN_MANAGER,
    STEAM_OVERLAY_MANAGER,
    TEMPLE_OF_DROPLETS_MANAGER,
    DELAYED_ENTITY_LOAD_MANAGER,
    FALLING_ITEM_MANAGER,
    CLOUD_OVERLAY_MANAGER,
    POW_BACKGROUND_MANAGER,
    HOLE_MANAGER,
    STATIC_BACKGROUND_MANAGER,
    RAINFALL_MANAGER,
    ANIMATED_BACKGROUND_MANAGER,
    REGION_TRIGGER_MANAGER,
    RAIL_INTERSECTION_MANAGER,
    MOVEABLE_OBJECT_MANAGER,
    MINISH_SIZED_ENTRANCE_MANAGER,
    LIGHT_MANAGER,
    LIGHT_LEVEL_SET_MANAGER,
    BOMBABLE_WALL_MANAGER,
    FLAME_MANAGER,
    PUSHABLE_FURNITURE_MANAGER,
    ARMOS_INTERIOR_MANAGER,
    ENEMY_INTERACTION_MANAGER,
    MANAGER_29,
    DESTRUCTIBLE_TILE_OBSERVE_MANAGER,
    ANGRY_STATUE_MANAGER,
    CLOUD_STAIRCASE_TRANSITION_MANAGER,
    WATERFALL_BOTTOM_MANAGER,
    SECRET_MANAGER,
    VAATI3_BACKGROUND_MANAGER,
    TILE_PUZZLE_MANAGER,
    GORON_MERCHANT_SHOP_MANAGER,
    VAATI_APPARATE_MANAGER,
    HYRULE_TOWN_BELL_MANAGER,
    VAATI3_INSIDE_ARM_MANAGER,
    CAMERA_TARGET_MANAGER,
    REPEATED_SOUND_MANAGER,
    VAATI3_START_MANAGER,
    FLOATING_PLATFORM_MANAGER,
    ENTER_ROOM_TEXTBOX_MANAGER
} Managers;

extern void LightRayManager_Main();
extern void VerticalMinishPathBackgroundManager_Main();
extern void MinishPortalManager_Main();
extern void DiggingCaveEntranceManager_Main();
extern void BridgeManager_Main();
extern void SpecialWarpManager_Main();
extern void MinishVillageTileSetManager_Main();
extern void HorizontalMinishPathBackgroundManager_Main();
extern void MinishRaftersBackgroundManager_Main();
extern void EzloHintManager_Main();
extern void FightManager_Main();
extern void RollingBarrelManager_Main();
extern void TileChangeObserveManager_Main();
extern void EntitySpawnManager_Main();
extern void MiscManager_Main();
extern void WeatherChangeManager_Main();
extern void FlagAndOperatorManager_Main();
extern void HyruleTownTileSetManager_Main();
extern void HouseSignManager_Main();
extern void SteamOverlayManager_Main();
extern void TempleOfDropletsManager_Main();
extern void DelayedEntityLoadManager_Main();
extern void FallingItemManager_Main();
extern void CloudOverlayManager_Main();
extern void PowBackgroundManager_Main();
extern void HoleManager_Main();
extern void StaticBackgroundManager_Main();
extern void RainfallManager_Main();
extern void AnimatedBackgroundManager_Main();
extern void RegionTriggerManager_Main();
extern void RailIntersectionManager_Main();
extern void MoveableObjectManager_Main();
extern void MinishSizedEntranceManager_Main();
extern void LightManager_Main();
extern void LightLevelSetManager_Main();
extern void BombableWallManager_Main();
extern void FlameManager_Main();
extern void PushableFurnitureManager_Main();
extern void ArmosInteriorManager_Main();
extern void EnemyInteractionManager_Main();
extern void Manager29_Main();
extern void DestructibleTileObserveManager_Main();
extern void AngryStatueManager_Main();
extern void CloudStaircaseTransitionManager_Main();
extern void WaterfallBottomManager_Main();
extern void SecretManager_Main();
extern void Vaati3BackgroundManager_Main();
extern void TilePuzzleManager_Main();
extern void GoronMerchantShopManager_Main();
extern void VaatiAppearingManager_Main();
extern void HyruleTownBellManager_Main();
extern void Vaati3InsideArmManager_Main();
extern void CameraTargetManager_Main();
extern void RepeatedSoundManager_Main();
extern void Vaati3StartManager_Main();
extern void FloatingPlatformManager_Main();
extern void EnterRoomTextboxManager_Main();

extern void (*const gMiscManagerunctions[58])();

Manager* GetEmptyManager(void);

/**
 * @brief Set manager responsible for handling room changes
 */
extern void RegisterTransitionManager(void* mgr, void (*onEnter)(), void (*onExit)());

extern u32 sub_0805ACC0(Entity*);
extern void sub_0801855C(void);
extern void SetNextAreaHint(u32 textId);

#endif // MANAGER_H
