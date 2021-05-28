#ifndef ENEMY_H
#define EMEMY_H

#include "global.h"
#include "entity.h"

typedef enum {
    /*0x00*/ OCTOROK,
    /*0x01*/ CHUCHU,
    /*0x02*/ LEEVER,
    /*0x03*/ PEAHAT,
    /*0x04*/ ROLLOBITE,
    /*0x05*/ DARK_NUT,
    /*0x06*/ HANGING_SEED,
    /*0x07*/ BEETLE,
    /*0x08*/ KEESE,
    /*0x09*/ DOOR_MIMIC,
    /*0x0a*/ ROCK_CHUCHU,
    /*0x0b*/ SPINY_CHUCHU,
    /*0x0c*/ CUCCO_CHICK_AGGR,
    /*0x0d*/ MOLDORM,
    /*0x0e*/ ENEMY_E,
    /*0x0f*/ MOLDWORM,
    /*0x10*/ SLUGGULA,
    /*0x11*/ PESTO,
    /*0x12*/ PUFFSTOOL,
    /*0x13*/ CHUCHU_BOSS,
    /*0x14*/ LIKE_LIKE,
    /*0x15*/ SPEAR_MOBLIN,
    /*0x16*/ BUSINESS_SCRUB,
    /*0x17*/ RUPEE_LIKE,
    /*0x18*/ MADDERPILLAR,
    /*0x19*/ WATER_DROP,
    /*0x1a*/ WALL_MASTER,
    /*0x1b*/ BOMB_PEAHAT,
    /*0x1c*/ SPARK,
    /*0x1d*/ CHASER,
    /*0x1e*/ SPIKED_BEETLE,
    /*0x1f*/ SENSOR_BLADE_TRAP,
    /*0x20*/ HELMASAUR,
    /*0x21*/ FALLING_BOULDER,
    /*0x22*/ BOBOMB,
    /*0x23*/ WALL_MASTER_2,
    /*0x24*/ GLEEROCK,
    /*0x25*/ VAATI_EYES_MACRO,
    /*0x26*/ TEKTITE,
    /*0x27*/ WIZZROBE_WIND,
    /*0x28*/ WIZZROBE_FIRE,
    /*0x29*/ WIZZROBE_ICE,
    /*0x2a*/ ARMOS,
    /*0x2b*/ EYEGORE,
    /*0x2c*/ ROPE,
    /*0x2d*/ SMALL_PESTO,
    /*0x2e*/ ACRO_BANDIT,
    /*0x2f*/ BLADE_TRAP,
    /*0x30*/ KEATON,
    /*0x31*/ CROW,
    /*0x32*/ MULLDOZER,
    /*0x33*/ BOMBAROSSA,
    /*0x34*/ WISP,
    /*0x35*/ SPINY_BEETLE,
    /*0x36*/ MAZAAL_HEAD,
    /*0x37*/ MAZAAL_MACRO,
    /*0x38*/ MAZAAL_HAND,
    /*0x39*/ OCTOROK_BOSS,
    /*0x3a*/ FLYING_POT,
    /*0x3b*/ GOBDO,
    /*0x3c*/ OCTOROK_GOLDEN,
    /*0x3d*/ TEKTITE_GOLDEN,
    /*0x3e*/ ROPE_GOLDEN,
    /*0x3f*/ CLOUD_PIRANHA,
    /*0x40*/ SCISSORS_BEETLE,
    /*0x41*/ CUCCO_AGGR,
    /*0x42*/ STALFOS,
    /*0x43*/ FLYING_SKULL,
    /*0x44*/ MAZAAL_BRACELET,
    /*0x45*/ TAKKURI,
    /*0x46*/ BOW_MOBLIN,
    /*0x47*/ LAKITU,
    /*0x48*/ LAKITU_CLOUD,
    /*0x49*/ ENEMY_49,
    /*0x4a*/ VAATI_REBORN_ENEMY,
    /*0x4b*/ VAATI_PROJECTILE,
    /*0x4c*/ BALL_CHAIN_SOLIDER,
    /*0x4d*/ ENEMY_4D,
    /*0x4e*/ GHINI,
    /*0x4f*/ VAATI_TRANSFIGURED,
    /*0x50*/ ENEMY_50,
    /*0x51*/ VAATI_WRATH,
    /*0x52*/ VAATI_ARM,
    /*0x53*/ DUST,
    /*0x54*/ VAATI_BALL,
    /*0x55*/ OCTOROK2,
    /*0x56*/ SLIME,
    /*0x57*/ MINI_SLIME,
    /*0x58*/ FIREBALL_GUY,
    /*0x59*/ MINI_FIREBALL_GUY,
    /*0x5a*/ ENEMY_5A,
    /*0x5b*/ BUSINESS_SCRUB_PROLOGUE,
    /*0x5c*/ GYORG_FEMALE,
    /*0x5d*/ GYORG_MALE,
    /*0x5e*/ CURTAIN,
    /*0x5f*/ ENEMY_5F,
    /*0x60*/ GYORG_CHILD,
    /*0x61*/ GYORG_FEMALE_EYE,
    /*0x62*/ ENEMY_62,
    /*0x63*/ GYORG_FEMALE_MOUTH,
    /*0x64*/ ENEMY_64,
    /*0x65*/ TREE_ITEM,
    /*0x66*/ ENEMY_66
} Enemy;

extern void Octorok(Entity*);
extern void Chuchu(Entity*);
extern void Leever(Entity*);
extern void Peahat(Entity*);
extern void Rollobite(Entity*);
extern void DarkNut(Entity*);
extern void HangingSeed(Entity*);
extern void Beetle(Entity*);
extern void Keese(Entity*);
extern void DoorMimic(Entity*);
extern void RockChuchu(Entity*);
extern void SpinyChuchu(Entity*);
extern void CuccoChickAggr(Entity*);
extern void Moldorm(Entity*);
extern void EnemyE(Entity*);
extern void Moldworm(Entity*);
extern void Sluggula(Entity*);
extern void Pesto(Entity*);
extern void Puffstool(Entity*);
extern void ChuchuBoss(Entity*);
extern void LikeLike(Entity*);
extern void SpearMoblin(Entity*);
extern void BusinessScrub(Entity*);
extern void RupeeLike(Entity*);
extern void Madderpillar(Entity*);
extern void WaterDrop(Entity*);
extern void WallMaster(Entity*);
extern void BombPeahat(Entity*);
extern void Spark(Entity*);
extern void Chaser(Entity*);
extern void SpikedBeetle(Entity*);
extern void SensorBladeTrap(Entity*);
extern void Helmasaur(Entity*);
extern void FallingBoulder(Entity*);
extern void Bobomb(Entity*);
extern void WallMaster2(Entity*);
extern void Gleerok(Entity*);
extern void VaatiEyesMacro(Entity*);
extern void Tektite(Entity*);
extern void WizzrobeWind(Entity*);
extern void WizzrobeFire(Entity*);
extern void WizzrobeIce(Entity*);
extern void Armos(Entity*);
extern void Eyegore(Entity*);
extern void Rope(Entity*);
extern void SmallPesto(Entity*);
extern void AcroBandit(Entity*);
extern void BladeTrap(Entity*);
extern void Keaton(Entity*);
extern void Crow(Entity*);
extern void Mulldozer(Entity*);
extern void Bombarossa(Entity*);
extern void Wisp(Entity*);
extern void SpinyBeetle(Entity*);
extern void MazaalHead(Entity*);
extern void MazaalMacro(Entity*);
extern void MazaalHand(Entity*);
extern void OctorokBoss(Entity*);
extern void FlyingPot(Entity*);
extern void Gibdo(Entity*);
extern void OctorokGolden(Entity*);
extern void TektiteGolden(Entity*);
extern void RopeGolden(Entity*);
extern void CloudPiranha(Entity*);
extern void ScissorsBeetle(Entity*);
extern void CuccoAggr(Entity*);
extern void Stalfos(Entity*);
extern void FlyingSkull(Entity*);
extern void MazaalBracelet(Entity*);
extern void Takkuri(Entity*);
extern void BowMoblin(Entity*);
extern void Lakitu(Entity*);
extern void LakituCloud(Entity*);
extern void Enemy49(Entity*);
extern void VaatiRebornEnemy(Entity*);
extern void VaatiProjectile(Entity*);
extern void BallChainSoldier(Entity*);
extern void Enemy4D(Entity*);
extern void Ghini(Entity*);
extern void VaatiTransfigured(Entity*);
extern void Enemy50(Entity*);
extern void VaatiWrath(Entity*);
extern void VaatiArm(Entity*);
extern void Dust(Entity*);
extern void VaatiBall(Entity*);
extern void Slime(Entity*);
extern void MiniSlime(Entity*);
extern void FireballGuy(Entity*);
extern void MiniFireballGuy(Entity*);
extern void Enemy5A(Entity*);
extern void BusinessScrubPrologue(Entity*);
extern void GyorgFemale(Entity*);
extern void GyorgMale(Entity*);
extern void Curtain(Entity*);
extern void Enemy5F(Entity*);
extern void GyorgChild(Entity*);
extern void GyorgFemaleEye(Entity*);
extern void Enemy62(Entity*);
extern void GyorgFemaleMouth(Entity*);
extern void Enemy64(Entity*);
extern void TreeItem(Entity*);
extern void Enemy66(Entity*);

extern u32 GetNextFunction(Entity*);
extern void EnemyFunctionHandler(Entity*, void (*const func[])(Entity*));
extern void sub_08001324(Entity*);
#endif
