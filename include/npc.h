#ifndef NPC_H
#define NPC_H

#include "global.h"
#include "asm.h"
#include "common.h"

#include "sound.h"
#include "effects.h"
#include "room.h"
#include "flags.h"
#include "physics.h"
#include "message.h"
#include "script.h"
#include "save.h"

#include "entity.h"
#include "player.h"

#include "structures.h"

typedef enum {
    DIALOG_ROOM_FLAG,
    DIALOG_LOCAL_FLAG,
    DIALOG_GLOBAL_FLAG,
    DIALOG_KINSTONE,
    DIALOG_INVENTORY,
} DialogFlagType;

typedef enum {
    DIALOG_NONE,
    DIALOG_NORMAL,
    DIALOG_SET_FLAG,
    DIALOG_TOGGLE_FLAG,
    DIALOG_CHECK_FLAG,
    DIALOG_CALL_FUNC,
    DIALOG_MINISH,
} DialogType;

typedef struct {
    u32 flag : 12;
    DialogFlagType flagType : 4;
    DialogType type : 4;
    u32 fromSelf : 1;
    union {
        struct {
            u16 a;
            u16 b;
        } indices;
        void (*func)(Entity* e);
    } data;
} Dialog;

typedef struct {
    /*0x00*/ u8 id;
    /*0x01*/ u8 type;
    /*0x02*/ u8 type2;
    /*0x03*/ u8 collisionLayer;
    /*0x04*/ u16 x;
    /*0x06*/ u16 y;
    /*0x08*/ u16* script;
    /*0x0c*/ u16 timer;
    /*0x0e*/ u16 progressBitfield; /**< For which gSave.global_process this NPC should appear. */
} NPCStruct;
extern NPCStruct gNPCData[50];

void sub_0806EC20(Entity* ent);
void sub_0806EC38(void);
u32 sub_0806ED78(Entity* ent);
s32 GetAnimationStateInRectRadius(Entity*, u32, u32);
u32 GetAnimationState(Entity* ent);
s32 GetFacingDirectionInRectRadius(Entity* ent, u32 x, u32 y);
void sub_0806EE04(Entity* ent, void* a2, u32 a3);
u32 sub_0806EE20(Entity* ent);
s32 sub_0806F078(Entity* ent, s32 a2);
void InitializeNPCFusion(Entity* ent);
void MarkFuserDone(Entity* ent);
void ShowNPCDialogue(Entity* ent, const Dialog* dia);

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter);
u32 UpdateFuseInteraction(Entity*);

void NPCInit(Entity* ent);
void CollideFollowers(void);

// TODO move?
void AddInteractableWhenBigFuser(Entity* ent, u32 kinstoneId);
u32 GetFusionToOffer(Entity*);
void AddInteractableWhenBigObject(Entity*);
void sub_0807000C(Entity*);
void AddInteractableAsMinishFuser(Entity* ent, u32 kinstoneId);

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

void Gentari();
void Gentari_Fusion(Entity*);
void Festari();
void Festari_Fusion();
void ForestMinish();
void ForestMinish_Head(Entity*);
void ForestMinish_Fusion(Entity*);
void Postman();
void Postman_Fusion(Entity*);
void NPC5();
void Townsperson(Entity*);
void Townsperson_Head(Entity*);
void Townsperson_Fusion(Entity*);
void Kid();
void Kid_Head(Entity*);
void Kid_Fusion(Entity*);
void Guard();
void Guard_Head(Entity*);
void NPC9(Entity*);
void Stamp(Entity*);
void Maid(Entity*);
void Maid_Head(Entity*);
void Marcy(Entity*);
void Wheaton(Entity*);
void Pita();
void MinishEzlo(Entity*);
void MinishEzlo_Head(Entity*);
void Mailbox(Entity*);
void Beedle(Entity*);
void Beedle_Head(Entity*);
void Brocco();
void Brocco_Fusion(Entity*);
void SittingPerson();
void SittingPerson_Head(Entity*);
void SittingPerson_Fusion(Entity*);
void Pina();
void Pina_Fusion(Entity*);
void Din();
void Din_Fusion(Entity*);
void Nayru();
void Nayru_Fusion(Entity*);
void Farore();
void Farore_Fusion(Entity*);
void Sturgeon();
void Sturgeon_Head(Entity*);
void Sturgeon_Fusion(Entity*);
void TingleSiblings(Entity*);
void TingleSiblings_Fusion(Entity*);
void Stockwell();
void Talon();
void Talon_Head(Entity*);
void Talon_Fusion(Entity*);
void Malon();
void Malon_Fusion(Entity*);
void Epona();
void Epona_Fusion();
void MilkCart(Entity*);
void GhostBrothers();
void GhostBrothers_Fusion(Entity*);
void Smith();
void Smith_Head(Entity*);
void Smith_Fusion(Entity*);
void NPC23();
void KingDaltus();
void KingDaltus_Fusion(Entity*);
void MinisterPotho();
void MinisterPotho_Fusion(Entity*);
void NPC26(Entity*);
void Vaati(Entity*);
void Zelda(Entity*);
void Mutoh();
void Mutoh_Head(Entity*);
void Mutoh_Fusion(Entity*);
void Carpenter();
void Carpenter_Head(Entity*);
void Carpenter_Fusion(Entity*);
void CastorWildsStatue();
void CastorWildsStatue_Fusion(Entity*);
void Cat();
void Cat_Fusion(Entity*);
void MountainMinish();
void MountainMinish_Head(Entity*);
void MountainMinish_Fusion(Entity*);
void ZeldaFollower(Entity*);
void Melari(Entity*);
void Melari_Head(Entity*);
void Melari_Fusion(Entity*);
void BladeBrothers();
void BladeBrothers_Fusion(Entity*);
void Cow();
void Cow_Fusion();
void Goron();
void Goron_Fusion(Entity*);
void GoronMerchant(Entity*);
void Gorman();
void Gorman_Head(Entity*);
void Dog();
void Dog_Head();
void Dog_Fusion();
void Syrup();
void Syrup_Head(Entity*);
void Rem();
void TownMinish();
void TownMinish_Head();
void TownMinish_Fusion(Entity*);
void Librari();
void Librari_Fusion(Entity*);
void Percy();
void Percy_Head(Entity*);
void Percy_Fusion(Entity*);
void VaatiReborn(Entity*);
void MoblinLady(Entity*);
void Librarians(Entity*);
void Farmers(Entity*);
void Farmers_Head(Entity*);
void Farmers_Fusion(Entity*);
void Carlov(Entity*);
void Dampe(Entity*);
void Dampe_Fusion(Entity*);
void DrLeft(Entity*);
void KingGustaf(Entity*);
void Gina();
void Gina_Fusion(Entity*);
void Simon(Entity*);
void Anju();
void Anju_Fusion();
void Mama();
void Mama_Head(Entity*);
void Mama_Fusion(Entity*);
void Emma(Entity*);
void Teachers();
void Teachers_Head(Entity*);
void Teachers_Fusion(Entity*);
void WindTribespeople(Entity*);
void WindTribespeople_Head(Entity*);
void WindTribespeople_Fusion(Entity*);
void Gregal();
void Gregal_Fusion(Entity*);
void MayorHagen();
void MayorHagen_Fusion(Entity*);
void BigGoron();
void Ezlo(Entity*);
void NPC4E(Entity*);
void NPC4E_Fusion(Entity*);
void NPC4F(Entity*);
void ClothesRack(Entity*);
void PicolyteBottle(Entity*);
void SmallTownMinish(Entity*);
void HurdyGurdyMan();
void HurdyGurdyMan_Head(Entity*);
void HurdyGurdyMan_Fusion(Entity*);
void Cucco();
void Cucco_Fusion(Entity*);
void CuccoChick();
void CuccoChick_Fusion();
void FusionMenuNPC(Entity*);
void FusionMenuNPC_Head(Entity*);
void Phonograph(Entity*);
void NPC58();
void NPC58_Head();

extern void (*const gNPCFunctions[128][3])(Entity*);

#endif // NPC_H
