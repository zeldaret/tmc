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

void sub_080787C0(Entity*);
void sub_080787B4(Entity*);
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
    OBJECT_9,
    OBJECT_A,
    OBJECT_B,
    CHEST_SPAWNER,
    OBJECT_D,
    OBJECT_E,
    SPECIAL_FX,
    PLAYER_CLONE,
    OBJECT_11,
    OBJECT_12,
    RAILTRACK,
    LILYPAD_LARGE,
    OBJECT_15,
    FLOATING_PLATFORM,
    OBJECT_17,
    EVIL_SPIRIT,
    HOUSE_DOOR_EXT,
    RUPEE_OBJECT,
    GREAT_FAIRY,
    OBJECT_1C,
    OBJECT_1D,
    OBJECT_1E,
    OBJECT_1F,
    OBJECT_20,
    OBJECT_21,
    FIGURINE_DEVICE,
    EYE_SWITCH,
    PRESSURE_PLATE,
    BIG_BARREL,
    BARREL_INSIDE,
    PUSHABLE_STATUE,
    OBJECT_28,
    AMBIENT_CLOUDS,
    OBJECT_2A,
    OBJECT_2B,
    BEANSTALK,
    SMOKE,
    PUSHABLE_ROCK,
    HITTABLE_LEVER,
    OBJECT_30,
    FROZEN_FLOWER,
    PULLABLE_MUSHROOM,
    BOLLARD,
    WARP_POINT,
    OBJECT_35,
    OBJECT_36,
    OBJECT_37,
    JAR_PORTAL,
    BOSS_DOOR,
    OBJECT_3A,
    PORTAL_MUSHROOM_STALKS,
    PORTAL_FALLING_PLAYER,
    OBJECT_3D,
    OBJECT_3E,
    GIANT_LEAF,
    FAIRY,
    LADDER_UP,
    OBJECT_42,
    OBJECT_43,
    OBJECT_44,
    OBJECT_45,
    GIANT_BOOK_LADDER,
    HEART_CONTAINER,
    FILE_SCREEN_OBJECTS,
    OBJECT_49,
    BACKGROUND_CLOUD,
    OBJECT_4B,
    PUSHABLE_FURNITURE,
    FURNITURE,
    MINISH_SIZED_ENTRANCE,
    ARCHWAY,
    GIANT_ROCK,
    GIANT_ROCK2,
    OBJECT_52,
    OBJECT_53,
    PULLABLE_LEVER,
    MINECART,
    THOUGHT_BUBBLE,
    HIDDEN_LADDER_DOWN,
    GENTARI_CURTAIN,
    LAVA_PLATFORM,
    PAPER,
    OBJECT_5B,
    MASK,
    HOUSE_DOOR_INT,
    WHIRLWIND,
    OBJECT_BLOCKING_STAIRS,
    SWORDSMAN_NEWSLETTER,
    OBJECT_61,
    GIANT_TWIG,
    OBJECT_63,
    OBJECT_64,
    LADDER_HOLE,
    OBJECT_66,
    OBJECT_67,
    OBJECT_68,
    OBJECT_69,
    OBJECT_6A,
    CRENEL_BEAN_SPROUT,
    MINECART_DOOR,
    OBJECT_ON_PILLAR,
    MINERAL_WATER_SOURCE,
    MINISH_SIZED_ARCHWAY,
    OBJECT_70,
    PUSHABLE_GRAVE,
    STONE_TABLET,
    LILYPAD_SMALL,
    OBJECT_74,
    OBJECT_75,
    OBJECT_76,
    BELL,
    HUGE_DECORATION,
    OBJECT_79,
    STEAM,
    PUSHABLE_LEVER,
    HUGE_SHOES,
    OBJECT_ON_BEETLE,
    OBJECT_7E,
    PICO_BLOOM,
    BOARD,
    OBJECT_81,
    BIG_VORTEX,
    BIG_PUSHABLE_LEVER,
    SMALL_ICE_BLOCK,
    BIG_ICE_BLOCK,
    OBJECT_86,
    OCTOROK_BOSS_OBJECT,
    HUGE_BOOK,
    MAZAAL_BOSS_OBJECT,
    CABIN_FURNITURE,
    DOUBLE_BOOKSHELF,
    BOOK,
    FIREPLACE,
    OBJECT_8E,
    FROZEN_WATER_ELEMENT,
    OBJECT_90,
    FROZEN_OCTOROK,
    BAKER_OVEN,
    LAMP,
    WIND_TRIBE_FLAG,
    BIRD,
    OBJECT_96,
    KEY_STEALING_TAKKURI,
    OBJECT_98,
    OBJECT_99,
    HUGE_ACORN,
    OBJECT_9B,
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
    OBJECT_A6,
    OBJECT_A7,
    OBJECT_A8,
    OBJECT_A9,
    WATERFALL_OPENING,
    OBJECT_AB,
    FOUR_ELEMENTS,
    OBJECT_AD,
    FLOATING_BLOCK,
    OBJECT_AF,
    METAL_DOOR,
    JAIL_BARS,
    OBJECT_B2,
    OBJECT_B3,
    OBJECT_B4,
    OBJECT_B5,
    OBJECT_B6,
    WELL,
    WIND_TRIBE_TELEPORTER,
    CUCCO_MINIGAME,
    GYORG_BOSS_OBJECT,
    WINDCREST,
    LIT_AREA,
    OBJECT_BD,
    PINWHEEL,
    OBJECT_BF,
    ENEMY_ITEM,
    OBJECT_C1,
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
void Object9();
void ObjectA();
void ObjectB();
void ChestSpawner();
void ObjectD();
void ObjectE();
void SpecialFx();
void PlayerClone();
void Object11();
void Object12();
void Railtrack();
void LilypadLarge();
void Object15();
void FloatingPlatform();
void Object17();
void EvilSpirit();
void HouseDoorExterior();
void Rupee();
void GreatFairy();
void Object1C();
void Object1D();
void Object1E();
void Object1F();
void Object20();
void Object21();
void FigurineDevice();
void EyeSwitch();
void PressurePlate();
void BigBarrel();
void BarrelInside();
void PushableStatue();
void Object28();
void AmbientClouds();
void Object2A();
void Object2B();
void Beanstalk();
void Smoke();
void PushableRock();
void HittableLever();
void Object30();
void FrozenFlower();
void PullableMushroom();
void Bollard();
void WarpPoint();
void Object35();
void Object36();
void Object37();
void JarPortal();
void BossDoor();
void Object3A();
void MacroMushroomStalks();
void MacroPlayer();
void Object3D();
void Object3E();
void GiantLeaf();
void Fairy();
void LadderUp();
void Object42();
void Object43();
void Object44();
void Object45();
void GiantBookLadder();
void HeartContainer();
void FileScreenObjects();
void Object49();
void BackgroundCloud();
void Object4B();
void PushableFurniture();
void Furniture();
void MinishSizedEntrance();
void Archway();
void GiantRock();
void GiantRock2();
void Object52();
void Object53();
void PullableLever();
void Minecart();
void ThoughtBubble();
void HiddenLadderDown();
void GentariCurtain();
void LavaPlatform();
void Paper();
void Object5B();
void Mask();
void HouseDoorInterior();
void Whirlwind();
void ObjectBlockingStairs();
void SwordsmanNewsletter();
void Object61();
void GiantTwig();
void Object63();
void Object64();
void LadderHoleInBookshelf();
void Object66();
void Object67();
void Object68();
void Object69();
void Object6A();
void CrenelBeanSprout();
void MinecartDoor();
void ObjectOnPillar();
void MineralWaterSource();
void MinishSizedArchway();
void Object70();
void PushableGrave();
void StoneTablet();
void LilypadSmall();
void Object74();
void Object75();
void Object76();
void Bell();
void MacroDecoration();
void Object79();
void Steam();
void PushableLever();
void MacroShoes();
void ObjectOnSpinyBeetle();
void Object7E();
void PicoBloom();
void Board();
void Object81();
void BigVortex();
void BigPushableLever();
void SmallIceBlock();
void BigIceBlock();
void Object86();
void OctorokBossObject();
void MacroBook();
void MazaalBossObject();
void CabinFurniture();
void DoubleBookshelf();
void Book();
void Fireplace();
void Object8E();
void FrozenWaterElement();
void Object90();
void FrozenOctorok();
void BakerOven();
void Lamp();
void WindTribeFlag();
void Bird();
void Object96();
void KeyStealingTakkuri();
void Object98();
void Object99();
void MacroAcorn();
void Object9B();
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
void ObjectA6();
void ObjectA7();
void ObjectA8();
void ObjectA9();
void WaterfallOpening();
void ObjectAB();
void FourElements();
void ObjectAD();
void FloatingBlock();
void ObjectAF();
void MetalDoor();
void JailBars();
void ObjectB2();
void ObjectB3();
void ObjectB4();
void ObjectB5();
void ObjectB6();
void Well();
void WindTribeTeleporter();
void ObjectB9();
void GyorgBossObject();
void Windcrest();
void LitArea();
void ObjectBD();
void Pinwheel();
void ObjectBF();
void EnemyItem();
void ObjectC1();

extern void (*const gObjectFunctions[194])(Entity*);

#endif
