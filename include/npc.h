#ifndef NPC_H
#define NPC_H

#include "global.h"
#include "asm.h"
#include "utils.h"

#include "sound.h"
#include "effects.h"
#include "room.h"
#include "flags.h"
#include "coord.h"
#include "message.h"
#include "script.h"
#include "save.h"

#include "entity.h"
#include "player.h"

#include "structures.h"

void sub_0806EC20(Entity* ent);
void sub_0806EC38(void);
u32 sub_0806ED78(Entity* ent);
s32 sub_0806ED9C(Entity*, u32, u32);
u32 GetAnimationState(Entity* ent);
s32 sub_0806EDD8(Entity* ent, u32 x, u32 y);
void sub_0806EE04(Entity* ent, void* a2, u32 a3);
u32 sub_0806EE20(Entity* ent);
s32 sub_0806F078(Entity* ent, s32 a2);
void sub_0806F118(Entity* ent);
void sub_0806F188(Entity* ent);
void ShowNPCDialogue(Entity* ent, Dialog* dia);

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter);
u32 UpdateFuseInteraction(Entity*);

void NPCInit(Entity* ent);
void sub_0806F0A4(void);

// TODO move?
void sub_08078784(Entity* ent, u32 arg1);
u32 sub_0806F5A4(u32);
u32 sub_0801E99C(Entity*);
void sub_08078778(Entity*);
void sub_0807000C(Entity*);
void sub_080787A8(Entity*, u32);

enum NPC {
    /*0x00*/ NPC_NONE_0,
    /*0x01*/ GENTARI,
    /*0x02*/ FESTARI,
    /*0x03*/ FOREST_MINISH,
    /*0x04*/ POSTMAN,
    /*0x05*/ NPC_UNK_5,
    /*0x06*/ TPWNSPERSON,
    /*0x07*/ KID,
    /*0x08*/ GUARD,
    /*0x09*/ NPC_UNK_9,
    /*0x0a*/ STAMP,
    /*0x0b*/ MAID,
    /*0x0c*/ MARCY,
    /*0x0d*/ WHEATON,
    /*0x0e*/ PITA,
    /*0x0f*/ MINISH_EZLO,
    /*0x10*/ MAILBOX,
    /*0x11*/ BEEDLE,
    /*0x12*/ BROCCO,
    /*0x13*/ SITTING_PERSON,
    /*0x14*/ PINA,
    /*0x15*/ GUARD_1,
    /*0x16*/ MAID_1,
    /*0x17*/ DIN,
    /*0x18*/ NAYRU,
    /*0x19*/ FARORE,
    /*0x1a*/ STURGEON,
    /*0x1b*/ TINGLE_SIBLINGS,
    /*0x1c*/ STOCKWELL,
    /*0x1d*/ TALON,
    /*0x1e*/ MALON,
    /*0x1f*/ EPONA,
    /*0x20*/ MILK_CART,
    /*0x21*/ GHOST_BROTHERS,
    /*0x22*/ SMITH,
    /*0x23*/ NPC_UNK_23,
    /*0x24*/ KING_DALTUS,
    /*0x25*/ MINISTER_POTHO,
    /*0x26*/ NPC_UNK_26,
    /*0x27*/ VAATI,
    /*0x28*/ ZELDA,
    /*0x29*/ MUTOH,
    /*0x2a*/ CARPENTER,
    /*0x2b*/ CASTOR_WILDS_STATUE,
    /*0x2c*/ CAT,
    /*0x2d*/ MOUNTAIN_MINISH,
    /*0x2e*/ ZELDA_FOLLOWER,
    /*0x2f*/ MELARI,
    /*0x30*/ BLADE_BROTHERS,
    /*0x31*/ COW,
    /*0x32*/ GORON,
    /*0x33*/ GORON_MERCHANT,
    /*0x34*/ GORMAN,
    /*0x35*/ DOG,
    /*0x36*/ SYRUP,
    /*0x37*/ REM,
    /*0x38*/ TOWN_MINISH,
    /*0x39*/ LIBRARI,
    /*0x3a*/ PERCY,
    /*0x3b*/ VAATI_REBORN,
    /*0x3c*/ MOBLIN_LADY,
    /*0x3d*/ LIBRARIANS,
    /*0x3e*/ FARMERS,
    /*0x3f*/ CARLOV,
    /*0x40*/ DAMPE,
    /*0x41*/ DR_LEFT,
    /*0x42*/ KING_GUSTAF,
    /*0x43*/ GINA,
    /*0x44*/ SIMON,
    /*0x45*/ ANJU,
    /*0x46*/ MAMA,
    /*0x47*/ EMMA,
    /*0x48*/ TEACHERS,
    /*0x49*/ WIND_TRIBESPEOPLE,
    /*0x4a*/ GREGAL,
    /*0x4b*/ MAYOR_HAGEN,
    /*0x4c*/ BIG_GORON,
    /*0x4d*/ EZLO,
    /*0x4e*/ NPC_UNK_4E,
    /*0x4f*/ NPC_UNK_4F,
    /*0x50*/ CLOTHES_RACK,
    /*0x51*/ PICOLYTE_BOTTLE,
    /*0x52*/ SMALL_TOWN_MINISH,
    /*0x53*/ HURDY_GURDY_MAN,
    /*0x54*/ CUCCO,
    /*0x55*/ CUCCO_CHICK,
    /*0x56*/ FUSION_MENU_NPC,
    /*0x57*/ PHONOGRAPH,
    /*0x58*/ NPC_UNK_58,
    /*0x59*/ NPC_NONE_1,
    /*0x5a*/ NPC_NONE_2,
    /*0x5b*/ NPC_NONE_3,
    /*0x5c*/ NPC_NONE_4,
    /*0x5d*/ NPC_NONE_5,
    /*0x5e*/ NPC_NONE_6,
    /*0x5f*/ NPC_NONE_7,
    /*0x60*/ NPC_NONE_8,
    /*0x61*/ NPC_NONE_9,
    /*0x62*/ NPC_NONE_10,
    /*0x63*/ NPC_NONE_11,
    /*0x64*/ NPC_NONE_12,
    /*0x65*/ NPC_NONE_13,
    /*0x66*/ NPC_NONE_14,
    /*0x67*/ NPC_NONE_15,
    /*0x68*/ NPC_NONE_16,
    /*0x69*/ NPC_NONE_17,
    /*0x6a*/ NPC_NONE_18,
    /*0x6b*/ NPC_NONE_19,
    /*0x6c*/ NPC_NONE_20,
    /*0x6d*/ NPC_NONE_21,
    /*0x6e*/ NPC_NONE_22,
    /*0x6f*/ NPC_NONE_23,
    /*0x70*/ NPC_NONE_24,
    /*0x71*/ NPC_NONE_25,
    /*0x72*/ NPC_NONE_26,
    /*0x73*/ NPC_NONE_27,
    /*0x74*/ NPC_NONE_28,
    /*0x75*/ NPC_NONE_29,
    /*0x76*/ NPC_NONE_30,
    /*0x77*/ NPC_NONE_31,
    /*0x78*/ NPC_NONE_32,
    /*0x79*/ NPC_NONE_33,
    /*0x7a*/ NPC_NONE_34,
    /*0x7b*/ NPC_NONE_35,
    /*0x7c*/ NPC_NONE_36,
    /*0x7d*/ NPC_NONE_37,
    /*0x7e*/ NPC_NONE_38,
    /*0x7f*/ NPC_NONE_39,
};

extern void Gentari(Entity*);
extern void Gentari_Fusion(Entity*);
extern void Festari(Entity*);
extern void Festari_Fusion(Entity*);
extern void ForestMinish(Entity*);
extern void ForestMinish_Head(Entity*);
extern void ForestMinish_Fusion(Entity*);
extern void Postman(Entity*);
extern void Postman_Fusion(Entity*);
extern void NPC5(Entity*);
extern void Townsperson(Entity*);
extern void Townsperson_Head(Entity*);
extern void Townsperson_Fusion(Entity*);
extern void Kid(Entity*);
extern void Kid_Head(Entity*);
extern void Kid_Fusion(Entity*);
extern void Guard(Entity*);
extern void Guard_Head(Entity*);
extern void NPC9(Entity*);
extern void Stamp(Entity*);
extern void Maid(Entity*);
extern void Maid_Head(Entity*);
extern void Marcy(Entity*);
extern void Wheaton(Entity*);
extern void Pita(Entity*);
extern void MinishEzlo(Entity*);
extern void MinishEzlo_Head(Entity*);
extern void Mailbox(Entity*);
extern void Beedle(Entity*);
extern void Beedle_Head(Entity*);
extern void Brocco(Entity*);
extern void Brocco_Fusion(Entity*);
extern void SittingPerson(Entity*);
extern void SittingPerson_Head(Entity*);
extern void SittingPerson_Fusion(Entity*);
extern void Pina(Entity*);
extern void Pina_Fusion(Entity*);
extern void Din(Entity*);
extern void Din_Fusion(Entity*);
extern void Nayru(Entity*);
extern void Nayru_Fusion(Entity*);
extern void Farore(Entity*);
extern void Farore_Fusion(Entity*);
extern void Sturgeon(Entity*);
extern void Sturgeon_Head(Entity*);
extern void Sturgeon_Fusion(Entity*);
extern void TingleSiblings(Entity*);
extern void TingleSiblings_Fusion(Entity*);
extern void Stockwell(Entity*);
extern void Talon(Entity*);
extern void Talon_Head(Entity*);
extern void Talon_Fusion(Entity*);
extern void Malon(Entity*);
extern void Malon_Fusion(Entity*);
extern void Epona(Entity*);
extern void Epona_Fusion(Entity*);
extern void MilkCart(Entity*);
extern void GhostBrothers(Entity*);
extern void GhostBrothers_Fusion(Entity*);
extern void Smith(Entity*);
extern void Smith_Head(Entity*);
extern void Smith_Fusion(Entity*);
extern void NPC23(Entity*);
extern void KingDaltus(Entity*);
extern void KingDaltus_Fusion(Entity*);
extern void MinisterPotho(Entity*);
extern void MinisterPotho_Fusion(Entity*);
extern void NPC26(Entity*);
extern void Vaati(Entity*);
extern void Zelda(Entity*);
extern void Mutoh(Entity*);
extern void Mutoh_Head(Entity*);
extern void Mutoh_Fusion(Entity*);
extern void Carpenter(Entity*);
extern void Carpenter_Head(Entity*);
extern void Carpenter_Fusion(Entity*);
extern void CastorWildsStatue(Entity*);
extern void CastorWildsStatue_Fusion(Entity*);
extern void Cat(Entity*);
extern void Cat_Fusion(Entity*);
extern void MountainMinish(Entity*);
extern void MountainMinish_Head(Entity*);
extern void MountainMinish_Fusion(Entity*);
extern void ZeldaFollower(Entity*);
extern void Melari(Entity*);
extern void Melari_Head(Entity*);
extern void Melari_Fusion(Entity*);
extern void BladeBrothers(Entity*);
extern void BladeBrothers_Fusion(Entity*);
extern void Cow(Entity*);
extern void Cow_Fusion(Entity*);
extern void Goron(Entity*);
extern void Goron_Fusion(Entity*);
extern void GoronMerchant(Entity*);
extern void Gorman(Entity*);
extern void Gorman_Head(Entity*);
extern void Dog(Entity*);
extern void Dog_Head(Entity*);
extern void Dog_Fusion(Entity*);
extern void Syrup(Entity*);
extern void Syrup_Head(Entity*);
extern void Rem(Entity*);
extern void TownMinish(Entity*);
extern void TownMinish_Head(Entity*);
extern void TownMinish_Fusion(Entity*);
extern void Librari(Entity*);
extern void Librari_Fusion(Entity*);
extern void Percy(Entity*);
extern void Percy_Head(Entity*);
extern void Percy_Fusion(Entity*);
extern void VaatiReborn(Entity*);
extern void MoblinLady(Entity*);
extern void Librarians(Entity*);
extern void Farmers(Entity*);
extern void Farmers_Head(Entity*);
extern void Farmers_Fusion(Entity*);
extern void Carlov(Entity*);
extern void Dampe(Entity*);
extern void Dampe_Fusion(Entity*);
extern void DrLeft(Entity*);
extern void KingGustaf(Entity*);
extern void Gina(Entity*);
extern void Gina_Fusion(Entity*);
extern void Simon(Entity*);
extern void Anju(Entity*);
extern void Anju_Fusion(Entity*);
extern void Mama(Entity*);
extern void Mama_Head(Entity*);
extern void Mama_Fusion(Entity*);
extern void Emma(Entity*);
extern void Teachers(Entity*);
extern void Teachers_Head(Entity*);
extern void Teachers_Fusion(Entity*);
extern void WindTribespeople(Entity*);
extern void WindTribespeople_Head(Entity*);
extern void WindTribespeople_Fusion(Entity*);
extern void Gregal(Entity*);
extern void Gregal_Fusion(Entity*);
extern void MayorHagen(Entity*);
extern void MayorHagen_Fusion(Entity*);
extern void BigGoron(Entity*);
extern void Ezlo(Entity*);
extern void NPC4E(Entity*);
extern void NPC4E_Fusion(Entity*);
extern void NPC4F(Entity*);
extern void ClothesRack(Entity*);
extern void PicolyteBottle(Entity*);
extern void SmallTownMinish(Entity*);
extern void HurdyGurdyMan(Entity*);
extern void HurdyGurdyMan_Head(Entity*);
extern void HurdyGurdyMan_Fusion(Entity*);
extern void Cucco(Entity*);
extern void Cucco_Fusion(Entity*);
extern void CuccoChick(Entity*);
extern void CuccoChick_Fusion(Entity*);
extern void FusionMenuNPC(Entity*);
extern void FusionMenuNPC_Head(Entity*);
extern void Phonograph(Entity*);
extern void NPC58(Entity*);
extern void NPC58_Head(Entity*);

extern void (*const gNPCFunctions[128][3])(Entity*);

#endif
