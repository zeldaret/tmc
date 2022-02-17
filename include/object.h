#ifndef OBJECT_H
#define OBJECT_H

#include "global.h"
#include "asm.h"
#include "common.h"

#include "sound.h"
#include "flags.h"
#include "effects.h"
#include "room.h"
#include "coord.h"

#include "entity.h"
#include "player.h"

extern void sub_0807879C(Entity*);
extern void sub_080787C0(Entity*);
extern void sub_080787B4(Entity*);
extern void sub_0808C650(Entity*, u32);
extern u32 sub_0808C67C(void);
extern void sub_0808C688(void);
extern void sub_080A2BE4(Entity*, u32);

void CreateDust(Entity* parent);
void CreateDustAt(s32, s32, u32);
void CreateDustSmall(Entity* parent);
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
    CRENAL_BEAN_SPROUT,
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
    OBJECT_91,
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
    OBJECT_B9,
    GYORG_BOSS_OBJECT,
    WINDCREST,
    LIT_AREA,
    OBJECT_BD,
    PINWHEEL,
    OBJECT_BF,
    ENEMY_ITEM,
    OBJECT_C1,
} Object;

void ItemOnGround(Entity*);
void DeathFx(Entity*);
void ItemForSale(Entity*);
void Button(Entity*);
void MinishEmoticon(Entity*);
void Pot(Entity*);
void EzloCap();
void BlockPushed();
void LockedDoor(Entity*);
void Object9(Entity*);
void ObjectA(Entity*);
void ObjectB(Entity*);
void ChestSpawner();
void ObjectD(Entity*);
void ObjectE(Entity*);
void SpecialFx(Entity*);
void Object10(Entity*);
void Object11(Entity*);
void Object12(Entity*);
void Railtrack(Entity*);
void LilypadLarge();
void Object15(Entity*);
void FloatingPlatform(Entity*);
void Object17(Entity*);
void EvilSpirit(Entity*);
void HouseDoorExterior(Entity*);
void Rupee(Entity*);
void GreatFairy(Entity*);
void Object1C(Entity*);
void Object1D(Entity*);
void Object1E(Entity*);
void Object1F(Entity*);
void Object20(Entity*);
void Object21(Entity*);
void FigurineDevice(Entity*);
void EyeSwitch(Entity*);
void PressurePlate();
void BigBarrel(Entity*);
void BarrelInside(Entity*);
void PushableStatue();
void Object28(Entity*);
void AmbientClouds(Entity*);
void Object2A(Entity*);
void Object2B(Entity*);
void Beanstalk(Entity*);
void Smoke(Entity*);
void PushableRock();
void HittableLever();
void Object30(Entity*);
void FrozenFlower(Entity*);
void PullableMushroom();
void Bollard(Entity*);
void WarpPoint(Entity*);
void Object35(Entity*);
void Object36(Entity*);
void Object37(Entity*);
void JarPortal(Entity*);
void BossDoor();
void Object3A(Entity*);
void MacroMushromStalks(Entity*);
void MacroPlayer(Entity*);
void Object3D(Entity*);
void Object3E();
void GiantLeaf(Entity*);
void Fairy();
void LadderUp(Entity*);
void Object42(Entity*);
void Object43(Entity*);
void Object44(Entity*);
void Object45(Entity*);
void GiantBookLadder(Entity*);
void HeartContainer(Entity*);
void FileScreenObjects(Entity*);
void Object49(Entity*);
void BackgroundCloud(Entity*);
void Object4B(Entity*);
void PushableFurniture();
void Furniture(Entity*);
void MinishSizedEntrance(Entity*);
void Archway(Entity*);
void GiantRock(Entity*);
void GiantRock2(Entity*);
void Object52(Entity*);
void Object53(Entity*);
void PullableLever();
void Minecart(Entity*);
void ThoughtBubble(Entity*);
void HiddenLadderDown(Entity*);
void GentariCurtain(Entity*);
void LavaPlatform();
void Paper(Entity*);
void Object5B(Entity*);
void Mask(Entity*);
void HouseDoorInterior(Entity*);
void Whirlwind(Entity*);
void ObjectBlockingStairs(Entity*);
void SwordsmanNewsletter(Entity*);
void Object61(Entity*);
void GiantTwig();
void Object63(Entity*);
void Object64(Entity*);
void LadderHoleInBookshelf(Entity*);
void Object66(Entity*);
void Object67(Entity*);
void Object68(Entity*);
void Object69(Entity*);
void Object6A(Entity*);
void CrenalBeanSprout(Entity*);
void MinecartDoor(Entity*);
void ObjectOnPillar();
void MineralWaterSource(Entity*);
void MinishSizedArchway(Entity*);
void Object70(Entity*);
void PushableGrave();
void StoneTablet(Entity*);
void LilypadSmall(Entity*);
void Object74(Entity*);
void Object75(Entity*);
void Object76(Entity*);
void Bell(Entity*);
void MacroDecoration(Entity*);
void Object79(Entity*);
void Steam(Entity*);
void PushableLever();
void MacroShoes(Entity*);
void ObjectOnSpinyBeetle();
void Object7E(Entity*);
void PicoBloom(Entity*);
void Board(Entity*);
void Object81(Entity*);
void BigVortex(Entity*);
void BigPushableLever();
void SmallIceBlock();
void BigIceBlock();
void Object86(Entity*);
void OctorokBossObject(Entity*);
void MacroBook(Entity*);
void MazaalBossObject(Entity*);
void CabinFurniture(Entity*);
void DoubleBookshelf();
void Book(Entity*);
void Fireplace(Entity*);
void Object8E();
void FrozenWaterElement();
void Object90(Entity*);
void Object91(Entity*);
void BakerOven(Entity*);
void Lamp(Entity*);
void WindTribeFlag(Entity*);
void Bird(Entity*);
void Object96(Entity*);
void KeyStealingTakkuri();
void Object98(Entity*);
void Object99(Entity*);
void MacroAcorn(Entity*);
void Object9B(Entity*);
void TreeHidingPortal(Entity*);
void LightableSwitch(Entity*);
void TreeThorns(Entity*);
void Fan(Entity*);
void AngryStatue(Entity*);
void PalaceArchway(Entity*);
void ObjectA2(Entity*);
void Cloud(Entity*);
void MinishLight(Entity*);
void FireballChain(Entity*);
void ObjectA6(Entity*);
void ObjectA7(Entity*);
void ObjectA8();
void ObjectA9(Entity*);
void WaterfallOpening(Entity*);
void ObjectAB(Entity*);
void FourElements(Entity*);
void ObjectAD(Entity*);
void FloatingBlock(Entity*);
void ObjectAF(Entity*);
void MetalDoor(Entity*);
void JailBars(Entity*);
void ObjectB2(Entity*);
void ObjectB3(Entity*);
void ObjectB4(Entity*);
void ObjectB5(Entity*);
void ObjectB6(Entity*);
void Well(Entity*);
void WindTribeTeleporter(Entity*);
void ObjectB9(Entity*);
void GyorgBossObject(Entity*);
void Windcrest(Entity*);
void LitArea(Entity*);
void ObjectBD(Entity*);
void Pinwheel(Entity*);
void ObjectBF(Entity*);
void EnemyItem(Entity*);
void ObjectC1(Entity*);

extern void (*const gObjectFunctions[194])(Entity*);

#endif
