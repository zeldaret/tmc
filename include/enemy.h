#ifndef ENEMY_H
#define ENEMY_H

#include "global.h"
#include "asm.h"

#include "sound.h"
#include "effects.h"
#include "flags.h"
#include "common.h"

#include "entity.h"
#include "projectile.h"

bool32 EnemyInit(Entity* this);
/**
 * 0: _OnTick
 * 1: _OnCollision
 * 2: _OnKnockback
 * 3: _OnDeath
 * 4: _OnConfused
 * 5: _OnGrabbed
 */
u32 GetNextFunction(Entity*);
void EnemyFunctionHandler(Entity*, EntityActionArray);
void EnemyFunctionHandlerAfterCollision(Entity*, void (*const[])());
void GenericKnockback(Entity*);
Entity* CreateDeathFx(Entity*, u32, u32);
void sub_0804A720(Entity*);
bool32 sub_08049FDC(Entity*, u32);

Entity* Create0x68FX(Entity*, u32);
void SetChildOffset(Entity*, s32, s32, s32);
Entity* CreateProjectileWithParent(Entity*, u8, u8);

void GenericDeath(Entity*);
void sub_08002724(void*, u8*);
void sub_080026C4(u8*, u8*, u8*, u32);
void sub_080026F2(u8*, void*, u8*, u32);
bool32 sub_08049FA0(Entity*);
u32 sub_08049EE4(Entity*);
bool32 sub_08049F84(Entity*, s32);
Entity* sub_08049DF4(u32);
u32 sub_0804A044(Entity*, Entity*, u32);
s32 sub_080012DC(Entity*);
u32 sub_080044EC(Entity*, u32);
void sub_0804AA1C(Entity*);
bool32 sub_08049F1C(Entity*, Entity*, s32);
bool32 PlayerInRange(Entity*, u32, s32);
void sub_0804A4E4(Entity*, Entity*);
void GenericKnockback2(Entity*);

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
    /*0x24*/ GLEEROK,
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
    /*0x49*/ TORCH_TRAP,
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
    /*0x5a*/ VAATI_TRANSFIGURED_EYE,
    /*0x5b*/ BUSINESS_SCRUB_PROLOGUE,
    /*0x5c*/ GYORG_FEMALE,
    /*0x5d*/ GYORG_MALE,
    /*0x5e*/ CURTAIN,
    /*0x5f*/ VAATI_WRATH_EYE,
    /*0x60*/ GYORG_CHILD,
    /*0x61*/ GYORG_FEMALE_EYE,
    /*0x62*/ GYORG_MALE_EYE,
    /*0x63*/ GYORG_FEMALE_MOUTH,
    /*0x64*/ ENEMY_64,
    /*0x65*/ TREE_ITEM,
    /*0x66*/ ENEMY_66
} Enemy;

void Octorok(Entity*);
void Chuchu(Entity*);
void Leever(Entity*);
void Peahat(Entity*);
void Rollobite(Entity*);
void DarkNut(Entity*);
void HangingSeed(Entity*);
void Beetle(Entity*);
void Keese(Entity*);
void DoorMimic(Entity*);
void RockChuchu(Entity*);
void SpinyChuchu(Entity*);
void CuccoChickAggr(Entity*);
void Moldorm(Entity*);
void EnemyE(Entity*);
void Moldworm(Entity*);
void Sluggula(Entity*);
void Pesto(Entity*);
void Puffstool(Entity*);
void ChuchuBoss(Entity*);
void LikeLike(Entity*);
void SpearMoblin(Entity*);
void BusinessScrub(Entity*);
void RupeeLike(Entity*);
void Madderpillar(Entity*);
void WaterDrop(Entity*);
void WallMaster(Entity*);
void BombPeahat(Entity*);
void Spark(Entity*);
void Chaser(Entity*);
void SpikedBeetle(Entity*);
void SensorBladeTrap(Entity*);
void Helmasaur(Entity*);
void FallingBoulder(Entity*);
void Bobomb(Entity*);
void WallMaster2(Entity*);
void Gleerok();
void VaatiEyesMacro(Entity*);
void Tektite(Entity*);
void WizzrobeWind();
void WizzrobeFire();
void WizzrobeIce();
void Armos();
void Eyegore();
void Rope(Entity*);
void SmallPesto(Entity*);
void AcroBandit(Entity*);
void BladeTrap(Entity*);
void Keaton(Entity*);
void Crow(Entity*);
void Mulldozer();
void Bombarossa(Entity*);
void Wisp(Entity*);
void SpinyBeetle(Entity*);
void MazaalHead(Entity*);
void MazaalMacro(Entity*);
void MazaalHand(Entity*);
void OctorokBoss();
void FlyingPot(Entity*);
void Gibdo(Entity*);
void OctorokGolden(Entity*);
void TektiteGolden(Entity*);
void RopeGolden(Entity*);
void CloudPiranha();
void ScissorsBeetle(Entity*);
void CuccoAggr(Entity*);
void Stalfos();
void FlyingSkull(Entity*);
void MazaalBracelet(Entity*);
void Takkuri(Entity*);
void BowMoblin(Entity*);
void Lakitu(Entity*);
void LakituCloud(Entity*);
void TorchTrap(Entity*);
void VaatiRebornEnemy(Entity*);
void VaatiProjectile(Entity*);
void BallChainSoldier(Entity*);
void Enemy4D();
void Ghini();
void VaatiTransfigured(Entity*);
void Enemy50();
void VaatiWrath(Entity*);
void VaatiArm(Entity*);
void Dust(Entity*);
void VaatiBall(Entity*);
void Slime(Entity*);
void MiniSlime(Entity*);
void FireballGuy(Entity*);
void MiniFireballGuy(Entity*);
void VaatiTransfiguredEye(Entity*);
void BusinessScrubPrologue(Entity*);
void GyorgFemale();
void GyorgMale();
void Curtain(Entity*);
void VaatiWrathEye(Entity*);
void GyorgChild();
void GyorgFemaleEye();
void GyorgMaleEye();
void GyorgFemaleMouth();
void Enemy64();
void TreeItem(Entity*);
void Enemy66(Entity*);

extern void (*const gUnk_080012C8[])(Entity*);

#endif // ENEMY_H
