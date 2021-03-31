#ifndef OBJECT_H
#define OBJECT_H

#include "global.h"
#include "entity.h"

typedef enum {
    GROUND_ITEM,
    DEATH_FX,
    SHOP_ITEM,
    BUTTON,
    OBJECT_4,
    POT,
    OBJECT_6,
    PUSHED_BLOCK,
    LOCKED_DOOR,
    OBJECT_9,
    OBJECT_A,
    OBJECT_B,
    CHEST_SPAWNER,
    OBJECT_D,
    OBJECT_E,
    SPECIAL_FX,
    OBJECT_10,
    OBJECT_11,
    OBJECT_12,
    RAILTRACK,
    LILYPAD_LARGE,
    OBJECT_15,
    FLOATING_PLATFORM,
    OBJECT_17,
    EVIL_SPIRIT,
    HOUSE_DOOR_EXT,
    OBJECT_1A,
    GREAT_FAIRY,
    OBJECT_1C,
    OBJECT_1D,
    OBJECT_1E,
    OBJECT_1F,
    OBJECT_20,
    OBJECT_21,
    FIGURINE_DEVICE,
    EYE_SWITCH,
    OBJECT_24,
    BIG_BARREL,
    OBJECT_26,
    PUSHABLE_STATUE,
    OBJECT_28,
    OBJECT_29,
    OBJECT_2A,
    OBJECT_2B,
    BEANSTALK,
    SMOKE,
    PUSHABLE_ROCK,
    HITTABLE_LEVER,
    OBJECT_30,
    OBJECT_31,
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
    OBJECT_51,
    OBJECT_52,
    OBJECT_53,
    PULLABLE_LEVER,
    MINECART,
    THOUGHT_BUBBLE,
    HIDDEN_LADDER_DOWN,
    GENTARI_CURTAIN,
    LAVA_PLATFORM,
    OBJECT_5A,
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
    CRENAL_BEAN_SPROUT,
    MINECART_DOOR,
    OBJECT_ON_PILLAR,
    MINERAL_WATER_SOURCE,
    MINISH_SIZED_ARCHWAY,
    OBJECT_70,
    PUSHABLE_GRAVE,
    OBJECT_72,
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
    OBJECT_80,
    OBJECT_81,
    BIG_VORTEX,
    BIG_PUSHABLE_LEVER,
    SMALL_ICE_BLOCK,
    BIG_ICE_BLOCK,
    OBJECT_86,
    OBJECT_87,
    HUGE_BOOK,
    OBJECT_89,
    OBJECT_8A,
    OBJECT_8B,
    BOOK,
    FIREPLACE,
    OBJECT_8E,
    FROZEN_WATER_ELEMENT,
    OBJECT_90,
    OBJECT_91,
    BAKER_OVEN,
    OBJECT_93,
    WIND_TRIBE_FLAG,
    BIRD,
    OBJECT_96,
    OBJECT_97,
    OBJECT_98,
    OBJECT_99,
    HUGE_ACORN,
    OBJECT_9B,
    TREE_HIDING_PORTAL,
    LIGHTABLE_SWITCH,
    OBJECT_9E,
    FAN,
    OBJECT_A0,
    PALACE_ARCHWAY,
    OBJECT_A2,
    CLOUD,
    MINISH_LIGHT,
    OBJECT_A5,
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
    OBJECT_B9,
    OBJECT_BA,
    WINDCREST,
    LIT_AREA,
    OBJECT_BD,
    PINWHEEL,
    OBJECT_BF,
    ENEMY_ITEM,
    OBJECT_C1,
} Object;

extern void ItemOnGround(Entity*);
extern void DeathFx(Entity*);
extern void ItemForSale(Entity*);
extern void Button(Entity*);
extern void Object4(Entity*);
extern void Pot(Entity*);
extern void Object6(Entity*);
extern void BlockPushed(Entity*);
extern void LockedDoor(Entity*);
extern void Object9(Entity*);
extern void ObjectA(Entity*);
extern void ObjectB(Entity*);
extern void ChestSpawner(Entity*);
extern void ObjectD(Entity*);
extern void ObjectE(Entity*);
extern void SpecialFx(Entity*);
extern void Object10(Entity*);
extern void Object11(Entity*);
extern void Object12(Entity*);
extern void Railtrack(Entity*);
extern void LilypadLarge(Entity*);
extern void Object15(Entity*);
extern void FloatingPlatform(Entity*);
extern void Object17(Entity*);
extern void EvilSpirit(Entity*);
extern void HouseDoorExterior(Entity*);
extern void Object1A(Entity*);
extern void GreatFairy(Entity*);
extern void Object1C(Entity*);
extern void Object1D(Entity*);
extern void Object1E(Entity*);
extern void Object1F(Entity*);
extern void Object20(Entity*);
extern void Object21(Entity*);
extern void FigurineDevice(Entity*);
extern void EyeSwitch(Entity*);
extern void Object24(Entity*);
extern void BigBarrel(Entity*);
extern void Object26(Entity*);
extern void PushableStatue(Entity*);
extern void Object28(Entity*);
extern void Object29(Entity*);
extern void Object2A(Entity*);
extern void Object2B(Entity*);
extern void Beanstalk(Entity*);
extern void Smoke(Entity*);
extern void PushableRock(Entity*);
extern void HittableLever(Entity*);
extern void Object30(Entity*);
extern void Object31(Entity*);
extern void PullableMushroom(Entity*);
extern void Bollard(Entity*);
extern void WarpPoint(Entity*);
extern void Object35(Entity*);
extern void Object36(Entity*);
extern void Object37(Entity*);
extern void JarPortal(Entity*);
extern void BossDoor(Entity*);
extern void Object3A(Entity*);
extern void MacroMushromStalks(Entity*);
extern void MacroPlayer(Entity*);
extern void Object3D(Entity*);
extern void Object3E(Entity*);
extern void GiantLeaf(Entity*);
extern void Fairy(Entity*);
extern void LadderUp(Entity*);
extern void Object42(Entity*);
extern void Object43(Entity*);
extern void Object44(Entity*);
extern void Object45(Entity*);
extern void GiantBookLadder(Entity*);
extern void HeartContainer(Entity*);
extern void FileScreenObjects(Entity*);
extern void Object49(Entity*);
extern void BackgroundCloud(Entity*);
extern void Object4B(Entity*);
extern void PushableFurniture(Entity*);
extern void Furniture(Entity*);
extern void MinishSizedEntrance(Entity*);
extern void Archway(Entity*);
extern void GiantRock(Entity*);
extern void Object51(Entity*);
extern void Object52(Entity*);
extern void Object53(Entity*);
extern void PullableLever(Entity*);
extern void Minecart(Entity*);
extern void ThoughtBubble(Entity*);
extern void HiddenLadderDown(Entity*);
extern void GentariCurtain(Entity*);
extern void LavaPlatform(Entity*);
extern void Object5A(Entity*);
extern void Object5B(Entity*);
extern void Mask(Entity*);
extern void HouseDoorInterior(Entity*);
extern void Whirlwind(Entity*);
extern void ObjectBlockingStairs(Entity*);
extern void SwordsmanNewsletter(Entity*);
extern void Object61(Entity*);
extern void GiantTwig(Entity*);
extern void Object63(Entity*);
extern void Object64(Entity*);
extern void LadderHoleInBookshelf(Entity*);
extern void Object66(Entity*);
extern void Object67(Entity*);
extern void Object68(Entity*);
extern void Object69(Entity*);
extern void Object6A(Entity*);
extern void CrenalBeanSprout(Entity*);
extern void MinecartDoor(Entity*);
extern void ObjectOnPillar(Entity*);
extern void MineralWaterSource(Entity*);
extern void MinishSizedArchway(Entity*);
extern void Object70(Entity*);
extern void PushableGrave(Entity*);
extern void Object72(Entity*);
extern void LilypadSmall(Entity*);
extern void Object74(Entity*);
extern void Object75(Entity*);
extern void Object76(Entity*);
extern void Bell(Entity*);
extern void MacroDecoration(Entity*);
extern void Object79(Entity*);
extern void Steam(Entity*);
extern void PushableLever(Entity*);
extern void MacroShoes(Entity*);
extern void ObjectOnSpinyBeetle(Entity*);
extern void Object7E(Entity*);
extern void PicoBloom(Entity*);
extern void Object80(Entity*);
extern void Object81(Entity*);
extern void BigVortex(Entity*);
extern void BigPushableLever(Entity*);
extern void SmallIceBlock(Entity*);
extern void BigIceBlock(Entity*);
extern void Object86(Entity*);
extern void Object87(Entity*);
extern void MacroBook(Entity*);
extern void Object89(Entity*);
extern void Object8A(Entity*);
extern void Object8B(Entity*);
extern void Book(Entity*);
extern void Fireplace(Entity*);
extern void Object8E(Entity*);
extern void FrozenWaterElement(Entity*);
extern void Object90(Entity*);
extern void Object91(Entity*);
extern void BakerOven(Entity*);
extern void Object93(Entity*);
extern void WindTribeFlag(Entity*);
extern void Bird(Entity*);
extern void Object96(Entity*);
extern void Object97(Entity*);
extern void Object98(Entity*);
extern void Object99(Entity*);
extern void MacroAcorn(Entity*);
extern void Object9B(Entity*);
extern void TreeHidingPortal(Entity*);
extern void LightableSwitch(Entity*);
extern void Object9E(Entity*);
extern void Fan(Entity*);
extern void ObjectA0(Entity*);
extern void PalaceArchway(Entity*);
extern void ObjectA2(Entity*);
extern void Cloud(Entity*);
extern void MinishLight(Entity*);
extern void ObjectA5(Entity*);
extern void ObjectA6(Entity*);
extern void ObjectA7(Entity*);
extern void ObjectA8(Entity*);
extern void ObjectA9(Entity*);
extern void WaterfallOpening(Entity*);
extern void ObjectAB(Entity*);
extern void FourElements(Entity*);
extern void ObjectAD(Entity*);
extern void FloatingBlock(Entity*);
extern void ObjectAF(Entity*);
extern void MetalDoor(Entity*);
extern void JailBars(Entity*);
extern void ObjectB2(Entity*);
extern void ObjectB3(Entity*);
extern void ObjectB4(Entity*);
extern void ObjectB5(Entity*);
extern void ObjectB6(Entity*);
extern void Well(Entity*);
extern void WindTribeTeleporter(Entity*);
extern void ObjectB9(Entity*);
extern void ObjectBA(Entity*);
extern void Windcrest(Entity*);
extern void LitArea(Entity*);
extern void ObjectBD(Entity*);
extern void Pinwheel(Entity*);
extern void ObjectBF(Entity*);
extern void EnemyItem(Entity*);
extern void ObjectC1(Entity*);

extern void (*const gObjectFunctions[194])(Entity*);

#endif
