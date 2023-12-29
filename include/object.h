#ifndef OBJECT_H
#define OBJECT_H

#include "global.h"
#include "asm.h"
#include "common.h"

#include "sound.h"
#include "flags.h"
#include "effects.h"
#include "room.h"
#include "physics.h"

#include "entity.h"
#include "player.h"

void AddInteractablePedestal(Entity*);
void AddInteractableCheckableObject(Entity*);
void sub_0808C650(Entity*, u32);
u32 sub_0808C67C(void);
void sub_0808C688(void);
void SyncPlayerToPlatform(Entity*, bool32);
void UpdateRailMovement(Entity*, u16**, u16*);
void sub_080A2AF4(Entity*, s32, s32);
Entity* CreateLargeWaterTrace(Entity*);
void CreateSparkle(Entity*);

void CreateDust(Entity* parent);
void CreateDustAt(s32, s32, u32);
void CreateDustSmall(Entity* parent);
Entity* CreateWaterTrace(Entity*);
Entity* CreateSpeechBubbleQuestionMark(Entity*, s32, s32);
Entity* CreateSpeechBubbleExclamationMark(Entity*, s32, s32);
Entity* CreateSpeechBubbleSleep(Entity*, s32, s32);

typedef enum {
    GROUND_ITEM,
    DEATH_FX,
    SHOP_ITEM,
    BUTTON,
    MINISH_EMOTICON,
    POT,
    EZLO_CAP,
    PUSHED_BLOCK,
    LOCKED_DOOR,
    CAMERA_TARGET,
    OBJECT_A,
    LINK_HOLDING_ITEM,
    CHEST_SPAWNER,
    UNUSED_SKULL,
    CRACKING_GROUND,
    SPECIAL_FX,
    PLAYER_CLONE,
    BUSH,
    LIGHT_DOOR,
    RAILTRACK,
    LILYPAD_LARGE,
    CHUCHU_BOSS_PARTICLE,
    FLOATING_PLATFORM,
    GUST_JAR_PARTICLE,
    EVIL_SPIRIT,
    HOUSE_DOOR_EXT,
    RUPEE_OBJECT,
    GREAT_FAIRY,
    HOUSE_SIGN,
    OBJECT_1D,
    MOLE_MITTS_PARTICLE,
    OBJECT_1F,
    SMOKE_PARTICLE,
    DIRT_PARTICLE,
    FIGURINE_DEVICE,
    EYE_SWITCH,
    PRESSURE_PLATE,
    BIG_BARREL,
    BARREL_INSIDE,
    PUSHABLE_STATUE,
    PARALLAX_ROOM_VIEW,
    AMBIENT_CLOUDS,
    FLAME,
    LILYPAD_LARGE_FALLING,
    BEANSTALK,
    SMOKE,
    PUSHABLE_ROCK,
    HITTABLE_LEVER,
    OBJECT_30,
    FROZEN_FLOWER,
    PULLABLE_MUSHROOM,
    BOLLARD,
    WARP_POINT,
    CARLOV_OBJECT,
    BARREL_SPIDERWEB,
    OBJECT_37,
    JAR_PORTAL,
    BOSS_DOOR,
    WHITE_TRIANGLE_EFFECT,
    PORTAL_MUSHROOM_STALKS,
    PORTAL_FALLING_PLAYER,
    MINISH_PORTAL_CLOSEUP,
    MINISH_VILLAGE_OBJECT,
    GIANT_LEAF,
    FAIRY,
    LADDER_UP,
    LINK_FIRE,
    SWORD_PARTICLE,
    ROTATING_TRAPDOOR,
    LAMP_PARTICLE,
    GIANT_BOOK_LADDER,
    HEART_CONTAINER,
    FILE_SCREEN_OBJECTS,
    CHUCHU_BOSS_START_PARTICLE,
    BACKGROUND_CLOUD,
    CHUCHU_BOSS_CUTSCENE,
    PUSHABLE_FURNITURE,
    FURNITURE,
    MINISH_SIZED_ENTRANCE,
    ARCHWAY,
    GIANT_ROCK,
    GIANT_ROCK2,
    SPECIAL_CHEST,
    OBJECT_53,
    PULLABLE_LEVER,
    MINECART,
    THOUGHT_BUBBLE,
    HIDDEN_LADDER_DOWN,
    GENTARI_CURTAIN,
    LAVA_PLATFORM,
    PAPER,
    BED_COVER,
    MASK,
    HOUSE_DOOR_INT,
    WHIRLWIND,
    OBJECT_BLOCKING_STAIRS,
    SWORDSMAN_NEWSLETTER,
    EZLO_CAP_FLYING,
    GIANT_TWIG,
    OBJECT_63,
    THUNDERBOLT,
    LADDER_HOLE,
    WATER_DROP_OBJECT,
    GLEEROK_PARTICLE,
    LINK_EMPTYING_BOTTLE,
    CUTSCENE_ORCHESTRATOR,
    CUTSCENE_MISC_OBJECT,
    CRENEL_BEAN_SPROUT,
    MINECART_DOOR,
    OBJECT_ON_PILLAR,
    MINERAL_WATER_SOURCE,
    MINISH_SIZED_ARCHWAY,
    OBJECT_70,
    PUSHABLE_GRAVE,
    STONE_TABLET,
    LILYPAD_SMALL,
    MINISH_PORTAL_STONE,
    MACRO_CRYSTAL,
    MACRO_LEAF,
    BELL,
    HUGE_DECORATION,
    SHRINKING_HIEROGLYPHS,
    STEAM,
    PUSHABLE_LEVER,
    HUGE_SHOES,
    OBJECT_ON_BEETLE,
    MAZAAL_OBJECT,
    PICO_BLOOM,
    BOARD,
    BENCH,
    BIG_VORTEX,
    BIG_PUSHABLE_LEVER,
    SMALL_ICE_BLOCK,
    BIG_ICE_BLOCK,
    TRAPDOOR,
    OCTOROK_BOSS_OBJECT,
    HUGE_BOOK,
    MAZAAL_BOSS_OBJECT,
    CABIN_FURNITURE,
    DOUBLE_BOOKSHELF,
    BOOK,
    FIREPLACE,
    LIGHT_RAY,
    FROZEN_WATER_ELEMENT,
    WATER_ELEMENT,
    FROZEN_OCTOROK,
    BAKER_OVEN,
    LAMP,
    WIND_TRIBE_FLAG,
    BIRD,
    GRAVEYARD_KEY,
    KEY_STEALING_TAKKURI,
    GURUGURU_BAR,
    HIT_SWITCH,
    HUGE_ACORN,
    VAATI2_PARTICLE,
    TREE_HIDING_PORTAL,
    LIGHTABLE_SWITCH,
    TREE_THORNS,
    FAN,
    ANGRY_STATUE,
    PALACE_ARCHWAY,
    OBJECT_A2,
    CLOUD,
    MINISH_LIGHT,
    FIREBALL_CHAIN,
    SANCTUARY_STONE_TABLET,
    OBJECT_A7,
    OBJECT_A8,
    MULLDOZER_SPAWN_POINT,
    WATERFALL_OPENING,
    VAATI1_PORTAL,
    FOUR_ELEMENTS,
    ELEMENTS_BACKGROUND,
    FLOATING_BLOCK,
    VAATI3_ARM,
    METAL_DOOR,
    JAIL_BARS,
    FAN_WIND,
    KINSTONE_SPARK,
    JAPANESE_SUBTITLE,
    VAATI3_PLAYER_OBJECT,
    VAATI3_DEATH,
    WELL,
    WIND_TRIBE_TELEPORTER,
    CUCCO_MINIGAME,
    GYORG_BOSS_OBJECT,
    WINDCREST,
    LIT_AREA,
    TITLE_SCREEN_OBJECT,
    PINWHEEL,
    OBJECT_BF,
    ENEMY_ITEM,
    LINK_ANIMATION,
} Object;

void ItemOnGround();
void DeathFx();
void ItemForSale();
void Button();
void MinishEmoticon();
void Pot();
void EzloCap();
void BlockPushed();
void LockedDoor();
void CameraTarget();
void ObjectA();
void LinkHoldingItem();
void ChestSpawner();
void UnusedSkull();
void CrackingGround();
void SpecialFx();
void PlayerClone();
void Bush();
void LightDoor();
void Railtrack();
void LilypadLarge();
void ChuchuBossParticle();
void FloatingPlatform();
void GustJarParticle();
void EvilSpirit();
void HouseDoorExterior();
void Rupee();
void GreatFairy();
void HouseSign();
void Object1D();
void MoleMittsParticle();
void Object1F();
void SmokeParticle();
void DirtParticle();
void FigurineDevice();
void EyeSwitch();
void PressurePlate();
void BigBarrel();
void BarrelInside();
void PushableStatue();
void ParallaxRoomView();
void AmbientClouds();
void Flame();
void LilypadLargeFalling();
void Beanstalk();
void Smoke();
void PushableRock();
void HittableLever();
void Object30();
void FrozenFlower();
void PullableMushroom();
void Bollard();
void WarpPoint();
void CarlovObject();
void BarrelSpiderweb();
void Object37();
void JarPortal();
void BossDoor();
void WhiteTriangleEffect();
void MacroMushroomStalk();
void MacroPlayer();
void MinishPortalCloseup();
void MinishVillageObject();
void GiantLeaf();
void Fairy();
void LadderUp();
void LinkFire();
void SwordParticle();
void RotatingTrapdoor();
void LampParticle();
void GiantBookLadder();
void HeartContainer();
void FileScreenObjects();
void ChuchuBossStartParticle();
void BackgroundCloud();
void ChuchuBossCutscene();
void PushableFurniture();
void Furniture();
void MinishSizedEntrance();
void Archway();
void GiantRock();
void GiantRock2();
void SpecialChest();
void Object53();
void PullableLever();
void Minecart();
void ThoughtBubble();
void HiddenLadderDown();
void GentariCurtain();
void LavaPlatform();
void Paper();
void BedCover();
void Mask();
void HouseDoorInterior();
void Whirlwind();
void ObjectBlockingStairs();
void SwordsmanNewsletter();
void EzloCapFlying();
void GiantTwig();
void Object63();
void Thunderbolt();
void LadderHoleInBookshelf();
void WaterDropObject();
void GleerokParticle();
void LinkEmptyingBottle();
void CutsceneOrchestrator();
void CutsceneMiscObject();
void CrenelBeanSprout();
void MinecartDoor();
void ObjectOnPillar();
void MineralWaterSource();
void MinishSizedArchway();
void Object70();
void PushableGrave();
void StoneTablet();
void LilypadSmall();
void MinishPortalStone();
void MacroCrystal();
void MacroLeaf();
void Bell();
void MacroDecoration();
void ShrinkingHieroglyphs();
void Steam();
void PushableLever();
void MacroShoe();
void ObjectOnSpinyBeetle();
void MazaalObject();
void PicoBloom();
void Board();
void Bench();
void BigVortex();
void BigPushableLever();
void SmallIceBlock();
void BigIceBlock();
void Trapdoor();
void OctorokBossObject();
void MacroBook();
void MazaalBossObject();
void CabinFurniture();
void DoubleBookshelf();
void Book();
void Fireplace();
void LightRay();
void FrozenWaterElement();
void WaterElement();
void FrozenOctorok();
void BakerOven();
void Lamp();
void WindTribeFlag();
void Bird();
void GraveyardKey();
void KeyStealingTakkuri();
void GuruguruBar();
void HitSwitch();
void MacroAcorn();
void Vaati2Particle();
void TreeHidingPortal();
void LightableSwitch();
void TreeThorns();
void Fan();
void AngryStatue();
void PalaceArchway();
void ObjectA2();
void Cloud();
void MinishLight();
void FireballChain();
void SanctuaryStoneTablet();
void ObjectA7();
void ObjectA8();
void MulldozerSpawnPoint();
void WaterfallOpening();
void Vaati1Portal();
void FourElements();
void ElementsBackground();
void FloatingBlock();
void Vaati3Arm();
void MetalDoor();
void JailBars();
void FanWind();
void KinstoneSpark();
void JapaneseSubtitle();
void Vaati3PlayerObject();
void Vaati3Death();
void Well();
void WindTribeTeleporter();
void CuccoMinigame();
void GyorgBossObject();
void Windcrest();
void LitArea();
void TitleScreenObject();
void Pinwheel();
void ObjectBF();
void EnemyItem();
void LinkAnimation();

extern void (*const gObjectFunctions[194])(Entity*);

#endif // OBJECT_H
