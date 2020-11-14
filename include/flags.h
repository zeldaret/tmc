#ifndef FLAGS_H
#define FLAGS_H

#include "global.h"

u32 CheckFlags(u32);
u32 CheckGlobalFlag(u32);
u32 CheckGlobalFlags(u32, u32);
extern u32 CheckLocalFlag(u32);
extern u32 CheckLocalFlagByOffset(u32, u32);
u32 CheckLocalFlags(u32, u32);
u32 CheckLocalFlagsByOffset(u32, u32, u32);
u32 CheckRoomFlag(u32);
u32 CheckRoomFlags(u32, u32);

void ClearFlag(u32);
void ClearGlobalFlag(u32);
void ClearLocalFlag(u32);
void ClearLocalFlagByOffset(u32, u32);
void ClearRoomFlag(u32);

void SetFlag(u32);
void SetGlobalFlag(u32);
void SetLocalFlag(u32);
void SetLocalFlagByOffset(u32, u32);
void SetRoomFlag(u32);

extern u32 gGlobalFlags;
extern u32 gRoomFlags;

enum {
    NONE,
    /*0x01*/ LV0_CLEAR,           /*                             */
    /*0x02*/ LV1_CLEAR,           /*                             */
    /*0x03*/ LV2_CLEAR,           /*                             */
    /*0x04*/ LV3_CLEAR,           /*                             */
    /*0x05*/ LV4_CLEAR,           /*                             */
    /*0x06*/ LV5_CLEAR,           /*                             */
    /*0x07*/ LV6_CLEAR,           /*                             */
    /*0x08*/ LV7_CLEAR,           /*                             */
    /*0x09*/ LV8_CLEAR,           /*                             */
    /*0x0a*/ MACHI_SET_1,         /* Defeated Big Green Chuchu   */
    /*0x0b*/ MACHI_SET_2,         /* Defeated Gleerok            */
    /*0x0c*/ MACHI_SET_3,         /*                             */
    /*0x0d*/ MACHI_SET_4,         /* Defeated Big Octorok        */
    /*0x0e*/ MACHI_SET_5,         /* Defeated Gyorg Pair         */
    /*0x0f*/ MACHI_SET_6,         /*                             */
    /*0x10*/ MACHI_SET_7,         /*                             */
    /*0x11*/ MACHI_SET_8,         /*                             */
    /*0x12*/ MACHI_MACHIHOKORI,   /* Sucked dust from carpet     */
    /*0x13*/ START,               /* Met Zelda                   */
    /*0x14*/ EZERO_1ST,           /* Met Ezlo                    */
    /*0x15*/ TABIDACHI,           /* Talked to Daltus and Smith  */
    /*0x16*/ LV1TARU,             /*                             */
    /*0x17*/ LV1TARU_OPEN,        /* Sucked barrel web           */
    /*0x18*/ TATEKAKE_HOUSE,      /* Red house complete          */
    /*0x19*/ TATEKAKE_TOCHU,      /* Red house frame             */
    /*0x1a*/ WATERBEAN_OUT,       /* Holding bean                */
    /*0x1b*/ WATERBEAN_PUT,       /* Threw bean in hole          */
    /*0x1c*/ ZELDA_CHASE,         /* Enter town festival         */
    /*0x1d*/ INLOCK,              /* Gave key to Talon           */
    /*0x1e*/ DASHBOOTS,           /* Read Castor Wilds sign      */
    /*0x1f*/ LEFT_DOOR_OPEN,      /* Spoke to Dr. Left           */
    /*0x20*/ HAKA_KEY_LOST,       /* Graveyard key stolen        */
    /*0x21*/ HAKA_KEY_FOUND,      /* Graveyard key obtained back */
    /*0x22*/ ENTRANCE_OK,         /*                             */
    /*0x23*/ TATSUMAKI,           /*                             */
    /*0x24*/ KUMOTATSUMAKI,       /* Vortex spawned              */
    /*0x25*/ KAITENGIRI,          /*                             */
    /*0x26*/ DAIKAITENGIRI,       /*                             */
    /*0x27*/ GATOTSU,             /*                             */
    /*0x28*/ KABUTOWARI,          /*                             */
    /*0x29*/ MIZUKAKI_START,      /* Spoke to Lake Hylia Minish  */
    /*0x2a*/ MIZUKAKI_HARIFALL,   /* Library book falling        */
    /*0x2b*/ RENTED_HOUSE_DIN,    /* Din moves to blue house     */
    /*0x2c*/ RENTED_HOUSE_NAYRU,  /* Nayru moves to blue house   */
    /*0x2d*/ RENTED_HOUSE_FARORE, /* Farore moves to blue house  */
    /*0x2e*/ NEW_HOUSE_DIN,       /* Din moves to red house      */
    /*0x2f*/ NEW_HOUSE_NAYRU,     /* Nayru moves to red house    */
    /*0x30*/ NEW_HOUSE_FARORE,    /* Farore moves to red house   */
    /*0x31*/ OUGONTEKI_A,         /* Golden Octorok defeated     */
    /*0x32*/ OUGONTEKI_B,         /* Golden Tektite defeated     */
    /*0x33*/ OUGONTEKI_C,         /* Golden Rope defeated        */
    /*0x34*/ OUGONTEKI_D,         /* Golden Rope defeated        */
    /*0x35*/ OUGONTEKI_E,         /* Golden Rope defeated        */
    /*0x36*/ OUGONTEKI_F,         /* Golden Tektite defeated     */
    /*0x37*/ OUGONTEKI_G,         /* Golden Tektite defeated     */
    /*0x38*/ OUGONTEKI_H,         /* Golden Octorok defeated     */
    /*0x39*/ OUGONTEKI_I,         /* Golden Octorok defeated     */
    /*0x3a*/ KAKERA_COMPLETE,     /* All fusions complete        */
    /*0x3b*/ DRUG_1,              /* Yellow pico bloomed         */
    /*0x3c*/ DRUG_2,              /* Blue pico bloomed           */
    /*0x3d*/ DRUG_3,              /* Orange pico bloomed         */
    /*0x3e*/ GORON_KAKERA_LV2,    /* Goron merchant restock 1    */
    /*0x3f*/ GORON_KAKERA_LV3,    /* Goron merchant restock 2    */
    /*0x40*/ GORON_KAKERA_LV4,    /* Goron merchant restock 3    */
    /*0x41*/ GORON_KAKERA_LV5,    /* Goron merchant restock 4    */
    /*0x42*/ GORON_KAKERA_L,      /* Red kinstone sold out       */
    /*0x43*/ GORON_KAKERA_M,      /* Blue kinstone sold out      */
    /*0x44*/ GORON_KAKERA_R,      /* Green kinstone sold out     */
    /*0x45*/ CHIKATSURO_SHUTTER,  /* Castle basement door open   */
    /*0x46*/ ENTRANCE_USED,       /*                             */
    /*0x47*/ GOMAN_RENTED_HOUSE,  /* Spoke to Gorman blue house  */
    /*0x48*/ GOMAN_NEW_HOUSE,     /* Spoke to Gorman red house   */
    /*0x49*/ OUTDOOR,             /* Exited Link's house         */
    /*0x4a*/ POWERGLOVE_HINT,     /* Spoke to Dr. Left Minish    */
    /*0x4b*/ ANJU_LV_BIT0,        /* Cucco game 1 bit            */
    /*0x4c*/ ANJU_LV_BIT1,        /* Cucco game 2 bit            */
    /*0x4d*/ ANJU_LV_BIT2,        /* Cucco game 4 bit            */
    /*0x4e*/ ANJU_LV_BIT3,        /* Cucco game 8 bit            */
    /*0x4f*/ ANJU_HEART,          /* Cucco heart piece           */
    /*0x50*/ MAROYA_WAKEUP,       /*                             */
    /*0x51*/ ENDING,              /* Vaati's wrath defeated      */
    /*0x52*/ WARP_1ST,            /* Wind ocarina unlocked       */
    /*0x53*/ WARP_MONUMENT,       /* First windcrest discovered  */
    /*0x54*/ DRUG_COUNT,          /* Pico bloom minish items     */
    /*0x55*/ GAMECLEAR,           /* Watched end cutscene        */
    /*0x56*/ WHITE_SWORD_END,     /* Exit mines with white sword */
    /*0x57*/ SOUGEN_06_HASHIGO,   /* Boomerang cave ladder       */
    /*0x58*/ WARP_EVENT_END,      /* Wind tribe tower state      */
    /*0x59*/ FIGURE_ALLCOMP,      /* Obtained Carlov Medal       */
    /*0x5a*/ AKINDO_BOTTLE_SELL,  /* Bought bottle from scrub    */
    /*0x5b*/ BIN_DOGFOOD,         /*                             */
    /*0x5c*/ TINGLE_TALK1ST,      /* Spoke to Tingle             */
    /*0x5d*/ SEIIKI_BGM,          /* Elemental sanctuary BGM     */
    /*0x5e*/ ENTRANCE_0,          /* Trunk entrance cutscene     */
    /*0x5f*/ ENTRANCE_1,          /* Rock entrance cutscene      */
    /*0x60*/ ENTRANCE_2,          /* Pot entrance cutscene       */
    /*0x61*/ MIZUKAKI_NECHAN,     /* Spoke to librarian          */
    /*0x62*/ MAZE_CLEAR,          /* Cleared Castle maze         */
    /*0x63*/ TINY_ENTRANCE,       /* Ezlo described entrances    */
    /*0x64*/ CASTLE_BGM,          /* Castle intro BGM            */
};

#endif
