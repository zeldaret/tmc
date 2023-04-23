#ifndef FLAGS_H
#define FLAGS_H

#include "global.h"

bool32 CheckFlags(u32);
bool32 CheckGlobalFlag(u32);
bool32 CheckGlobalFlags(u32, u32);
extern bool32 CheckLocalFlag(u32 flag);
extern bool32 CheckLocalFlagByBank(u32 bank, u32 flag);
bool32 CheckLocalFlags(u32, u32);
bool32 CheckLocalFlagsByBank(u32, u32, u32);
bool32 CheckRoomFlag(u32);
bool32 CheckRoomFlags(u32, u32);

void ClearFlag(u32);
void ClearGlobalFlag(u32);
void ClearLocalFlag(u32);
void ClearLocalFlagByBank(u32, u32);
void ClearRoomFlag(u32);

void SetFlag(u32);
void SetGlobalFlag(u32);
void SetLocalFlag(u32);
void SetLocalFlagByBank(u32, u32);
void SetRoomFlag(u32);

extern u32 ReadBit(void*, u32);
extern u32 CheckBits(void*, u32, u32);
extern u32 WriteBit(void*, u32);
extern u32 ClearBit(void*, u32);

extern const u16 gLocalFlagBanks[];

/**
 * For indexing into gLocalFlagBanks.
 * Annoyingly they are offset by 1. Needs to be taken into account whereever gLocalFlagBanks is used.
 */
enum LocalBanks {
    LOCAL_BANK_G,
    LOCAL_BANK_0,
    LOCAL_BANK_1,
    LOCAL_BANK_2,
    LOCAL_BANK_3,
    LOCAL_BANK_4,
    LOCAL_BANK_5,
    LOCAL_BANK_6,
    LOCAL_BANK_7,
    LOCAL_BANK_8,
    LOCAL_BANK_9,
    LOCAL_BANK_10,
    LOCAL_BANK_11,
    LOCAL_BANK_12,
};

enum LocalFlagOffsets {
    FLAG_BANK_G = 0,
    FLAG_BANK_0 = 0,
    FLAG_BANK_1 = 0x100,
    FLAG_BANK_2 = 0x200,
    FLAG_BANK_3 = 0x300,
    FLAG_BANK_4 = 0x400,
    FLAG_BANK_5 = 0x500,
    FLAG_BANK_6 = 0x5C0,
    FLAG_BANK_7 = 0x680,
    FLAG_BANK_8 = 0x740,
    FLAG_BANK_9 = 0x800,
    FLAG_BANK_10 = 0x8C0,
    FLAG_BANK_11 = 0x9C0,
    FLAG_BANK_12 = 0xA80,
};

typedef enum {
    BEGIN,
    /*0x01*/ LV0_CLEAR,
    /*0x02*/ LV1_CLEAR,
    /*0x03*/ LV2_CLEAR,
    /*0x04*/ LV3_CLEAR,
    /*0x05*/ LV4_CLEAR,
    /*0x06*/ LV5_CLEAR,
    /*0x07*/ LV6_CLEAR,
    /*0x08*/ LV7_CLEAR,
    /*0x09*/ LV8_CLEAR,
    /*0x0a*/ MACHI_SET_1, /* Defeated Big Green Chuchu   */
    /*0x0b*/ MACHI_SET_2, /* Defeated Gleerok            */
    /*0x0c*/ MACHI_SET_3,
    /*0x0d*/ MACHI_SET_4, /* Defeated Big Octorok        */
    /*0x0e*/ MACHI_SET_5, /* Defeated Gyorg Pair         */
    /*0x0f*/ MACHI_SET_6,
    /*0x10*/ MACHI_SET_7,
    /*0x11*/ MACHI_SET_8,
    /*0x12*/ MACHI_MACHIHOKORI, /* Sucked dust from carpet     */
    /*0x13*/ START,             /* Met Zelda                   */
    /*0x14*/ EZERO_1ST,         /* Met Ezlo                    */
    /*0x15*/ TABIDACHI,         /* Talked to Daltus and Smith  */
    /*0x16*/ LV1TARU,
    /*0x17*/ LV1TARU_OPEN,   /* Sucked barrel web           */
    /*0x18*/ TATEKAKE_HOUSE, /* Red house complete          */
    /*0x19*/ TATEKAKE_TOCHU, /* Red house frame             */
    /*0x1a*/ WATERBEAN_OUT,  /* Holding bean                */
    /*0x1b*/ WATERBEAN_PUT,  /* Threw bean in hole          */
    /*0x1c*/ ZELDA_CHASE,    /* Enter town festival         */
    /*0x1d*/ INLOCK,         /* Gave key to Talon           */
    /*0x1e*/ DASHBOOTS,      /* Read Castor Wilds sign      */
    /*0x1f*/ LEFT_DOOR_OPEN, /* Spoke to Dr. Left           */
    /*0x20*/ HAKA_KEY_LOST,  /* Graveyard key stolen        */
    /*0x21*/ HAKA_KEY_FOUND, /* Graveyard key obtained back */
    /*0x22*/ ENTRANCE_OK,
    /*0x23*/ TATSUMAKI,
    /*0x24*/ KUMOTATSUMAKI, /* Vortex spawned              */
    /*0x25*/ KAITENGIRI,
    /*0x26*/ DAIKAITENGIRI,
    /*0x27*/ GATOTSU,
    /*0x28*/ KABUTOWARI,
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
    /*0x46*/ ENTRANCE_USED,
    /*0x47*/ GOMAN_RENTED_HOUSE, /* Spoke to Gorman blue house  */
    /*0x48*/ GOMAN_NEW_HOUSE,    /* Spoke to Gorman red house   */
    /*0x49*/ OUTDOOR,            /* Exited Link's house         */
    /*0x4a*/ POWERGLOVE_HINT,    /* Spoke to Dr. Left Minish    */
    /*0x4b*/ ANJU_LV_BIT0,       /* Cucco game 1 bit            */
    /*0x4c*/ ANJU_LV_BIT1,       /* Cucco game 2 bit            */
    /*0x4d*/ ANJU_LV_BIT2,       /* Cucco game 4 bit            */
    /*0x4e*/ ANJU_LV_BIT3,       /* Cucco game 8 bit            */
    /*0x4f*/ ANJU_HEART,         /* Cucco heart piece           */
    /*0x50*/ MAROYA_WAKEUP,
    /*0x51*/ ENDING,             /* Vaati's wrath defeated      */
    /*0x52*/ WARP_1ST,           /* Wind ocarina unlocked       */
    /*0x53*/ WARP_MONUMENT,      /* First windcrest discovered  */
    /*0x54*/ DRUG_COUNT,         /* Pico bloom minish items     */
    /*0x55*/ GAMECLEAR,          /* Watched end cutscene        */
    /*0x56*/ WHITE_SWORD_END,    /* Exit mines with white sword */
    /*0x57*/ SOUGEN_06_HASHIGO,  /* Boomerang cave ladder       */
    /*0x58*/ WARP_EVENT_END,     /* Wind tribe tower state      */
    /*0x59*/ FIGURE_ALLCOMP,     /* Obtained Carlov Medal       */
    /*0x5a*/ AKINDO_BOTTLE_SELL, /* Bought bottle from scrub    */
    /*0x5b*/ BIN_DOGFOOD,
    /*0x5c*/ TINGLE_TALK1ST,  /* Spoke to Tingle             */
    /*0x5d*/ SEIIKI_BGM,      /* Elemental sanctuary BGM     */
    /*0x5e*/ ENTRANCE_0,      /* Trunk entrance cutscene     */
    /*0x5f*/ ENTRANCE_1,      /* Rock entrance cutscene      */
    /*0x60*/ ENTRANCE_2,      /* Pot entrance cutscene       */
    /*0x61*/ MIZUKAKI_NECHAN, /* Spoke to librarian          */
    /*0x62*/ MAZE_CLEAR,      /* Cleared Castle maze         */
    /*0x63*/ TINY_ENTRANCE,   /* Ezlo described entrances    */
    /*0x64*/ CASTLE_BGM,      /* Castle intro BGM            */
    END,
} Flag;

typedef enum {
    BEGIN_1,
    LV1_CLEAR_MES,   /* Ezlo talks about going to Elder after Earth Element in Outside Deepwood Shrine */
    LV2_CLEAR_MES,   /* Ezlo talks after exiting with the Fire Element in Outside Cave of Flames */
    LV3_CLEAR_MES,   /* Ezlo talks about the Wind Element in Outside Fortress of Winds */
    LV4_CLEAR_MES,   /* King Gustaf Talks to Link in Lake Hylia, after Temple of Droplets */
    LV5_CLEAR_MES,   /* Ezlo talks after completing Palace of Winds in Wind Tribe Tower Roof */
    MIZUUMI_00_BENT, /* Minish Tree Pegasus Bonked in Lake Hylia */
    MIZUUMI_00_00,   /* West Shortcut Open in Lake Hylia */
    MIZUUMI_00_H00,  /* Obtained Heart Piece in Lake Hylia, north */
    MIZUUMI_00_H01,  /* Obtained Heart Piece in Lake Hylia, next to Stockwell's House */
    MIZUUMI_00_H02,  /* Obtained Heart Piece in Lake Hylia, south */
#if !defined(EU) && !defined(JP) && !defined(DEMO_JP)
    MIZUUMI_00_CAP_0,
#else
    HIKYOU_00_T0,
    HIKYOU_00_T1,
#endif
    MAENIWA_00_00, /* Ladder to Hyrule Castle Basement revealed in Hyrule Castle Garden */
    MAENIWA_00_01,
    MAENIWA_00_02,     /* Ladder to Grimblade revealed in Hyrule Castle Garden */
    MAENIWA_00_BENT,   /* Minish Tree Pegasus Bonked in Hyrule Castle Garden */
    MAENIWA_00_WARP,   /* Caught by guard in Hyrule Castle Garden, after Water Element */
    MAENIWA_00_T0,     /* 100 Shell Chest Open in Hyrule Castle Garden (Water Entry) */
    MAENIWA_00_T1,     /* 200 Rupee Chest Open in Hyrule Castle Garden (Water Entry) */
    MAENIWA_00_CAP_0,  /* Ezlo talks about Castle entrance in Hyrule Castle Garden */
    NAKANIWA_00_EZERO, /* Ezlo talks about Sanctuary entrance in Hyrule Castle Entrance to Sanctuary */
    HIKYOU_00_00,      /* Middle shortcut open in Castor Wilds */
    HIKYOU_00_01,      /* South shortcut open in Castor Wilds */
    HIKYOU_00_02,
    HIKYOU_00_03,
    HIKYOU_00_04,
    HIKYOU_00_CAP_0,   /* Ezlo talks about Castor Wilds in Castor Wilds, entrance */
    HIKYOU_00_CAP_1,   /* Ezlo talks about sinking in the swamp in Castor Wilds */
    HIKYOU_00_CAP_2,   /* Ezlo talks about Eyegore in Castor Wilds */
    HIKYOU_00_SEKIZOU, /* Square block destroyed in Castor Wilds */
    HIKYOU_00_14,      /* North shortcut open in Castor Wilds */
    HIKYOU_00_BOSEKI,  /* Opened Swiftblade I's Grave in Castor Wilds */
#if defined(EU) || defined(JP) || defined(DEMO_JP)
    HIKYOU_00_H00,
#endif
    HIKYOU_00_M0, /* Red W Kinstone Obtained in Castor Wilds, underwater */
    HIKYOU_00_M1, /* Red (> Kinstone Obtained in Castor Wilds, underwater */
    HIKYOU_00_M2, /* Red 3 Prong Kinstone Obtained in Castor Wilds, underwater */
#if !defined(EU) && !defined(JP) && !defined(DEMO_JP)
    HIKYOU_00_T1,
#endif
    LOST_00_ENTER, /* ??? in Wind Ruins */
    LOST_00_00,    /* Shortcut 1 Open in Wind Ruins */
    LOST_00_01,    /* Blew up wall to chest cave in Wind Ruins */
    LOST_02_00,    /* Defeated Tektites in Wind Ruins */
    LOST_03_00,
    LOST_03_T0,
    LOST_04_00,    /* Shortcut 2 Open in Wind Ruins */
    LOST_04_SIBA0, /* Cut top grass in Wind Ruins Minish Grass Path */
    LOST_04_SIBA1, /* Cut middle grass in Wind Ruins Minish Grass Path */
    LOST_04_SIBA2, /* Cut left grass in Wind Ruins Minish Grass Path */
    LOST_04_SIBA3, /* Cut right grass in Wind Ruins Minish Grass Path */
    LOST_04_SIBA4, /* Cut bottom grass in Wind Ruins Minish Grass Path */
    LOST_05_00,    /* Defeated Armoses in Wind Ruins Running Armos */
    LOST_05_01,    /* Defeated Beetles & Ropes in Wind Ruins */
#if !defined(JP) && !defined(EU) && !defined(DEMO_JP)
    LOST_05_02,
    LOST_05_03,
#endif
    LOST_05_T0,        /* 100 Rupee Chest Open in Wind Ruins */
    LOST_05_T1,        /* 50 Shell Chest Open in Wind Ruins */
    MORI_00_HIBI_0,    /* Left rock "blown up in Minish Woods */
    MORI_00_HIBI_1,    /* Right rock "blown up in Minish Woods */
    MORI_00_HIBI_2,    /* Blew up left rock in Minish Woods */
    MORI_00_HIBI_3,    /* Blew up middle rock in Minish Woods */
    MORI_00_HIBI_4,    /* Blew up right rock in Minish Woods */
    MORI_00_KOBITO,    /* Ezlo explains Minish Portals 1 in Minish Woods */
    MORI_00_H0,        /* Obtained Heart Piece (Witch's Hut) in Minish Woods */
    MORI_00_H1,        /* Obtained Heart Piece (Next to Deepwood) in Minish Woods */
    MORI_ENTRANCE_1ST, /* Ezlo explains Minish Portals 2 in Minish Woods */
    YAMA_00_00,        /* Middle Rock Pushed to Hole in Rainy Mount Crenel */
    YAMA_00_01,        /* Right Rock Pushed to Hole in Rainy Mount Crenel */
    YAMA_01_BW00,      /* Great Fairy Fountain cave blown open in Mount Crenel Wall */
    YAMA_02_00,        /* Cave to Grip Ring Business Scrub blown open in Mount Crenel */
    YAMA_03_00,        /* Fairy Heart Piece cave blown open in Mount Crenel */
    YAMA_03_01,        /* Crenel Mines" cave blown open in Mount Crenel */
    YAMA_03_02,        /* Heart Piece cave blown open in Mount Crenel */
    YAMA_03_DOKU_0,    /* Pathway tile to cave "blown up in Mount Crenel, front of Heart Piece cave */
    YAMA_03_DOKU_1,    /* Upper wall tile "blown up in Mount Crenel Wall Entrance */
    YAMA_03_DOKU_2,    /* Bottom wall tile "blown up in Mount Crenel Wall Entrance */
    YAMA_04_CAP_0,     /* Ezlo talks about Whirlwind in Mount Crenel Base */
#if !defined(JP) && !defined(EU) && !defined(DEMO_JP)
    YAMA_04_CAP_1,
#endif
    YAMA_04_R00, /* Grabbed Red Rupee in Mount Crenel Base */
    YAMA_04_HIBI_0,
    YAMA_04_HIBI_1,      /* Rock to Spring blown up in Mount Crenel Base */
    YAMA_04_00,          /* Bean 2 sprouted in Mount Crenel */
    YAMA_04_01,          /* Bean 1 sprouted in Mount Crenel Base */
    YAMA_04_04,          /* Fairy Blue Rupee cave blown open in Mount Crenel Base */
    YAMA_04_05,          /* Cave to above blown open in Mount Crenel Base */
    YAMA_04_06,          /* Cave to Crenel Spring blown open in Mount Crenel Base */
    YAMA_04_ENTHOUSHI,   /* Sucked Spikes from Crenel Minish Rock in Mount Crenel */
    YAMA_04_ANAHOUSHI,   /* Sucked Spike from Minish Hole in Mount Crenel */
    YAMA_04_BOMBWALL0,   /* Cave next to entrance blown open in Mount Crenel Base */
    HAKA_BUNSHIN_00,     /* King Gustaf's Grave Open in Royal Valley */
    HAKA_BOSEKI_00,      /* Gina's Grave Open in Royal Valley */
    HAKA_BOSEKI_01,      /* Heart Piece Grave Open in Royal Valley */
    HAKA_BOSEKI_02,      /* Grave in the way of clones pushed in Royal Valley */
    HAKA_00_CAP_0,       /* Ezlo talks about Royal Valley in Royal Valley Entrance */
    HAKA_00_BW00,        /* Blew up wall to Great Fairy Fountain in Royal Valley Entrance */
    HAKA_01_T0,          /* 200 Shell Chest Open in Royal Valley Maze Secret Chest */
    HAKA_KEY_GET,        /* Ezlo talks about getting the key back in Royal Valley */
    SOUGEN_01_WAKAGI_0,  /* Top bush cut west of Town Entrance in South Hyrule Field */
    SOUGEN_01_WAKAGI_1,  /* Middle bush cut west of Town Entrance in South Hyrule Field */
    SOUGEN_01_WAKAGI_2,  /* Bottom bush cut west of Town Entrance in South Hyrule Field */
    SOUGEN_01_WAKAGI_3,  /* Top bush cut southwest of Link's House in South Hyrule Field */
    SOUGEN_01_WAKAGI_4,  /* Middle bush cut southwest of Link's House in South Hyrule Field */
    SOUGEN_01_WAKAGI_5,  /* Bottom bush cut southwest of Link's House in South Hyrule Field */
    SOUGEN_01_WAKAGI_6,  /* Top bush cut southeast of Link's House in South Hyrule Field */
    SOUGEN_01_WAKAGI_7,  /* Middle bush cut southeast of Link's House in South Hyrule Field */
    SOUGEN_01_WAKAGI_8,  /* Bottom bush cut southeast of Link's House in South Hyrule Field */
    SOUGEN_01_WAKAGI_9,  /* Top bush cut east of Town entrance in South Hyrule Field */
    SOUGEN_01_WAKAGI_10, /* Middle bush cut east of Town entrance in South Hyrule Field */
    SOUGEN_01_WAKAGI_11, /* Bottom left bush cut east of Town entrance in South Hyrule Field */
    SOUGEN_01_WAKAGI_12, /* Bottom right bush cut east of Town entrance (hidden behind tree) in South Hyrule Field */
    SOUGEN_01_00,        /* Cave west of Town entrance blown open in South Hyrule Field */
    SOUGEN_01_BENT,      /* Minish Tree Pegasus Bonked in South Hyrule Field */
    SOUGEN_01_ZELDA,     /* Zelda enters Town in South Hyrule Field */
    SOUGEN_02_HIBI_0,    /* Blown up left rock in Hyrule Field, from Minish Woods Exit */
    SOUGEN_02_HIBI_1,    /* Blown up right rock in Hyrule Field, from Minish Woods Exit */
    SOUGEN_03_BOMBWALL,  /* Cave blown open in Hyrule Field, north from Minish Woods Exit */
    SOUGEN_04_HIBI_0,    /* Blown up top rock in Eastern Hills */
    SOUGEN_04_HIBI_1,    /* Blown up middle left rock in Eastern Hills */
    SOUGEN_04_HIBI_2,    /* Blown up middle right rock in Eastern Hills */
    SOUGEN_04_HIBI_3,    /* Blown up bottom rock in Eastern Hills */
    SOUGEN_05_HIBI_0,    /* Blown up left top rock in Lon Lon Ranch */
    SOUGEN_05_HIBI_1,    /* Blown up right top rock in Lon Lon Ranch */
    SOUGEN_05_HIBI_2,    /* Blown up right bottom rock in Lon Lon Ranch */
    SOUGEN_05_HIBI_3,    /* Blown up left bottom rock in Lon Lon Ranch */
    SOUGEN_05_BOMB_00,   /* Goron Cave Entrance Open in Lon Lon Ranch */
    SOUGEN_05_00,        /* Northern Lon Lon - Lake Shortcut Open in Lon Lon Ranch */
    SOUGEN_05_01,        /* Southern Lon Lon - Lake Shortcut Open in Lon Lon Ranch */
    SOUGEN_05_IWA02,     /* Southern Lon Lon - Goron Cave Shortcut Open in Lon Lon Ranch */
    SOUGEN_05_BENT,      /* Revealed the tree stump minish portal in Lon Lon Ranch */
    SOUGEN_05_H00,       /* Obtained Heart Piece in Lon Lon Ranch (From Lake Hylia Cave) */
    SOUGEN_05_R0,        /* Obtained hidden 50 Rupee in Lon Lon Ranch */
    SOUGEN_05_CAP_0,     /* Ezlo talks about cows looking delicious in Lon Lon Ranch */
    SOUGEN_06_WAKAGI_0,  /* Top bush cut east of Town entrance in Outside Castle */
    SOUGEN_06_WAKAGI_1,  /* Top middle bush cut east of Town entrance in Outside Castle */
    SOUGEN_06_WAKAGI_2,  /* Bottom middle bush cut east of Town entrance in Outside Castle */
    SOUGEN_06_WAKAGI_3,  /* Bottom bush cut east of Town entrance in Outside Castle */
    SOUGEN_06_HIBI_0,    /* Blew up left rock to Veil Falls in Outside Castle */
    SOUGEN_06_HIBI_1,    /* Blew up right rock to Veil Falls in Outside Castle */
    SOUGEN_06_HIBI_2,    /* Left fence piece "blown up in Outside Castle */
    SOUGEN_06_HIBI_3,    /* Right fence piece "blown up in Outside Castle */
    SOUGEN_06_HIBI_4,    /* Blew up west rock in Outside Castle */
    SOUGEN_06_IWA_0,     /* Minish Hole Open in Outside Castle, East Rock */
    SOUGEN_06_AKINDO,    /* Defeated Deku Scrub in Outside Castle */
    SOUGEN_06_SAIKAI,    /* Defeated Vaati Moblins in Outside Castle */
    SOUGEN_06_BENT,      /* Minish Tree Pegasus Bonked in Outside Castle */
    SOUGEN_06_SLIDE,     /* Shortcut bridge opened in Outside Castle */
    SOUGEN_06_R1,        /* Obtained hidden 50 Rupees in Outside Castle */
    SOUGEN_07_00,        /* Blown open Keese chest cave in Trilby Highlands, above exit ladder */
    SOUGEN_07_01,        /* Blown open Fairy Fountain in Trilby Highlands, next to shortcut */
    SOUGEN_07_02,        /* Trilby - South Trilby Shortcut Open in Trilby Highlands */
#if defined(JP) || defined(EU) || defined(DEMO_JP)
    SOUGEN_07_H00,
#endif
    SOUGEN_08_00,        /* South Hyrule Field - Western Wood Shortcut Open in Western Wood */
    SOUGEN_08_01,        /* Dug Up Top Left 50 Rupee in Western Wood */
    SOUGEN_08_02,        /* Dug Up Bottom Left 50 Rupee in Western Wood */
    SOUGEN_08_03,        /* Dug Up Top Center 50 Rupee in Western Wood */
    SOUGEN_08_04,        /* Dug Up Bottom Center 50 Rupee in Western Wood */
    SOUGEN_08_05,        /* Dug Up Top Right 50 Rupee in Western Wood */
    SOUGEN_08_06,        /* Dug Up Bottom Right 50 Rupee in Western Wood */
    SOUGEN_08_07,        /* Dug Up Left 200 Rupee in Western Wood */
    SOUGEN_08_08,        /* Dug Up Right 200 Rupee in Western Wood */
    SOUGEN_08_TORITSUKI, /* Vaati takes over King Daltus in West Hyrule */
    SOUGEN_08_T00,       /* 100 Shell Chest Open in Western Wood */
    CASTLE_00_00,
    CASTLE_04_MEZAME,    /* Disable sleeping cutscene (Intro) in Hyrule Castle Garden, bedroom */
    CASTLE_04_MAID_TALK, /* Spoke to Vassal (Intro) in Hyrule Castle Garden, bedroom */
    SUIGEN_00_h0,        /* Obtained Heart Piece in Veil Falls Outside West Digging Cave */
    SUIGEN_00_T0,        /* 100 Shell Chest Open in Veil Falls Entrance Cave Secret Area */
    SUIGEN_00_r0,        /* Obtained Red Rupee (Top left) in Veil Falls Outside East Digging Cave */
    SUIGEN_00_r1,        /* Obtained Red Rupee (Bottom left) in Veil Falls Outside East Digging Cave */
    SUIGEN_00_r2,        /* Obtained Red Rupee (Bottom right) in Veil Falls Outside East Digging Cave */
    SUIGEN_00_CAP_0,     /* Ezlo talks about waterfall in Veil Falls, near Kinstone door */
    SUIGEN_00_CAP_1,
    SUIGEN_00_R0, /* Obtained hidden 50 Rupee in Veil Falls, rock circle */
    SUIGEN_00_R1,
#if !defined(JP) && !defined(EU) && !defined(DEMO_JP)
    SUIGEN_00_R2,
#endif
    SUIGEN_00_h1,         /* Obtained Heart Piece in Veil Falls South */
    SUIGENGORON_00_CAP_0, /* Ezlo talks about vortex in Veil Springs */
    DAIGORON_SHIELD,      /* Gave biggoron the first shield in Veil Falls, Biggoron */
    DAIGORON_EXCHG,       /* Biggoron is tasting a shield in Veil Falls, Biggoron */
    BEANDEMO_00,          /* Crenel Summit Beanstalk has grown in Melari's mines, fuse with Melari */
    BEANDEMO_01,          /* Lake Hylia Beanstalk has grown in Lake Hylia, fuse with minish elder impersonator */
    BEANDEMO_02,          /* Wind Ruins Beanstalk has grown in Wind Ruins, Minish Hole, fuse with minish */
    BEANDEMO_03,          /* Eastern Hills Beanstalk has grown in Eastern Hills, Minish house, fuse with minish */
    BEANDEMO_04,          /* Western Wood Beanstalk has grown in Western Wood, Minish house, fuse with minish */
    KAKERA_TAKARA_A,      /* Bottle Chest Opened in Eastern Hills */
    KAKERA_TAKARA_E,      /* Blue S Kinstone Chest Open in Minish Woods, northwest */
#if !defined(JP) && !defined(EU) && !defined(DEMO_JP)
    KAKERA_TAKARA_J,
#endif
    KAKERA_TAKARA_K, /* Bomb Bag Chest Open in Wind Ruins, near entrance to Fortress of Winds */
    KAKERA_TAKARA_L, /* Red W Kinstone Chest Open in Minish Woods */
    KAKERA_TAKARA_M, /* Red (> Kinstone Chest Open in Trilby Highlands */
    KAKERA_TAKARA_N, /* Red 3 Prong Kinstone Chest Open in Minish Woods */
    KAKERA_TAKARA_O, /* 200 Rupee Chest Opened in Minish Woods */
    KAKERA_TAKARA_P, /* 200 Shell Chest Open in South Hyrule Field */
    KAKERA_TAKARA_Q, /* Red 3 Prong Kinstone Chest Open in Royal Valley Graveyard, northwest chest */
    KAKERA_TAKARA_R, /* Red (> Kinstone Chest Open in Royal Valley Graveyard, northeast chest */
    KAKERA_TAKARA_S, /* Red W Kinstone Chest Open in Trilby Highlands */
    KAKERA_TAKARA_T, /* 200 Shell Chest Open in North Hyrule Field */
    KAKERA_TAKARA_U, /* 200 Rupee Chest Open in Lon Lon Ranch */
    KAKERA_TAKARA_V, /* Blue S Kinstone Chest Open in Veil Falls */
    KAKERA_TAKARA_W, /* Blue L Kinstone Chest Open in Mt. Crenel */
    KAKERA_TAKARA_X, /* 200 Rupee Chest Open in Crenel base */
    KAKERA_TAKARA_Y, /* 200 Shell Chest Open in Wind Ruins Tektite Room */
    KAKERA_TAKARA_Z,
    MACHI_02_HEISHI_TALK, /* Spoke to Westside Soldier in Hyrule Town */
    MACHI00_00,           /* Flipped Minish Pot in Hyrule Town, Top of Library */
    MACHI00_02,           /* Un-Flipped Minish Pot in Hyrule Town, Top of School */
    MACHI00_03,           /* Pushed box in the minish cat path in Hyrule Town */
    MACHI_00_T00,         /* Red > Kinstone Chest Open in Hyrule Town, Happy Hearth Balcony */
    MACHI_00_T01,         /* Opened Red W Kinstone Chest in Hyrule Town, Top of School */
    MACHI_01_DEMO,        /* Lolly and Candy Moved in Hyrule Town, Festival */
    MACHI_02_HEISHI,      /* Showed Spin Attack to Westside Soldier in Hyrule Town */
    MACHI_02_DOG,         /* Talk to dog as minish       */
    MACHI_07_BELL,        /* Obtained Heart Piece in Bell in Hyrule Town */
    SHOP05_OPEN,          /* Figurine House Open in Hyrule Town */
    MACHI_MES_20,         /* Talked to gossip woman (right of well) in Hyrule Town */
    MACHI_MES_21,         /* Talked to gossip woman (left of well) in Hyrule Town */
    MACHI_MES_22,         /* Talked to the boy next to the girl at the water fountain in Hyrule Town */
    MACHI_MES_23,         /* Talked to the girl next to the boy at the water fountain in Hyrule Town */
    MACHI_MES_24,         /* Talked to man near mushroom house in Hyrule Town, State 2 */
    MACHI_MES_30,         /* Talked to man near mushroom house in Hyrule Town, State 4 */
    MACHI_MES_40,         /* Talked to man near mushroom house in Hyrule Town, State 5 */
    MACHI_MES_60,         /* Spoke to Jasmine (Woman outside Cafe) in Hyrule Town */
    MACHI_MES_50,         /* Spoke to Herb (Figurine House Owner) in Hyrule Town */
    MACHI_DOG_C,          /* Seen all dog dialogue        */
    KUMOUE_00_CAP_0,      /* Ezlo talks about Wind Tribe Tower in Cloud Tops 3F */
    KUMOUE_01_CAP_0,      /* Ezlo talks about Wind Tribe Tower in Cloud Tops 2F */
    KUMOUE_01_T0,         /* East Gold E Kinstone Chest Open in Cloud Tops 2F East */
    KUMOUE_01_T1,         /* Middle Gold Jagged Kinstone Chest Open in Cloud Tops 2F Middle */
    KUMOUE_01_T2,         /* Top West Gold Jagged Kinstone Chest Open in Cloud Tops 2F Top West */
    KUMOUE_01_T3,         /* 50 Shell Chest Open in Cloud Tops 2F Top West Left Chest */
    KUMOUE_01_T4,         /* 50 Shell Chest Open in Cloud Tops 2F Top West Right Chest */
    KUMOUE_01_T5,         /* 50 Shell Chest Open in Cloud Tops 2F Bottom West Chest */
    KUMOUE_01_T6,         /* 50 Shell Chest Open in Cloud Tops 2F Middle Chest */
    KUMOUR_01_K0,         /* Green < Kinstone Obtained in Cloud Tops 2F */
    KUMOUR_01_K1,         /* Red (> Kinstone Obtained in Cloud Tops 2F */
    KUMOUR_01_K2,         /* Blue L Kinstone Obtained in Cloud Tops 2F */
    KUMOUR_01_K3,         /* Green [ Kinstone Obtained in Cloud Tops 2F */
    KUMOUR_01_K4,         /* Green / Kinstone Obtained in Cloud Tops 2F */
    KUMOUR_01_K5,         /* Red W Kinstone Obtained in Cloud Tops 2F */
    KUMOUR_01_K6,         /* Blue S Kinstone Obtained in Cloud Tops 2F */
    KUMONOUE_01_KAKERA,
    KUMOUE_02_CAP_0,    /* Ezlo talks after landing in Cloud Tops Entrance */
    KUMOUE_02_AWASE_01, /* Top Right Pinwheel Spinning in Cloud Tops, fuse with Top Right Cloud */
    KUMOUE_02_AWASE_02, /* Bottom Left Pinwheel Spinning in Cloud Tops, fuse with Bottom Left Cloud */
    KUMOUE_02_AWASE_03, /* Top Left Pinwheel Spinning in Cloud Tops, fuse with Top Left Cloud */
    KUMOUE_02_AWASE_04, /* Middle Pinwheel Spinning in Cloud Tops, fuse with Middle Cloud */
    KUMOUE_02_AWASE_05, /* Bottom Right Pinwheel Spinning in Cloud Tops, fuse with Bottom Right Cloud */
    KUMOUE_02_00,       /* Defeated Top Cloud Piranhas in Cloud Tops North */
    KUMOUE_02_01,       /* Obtained Top Gold Î£ Kinstone in Cloud Tops, Top Piranhas */
    KUMOUE_02_02,       /* Defeated Bottom Cloud Piranhas in Cloud Tops South */
    KUMOUE_02_03,       /* Obtained Bottom Î£ Gold Kinstone in Cloud Tops, Bottom Piranhas */
    KUMOUE_UNCLE_TALK,  /* Talked to Gale in Cloud Tops Entrance */
    KUMOUE_GIRL_TALK,   /* Talked to Hailey in Cloud Tops Entrance */
#if !defined(JP) && !defined(EU) && !defined(DEMO_JP)
    KS_A06,
    KS_B18,
    KS_C21,
    KS_C25,
#else
    MIZUUMI_00_CAP_0,
    SUIGEN_00_R2,
    YAMA_04_CAP_1,
    LOST_05_02,
    LOST_05_03,
    KAKERA_TAKARA_J,
#endif
#ifdef DEMO_JP
    KS_WARPUSE,
#endif
    END_1,
} LocalFlags1;

typedef enum {
    BEGIN_2,
    BILL05_YADO1F_MATSU_T0, /* Luxury Room" Chest Open in Hyrule Town, Happy Hearth */
    BILL06_YADO1F_TAKE_T0,  /* Regular Room" Chest Open in Hyrule Town, Happy Hearth */
    BILL07_YADO1F_UME_T0,   /* Cheap Room" Chest Open in Hyrule Town, Happy Hearth */
    BILL0A_YADO_TAKARA_T0,
    SHOUSE_00_T0, /* Green (< Kinstone Chest Open in Wind Tribe Tower 1F Left Chest */
    SHOUSE_00_T1, /* Green Rectangle Kinstone Chest Open in Wind Tribe Tower 1F Right Chest */
    SHOUSE_01_T0, /* Green / Kinstone Chest Open in Wind Tribe Tower 2F */
    SHOUSE_02_T0, /* Red W Kinstone Chest Open in Wind Tribe Tower 3F Right Chest */
    SHOUSE_02_T1, /* Blue S Kinstone Chest Open in Wind Tribe Tower 3F Middle Chest */
    SHOUSE_02_T2, /* Blue L Kinstone Chest Open in Wind Tribe Tower 3F Left Chest */
    SHOUSE_02_XXXX0,
    SHOUSE_02_XXXX1,
    SHOUSE_02_XXXX2,
    SHOUSE_03_T0,    /* Red (> Kinstone Chest Open in Wind Tribe Tower 4F Left Chest */
    SHOUSE_03_T1,    /* Red 3 Prong Chest Open in Wind Tribe Tower 4F Right Chest */
    KOBITOANA_06_T0, /* Bow Chest Open in Castor Wilds */
    KOBITOANA_03_T0, /* Red (> Kinstone Chest Open in Mount Crenel Minish Hole near Bean */
    KOBITOANA_07_T0, /* Red 3 Prong Chest Open in Wind Ruins Minish Hole */
    KOBITOANA_09_T0, /* Blue S Kinstone Chest Open in Castor Wilds North Minish Hole */
    KOBITOANA_0A_T0, /* Red W Kinstone Chest Open in Castor Wilds West Minish Hole */
    KOBITOANA_0B_T0, /* Red (> Kinstone Chest Open in Castor Wilds Middle Minish Hole */
    MHOUSE11_T0,     /* Red Rupee Chest Open in Link's House */
    URO_08_T0,
    URO_0A_T0,
    URO_0B_T0,
    BILL00_SHICHOU_00,   /* Flipped Pot in Hyrule Town, Mayor Hagen's house */
    BILL00_SHICHOU_01,   /* Bounced off the left red mask in Hyrule Town, Mayor Hagen's house */
    BILL00_SHICHOU_02,   /* Bounced off the left blue mask in Hyrule Town, Mayor Hagen's house */
    BILL00_SHICHOU_03,   /* Bounced off the right red mask in Hyrule Town, Mayor Hagen's house */
    BILL00_SHICHOU_04,   /* Bounced off the right blue mask in Hyrule Town, Mayor Hagen's house */
    BILL01_TESSIN_1,     /* Swordsman Newsletter #1 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_2,     /* Swordsman Newsletter #2 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_3,     /* Swordsman Newsletter #3 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_4,     /* Swordsman Newsletter #4 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_5,     /* Swordsman Newsletter #5 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_6,     /* Swordsman Newsletter #6 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_7,     /* Swordsman Newsletter #7 is on the table in Hyrule Town, Post Office */
    BILL01_TESSIN_8,     /* Swordsman Newsletter #8 is on the table in Hyrule Town, Post Office */
    BILL09_YADO2F_POEMN, /* Broken the bottom right pot for a red 3 prong kinstone in Hyrule Town, Happy Hearth 2F */
    BILL0A_YADO_TAKARA_00,
    BILL0B_SCHOOLL_00,
    BILL0C_SCHOOLR_00, /* Minish pot flipped in Hyrule Town, School */
    MHOUSE00_00,
    MHOUSE00_01,
    MHOUSE00_02,
    MHOUSE00_03,
    MHOUSE00_04,
    MHOUSE00_05,
    MHOUSE01_00, /* Pushed Left Cupboard Into Place in Hyrule Town, Red Oracle House */
    MHOUSE01_01, /* Pushed Right Cupboard Into Place in Hyrule Town, Red Oracle House */
    MHOUSE01_02, /* Broke Left Pot in Hyrule Town, Red Oracle House */
    MHOUSE01_03, /* Broke Right Pot in Hyrule Town, Red Oracle House */
    MHOUSE03_00,
    MHOUSE03_01, /* Pushed Cupboard Into Place in Hyrule Town, Unused Red Oracle House (Din?) */
    MHOUSE04_00, /* Pushed Left Cupboard in Hyrule Town, Dr. Left's House */
    MHOUSE04_01, /* Pushed Right Cupboard in Hyrule Town, Dr. Left's House */
    MHOUSE04_02,
    MHOUSE04_03,
    MHOUSE04_04,
    MHOUSE06_00, /* Flipped Minish Pot in Hyrule Town, Romio's House */
    MHOUSE07_00,
    MHOUSE07_01,
    MHOUSE08_00, /* Received 100 Shells from Percy in Percy's House */
    MHOUSE08_01,
    MHOUSE08_02,
    MHOUSE08_03, /* Received 50 Rupees from Bow Moblin in Percy's House */
    MHOUSE08_04, /* Bow Moblin Revealed in Percy's House */
    MHOUSE0C_00,
    MHOUSE14_00,    /* Flipped Minish Pot in Lake Hylia, Stockwell's House */
    MHOUSE15_OP1ST, /* Seen Intro (Stain Windows -> Zelda talks to Smith) in Link's House */
    MHOUSE2_00_00,
    MHOUSE2_00_01,
    MHOUSE2_00_02,
    MHOUSE2_00_03,
    MHOUSE2_01_T0,
    MHOUSE2_02_KAME,
    MHOUSE2_02_KEY, /* Obtain the Lon Lon Ranch key in Lon Lon Ranch, Inside the house */
    MHOUSE2_03_00,
    MHOUSE2_05_00, /* Pushed cupboard in Lake Hylia, Mayor's House */
    SHOP00_ITEM_00,
    SHOP00_ITEM_01, /* Un-Flipped Minish Pot in Hyrule Town Shop */
    SHOP00_ITEM_02,
    SHOP00_ITEM_03, /* Stockwell talks about feeling someone in Hyrule Town Shop */
    SHOP00_ITEM_04, /* Stockwell sees you after you unshrink in Hyrule Town Shop */
    SHOP00_SAIFU,   /* Bought Wallet in Hyrule Town Shop */
    SHOP00_YAZUTSU, /* Bought Quiver in Hyrule Town Shop */
    SHOP01_CAFE_00, /* Pushed cupboard in Hyrule Town Cafe */
    SHOP01_CAFE_01, /* Flipped Minish Pot in Hyrule Town Cafe */
    SHOP01_TALK,    /* Spoke to Hurdy-Gurdy Man in Hyrule Town Cafe */
    HOUSE_XXXXX,
    SHOP03_PAN_1ST, /* Eaten a pastry in Hyrule Town Bakery */
    SHOP07_TALK1ST, /* Spoke to Carlov in Carlov's Room */
    SHOP07_GACHAPON,
    SHOP07_TANA,        /* Pulled Lever in Carlov's Room */
    SHOP07_COMPLETE,    /* Exhausted new figurines in Carlov's Room */
    SHOP02_KUTSU_00,    /* Rem falling asleep cutscene seen in Rem's Shoe Shop */
    NPC37_REM_TALK1ST,  /* Spoke to Rem in Rem's Shoe Shop */
    NPC37_REM_SLEEP,    /* Rem is in his sleeping animation in Rem's Shoe Shop */
    SORA_ELDER_RECOVER, /* Saved Gregal in Wind Tribe Tower 2F */
    SORA_CHIEF_TALK,    /* Spoke to Wind Tribe Leader Siroc in Wind Tribe Tower 4F */
    SORA_ELDER_TALK1ST, /* Spoke to Gregal after Sucking Ghost in Wind Tribe Tower 2F */
    SORA_ELDER_TALK2ND, /* Spoke to Gregal after Cloud Tops in Wind Tribe Tower 2F */
    NPC06_19GUY_QUESTION,
    NPC06_19GUY_ANSWER,
    DANPEI_TALK1ST,      /* Spoke to Dampe in Royal Valley, Dampe's House */
    MIZUKAKI_KOBITO,     /* Spoke to Yellow Library Minish in Hyrule Town Library */
    MIZUKAKI_HINT1,      /* Spoke to Library Receptionist in Hyrule Town Library */
    MIZUKAKI_BOOK1_FALL, /* Dropped Library Book to Floor in Hyrule Town, Julietta's House */
    MIZUKAKI_HINT2,      /* Spoke to Library Receptionist after Book 1 in Hyrule Town Library */
    MIZUKAKI_HINT2_2ND,
    MIZUKAKI_BOOK2_FALL,    /* Library Book hit ground in Hyrule Town, Dr. Left's House */
    MIZUKAKI_HINT3,         /* Spoke to Library Receptionist after Book 2 in Hyrule Town Library */
    MIZUKAKI_HINT3_MAYOR,   /* Spoke to Mayor Hagen about the book in Hyrule Town, Mayor Hagen's House */
    MIZUKAKI_BOOK3_FALL,    /* Dropped Book 3 to Floor in Lake Hylia, Mayor's House */
    MIZUKAKI_BOOK_ALLBACK,  /* Completed Book Quest in Hyrule Town Library */
    MIZUKAKI_STAIR,         /* Librari Opens Trap Door in Hyrule Town Library, Librari's Book House */
    MIZUKAKI_STAIR_WARP_OK, /* Screen fades out to the Flipper Cave in Hyrule Town Library, Librari's Book House */
    KHOUSE27_00,
    NO_USE_00,
    KHOUSE51_00, /* Got 50 Rupees from the bottom minish for returning the books in Hyrule Town Library, Minish
                    Bookshelf */
    NO_USE_01,
    KHOUSE51_02, /* Spoke to Librari in Hyrule Town Library, Librari's Book House Before Book Quest */
    KHOUSE42_00, /* Spoke to Minish in Hyrule Town, Dr. Left's House After obtaining Power Bracelets */
    NO_USE_02,
    NO_USE_03,
    OYAKATA_DEMO,    /* Spoke to Melari in Melari's Mines */
    YAMAKOBITO_OPEN, /* Minish Moved from Exit in Melari's Mines */
    M_PRIEST_TALK,   /* Talked to Festari in Minish Village */
    M_ELDER_TALK1ST, /* Talked to Minish Elder Gentari in Minish Village */
    M_PRIEST_MOVE,   /* Festari moves to side in Minish Village */
    M_ELDER_TALK2ND, /* Minish Elder Gentari opens curtains in Minish Village */
    MHOUSE04_DANRO,  /* Put out Fireplace in Hyrule Town, Dr. Left's House */
    MHOUSE06_DANRO,  /* Put out Fireplace in Hyrule Town, Romio's House */
    URO_POEMN_TALK,  /* Talked to percy in the tree cave in Trilby Highlands, Tree Cave */
    MHOUSE06_MES_20, /* Talked to Romio in Hyrule Town, Romio's House */
    MHOUSE07_MES_20, /* Talked to Julietta in Hyrule Town, Julietta's House */
    MAYOR_2_TALK1ST, /* Talked to Mayor Hagen in Hyrule Town, Mayor Hagen's House, after flippers */
    MAYOR_4_TALK1ST,
    BILL01_TESSIN_RESERVED, /* Paid for new newsletter in Hyrule Town, Post Office */
    BILL01_TESSIN_BRANDNEW, /* New newsletter has arrived in Hyrule Town, Post Office */
    KOBITO_MORI_1ST,        /* Seen Minish Village Entrance Scene in Minish Village */
    KOBITO_YAMA_ENTER,      /* Visited Melari's Mines? in Melari's Mines */
    KHOUSE52_KINOKO,        /* Talked to Shoe Shop Minish in Rem's Shoe Shop */
    SORA_YAKATA_ENTER,      /* Entered Main Entrance? in Cloud Tops, House */
    YADO_CHECKIN,           /* Sleeping is Active in Happy Hearth Inn */
    MINIGAME_GAMEEND,       /* Chest Mini-Game Result Active in Hyrule Town, Chest Mini-Game Shop */
    MINIGAME_LEVEL2,        /* Hard Mode Active in Hyrule Town, Chest Mini-Game Shop */
    MHOUSE_DIN_TALK,        /* Talked To Din in Hyrule Town, Blue/Red House */
    MHOUSE_NAYRU_TALK,      /* Talked To Nayru in Hyrule Town, Blue/Red House */
    MHOUSE_FARORE_TALK,     /* Talked To Farore in Hyrule Town, Blue/Red House */
    URO_12_H0,              /* Obtained Heart Piece in Tree southeast of Link's House */
    URO_19_H0,              /* Obtained Heart Piece in Tree House in Western Wood */
    URO_1F_H0,              /* Obtained Heart Container in Unused Tree House (Lake Hylia) */
    BILL09_TSW0,            /* Left Torch Lit in Hyrule Town, Happy Hearth 2F */
    BILL09_TSW1,            /* Right Torch Lit in Hyrule Town, Happy Hearth 2F */
    KHOUSE41_TALK1ST,       /* Talk to the minish in Hyrule Town, Red House */
    TAIMA_SAIBAI_1ST,       /* Talk to the pico bloom minish in Minish Village */
    IZUMI_00_FAIRY,         /* Obtained Quiver upgrade from Great Fairy in Royal Valley */
    IZUMI_01_FAIRY,         /* Obtained Wallet upgrade from Great Fairy in Minish Woods */
    IZUMI_02_FAIRY,         /* Obtained Bomb Bag upgrade from Great Fairy in Mount Crenel Wall */
    BILL0B_DOUZOU_L,
    BILL0B_DOUZOU_R,
    KOBITOANA_08_T0, /* Blue L Kinstone Chest Open in Minish Woods South Minish Hole, shared fuse */
    KOBITOANA_0C_T0, /* Red 3 Prong Kinstone Chest Open in Wind Ruins Pillar Room Minish Hole */
    KOBITOANA_0D_T0, /* Red W Kinstone Chest Open in Castor Wilds, Minish Hole next to Bow */
    KOBITOHOUSE_23_H0,
    MHOUSE08_DANRO,
    MHOUSE09_DANRO, /* Put out Fireplace in Hyrule Town, Blue Oracle House */
    MHOUSE0A_DANRO, /* Put out Fireplace in Hyrule Town, Blue Oracle House (Nayru?) */
    MHOUSE0B_DANRO, /* Put out Fireplace in Hyrule Town, Blue Oracle House (Din?) */
    MHOUSE0C_DANRO,
    MHOUSE12_DANRO,         /* Put out Fireplace in DampÃ©'s Hut */
    SORA_DANRO,             /* Put out Fireplace in Wind Tribe Tower 1F */
    MIZUKAKI_HINT3_MAP,     /* Spoke with the minish after talking to Hagen in Hyrule Town, Mayor Hagen's House */
    LEFT_TALK,              /* Spoke to Dr. Left inside his house in Hyrule Town, Dr. Left's House */
    KHOUSE26_REMOCON,       /* Swapped Bombs with Belari once in Minish Woods, Belari's house */
    SORA_KIDS_MOVE,         /* Hailey Moves to Side of Stairs in Wind Tribe Tower 4F */
    KOBITOANA_00_T0,        /* Red (> Kinstone Chest Open in Lon Lon Ranch, north Minish Hole */
    KHOUSE23_TALK1ST,       /* Obtained Heart Container in Lake Hylia, Librari's House */
    SHOP05_ELEMENT_H00,     /* Obtained Heart Piece in Hyrule Town Figurine House */
    SHOP05_ELEMENT_T00,     /* Left 200 Rupee Chest Open in Hyrule Town Figurine House */
    SHOP05_ELEMENT_T01,     /* Middle 200 Rupee Chest Open in Hyrule Town Figurine House */
    SHOP05_ELEMENT_T02,     /* Right 200 Rupee Chest Open in Hyrule Town Figurine House */
    BILL0a_YADO_TAKARA_H00, /* Obtained Heart Piece in Hyrule Town, Happy Hearth minish backdoor */
    KOBITOYAMA_00_R00,      /* Hidden Blue L Kinstone Obtained in Melari's Mine */
    KOBITOYAMA_00_R01,      /* Hidden Red Rupee Obtained in Melari's Mine */
    KOBITOYAMA_00_R02,      /* Hidden Blue S Kinstone Obtained in Melari's Mine */
    KOBITOYAMA_00_R03,      /* Hidden Red Rupee Obtained in Melari's Mine */
    KOBITOYAMA_00_R04,      /* Hidden Red Rupee Obtained in Melari's Mine */
    KOBITOYAMA_00_R05,      /* Hidden Green [ Kinstone Obtained in Melari's Mine */
    KOBITOYAMA_00_R06,      /* Hidden Red Rupee Obtained in Melari's Mine */
    KOBITOYAMA_00_R07,      /* Hidden Red W Kinstone Obtained in Melari's Mine */
    KOBITO_MORI_00_H00,
    KOBITO_MORI_00_H0, /* Obtained Heart Piece in Minish Village */
    CAFE_01_CAP_0,     /* Ezlo talks after Pot Minish Cutscene in Hyrule Town */
    BILL_00_CAP_0,     /* Ezlo talks about Mayor's House in Mayor's House */
    BILL_02_CAP_0,     /* Ezlo talks about books in Hyrule Town Library 2F, bottom right bookshelf */
    MHOUSE_07_CAP_0,   /* Ezlo talks about cat 1 in Hyrule Town, Julietta's House */
    MHOUSE_07_CAP_1,   /* Ezlo talks about cat 2 in Hyrule Town, Julietta's House */
    MHOUSE_10_CAP_0,   // links house entrance
    MHOUSE_15_CAP_0,   // links bedroom
    MHOUSE_15_CAP_1,   /* Ezlo talks about something being unusual in Link's House, bottom left corner of bedroom */
    SHOP_03_CAP_0,     /* Ezlo talks about pastries in Hyrule Town Bakery */
    MHOUSE_07_CAP_2,   /* Ezlo talks about library book in Hyrule Town, Julietta's House */
#ifndef EU
    SHOP00_BOMBBAG,
    CAFE_01_CAP_1,
#endif
#if !defined(EU) && !defined(JP) && !defined(DEMO_JP)
    KS_A02,
    KS_A09,
    KS_A18,
    KS_B07,
    KS_B16,
#endif
#ifdef DEMO_JP
    MH01_KS_KUSURI,
    MH09_KS_KUSURI,
#endif
    END_2,
} LocalFlags2;

typedef enum {
    BEGIN_3,
    MAROYA_TAKARA,
    MACHI_CHIKA_00_00, /* Top Rock In Place in Hyrule Town, Well Sewer Puzzle */
    MACHI_CHIKA_00_01, /* Middle Rock In Place in Hyrule Town, Well Sewer Puzzle */
    MACHI_CHIKA_00_02, /* Bottom Rock In Place in Hyrule Town, Well Sewer Puzzle */
    MACHI_CHIKA_00_03, /* Chest Pillar In Place in Hyrule Town, Well Sewer Puzzle */
    MACHI_CHIKA_00_T0, /* 100 Rupee Chest Open in Hyrule Town, Well Sewer Puzzle North */
    MACHI_CHIKA_00_T1, /* 100 Rupee Chest Open in Hyrule Town, Well Sewer Puzzle West */
    MACHI_CHIKA_00_T2, /* Red 3 Prong Kinstone Chest Open in Hyrule Town, Well Sewer Puzzle East */
    MACHI_CHIKA_00_T3, /* 100 Rupee Chest Open in Hyrule Town, Well Sewer Puzzle South */
    MACHI_CHIKA_00_T4, /* 200 Rupee Pillar Chest Open in Hyrule Town, Well Sewer Puzzle */
    MACHI_CHIKA2_00_T0,
    MACHI_CHIKA2_01_T0,
    MACHI_CHIKA2_03_00,
    MACHI_CHIKA2_03_01, /* Defeated Mulldozers in Hyrule Town Fountain (Power Bracelets) */
    MACHI_CHIKA2_03_T0, /* Power Bracelets Chest Open in Hyrule Town Fountain (Power Bracelets) */
    MACHI_CHIKA2_04_T0, /* 100 Rupee Chest Open in Hyrule Town Fountain (Power Bracelets) */
    MACHI_CHIKA2_10_00, /* Scissors Beetles Spawned in Hyrule Town Sewer Flippers Room */
    MACHI_CHIKA2_10_01, /* Defeated Scissors Beetles in Hyrule Town Sewer Flippers Room */
    MACHI_CHIKA2_10_02, /* Picked up 50 rupees hidden beneath waterfall in Hyrule Town Sewer Flippers Room */
    MACHI_CHIKA2_10_T0, /* Flippers Chest Open in Hyrule Town Sewer Flippers Room */
    MACHI_CHIKA2_12_T0, /* 100 Shell Chest Open in Hyrule Town Sewer Ice Chest Room */
    LV4_HAKA_05_T0,     /* Blue S Kinstone Chest Open in Royal Crypt Unused Block Room */
    LV4_HAKA_04_T0,
    LV4_HAKA_04_T1,
    LV4_HAKA_01_00, /* Defeated Gibdos in Royal Crypt Gibdo Fight Room */
    LV4_HAKA_01_01,
    LV4_HAKA_03_00,
    LV4_HAKA_04_R0,
    LV4_HAKA_04_R1,
    LV4_HAKA_04_R2,
    LV4_HAKA_04_R3,
    LV4_HAKA_04_R4,
    LV4_HAKA_04_R5,
    LV4_HAKA_04_R6,
    LV4_HAKA_04_R8,
    LV4_HAKA_04_R9,
    LV4_HAKA_04_R10,
    LV4_HAKA_04_R11,
    LV4_HAKA_04_KB0, /* Second Key Block Open in Royal Crypt Key Block Room */
    LV4_HAKA_04_KB1, /* First Key Block Open in Royal Crypt Key Block Room */
    LV4_HAKA_05_H0,
    LV4_HAKA_05_H1,
    LV4_HAKA_05_H2,
    LV4_HAKA_05_H3,
    OUBO_02_BW0,
    OUBO_02_BW1,
    OUBO_06_BW0,
    OUBO_06_BW1,
    OUBO_07_ENTER,
    OUBO_KAKERA,  /* Spoke to King Gustaf in Royal Crypt King Gustaf's Room */
    MOGURA_00_T0, /* Blue L Kinstone Chest Open in Minish Woods <-> Hylia Cabin Digging Cave */
    MOGURA_00_T1, /* 50 Rupee Chest Open in Minish Woods Mole Cave */
    MOGURA_00_T2, /* Blue S Kinstone Chest Open in Minish Woods Mole Cave */
    MOGURA_01_T0, /* 50 Rupee Chest Open in Lake Hylia Middle Digging Cave */
    MOGURA_02_T0, /* 50 Shell Chest Open in Lake Hylia North Digging Cave, Northeast Chest */
    MOGURA_02_T1, /* 50 Shell Chest Open in Lake Hylia North Digging Cave, OoB */
    MOGURA_02_T2, /* 50 Shell Chest Open in Lake Hylia North Digging Cave, South top left Chest */
    MOGURA_02_T3, /* Blue L Kinstone Chest Open in Lake Hylia North Digging Cave, Northwest Left Chest */
    MOGURA_02_T4, /* Red 3 Prong Kinstone Chest Open in Lake Hylia North Digging Cave, Northwest Right Chest */
    MOGURA_02_T5, /* Red (> Kinstone Chest Open in Lake Hylia North Digging Cave, East Chest */
    MOGURA_02_T6, /* Red W Kinstone Chest Open in Lake Hylia North Digging Cave, South right Chest */
    MOGURA_02_T7, /* Blue S Kinstone Chest Open in Lake Hylia North Digging Cave, South left Chest */
    MOGURA_02_T8,
    MOGURA_09_T0,   /* 50 Shell Chest Open in Castor Wilds Digging Cave Left Chest */
    MOGURA_09_T1,   /* Red W Kinstone Chest Open in Castor Wilds Digging Cave Right Chest */
    MOGURA_10_T0,   /* Red W Kinstone Chest Open in Hyrule Town, Mole Cave Middle */
    MOGURA_10_T1,   /* Red > Kinstone Chest Open in Hyrule Town, Mole Cave East */
    MOGURA_10_T2,   /* Red 3 Prong Kinstone Chest Open in Hyrule Town, Mole Cave West */
    MOGURA_1c_T0,   /* Obtained Heart Piece in Mt. Crenel, Mole Cave */
    MOGURA_21_r0,   /* Red Rupee Collected in Eastern Hills, Mole Cave */
    MOGURA_27_T0,   /* Blue L Kinstone Chest Open in Trilby Highlands, Mole Cave Left */
    MOGURA_27_T1,   /* Red > Kinstone Chest Open in Trilby Highlands, Water Mole Cave */
    MOGURA_27_T2,   /* Blue S Kinstone Chest Open in Trilby Highlands, Mole Cave Right */
    MOGURA_41_T0,   /* 50 Shell Chest Open in Veil Falls West Digging Cave */
    MOGURA_41_T1,   /* 50 Shell Chest Open in Veil Falls East Digging Cave */
    MOGURA_41_T2,   /* 50 Rupee Chest Open in Veil Falls East Digging Cave */
    MOGURA_41_T3,   /* Obtained Heart Piece in Veil Falls West Digging Cave */
    MOGURA_50_00,   /* Obtained 50 Rupee in Fortress of Winds Entrance Hall East Corner */
    MOGURA_50_T0,   /* Blue S Kinstone Chest Open in Fortress of Winds Entrance Hall West Corner */
    MOGURA_51_T0,   /* Red 3 Prong Kinstone Chest Open in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_T1,   /* Blue L Kinstone Chest Open in Fortress of Winds Entrance Center 2F */
    MOGURA_51_T2,   /* Red 3 Prong Kinstone Chest Open in Fortress of Winds Entrance Right Side 2F */
    MOGURA_51_00,   /* Broke the 50 Rupee Pot in Fortress of Winds, Entrance Right Side 2F */
    MOGURA_51_01,   /* Broke Mysterious Shell Pot in Fortress of Winds, Entrance Right Side 2F */
    MOGURA_51_02,   /* Grabbed Top Left Green Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_03,   /* Grabbed Top Right Green Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_04,   /* Grabbed Bottom Left Green Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_05,   /* Grabbed Bottom Right Green Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_06,   /* Grabbed 2nd Blue Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_07,   /* Grabbed Blue Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_51_08,   /* Grabbed Green Rupee in Fortress of Winds Entrance Left Side 2F */
    MOGURA_52_00,   /* Hit Button in Fortress of Winds Entrance Left Side 3F Button */
    MOGURA_52_T0,   /* Red (> Kinstone Chest Open in Fortress of Winds Entrance Left Side 3F Button */
    MOGURA_52_T1,   /* Red W Kinstone Chest Open in Fortress of Winds Entrance Right Side 3F Spike Chu */
    MOGURA_53_00,   /* ??? in Fortress of Winds, Mole Mitts Room */
    MOGURA_53_T0,   /* Mole Mitts Chest Open in Fortress of Winds, Mole Mitts Room */
    MOGURA_53_T1,   /* 100 Rupee Chest Open in Fortress of Winds, Mole Mitts Room */
    MOGURA_53_WALK, /* ??? in Fortress of Winds, Mole Mitts Room */
    MOGURA_54_00,   /* Hit Button in Fortress of Winds, Minish Hole Key Room */
    MOGURA_54_01,   /* Obtained Key in Fortress of Winds, Minish Hole Key Room */
    MOGURA_54_02,   /* Key Fallen in Fortress of Winds, Minish Hole Key Room */
    MOGURA_54_WALK, /* ??? in Fortress of Winds, Minish Hole Key Room */
    AMOS_00_00,     /* Armos Switch Hit in Wind Ruins Entrance Armos 1 */
    AMOS_01_00,     /* Armos Switch Hit in Wind Ruins Entrance Armos 2 */
    AMOS_02_00,     /* Running Armos Switch Hit in Wind Ruins Running Armos, Running Armos */
    AMOS_03_00,     /* Armos Switch Hit in Wind Ruins Running Armos, Left Armos */
    AMOS_04_00,     /* Armos Switch Hit in Wind Ruins Running Armos, Middle Armos */
    AMOS_05_00,     /* Armos Switch Hit in Wind Ruins Running Armos, Right Armos */
    AMOS_06_00,     /* Armos Switch Hit in Wind Ruins Running Armos, Right Unused */
    AMOS_07_00,     /* Armos Switch Hit in Wind Ruins Minish Grass Path */
    AMOS_08_00,     /* Armos Switch Hit in Wind Ruins Entrance Unused */
    AMOS_09_00,     /* Armos Switch Hit in Fortress of Winds, Right Side Key Armos 1 */
    AMOS_0A_00,     /* Armos Switch Hit in Fortress of Winds, Right Side Key Armos 2 */
    AMOS_0B_00,
    AMOS_0C_00,
    AMOS_0D_00,
    AMOS_0E_00,
    AMOS_0F_00,
    HARI_01_T0,           /* 10 Shell Chest Open in Hyrule Town, Stockwell Shop Minish Roof */
    SEIIKI_STAINED_GLASS, /* Seen stained glass scene in Elemental Sanctuary */
    SEIIKI_ENTER,         /* Ezlo talks about Sanctuary in Elemental Sanctuary */
    SEIIKI_SWORD_1ST,     /* Ezlo talks about stone tablet in Elemental Sanctuary */
    SEIIKI_SWORD_2ND,     /* Water Element on pedestal in Elemental Sanctuary */
    SEIIKI_SWORD_3RD,     /* Ezlo talks after opening secret room in Elemental Sanctuary */
    SEIIKI_BUNSHIN,       /* Ezlo talks after first time cloning in Elemental Sanctuary */
    BAGUZU_MORI_02_00,    /* Obtained Heart Piece in Hyrule Town Schoolyard Minish Path */
    BAGUZU_MORI_02_T0,    /* Red (> Kinstone Chest Open (Top left) in Hyrule Town Schoolyard Minish Path */
    BAGUZU_MORI_02_T1,    /* Red 3 Prong Kinstone Chest Open (Top right) in Hyrule Town Schoolyard Minish Path */
    BAGUZU_MORI_02_T2,    /* Red (> Kinstone Chest Open (Bottom right) in Hyrule Town Schoolyard Minish Path */
    CHIKATSURO_01_BW00,
    SORA_10_H00,      /* Obtained Heart Piece in Crenel Summit Beanstalk */
    SORA_11_H00,      /* Obtained Heart Piece in Lake Hylia Beanstalk */
    SORA_11_T00,      /* 200 Rupee Chest Open in Lake Hylia Beanstalk */
    SORA_11_T01,      /* 200 Shell Chest Open in Lake Hylia Beanstalk */
    SORA_12_T00,      /* Quiver Big Chest Open in Wind Ruins Beanstalk */
    SORA_13_H00,      /* Obtained Heart Piece in Eastern Hills Beanstalk */
    SORA_13_T00,      /* 200 Rupee Chest Open in Eastern Hills Beanstalk */
    SORA_13_T01,      /* 200 Shell Chest Open in Eastern Hills Beanstalk */
    SORA_14_T00,      /* Red (> Kinstone Chest Open in Southwest Hyrule Beanstalk */
    SORA_14_R00,      /* Grabbed Top Left Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R01,      /* Grabbed Top Row 2nd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R02,      /* Grabbed Top Row 3rd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R03,      /* Grabbed Top Row 4th Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R04,      /* Grabbed Top Right Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R05,      /* Grabbed Right Row 2nd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R06,      /* Grabbed Right Row 3rd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R07,      /* Grabbed Right Row 4th Red Rupee in Southwest Hyrule Beanstalk */
    IZUMIGARE_00_H00, /* Obtained Heart Piece in Castle Garden East Fountain Stairs */
    IZUMIGARE_00_H01,
    SORA_10_R00,     /* Grabbed Top Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R01,     /* Grabbed Top Right Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R02,     /* Grabbed Right Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R03,     /* Grabbed Bottom Right Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R04,     /* Grabbed Bottom Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R05,     /* Grabbed Bottom Left Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R06,     /* Grabbed Left Red Rupee in Crenel Summit Beanstalk */
    SORA_10_R07,     /* Grabbed Top Left Red Rupee in Crenel Summit Beanstalk */
    SORA_14_R08,     /* Grabbed Bottom Right Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R09,     /* Grabbed Bottom Left Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R0a,     /* Grabbed Bottom Row 2nd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R0b,     /* Grabbed Bottom Row 3rd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R0c,     /* Grabbed Bottom Row 4th Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R0d,     /* Grabbed Left Row 2nd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R0e,     /* Grabbed Left Row 3rd Red Rupee in Southwest Hyrule Beanstalk */
    SORA_14_R0f,     /* Grabbed Left Row 4th Red Rupee in Southwest Hyrule Beanstalk */
    KAKERA_TAKARA_B, /* Blue L Kinstone Chest Open in Mt. Crenel, Minish Raindrop Path */
    KAKERA_TAKARA_C, /* Blue S Kinstone Chest Open in Crenel Base, Mineral Water Minish Path */
    KAKERA_TAKARA_D, /* Red W Kinstone Chest Open in Hyrule Town, School Minish Path */
    KAKERA_TAKARA_F, /* Red 3 Prong Kinstone Chest Open in Lon Lon Ranch, Minish Path */
    KAKERA_TAKARA_G, /* 100 Rupee Chest Open in Minish Woods, Minish Path */
    KAKERA_TAKARA_H, /* 200 Shell Chest Open in Minish Path to Melari's Mine */
    KAKERA_TAKARA_I, /* Blue L Kinstone Chest Open in Lake Hylia Mayor's Cabin Minish Path */
    KAKERA_TAKARA_XXXX,
    TESTMAP00_00,
    TESTMAP01_00,
    TESTMAP01_01,
    TESTMAP02_00,
    LV4_HAKA_08_T0,
    LV4_HAKA_07_00, /* Door Open in Royal Crypt Mushroom Pit */
    LV4_HAKA_04_00, /* Left Key Revealed in Royal Crypt Key Block Room */
    LV4_HAKA_04_01, /* Right Key Revealed in Royal Crypt Key Block Room */
    LV4_HAKA_04_K0, /* Obtained Left Key in Royal Crypt Key Block Room */
    LV4_HAKA_04_K1, /* Obtained Right Key in Royal Crypt Key Block Room */
    LV4_HAKA_01_02,
    LV4_HAKA_08_XX,
    BAGUZU_MORI_03_H00, /* Obtained Heart Piece in Lon Lon Ranch Minish Path */
    MOGURAU_00_H00,
    HARI_01_H00,
    HARI_03_T00,           /* Opened 100 rupee chest in Hyrule Town Bakery, minish attic */
    MACHI_CHIKA2_00_CAP_0, /* Ezlo talks about fountain in Hyrule Town Fountain (Power Bracelets) */
    MACHI_CHIKA2_11_CAP_0, /* Ezlo talks about Librari dropping them in Hyrule Town, Minish Flipper Cave */
    LV4_HAKA_08_CAP_0,     /* Ezlo talks about Royal Crypt in Royal Crypt Entrance */
    BAGUZUIWA_02_CAP_0,    /* Ezlo talks about raindrops in Mount Crenel Rainy Minish Path */
    MACHI_CHIKA2_01_CAP_0,
    MACHI_CHIKA2_01_HK, /* Obtained Heart Piece in Hyrule Town Fountain (Power Bracelets) */
    LV4_HAKA_08_B0,     /* Obtained Bomb Drop in Royal Crypt Entrance */
    LV4_HAKA_08_K0,     /* Obtained Small Key in Royal Crypt Entrance */
    MAROYA_1ST,
#ifndef EU
    MACHI_CHIKA2_10_CAP_0,
#endif
#if !defined(EU) && !defined(JP) && !defined(DEMO_JP)
    KS_C02,
#endif
    END_3,
} LocalFlags3;

typedef enum {
    BEGIN_4,
    DOUKUTU_00_T0,          /* Opened the left 50 rupee chest in Mount Crenel, Grayblade's dojo */
    DOUKUTU_00_T1,          /* Opened the right 50 rupee chest in Mount Crenel, Grayblade's dojo */
    DOUKUTU_05_EVENT,       /* Lit up Grimblade's Torches in Hyrule Castle Garden. Grimblade */
    SOUGEN_DOUKUTU_00_T0,   /* Red W Kinstone Chest Open in Magical Boomerang Cave (top left) */
    SOUGEN_DOUKUTU_00_T1,   /* Red > Kinstone Chest Open in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_T2,   /* Red 3 Prong Kinstone Chest Open in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_T3,   /* 200 Shell Chest Open in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_T4,   /* Large Chest Opened in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_SW0,  /* Top Left Button Pressed in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_SW1,  /* Top Right Button Pressed in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_SW2,  /* Bottom Left Button Pressed in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_00_SW3,  /* Bottom Right Button Pressed in Magical Boomerang Cave */
    SOUGEN_DOUKUTU_07_T0,   /* Red 3 Prong Kinstone Chest Open in Trilby Highlands Keese Chest Cave */
    SOUGEN_DOUKUTU_0B_T0,   /* 200 Shell Chest Open in Hyrule Town, Waterfall Cave */
    SOUGEN_DOUKUTU_0C_T0,   /* 50 Rupee Chest Open in Lon Lon Ranch Cave */
    SOUGEN_DOUKUTU_0C_BW00, /* Wall to secret room blown open in Lon Lon Ranch Cave */
    SOUGEN_DOUKUTU_0D_00,   /* Lit torches in Lon Lon Ranch Cave */
    SOUGEN_DOUKUTU_0D_T0,   /* Blue S Kinstone Chest Open in Lon Lon Ranch Cave */
    SOUGEN_DOUKUTU_0E_BW00, /* Wall to Bottle Business Scrub blown open in West Hyrule Underground */
    SOUGEN_DOUKUTU_0F_T00,  /* Opened the wallet chest in the opened pool cave in Lon Lon Ranch Pool cave */
    SOUGEN_DOUKUTU_10_R00,  /* Grabbed Top Left Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R01,  /* Grabbed Top Middle Left Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R02,  /* Grabbed Top Middle Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R03,  /* Grabbed Top Middle Right Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R04,  /* Grabbed Top Right Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R05,  /* Grabbed Leftmost Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R06,  /* Grabbed Middle Left Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R07,  /* Grabbed Middle Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R08,  /* Grabbed Middle Right Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R09,  /* Grabbed Rightmost Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R0A,  /* Grabbed Bottom Left Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R0B,  /* Grabbed Bottom Middle Left Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R0C,  /* Grabbed Bottom Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R0D,  /* Grabbed Bottom Middle Right Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_10_R0E,  /* Grabbed Bottom Right Blue Rupee in Rupee Cave, South Hyrule Field */
    SOUGEN_DOUKUTU_11_R00,  /* Grabbed Top Left Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R01,  /* Grabbed Top Middle Left Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R02,  /* Grabbed Top Middle Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R03,  /* Grabbed Top Middle Right Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R04,  /* Grabbed Top Right Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R05,  /* Grabbed Leftmost Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R06,  /* Grabbed Middle Left Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R07,  /* Grabbed Middle Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R08,  /* Grabbed Middle Right Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R09,  /* Grabbed Rightmost Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R0A,  /* Grabbed Bottom Left Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R0B,  /* Grabbed Bottom Middle Left Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R0C,  /* Grabbed Bottom Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R0D,  /* Grabbed Bottom Middle Right Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_11_R0E,  /* Grabbed Bottom Right Blue Rupee in Rupee Cave, Trilby Highlands */
    SOUGEN_DOUKUTU_13_T0,   /* 20 Shell Chest Open in Hyrule Field Cave, north from Minish Woods Exit */
    HIKYOU_DOUKUTU0_00_T0,  /* Gold Kinstone Chest Open in Castor Wilds South Cave */
    HIKYOU_DOUKUTU0_01_T0,
    HIKYOU_DOUKUTU0_01_T1,      /* Gold Kinstone Chest Open in Castor Wilds North Cave */
    HIKYOU_DOUKUTU0_02_KAIGARA, /* Blue S Kinstone Chest Open in Wind Ruins Cave */
    HIKYOU_DOUKUTU0_04_H00,     /* Obtained Heart Piece in Castor Wilds North East Cave */
    HIKYOU_DOUKUTU1_00_00,      /* Defeated Darknut in Castor Wilds */
    HIKYOU_DOUKUTU1_00_T0,      /* Gold Kinstone Chest Open in Castor Wilds Darknut */
    YAMADOUKUTU_01_00,          /* Rock pushed to Hole in Mount Crenel Pillar Cave */
    YAMADOUKUTU_02_00,          /* Bridge Button Activated in Mount Crenel Bridge Cave */
    YAMADOUKUTU_03_T0,          /* Blue S Kinstone Chest Open in Mount Crenel Pillar Cave */
    YAMADOUKUTU_06_H0,
    YAMADOUKUTU_07_T0,      /* Blue L Kinstone Chest Open in Crenel Mines" cave */
    YAMADOUKUTU_08_h0,      /* Obtained Heart Piece in Mount Crenel Heart Piece Cave */
    YAMADOUKUTU_08_h1,      /* Blue S Kinstone Chest Open in Mount Crenel Heart Piece Cave */
    YAMADOUKUTU_08_h2,      /* 50 Rupee Chest Open in Mount Crenel Heart Piece Cave */
    YAMADOUKUTU_09_r0,      /* Grabbed Left Blue Rupee in Mount Crenel Fairy Blue Rupee Cave */
    YAMADOUKUTU_09_r1,      /* Grabbed Middle Blue Rupee in Mount Crenel Fairy Blue Rupee Cave */
    YAMADOUKUTU_09_r2,      /* Grabbed Right Blue Rupee in Mount Crenel Fairy Blue Rupee Cave */
    YAMADOUKUTU_0F_00,      /* Talk to the Crenel Base Hint Scrub in Mount Crenel Base Entrance Cave */
    YAMADOUKUTU_10_00,      /* Open the door leading to Grayblade's dojo in Mount Crenel, Dojo Cave */
    SUIGEN_DOUKUTU_00_T0,   /* 100 Rupee Chest Open in Veil Falls Helmasaur Keese Cave 2F */
    SUIGEN_DOUKUTU_01_BW00, /* Wall to chest room blown open in Veil Falls Helmasaur Keese Cave 1F */
    SUIGEN_DOUKUTU_02_T0,   /* 50 Shell Chest Open in Veil Falls Helmasaur Keese Cave 1F */
    SUIGEN_DOUKUTU_04_BW00, /* Wall to secret area blown open in Veil Falls Entrance Cave */
    SUIGEN_DOUKUTU_05_T0,   /* 50 Shell Chest Open in Veil Falls Entrance Cave Secret Chest */
    SUIGEN_DOUKUTU_08_R0,   /* Grabbed Top Green Rupee in Veil Falls Water Rupee Path (Top Diamond) */
    SUIGEN_DOUKUTU_08_R1,   /* Grabbed Left Green Rupee in Veil Falls Water Rupee Path (Top Diamond) */
    SUIGEN_DOUKUTU_08_R2,   /* Grabbed Red Rupee in Veil Falls Water Rupee Path (Top Diamond) */
    SUIGEN_DOUKUTU_08_R3,   /* Grabbed Right Green Rupee in Veil Falls Water Rupee Path (Top Diamond) */
    SUIGEN_DOUKUTU_08_R4,   /* Grabbed Bottom Green Rupee in Veil Falls Water Rupee Path (Top Diamond) */
    SUIGEN_DOUKUTU_08_R5,   /* Grabbed Top Green Rupee in Veil Falls Water Rupee Path (Bottom Diamond) */
    SUIGEN_DOUKUTU_08_R6,   /* Grabbed Left Green Rupee in Veil Falls Water Rupee Path (Bottom Diamond) */
    SUIGEN_DOUKUTU_08_R7,   /* Grabbed Right Green Rupee in Veil Falls Water Rupee Path (Bottom Diamond) */
    SUIGEN_DOUKUTU_08_R8,   /* Grabbed Bottom Green Rupee in Veil Falls Water Rupee Path (Bottom Diamond) */
    SUIGEN_DOUKUTU_08_R9,   /* Grabbed Underwater Left Green Rupee in Veil Falls Water Rupee Path (Top Pool) */
    SUIGEN_DOUKUTU_08_R10,  /* Grabbed Underwater Right Green Rupee in Veil Falls Water Rupee Path (Top Pool) */
    SUIGEN_DOUKUTU_08_R11,  /* Grabbed Underwater Left Blue Rupee in Veil Falls Water Rupee Path (Middle Pool) */
    SUIGEN_DOUKUTU_08_R12,  /* Grabbed Underwater Right Blue Rupee in Veil Falls Water Rupee Path (Middle Pool) */
    SUIGEN_DOUKUTU_08_R13,  /* Grabbed Underwater Left Red Rupee in Veil Falls Water Rupee Path (Bottom Pool) */
    SUIGEN_DOUKUTU_08_R14,  /* Grabbed Underwater Right Red Rupee in Veil Falls Water Rupee Path (Bottom Pool) */
    SUIGEN_DOUKUTU_09_H00,  /* Obtained Heart Piece in Veil Falls Top Left Waterfall Cave */
    HAKA_DOUKUTU_00_H0,     /* Obtained Heart Piece in Royal Valley Clone Block Grave */
    HAKA_DOUKUTU_01_T0,     /* 100 Shell Chest Open in Royal Valley, Gina Grave */
    HAKA_DOUKUTU_01_GEENE,  /* Talked to Gina in Royal Valley, Gina Grave */
    KOBITO_DOUKUTU_00_T0,   /* Blue L Kinstone Chest Open in Mount Crenel Minish Pesto Cave */
    KOBITO_DOUKUTU_02_T0,
    KOBITO_DOUKUTU_05_T0, /* Red 3 Prong Kinstone Chest Open in Minish Woods North Minish Cave */
    KOBITO_SHIRO_DOUKUTU_00_H0,
    KOBITO_SHIRO_DOUKUTU_00_T0, /* 50 Shell Chest Open in Castle Garden East Minish Cave */
    KOBITO_SHIRO_DOUKUTU_01_T0, /* 50 Shell Chest Open in Castle Garden West Minish Cave */
    KOBITO_URA_DOUKUTU_00_T0,   /* 100 Shell Chest Open in Castle Garden East Minish Cave (Unused) */
    KOBITO_URA_DOUKUTU_01_T0,   /* 100 Shell Chest Open in Castle Garden West Minish Cave (Unused) */
    GORON_DOUKUTU_APPEAR,       /* Goron Figurine Available in Figurine Pool in Lon Lon Ranch, Goron Cave */
    KOBITO_DOUKUTU_03_T0,
    HIKYOU_DOUKUTU0_01_AKINDO, /* Stunned 30 Arrow Business Scrub in Castor Wilds North Cave */
    SOUGEN_DOUKUTU_14_AKINDO,  /* Stunned Bottle Business Scrub in West Hyrule Underground */
    SOUGEN_DOUKUTU_17_AKINDO,  /* Stunned Kinstone Business Scrub in Minish Woods, Tree House */
    YAMADOUKUTU_04_AKINDO,     /* Stunned Grip Ring Business Scrub in Mount Crenel Far Right Cave */
    YAMADOUKUTU_0D_AKINDO,     /* Stunned Bomb Business Scrub in Mount Crenel Base */
    YAMADOUKUTU_0F_AKINDO,     /* Stunned Hint Scrub in Mount Crenel Base */
    YAMADOUKUTU_0E_SENNIN,     /* Visited Crenel Hermit's Cave in Mt. Crenel */
    KOBITO_DOUKUTU_04_T0,
    KOBITO_DOUKUTU_07_T0, /* Red W Kinstone Chest Open in Lake Hylia North Minish Cave */
    KOBITO_DOUKUTU_09_T0, /* Blue L Kinstone Chest Open in Minish Woods Middle Minish Hole */
    KOBITO_DOUKUTU_09_T1, /* Blue S Kinstone Chest Open in Minish Woods Right Minish Hole */
    KOBITO_DOUKUTU_09_T2, /* Red 3 Prong Kinstone Chest Open in Minish Woods Left Minish Hole */
    GORON_DOUKUTU_01_T0,  /* Bottle Chest Open in Lon Lon Ranch, Goron Cave */
    GORON_DOUKUTU_01_T1,  /* 200 Rupee Chest Open in Lon Lon Ranch, Goron Cave */
    GORON_DOUKUTU_01_T2,
    GORON_DOUKUTU_01_T3,
    KOBITO_DOUKUTU_09_H0, /* Obtained Heart Piece in Minish Woods Left Minish Hole */
    SOUGEN_DOUKUTU_15_H0, /* Obtained Heart Piece in North Hyrule Field, Western Cave */
    KOBITO_DOUKUTU_01_H00,
    YAMADOUKUTU_05_H00,    /* Obtained Heart Piece in Mount Crenel Fairy Heart Piece Cave */
    KOBITO_DOUKUTU_03_H00, /* Obtained Heart Piece in Wind Ruins Minish Cave */
    DOUKUTU_04_H00,        /* Obtained Heart Piece in Castor Wilds, Swiftblade I grave */
    DOUKUTU_00_H00,        /* Obtained Heart Piece in Mount Crenel, Grayblade's dojo */
    KOBITO_DOUKUTU_04_H00, /* Obtained Heart Piece in South Hyrule Field, Water Minish Cave */
    DOUKUTU_06_H00,        /* Obtained Heart Piece in Lake Hylia, Waveblade's Room */
    DOUKUTU_05_H00,        /* Obtained Heart Piece in Hyrule Castle Garden, Grimblade's Room */
    KOBITO_DOUKUTU_02_H00, /* Obtained Heart Piece in Castor Wilds Southeast Water Cave */
    KOBITO_DOUKUTU_01_T0,  /* Red (> Kinstone Chest Open in Castor Wilds Southeast Water Cave Left Chest */
    YAMADOUKUTU_04_CAP_0,  /* Ezlo talks about Helmasaurs in Mount Crenel Base Cave */
#if !defined(EU) && !defined(JP) && !defined(DEMO_JP)
    KS_B06,
    KS_B15,
    KS_B01,
    KS_B12,
    KS_C12,
    KS_C37,
#endif
    END_4,
} LocalFlags4;

typedef enum {
    BEGIN_5,
    LV1_00_WALK, /*  Visited Room 13 in Deepwood Shrine 13 (Madderpillar) */
    LV1_01_WALK, /*  Visited Room 12 in Deepwood Shrine 12 (To Madderpillar) */
    LV1_02_WALK, /*  Visited Room 11 in Deepwood Shrine 11 (Stairs to B2) */
    LV1_03_WALK, /*  Visited Room 6 in Deepwood Shrine 6 (Pressure Button Bridge) */
    LV1_04_WALK, /*  Visited Room 7 in Deepwood Shrine 7 (Double Pillar Small Key) */
    LV1_05_WALK, /*  Visited Room 5 in Deepwood Shrine 5 (Heart Piece & Map) */
    LV1_06_WALK, /*  Visited Room 4 in Deepwood Shrine 4 (Barrel) */
    LV1_07_WALK, /*  Visited Room 8 in Deepwood Shrine 8 (Mushrooms) */
    LV1_08_WALK, /*  Visited Room 10 in Deepwood Shrine 10 (Mulldozer Fight) */
    LV1_09_WALK, /*  Visited Room 9 in Deepwood Shrine 9 (Pillars & Slugs) */
    LV1_0A_WALK, /*  Visited Room 3 in Deepwood Shrine 3 (Bridge & Mushroom) */
    LV1_0B_WALK, /*  Visited Entrance in Deepwood Shrine 1 (Entrance) */
    LV1_10_WALK, /*  Visited Room 2 in Deepwood Shrine 2 (Slug & Torches) */
    LV1_11_WALK, /*  Visited Room 17 in Deepwood Shrine 17 (Boss Key) */
    LV1_12_WALK, /*  Visited Room 16 in Deepwood Shrine 16 (Lilypad North) */
    LV1_13_WALK,
    LV1_14_WALK, /*  Visited Room 14 in Deepwood Shrine 14 (Lilypad West) */
    LV1_15_WALK, /*  Visited Room 15 in Deepwood Shrine 15 (Lilypad East) */
    LV1_16_WALK, /*  Visited Room 19 in Deepwood Shrine 19 (Big Green Chuchu) */
    LV1_17_WALK, /*  Visited Room 18 in Deepwood Shrine 18 (Boss Door) */
    LV1_TARU_0,  /* Left Buttons Pressed in Deepwood Shrine 4 (Barrel) */
    LV1_TARU_1,  /* Right Button Pressed in Deepwood Shrine 4 (Barrel) */
    LV1_00_00,   /* Defeated Madderpillar in Deepwood Shrine 13 (Madderpillar) */
    LV1_00_01,
    LV1_00_02, /* Sucked East Web in Deepwood Shrine 13 (Madderpillar) */
    LV1_00_03, /* Sucked South Web in Deepwood Shrine 13 (Madderpillar) */
    LV1_00_T0, /* Gust Jar Chest Open in Deepwood Shrine 13 (Madderpillar) */
    LV1_01_00, /* Shortcut Door to Barrel Room Open in Deepwood Shrine 12 (To Madderpillar) */
    LV1_01_01, /* Blue Portal Hidden Button Pressed in Deepwood Shrine 12 (To Madderpillar) */
    LV1_01_02, /* Door to Madderpillar Open in Deepwood Shrine 12 (To Madderpillar) */
    LV1_01_03, /* Left Hidden Chest Button Pressed in Deepwood Shrine 12 (To Madderpillar) */
    LV1_01_04, /* Right Hidden Chest Button Pressed in Deepwood Shrine 12 (To Madderpillar) */
    LV1_01_T0,
    LV1_01_T1,    /* Left 10 Shell Chest Open in Deepwood Shrine 12 (To Madderpillar) */
    LV1_01_T2,    /* Right 10 Shell Chest Open in Deepwood Shrine 12 (To Madderpillar) */
    LV1_02_T0,    /* 20 Shell Chest Open in Deepwood Shrine 11 (Stairs to B2) */
    LV1_03_CAP_0, /* Ezlo talks about bridge pressure button in Deepwood Shrine 6 (Pressure Button Bridge) */
    LV1_04_02,    /* Pot set on button in Room 6 in Deepwood Shrine 7 (Double Pillar Small Key) */
    LV1_04_T0,    /* Small Key Chest Open in Deepwood Shrine 7 (Double Pillar Small Key) */
    LV1_05_T0,
    LV1_05_T1,    /* Map Chest Open in Deepwood Shrine 5 (Heart Piece & Map) */
    LV1_06_03,    /* East Door Open in Deepwood Shrine 4 (Barrel) */
    LV1_06_T0,    /* 10 Shell Chest Open in Deepwood Shrine 4 (Barrel) */
    LV1_06_CAP_0, /* Ezlo talks about barrel in Deepwood Shrine 4 (Barrel) */
    LV1_07_00,    /* Hit bridge button in Deepwood Shrine 8 (Mushrooms) */
    LV1_07_CAP_0,
    LV1_08_00,  /* Defeated Mulldozers in Deepwood Shrine 10 (Mulldozer Fight) */
    LV1_08_KEY, /* Obtained Small Key in Deepwood Shrine 10 (Mulldozer Fight) */
    LV1_09_00,
    LV1_0A_00,     /* Lever pulled in Deepwood Shrine 3 (Bridge & Mushroom) */
    LV1_0A_CAP_0,  /* Ezlo talks about pull lever in Deepwood Shrine 3 (Bridge & Mushroom) */
    LV1_0B_01,     /* Sucked West Web in Deepwood Shrine 1 (Entrance) */
    LV1_0B_02,     /* Sucked East Web in Deepwood Shrine 1 (Entrance) */
    LV1_0B_15,     /* Blue and Red Portals Activate in Deepwood Shrine 1 (Entrance) */
    LV1_0B_CAP_0,  /* Ezlo talks about Deepwood Shrine in Deepwood Shrine 1 (Entrance) */
    LV1_10_00,     /* Hit top left button in Deepwood Shrine 2 (Slug & Torches) */
    LV1_10_01,     /* Hit bottom left button in Deepwood Shrine 2 (Slug & Torches) */
    LV1_10_02,     /* Hit top right button in Deepwood Shrine 2 (Slug & Torches) */
    LV1_10_03,     /* Hit bottom right button in Deepwood Shrine 2 (Slug & Torches) */
    LV1_10_KEY,    /* Door open in Deepwood Shrine 2 (Slug & Torches) */
    LV1_10_T0,     /* Small Key Chest Open in Deepwood Shrine 2 (Slug & Torches) */
    LV1_11_01,     /* Red Portal Button Pressed in Deepwood Shrine 17 (Boss Key) */
    LV1_11_T0,     /* Boss Key Chest Open in Deepwood Shrine 17 (Boss Key) */
    LV1_12_15,     /* Lily pad appears in Room 16 in Deepwood Shrine 16 (Compass & Small Key) */
    LV1_12_T0,     /* Small Key Chest Open in Deepwood Shrine 16 (Compass & Small Key) */
    LV1_12_T1,     /* Compass Chest Open in Deepwood Shrine 16 (Compass & Small Key) */
    LV1_12_00,     /* Pot set on Chest button in Deepwood Shrine 16 (Compass & Small Key) */
    LV1_12_01,     /* Pot set on button in Room 15 in Deepwood Shrine 16 (Compass & Small Key) */
    LV1_14_00,     /* Door open in Deepwood Shrine 14 (Lilypad West) */
    LV1_14_CAP_0,  /* Ezlo talks about lilypad in Deepwood Shrine 14 (Lilypad West) */
    LV1_16_UTSUWA, /* Obtained Heart Container in Deepwood Shrine 19 (Big Green Chuchu) */
    LV1_16_1STEND, /* Seen Green Chuchu Cutscene in Deepwood Shrine 18 (Boss Door) */
    LV1_17_00,     /* Boss Door Open in Deepwood Shrine 18 (Boss Door) */
    LV1_17_T0,     /* Red Rupee Chest Open in Deepwood Shrine 18 (Boss Door) */
    LV1_02_00,     /* Revealed Chest Button in Deepwood Shrine 11 (Stairs to B2) */
    LV1_02_01,     /* Hit Chest Button in Deepwood Shrine 11 (Stairs to B2) */
    LV1_10_04,     /* Small Key Chest Spawned in Deepwood Shrine 2 (Slug & Torches) */
    LV1_20_CAP_0,  /* Ezlo talks about moving barrel in Deepwood Shrine (Inside Barrel) */
    LV1_01_HK,     /* Obtained Heart Piece in Deepwood Shrine 12 (To Madderpillar) */
    LV1_04_CAP_0,  /* Ezlo talks about pushing and pulling pillars in Deepwood Shrine 7 (Double Pillar Small Key) */
    LV1_03_00,     /* ??? in Deepwood Shrine 6 (Pressure Button Bridge) */
    LV1_05_HK,     /* Obtained Heart Piece in Deepwood Shrine 5 (Heart Piece & Map) */
    LV1_08_01,     /* Key Falls & Door Open in Deepwood Shrine 10 (Mulldozer fight) */
    LV1_01_05,     /* Blue Portal Activated in Deepwood Shrine 12 (To Madderpillar) */
    LV1_10_CAP_0,  /* Ezlo talks about locked door in Deepwood Shrine 2 (Slug & Torches) */
#if !defined(EU) && !defined(JP)
    LV1_12_CAP_0,
#endif
    END_5,
} LocalFlags5;

typedef enum {
    BEGIN_6,
    LV2_00_WALK,      /*  Visited Room 12 in Cave of Flames 12 (Stairs to B2) */
    LV2_01_WALK,      /*  Visited Room 11 in Cave of Flames 11 (Spiny Chu Fight) */
    LV2_02_WALK,      /*  Visited Room 10 in Cave of Flames 10 (Lava Minecart) */
    LV2_03_WALK,      /*  Visited Entrance in Cave of Flames 1 (Entrance) */
    LV2_04_WALK,      /*  Visited Room 5 in Cave of Flames 5 (Minecart) */
    LV2_05_WALK,      /*  Visited Room 4 in Cave of Flames 4 (Rupee Like) */
    LV2_06_WALK,      /*  Visited Room 6 in Cave of Flames 6 (B1 West) */
    LV2_07_WALK,      /*  Visited Room 7 in Cave of Flames 7 (Helmasaurs) */
    LV2_08_WALK,      /*  Visited Room 9 in Cave of Flames 9 (Whirlwind) */
    LV2_09_WALK,      /*  Visited Room 8 in Cave of Flames 8 (Minish Lava) */
    LV2_10_WALK,      /*  Visited Room 13 in Cave of Flames 13 (Minish Spike Traps) */
    LV2_11_WALK,      /*  Visited Room 14 in Cave of Flames 14 (Quad Rollobite) */
    LV2_12_WALK,      /*  Visited Room 18 in Cave of Flames 18 (Hole to Gleerok) */
    LV2_13_WALK,      /*  Visited Room 16 in Cave of Flames 16 (Pacci Whirlwind) */
    LV2_14_WALK,      /*  Visited Room 17 in Cave of Flames 17 (Spike Trap Kinstone) */
    LV2_15_WALK,      /*  Visited Room 3 in Cave of Flames 3 (Spinies) */
    LV2_16_WALK,      /*  Visited Room 1 in Cave of Flames 2 (Bob-ombs) */
    LV2_17_WALK,      /*  Visited Room 15 in Cave of Flames 15 (Boss Key Room) */
    LV2_BOSS_00_WALK, /*  Visited Room 19 in Cave of Flames 19 (Gleerok) */
    LV2_00_00,        /* Opened Stairs Door in Cave of Flames 12 (Stairs to B2) */
    LV2_00_01,        /* Hit Door Button in Cave of Flames 12 (Stairs to B2) */
    LV2_01_01,        /* Defeated Spiny Chus in Cave of Flames 11 (Spiny Chu Fight) */
    LV2_01_02,        /* Pushed Chest Pillar to Hole in Cave of Flames 11 (Spiny Chu Fight) */
    LV2_01_T0,        /* Small Key Chest Open in Cave of Flames 11 (Spiny Chu Fight) */
    LV2_01_T1,        /* Cane of Pacci Chest Open in Cave of Flames 11 (Spiny Chu Fight) */
    LV2_02_01,        /* Blew up wall to Heart Piece in Cave of Flames 10 (Lava Minecart) */
    LV2_03_CAP_0,     /* Ezlo talks about Cave of Flames in Cave of Flames (Entrance) */
    LV2_04_00,        /* Minecart Switch Flipped in Cave of Flames 5 (Minecart) */
    LV2_04_01,        /* Opened Doors to Switch in Cave of Flames 5 (Minecart) */
    LV2_04_CAP_0,     /* Ezlo talks about Minecart in Cave of Flames 5 (Minecart) */
    LV2_06_00,        /* Blew up wall in Cave of Flames 6 (B1 West) */
    LV2_06_T0,
    LV2_06_CAP_0,  /* Ezlo talks after Minecart in Cave of Flames 6 (B1 West) */
    LV2_07_00,     /* Defeated Helmasaurs in Cave of Flames 7 (Helmasaurs) */
    LV2_07_CAP_0,  /* Ezlo talks about Portal in Cave of Flames 7 (Helmasaurs) */
    LV2_08_00,     /* Hit Door Button in Cave of Flames 9 (Whirlwind) */
    LV2_08_01,     /* Pushed Chest Pillar to Hole in Cave of Flames 9 (Whirlwind) */
    LV2_08_T0,     /* Small Key Chest Open in Cave of Flames 9 (Whirlwind) */
    LV2_08_T1,     /* 50 Rupee Chest Open in Cave of Flames 9 (Whirlwind) */
    LV2_09_00,     /* Hit Door Button in Cave of Flames 8 (Minish Lava) */
    LV2_09_T0,     /* Blue L Kinstone Chest Open in Cave of Flames 8 (Minish Lava) */
    LV2_09_T1,     /* Map Chest Open in Cave of Flames 8 (Minish Lava) */
    LV2_10_00,     /* Minecart Switch Flipped in Cave of Flames 13 (Minish Spike Traps) */
    LV2_10_T0,     /* Blue S Kinstone Chest Open in Cave of Flames 13 (Minish Spike Traps) */
    LV2_10_T1,     /* Green (< Kinstone Chest Open in Cave of Flames 13 (Minish Spike Traps) */
    LV2_11_00,     /* Flipped Barrier Switch in Cave of Flames 14 (Quad Rollobite) */
    LV2_11_01,     /* Pushed Switch Pillar to Hole in Cave of Flames 14 (Quad Rollobite) */
    LV2_14_T0,     /* Green [ Kinstone Chest Open in Cave of Flames 17 (Spike Trap Kinstone) */
    LV2_15_01,     /* Defeated Spinies in Cave of Flames 3 (Spinies) */
    LV2_15_T0,     /* Compass Chest Open in Cave of Flames 3 (Spinies) */
    LV2_15_CAP_0,  /* Ezlo talks about Spinies in Cave of Flames 3 (Spinies) */
    LV2_16_00,     /* Blew up wall in Cave of Flames 2 (Bob-ombs) */
    LV2_17_00,     /* Activated Red Portal in Cave of Flames 15 (Boss Key Room) */
    LV2_17_15,     /* Boss Door Open in Cave of Flames 15 (Boss Key Room) */
    LV2_17_T0,     /* Green / Kinstone Chest Open in Cave of Flames 15 (Boss Key Room) */
    LV2_17_T1,     /* 100 Rupee Chest Open in Cave of Flames 15 (Boss Key Room) */
    LV2_17_T2,     /* Boss Key Chest Open in Cave of Flames 15 (Boss Key Room) */
    LV2_20_UTSUWA, /* Obtained Heart Container in Cave of Flames 19 (Gleerok) */
    LV2_00_02,     /* Jumped up to Blue Portal Button? in Cave of Flames 12 (Stairs to B2) */
    LV2_06_HK,     /* Obtained Heart Piece in Cave of Flames 6 (B1 West) */
    LV2_11_02,     /* Barrier Down in Cave of Flames 14 (Quad Rollobite) */
    LV2_05_R1,     /* Grabbed Top Left Green Rupee in Cave of Flames 4 (Rupee Like) */
    LV2_05_R2,     /* Grabbed Top Green Rupee in Cave of Flames 4 (Rupee Like) */
    LV2_05_R3,     /* Grabbed Top Right Green Rupee in Cave of Flames 4 (Rupee Like) */
    LV2_05_R4,     /* Grabbed Bottom Left Green Rupee in Cave of Flames 4 (Rupee Like) */
    LV2_05_R5,     /* Grabbed Bottom Right Green Rupee in Cave of Flames 4 (Rupee Like) */
    LV2_00_CAP_0,  /* Ezlo talks about using Cane on hole in Cave of Flames 12 (Stairs to B2) */
    LV2_09_CAP_0,  /* Ezlo talks about falling in lava in Cave of Flames 8 (Minish Lava) */
    END_6,
} LocalFlags6;

typedef enum {
    BEGIN_7,
    LV3_00_WALK, /*  Visited Room in Fortress of Winds, Left Side 3F Eyegores */
    LV3_01_WALK, /*  Visited Room in Fortress of Winds, Before Mazaal */
    LV3_02_WALK, /*  Visited Room in Fortress of Winds, Right Side 3F Key */
    LV3_03_WALK, /*  Visited Room in Fortress of Winds, Left Side 3F Pit Platforms */
    LV3_04_WALK, /*  Visited Room in Fortress of Winds, Left Side 3F Key */
    LV3_05_WALK,
    LV3_06_WALK,
    LV3_10_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Darknut */
    LV3_11_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Eyes */
    LV3_12_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Pit Hall Left */
    LV3_13_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Wallmasters */
    LV3_14_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Pillar Clone Buttons */
    LV3_15_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Spike Traps */
    LV3_16_WALK,      /*  Visited Room in Fortress of Winds, Mazaal */
    LV3_17_WALK,      /*  Visited Room in Fortress of Winds, Left Side 2F Stalfos */
    LV3_18_WALK,      /*  Visited Room in Fortress of Winds, Left Side 2F Eyes */
    LV3_19_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F */
    LV3_1A_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Minish Hole to Key */
    LV3_1B_WALK,      /*  Visited Room in Fortress of Winds, Center Door 2F Boss Key */
    LV3_1C_WALK,      /*  Visited Room in Fortress of Winds, Left Side 2F */
    LV3_1D_WALK,      /*  Visited Room in Fortress of Winds, Right Side 2F */
    LV3_20_WALK,      /*  Visited Room in Fortress of Winds, Left Door */
    LV3_21_WALK,      /*  Visited Room in Fortress of Winds, Center Door */
    LV3_22_WALK,      /*  Visited Room in Fortress of Winds, Right Door */
    LV3_23_WALK,      /*  Visited Room in Fortress of Winds, Leftmost Door Wizzrobes */
    LV3_24_WALK,      /*  Visited Room in Fortress of Winds, Rightmost Door Heart Piece */
    LV3_00_00,        /* Defeated Eyegores in Fortress of Winds, Left Side 3F Eyegores */
    LV3_00_T0,        /* Compass Chest Open in Fortress of Winds, Left Side 3F Eyegores */
    LV3_02_00,        /* Door Open in Fortress of Winds, Right Side Key Boss Key Side */
    LV3_02_01,        /* Door Open in Fortress of Winds, Right Side 3F Key */
    LV3_02_02,        /* Key drop animation has finished in Fortress of Winds, Right Side 3F Key */
    LV3_02_KEYFALL,   /* Pulled Lever, Key falls in Fortress of Winds, Right Side 3F Key */
    LV3_03_00,        /* Shot Arrows at Top Eyes in Fortress of Winds, Left Side 3F Eyes */
    LV3_03_01,        /* Shot Arrows at East Eyes in Fortress of Winds, Left Side 3F Eyes */
    LV3_04_00,        /* Key drop animation has finished in Fortress of Winds, Left Side 3F Key */
    LV3_04_KEYFALL,   /* Pulled Lever, Key falls in Fortress of Winds, Left Side 3F Key */
    LV3_04_WARP_0,    /* Red Portal Active in Fortress of Winds, Left Side 3F Key */
    LV3_04_BOSSDOOR,  /* Boss Door Open in Fortress of Winds, Left Side 3F Key */
    LV3_10_00,        /* Defeated Darknut in Fortress of Winds, Center Door 2F Darknut */
    LV3_11_00,        /* Shot Arrows at Eyes in Fortress of Winds, Center Door 2F Eyes */
    LV3_12_CAP_0,     /* Ezlo talks about bridge in Fortress of Winds, Center Door 2F Pit Hall Right */
    LV3_13_00,        /* Defeated Wallmasters in Fortress of Winds, Center Door 2F Wallmasters */
    LV3_14_00,        /* Buttons Hit in Fortress of Winds, Center Door 2F Pillar Clone Buttons */
    LV3_14_01,        /* Door Open in Fortress of Winds, Center Door 2F Pillar Clone Buttons */
    LV3_14_02,        /* Key Fallen in Fortress of Winds, Center Door 2F Pillar Clone Buttons */
    LV3_14_KEY,       /* Obtained Key in Fortress of Winds, Center Door 2F Pillar Clone Buttons */
    LV3_15_00,        /* Hit Button in Fortress of Winds, Center Door 2F Spike Traps */
    LV3_17_00,        /* Defeated Stalfos in Fortress of Winds, Left Side 2F Stalfos */
    LV3_16_BOSSDIE,   /* Defeated Mazaal in Fortress of Winds, Mazaal */
    LV3_16_GETUTSUWA, /* Obtained Heart Container in Fortress of Winds, Mazaal */
    LV3_18_00,        /* Shot Arrow at Eye in Fortress of Winds, Left Side 2F Eye */
    LV3_18_00_BW00,   /* Blew up wall in Fortress of Winds, Left Side 2F Eye */
    LV3_19_01,        /* Left Eyegore Defeated in Fortress of Winds, Center Room 2F */
    LV3_19_02,        /* Door Open in Fortress of Winds, Center Door 2F Left Door */
    LV3_19_03,        /* Door Open in Fortress of Winds, Center Door 2F Right Door */
    LV3_19_04,        /* Right Eyegore defeated in Fortress of Winds, Center Room 2F */
    LV3_19_T0,        /* Map Chest Open in Fortress of Winds, Center Room 2F */
    LV3_1B_T0,        /* Boss Key Chest Open in Fortress of Winds, Center Room 2F Boss Key */
    LV3_1D_00,        /* Pulled Left Lever in Fortress of Winds, Right Side 2F */
    LV3_1D_01,        /* Pulled Right Lever in Fortress of Winds, Right Side 2F */
    LV3_1D_T0,        /* Blue L Kinstone Chest Open in Fortress of Winds, Right Side 2F Left Chest */
    LV3_1D_T1,        /* Blue S Kinstone Chest Open in Fortress of Winds, Right Side 2F Right Chest */
    LV3_20_00,        /* Obtained Key in Fortress of Winds, Left Door */
    LV3_20_CAP_0,     /* Ezlo talks about Fortress of Winds in Fortress of Winds */
    LV3_22_00,        /* Obtained Key in Fortress of Winds, Right Door */
    LV3_23_01,        /* Defeated Wizzrobes in Fortress of Winds, Leftmost Door Wizzrobes */
    LV3_23_T0,        /* 80 Shell Chest Open in Fortress of Winds, Leftmost Door Wizzrobes */
    LV3_24_T0,
    LV3_OCARINA_FALL, /* Zeffa drops Ocarina on ground in Fortress of Winds, Ocarina of Wind Room */
    LV3_02_CAP_0,     /* Ezlo talks about fallen Key in Fortress of Winds Right Side 3F Key */
    LV3_24_HK,        /* Obtained Heart Piece in Fortress of Winds, Rightmost Heart Piece Room */
    LV3_10_01,        /* Doors opened in Fortress of Winds, Center Door 2F Darknut */
    LV3_17_01,        /* Doors opened in Fortress of Winds, Left Side 2F Stalfos */
    END_7,
} LocalFlags7;

typedef enum {
    BEGIN_8,
    LV4_00_WALK,     /*  Visited Room in Temple of Droplets West Hole to Boss Key */
    LV4_01_WALK,     /*  Visited Room in Temple of Droplets North Split to Keys */
    LV4_02_WALK,     /*  Visited Room in Temple of Droplets East Hole to Key */
    LV4_03_WALK,     /*  Visited Room in Temple of Droplets Entrance */
    LV4_04_WALK,     /*  Visited Room in Temple of Droplets Stairs to West Lever */
    LV4_05_WALK,     /*  Visited Room in Temple of Droplets Scissors Beetle Miniboss */
    LV4_06_WALK,     /*  Visited Room in Temple of Droplets West Waterfall Northwest */
    LV4_07_WALK,     /*  Visited Room in Temple of Droplets West Waterfall Northeast */
    LV4_08_WALK,     /*  Visited Room in Temple of Droplets Main Room */
    LV4_09_WALK,     /*  Visited Room in Temple of Droplets Corner from Beetle Miniboss */
    LV4_0A_WALK,     /*  Visited Room in Temple of Droplets Ice Pit Maze */
    LV4_0B_WALK,     /*  Visited Room in Temple of Droplets, Hole to Blue Chuchu Key */
    LV4_0C_WALK,     /*  Visited Room in Temple of Droplets West Waterfall Southwest */
    LV4_0D_WALK,     /*  Visited Room in Temple of Droplets West Waterfall Southeast */
    LV4_0E_WALK,     /*  Visited Room in Temple of Droplets, Big Octorok */
    LV4_0F_WALK,     /*  Visited Room in Temple of Droplets, Door to Big Blue Chuchu */
    LV4_10_WALK,     /*  Visited Room in Temple of Droplets Big Blue Chuchu */
    LV4_11_WALK,     /*  Visited Room in Temple of Droplets Blue Chuchu Key */
    LV4_20_WALK,     /*  Visited Room in Temple of Droplets Boss Key Room */
    LV4_21_WALK,     /*  Visited Room in Temple of Droplets Key 1 Room */
    LV4_22_WALK,     /*  Visited Room in Temple of Droplets Block Clone Button Puzzle */
    LV4_23_WALK,     /*  Visited Room in Temple of Droplets Block Clone Puzzle 1 */
    LV4_24_WALK,     /*  Visited Room in Temple of Droplets Block Clone Ice Bridge */
    LV4_25_WALK,     /*  Visited Room in Temple of Droplets Stairs to Beetle Miniboss */
    LV4_26_WALK,     /*  Visited Room in Temple of Droplets Spikebars after 9 Lantern */
    LV4_27_WALK,     /*  Visited Room in Temple of Droplets 9 Lantern Room */
    LV4_28_WALK,     /*  Visited Room in Temple of Droplets Lilypad Ice Blocks */
    LV4_29_WALK,     /*  Visited Room in Temple of Droplets The 1 Frame Roll */
    LV4_2A_WALK,     /*  Visited Room in Temple of Droplets Mulldozers & Firebars */
    LV4_2B_WALK,     /*  Visited Room in Temple of Droplets Dark Lantern Maze */
    LV4_2C_WALK,     /*  Visited Room in Temple of Droplets Twin Madderpillars */
    LV4_2D_WALK,     /*  Visited Room in Temple of Droplets After Twin Madderpillars */
    LV4_2E_WALK,     /*  Visited Room in Temple of Droplets Blue Chuchu Key Lever */
    LV4_2F_WALK,     /*  Visited Room in Temple of Droplets Mulldozer Key Room */
    LV4_30_WALK,     /*  Visited Room in Temple of Droplets Bombwall to Twin Madderpillars */
    LV4_31_WALK,     /*  Visited Room in Temple of Droplets Lilypad B2 West */
    LV4_32_WALK,     /*  Visited Room in Temple of Droplets Compass Room */
    LV4_33_WALK,     /*  Visited Room in Temple of Droplets 4 Lantern Scissors Beetles */
    LV4_34_WALK,     /*  Visited Room in Temple of Droplets Lilypad B2 Middle Room */
    LV4_35_WALK,     /*  Visited Room in Temple of Droplets Lilypad B2 East Madderpillar */
    LV4_INIT,        /* Open Hole Setup Completed in Temple of Droplets West Hole to Boss Key */
    LV4_01_00,       /* Door Open in Temple of Droplets North Split to Keys */
    LV4_03_CAP_0,    /* Ezlo talks about Temple of Droplets in Temple of Droplets Entrance */
    LV4_03_BOSSDOOR, /* Boss Door Open in Temple of Droplets Entrance */
    LV4_05_00,
    LV4_05_01, /* Defeated Scissors Beetles in Temple of Droplets Scissors Beetle Miniboss */
    LV4_06_00,
    LV4_07_00, /* Opened Door to Lilypad in Temple of Droplets West Waterfall Northeast */
    LV4_08_00, /* Ice Block Melted in Temple of Droplets Main Room */
    LV4_08_01,
    LV4_08_02,
    LV4_08_RAY_HALF,   /* East Lever Pushed in Temple of Droplets Main Room */
    LV4_08_RAY_HALF_E, /* East Ice Block Thawing Zone active in Temple of Droplets Main Room */
    LV4_08_RAY_FULL,   /* West Lever Pushed in Temple of Droplets Main Room */
    LV4_08_RAY_FULL_E, /* Water Element Ice Melts in Temple of Droplets Main Room */
    LV4_09_T0,         /* Blue L Kinstone Chest Open in Temple of Droplets Corner from Beetle Miniboss */
    LV4_0a_TSUBO,      /* Green < Kinstone Taken From Pot in Temple of Droplets Ice Pit Maze */
    LV4_0a_T0,         /* Blue S Kinstone Chest Open in Temple of Droplets Ice Pit Maze */
    LV4_0c_00,         /* Hit Button in Temple of Droplets West Waterfall Southwest */
    LV4_0d_00,         /* Hit Button in Temple of Droplets West Waterfall Southeast */
    LV4_0d_01,         /* Blocking Pillars Down in Temple of Droplets West Waterfall Southeast */
    LV4_0d_02,
    LV4_0d_T0,      /* Map Chest Open in Temple of Droplets West Waterfall Southeast */
    LV4_0e_UTSUWA,  /* Obtained Heart Container in Temple of Droplets, Big Octorok */
    LV4_0f_00,      /* Door Open in Temple of Droplets, Door to Big Blue Chuchu */
    LV4_0f_01,      /* Melted Top Left Ice Block in Temple of Droplets, Door to Big Blue Chuchu */
    LV4_0f_02,      /* Melted Bottom Left Ice Block in Temple of Droplets, Door to Big Blue Chuchu */
    LV4_0f_03,      /* Melted Top Right Ice Block in Temple of Droplets, Door to Big Blue Chuchu */
    LV4_0f_04,      /* Melted Bottom Right Ice Block in Temple of Droplets, Door to Big Blue Chuchu */
    LV4_10_RAY,     /* Lever Pushed in Temple of Droplets Big Blue Chuchu */
    LV4_10_T0,      /* Lantern Chest Open in Temple of Droplets Big Blue Chuchu */
    LV4_10_BOSSDIE, /* Defeated Big Blue Chuchu in Temple of Droplets Big Blue Chuchu */
    LV4_11_00,      /* Ice Block Melts in Temple of Droplets Blue Chuchu Key */
    LV4_11_RAY_SP,  /* Thawing Zone Active in Temple of Droplets Blue Chuchu Key */
    LV4_11_RAY,     /* Lever Turned in Blue Chuchu Key Room in Temple of Droplets West Hole to Boss Key */
    LV4_11_T0,      /* Obtained Key in Temple of Droplets Blue Chuchu Key Lever */
    LV4_20_00,
    LV4_20_RAY,     /* Turned Lever in Temple of Droplets Boss Key Room */
    LV4_20_BOSSKEY, /* Boss Key Ice Block Gone in Temple of Droplets Boss Key Room */
    LV4_21_00,      /* Ezlo trigger active in Temple of Droplets Key 1 Room */
    LV4_21_RAY,     /* Turned Lever in Temple of Droplets Key 1 Room */
    LV4_21_KEY,     /* Obtained Key in Temple of Droplets Key 1 Room */
    LV4_21_CAP_0,   /* Ezlo talks about sunlight in Temple of Droplets Key 1 Room */
    LV4_22_00,      /* Door Open in Temple of Droplets Block Clone Button Puzzle */
    LV4_23_00,      /* Door Open in Temple of Droplets Flamebar Block Puzzle */
    LV4_24_00,      /* Melted Ice Block in Temple of Droplets Block Clone Ice Bridge */
    LV4_27_00,      /* 9 Lanterns Lit in Temple of Droplets 9 Lantern Room */
    LV4_28_00,      /* Hit Button in Temple of Droplets Lilypad Ice Blocks */
    LV4_28_01,      /* Lilypad Ice Blocks Gate Stays Open in Temple of Droplets The 1 Frame Roll */
    LV4_28_T0,      /* 100 Shell Chest Open (Frozen) in Temple of Droplets Lilypad Ice Blocks */
    LV4_28_T1,      /* 50 Rupee Chest Open in Temple of Droplets Lilypad Ice Blocks */
    LV4_29_CAP_0,   /* Ezlo talks about darkness in Temple of Droplets The 1 Frame Roll */
    LV4_2b_T0,      /* Red W Kinstone Chest Open in Temple of Droplets Dark Lantern Maze, Top Right Chest */
    LV4_2b_T1,      /* Red (> Kinstone Chest Open in Temple of Droplets Dark Lantern Maze, Top Left Chest */
    LV4_2b_T2,      /* Red 3 Prong Kinstone Chest Open in Temple of Droplets Dark Lantern Maze, Bottom Chest */
    LV4_2b_BKABE,   /* Blew up wall to Mulldozer Key Room in Temple of Droplets Dark Lantern Maze */
    LV4_2b_00,      /* Lit Top Left Torch in Temple of Droplets Dark Lantern Maze */
    LV4_2b_01,      /* Lit Top Right Torch in Temple of Droplets Dark Lantern Maze */
    LV4_2b_02,      /* Door Open in Temple of Droplets Dark Lantern Maze */
    LV4_2b_03,      /* Lit Middle Right Torch in Temple of Droplets Dark Lantern Maze */
    LV4_2b_04,      /* Lit Bottom Right Torch in Temple of Droplets Dark Lantern Maze */
    LV4_2c_00,      /* Defeated Twin Madderpillars in Temple of Droplets Twin Madderpillars */
    LV4_2c_02,      /* Burnt Entrance Web in Temple of Droplets Twin Madderpillars */
    LV4_2c_T0,
    LV4_2d_00,
    LV4_2d_01,
    LV4_2d_02,
    LV4_2e_RAY,   /* Turned Lever in Temple of Droplets Blue Chuchu Key Lever */
    LV4_2f_00,    /* Defeated Mulldozers in Temple of Droplets Mulldozer Key Room */
    LV4_2f_01,    /* Small Key Falls in Temple of Droplets Mulldozer Key Room */
    LV4_2f_KEY,   /* Obtained Small Key in Temple of Droplets Mulldozer Key Room */
    LV4_30_00,    /* Red Portal Activated in Temple of Droplets To Twin Madderpillars */
    LV4_30_BKABE, /* Blew up wall to Twin Madderpillars in Temple of Droplets To Twin Madderpillars */
    LV4_31_00,    /* Hit Button in Temple of Droplets Lilypad B2 West */
    LV4_31_01,    /* Lilypad Fallen to B2 in Temple of Droplets West Waterfall Southeast */
    LV4_32_00,    /* Melted Left Ice Block in Temple of Droplets Compass Room */
    LV4_32_01,    /* Melted Right Ice Block in Temple of Droplets Compass Room */
    LV4_32_T0,    /* 100 Rupee Chest Open in Temple of Droplets Compass Room */
    LV4_32_T1,    /* Compass Chest Open in Temple of Droplets Compass Room */
    LV4_33_01,    /* Defeated Scissors Beetles in Temple of Droplets, 4 Lantern Scissors Beetles */
    LV4_34_00,    /* Hit Button in Temple of Droplets Lilypad B2 Middle Room */
    LV4_34_01,    /* Obtained Small Key in Temple of Droplets Lilypad B2 Middle Room */
    LV4_35_00,    /* Defeated Madderpillar in Temple of Droplets Lilypad B2 East Madderpillar */
    LV4_35_01,    /* Door Open in Temple of Droplets Lilypad B2 East Madderpillar */
    LV4_22_01,
    LV4_2d_T0,    /* Red 3 Prong Kinstone Chest Open (Frozen) in Temple of Droplets After Twin Madderpillars */
    LV4_03_CAP_1, /* Ezlo talks about slippery floor in Temple of Droplets Entrance */
    LV4_08_CAP_0, /* Ezlo talks about frozen Element in Temple of Droplets Main Room */
    LV4_08_CAP_1, /* Ezlo talks after pushing East Lever in Temple of Droplets Main Room */
    LV4_36_WALK,  /*  Visited Room in Temple of Droplets Flamebar Block Puzzle */
    LV4_36_T0,
    LV4_21_CAP_1, /* Ezlo talks about frozen key in Temple of Droplets Key 1 Room */
    LV4_0d_03,    /* Grabbed 1st Green Rupee in Temple of Droplets West Waterfall Southeast */
    LV4_0d_04,    /* Grabbed 2nd Green Rupee in Temple of Droplets West Waterfall Southeast */
    LV4_0d_05,    /* Grabbed 3rd Green Rupee in Temple of Droplets West Waterfall Southeast */
    LV4_0d_06,    /* Grabbed 4th Green Rupee in Temple of Droplets West Waterfall Southeast */
    LV4_0d_07,    /* Grabbed 5th Green Rupee in Temple of Droplets West Waterfall Southeast */
    LV4_25_00,    /* Grabbed 5th Green Rupee in Temple of Droplets Stairs to Beetle Miniboss */
    LV4_25_01,    /* Grabbed 4th Green Rupee in Temple of Droplets Stairs to Beetle Miniboss */
    LV4_25_02,    /* Grabbed 3rd Green Rupee in Temple of Droplets Stairs to Beetle Miniboss */
    LV4_25_03,    /* Grabbed 2nd Green Rupee in Temple of Droplets Stairs to Beetle Miniboss */
    LV4_25_04,    /* Grabbed 1st Green Rupee in Temple of Droplets Stairs to Beetle Miniboss */
    LV4_31_02,    /* Picked up upper left underwater waterfall blue rupee in Temple of Droplets Lilypad B2 West */
    LV4_31_03,    /* Picked up upper middle underwater waterfall blue rupee in Temple of Droplets Lilypad B2 West */
    LV4_31_04,    /* Picked up upper right underwater waterfall blue rupee in Temple of Droplets Lilypad B2 West */
    LV4_31_05,    /* Picked up lower left underwater waterfall blue rupee in Temple of Droplets Lilypad B2 West */
    LV4_31_06,    /* Picked up lower middle underwater waterfall blue rupee in Temple of Droplets Lilypad B2 West */
    LV4_31_07,    /* Picked up lower right underwater waterfall blue rupee in Temple of Droplets Lilypad B2 West */
    LV4_06_01, /* Picked up upper left underwater waterfall blue rupee in Temple of Droplets West Waterfall Northwest */
    LV4_06_02, /* Picked up upper middle underwater waterfall blue rupee in Temple of Droplets West Waterfall Northwest
                */
    LV4_06_03, /* Picked up upper right underwater waterfall blue rupee in Temple of Droplets West Waterfall Northwest
                */
    LV4_06_04, /* Picked up lower left underwater waterfall blue rupee in Temple of Droplets West Waterfall Northwest */
    LV4_06_05, /* Picked up lower middle underwater waterfall blue rupee in Temple of Droplets West Waterfall Northwest
                */
    LV4_06_06, /* Picked up lower right underwater waterfall blue rupee in Temple of Droplets West Waterfall Northwest
                */
    LV4_08_OCT,    /* Big Octo Sucked Element & Left Room in Temple of Droplets Main Room */
    LV4_05_02,     /* Doors Open in Temple of Droplets Scissors Beetle Miniboss */
    LV4_28_02,     /* Blocking Pillars Down in Temple of Droplets Lilypad Ice Blocks */
    LV4_2c_01,     /* Door Open in Temple of Droplets Twin Madderpillars */
    LV4_33_02,     /* Doors Open in Temple of Droplets, 4 Lantern Scissors Beetles */
    LV4_31_08,     /* Gate Opened in Temple of Droplets Lilypad B2 West */
    LV4_34_02,     /* Gate Opened in Temple of Droplets Lilypad B2 Middle Room */
    LV4_20_RAY_SW, /* Thawing zone active in Temple of Droplets Boss Key Room */
    LV4_21_RAY_SW, /* Thawing zone active in Temple of Droplets Key 1 Room */
    END_8,
} LocalFlags8;

typedef enum {
    BEGIN_9,
    LV5_00_WALK,     /*  Visited Room in Palace of Winds 46 (Vortex to Gyorg) */
    LV5_01_WALK,     /*  Visited Room in Palace of Winds 24 (5F Boss Key Chest) */
    LV5_02_WALK,     /*  Visited Room in Palace of Winds 19 (5F Before Boss Door Hall) */
    LV5_03_WALK,     /*  Visited Room in Palace of Winds 44 (5F Real Boss Door) */
    LV5_04_WALK,     /*  Visited Room in Palace of Winds 5F East Kinstone Chest from Boss */
    LV5_05_WALK,     /*  Visited Room in Palace of Winds 23 (5F Moblin & Wizzrobe Fight) */
    LV5_06_WALK,     /*  Visited Room in Palace of Winds 22 (5F Stalfos & Clone Buttons) */
    LV5_07_WALK,     /*  Visited Room in Palace of Winds 21 (5F Key Chest & Blocks) */
    LV5_08_WALK,     /*  Visited Room in Palace of Winds 20 (5F Boss Door Hall) */
    LV5_09_WALK,     /*  Visited Room in Palace of Winds 43 (5F Bombarossa Switch Maze) */
    LV5_0A_WALK,     /*  Visited Room in Palace of Winds 25 (5F Hole to Darknut Miniboss) */
    LV5_0B_WALK,     /*  Visited Room in Palace of Winds 42 (5F North Corner) */
    LV5_0C_WALK,     /*  Visited Room in Palace of Winds 26 (1F Darknut Miniboss) */
    LV5_0D_WALK,     /*  Visited Room in Palace of Winds 40 (5F Gibdo Corner) */
    LV5_0E_WALK,     /*  Visited Room in Palace of Winds 41 (5F Outside Wall) */
    LV5_0F_WALK,     /*  Visited Room in Palace of Winds 18 (4F Cloud Jumps to 5F) */
    LV5_10_WALK,     /*  Visited Room in Palace of Winds 45 (4F Block Maze to Boss) */
    LV5_11_WALK,     /*  Visited Room in Palace of Winds 17 (4F Lakitu Platforms) */
    LV5_12_WALK,     /*  Visited Room in Palace of Winds 4F Bridge to Heart Piece */
    LV5_13_WALK,     /*  Visited Room in Palace of Winds 16 (4F Bridge & Fan) */
    LV5_14_WALK,     /*  Visited Room in Palace of Winds 15 (4F Moblin Corner) */
    LV5_15_WALK,     /*  Visited Room in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_16_WALK,     /*  Visited Room in Palace of Winds 8 (3F Northwest) */
    LV5_17_WALK,     /*  Visited Room in Palace of Winds 14 (3F Corner after Key) */
    LV5_18_WALK,     /*  Visited Room in Palace of Winds 9 (3F Southwest) */
    LV5_19_WALK,     /*  Visited Room in Palace of Winds 10 (3F Platform & Cloud to 4F) */
    LV5_1A_WALK,     /*  Visited Room in Palace of Winds 11 (3F Spike Bar & Pots) */
    LV5_1B_WALK,     /*  Visited Room in Palace of Winds 37 (3F Floormaster Lever) */
    LV5_1C_WALK,     /*  Visited Room in Palace of Winds 36 (3F Map Chest Fire Wizzrobes) */
    LV5_1D_WALK,     /*  Visited Room in Palace of Winds 13 (3F Key Switch Minish Portal) */
    LV5_1E_WALK,     /*  Visited Room in Palace of Winds 38 (3F Stairs to 4F) */
    LV5_1F_WALK,     /*  Visited Room in Palace of Winds 3F Hole to Kinstone Wizzrobe Fight */
    LV5_20_WALK,     /*  Visited Room in Palace of Winds 12 (3F Key Switch) */
    LV5_21_WALK,     /*  Visited Room in Palace of Winds 6 (2F West) */
    LV5_22_WALK,     /*  Visited Room in Palace of Winds 7 (2F East) */
    LV5_23_WALK,     /*  Visited Room in Palace of Winds 32 (2F Peahat Clone Switches) */
    LV5_24_WALK,     /*  Visited Room in Palace of Winds 34 (2F Bombarossa Whirlwinds) */
    LV5_25_WALK,     /*  Visited Room in Palace of Winds 30 (2F Stalfos Corner) */
    LV5_26_WALK,     /*  Visited Room in Palace of Winds 31 (2F Stalfos Firebars) */
    LV5_27_WALK,     /*  Visited Room in Palace of Winds (2F Shortcut Door Switches) */
    LV5_28_WALK,     /*  Visited Room in Palace of Winds 29 (2F Stairs) */
    LV5_29_WALK,     /*  Visited Room in Palace of Winds, Kinstone Wizzrobe Fight */
    LV5_2A_WALK,     /*  Visited Room in Palace of Winds 35 (2F Gibdo Corner) */
    LV5_2B_WALK,     /*  Visited Room in Palace of Winds 33 (2F Spikebar Key Chest) */
    LV5_2C_WALK,     /*  Visited Room in Palace of Winds 5 (Roc's Cape) */
    LV5_2D_WALK,     /*  Visited Room in Palace of Winds 4 (Firebar Bob-omb Grate) */
    LV5_2E_WALK,     /*  Visited Room in Palace of Winds 3 (Platform Ride Bombarossas) */
    LV5_2F_WALK,     /*  Visited Room in Palace of Winds 27 (1F Bridge after Darknut) */
    LV5_30_WALK,     /*  Visited Room in Palace of Winds 2 (Bridge Switches & Clone Block) */
    LV5_31_WALK,     /*  Visited Room in Palace of Winds Entrance */
    LV5_32_WALK,     /*  Visited Room in Palace of Winds 28 (1F Dark Room) */
    LV5_01_T0,       /* Boss Key Chest Open in Palace of Winds 24 (5F Boss Key Chest) */
    LV5_03_T0,       /* Small Key Chest Open in Palace of Winds 44, West of Boss Door */
    LV5_03_BOSSDOOR, /* Boss Door Open in Palace of Winds 44, Boss Door */
    LV5_04_T0,       /* Red W Kinstone Chest Open in Palace of Winds, East Kinstone Chest from Boss */
    LV5_05_00,       /* Hit Fan Floor Button in Palace of Winds 23 (5F Moblin & Wizzrobe Fight) */
    LV5_05_01,
    LV5_05_02,       /* Defeated Moblins & Wizzrobes in Palace of Winds 23 (5F Moblin & Wizzrobe Fight) */
    LV5_06_00,       /* Door Open in Palace of Winds 22 (5F Stalfos & Clone Buttons) */
    LV5_07_00,       /* Door Open in Palace of Winds 21 (5F Key Chest & Blocks) */
    LV5_07_01,       /* Hit Fan Floor Button in Palace of Winds 21 (5F Key Chest & Blocks) */
    LV5_07_T0,       /* Small Key Chest Open in Palace of Winds 21 (5F Key Chest & Blocks) */
    LV5_08_00,       /* Door Open in Palace of Winds 20 (5F Boss Door Hall) */
    LV5_08_01,       /* Defeated Ball & Chain Soldiers in Palace of Winds 20 (5F Boss Door Hall) */
    LV5_08_KEY,      /* Obtained Key in Palace of Winds 20 (5F Boss Door Hall) */
    LV5_08_BOSSDOOR, /* Boss Door Open in Palace of Winds 20 (5F Boss Door Hall) */
    LV5_0b_B0,       /* Top Block Destroyed in Palace of Winds 42 (5F North Corner) */
    LV5_0b_B1,       /* Bottom Block Destroyed in Palace of Winds 42 (5F North Corner) */
    LV5_0d_00,       /* Blew up wall in Palace of Winds 40 (5F Gibdo Corner) */
    LV5_0e_00,       /* Blew up wall in Palace of Winds 41 (5F Outside Wall) */
    LV5_0f_T0,       /* Blue L Kinstone Chest Open in Palace of Winds 18 (4F Cloud Jumps to 5F) */
    LV5_0f_T1,
    LV5_10_T0, /* Blue S Kinstone Chest Open in Palace of Winds 45 (4F Block Maze to Boss) */
    LV5_15_00, /* North Locked Door Open in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_01, /* East Locked Door Open in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_02, /* Switch Door Open in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_03, /* Lit Left Torch in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_04, /* Lit Right Torch in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_T0, /* 200 Rupee Chest Open in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_B0, /* Top Block Destroyed in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_15_B1, /* Bottom Block Destroyed in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_1a_00, /* Hit 3 Switches in Palace of Winds 11 (3F Spike Bar & Pots) */
    LV5_1a_01, /* Door Open in Palace of Winds 11 (3F Spike Bar & Pots) */
    LV5_1b_00, /* Door Open in Palace of Winds 36 (3F Floormaster Lever) */
    LV5_1b_T0,
    LV5_1c_00, /* Defeated Fire Wizzrobes in Palace of Winds 35 (3F Map Chest Fire Wizzrobes) */
    LV5_1c_T0, /* Map Chest Open in Palace of Winds 35 (3F Map Chest Fire Wizzrobes) */
    LV5_20_00, /* Hit Key Switch in Palace of Winds 12 (3F Key Switch) */
    LV5_20_01, /* Obtained Key in Palace of Winds 12 (3F Key Switch) */
    LV5_21_00, /* Grabbed Top Left Green Rupee in Palace of Winds 6 (2F West) */
    LV5_21_01, /* Grabbed Top Green Rupee in Palace of Winds 6 (2F West) */
    LV5_21_02, /* Grabbed Bottom Left Green Rupee in Palace of Winds 6 (2F West) */
    LV5_21_03, /* Grabbed Bottom Green Rupee in Palace of Winds 6 (2F West) */
    LV5_21_04, /* Grabbed Bottom Right Green Rupee in Palace of Winds 6 (2F West) */
    LV5_21_05,
    LV5_21_06,
    LV5_21_07,
    LV5_21_08,
    LV5_21_09,
    LV5_21_0a,
    LV5_21_CAP_0, /* Ezlo talks about grates in Palace of Winds 6 (2F West) */
    LV5_22_00,
    LV5_22_01,    /* Defeated Spinies in Palace of Winds 7 (2F East) */
    LV5_22_CAP_0, /* Ezlo talks about fans in Palace of Winds 7 (2F East) */
    LV5_23_00,    /* Hit Switches in Palace of Winds 31 (2F Peahat Clone Switches) */
    LV5_23_01,    /* Locked Door Open in Palace of Winds 31 (2F Peahat Clone Switches) */
    LV5_27_00,    /* Hit Switches in Palace of Winds (2F Shortcut Door Switches) */
    LV5_29_00,
    LV5_29_01, /* Defeated Wizzrobes in Palace of Winds, Kinstone Wizzrobe Fight */
    LV5_29_T0, /* Red (> Kinstone Chest Open in Palace of Winds, Kinstone Wizzrobe Fight */
    LV5_2b_T0, /* Small Key Chest Open in Palace of Winds 32 (2F Spikebar Key Chest) */
    LV5_2c_00, /* Defeated Wizzrobes in Palace of Winds 5 (Roc's Cape) */
    LV5_2c_01,
    LV5_2c_02,
    LV5_2c_03,
    LV5_2c_T0,    /* Roc's Cape Chest Open in Palace of Winds 5 (Roc's Cape) */
    LV5_2c_CAP_0, /* Ezlo talks about clouds in Palace of Winds 5 (Roc's Cape) */
    LV5_2d_T0,    /* Red 3 Prong Kinstone Chest Open in Palace of Winds 4 (Firebar Bob-omb Grate) */
    LV5_31_CAP_0, /* Ezlo talks about Palace of Winds in Palace of Winds Entrance */
    LV5_32_CAP_0, /* Ezlo talks about dark room in Palace of Winds 28 (1F Dark Room) */
    LV5_32_T0,    /* Compass Chest Open in Palace of Winds 28 (1F Dark Room) */
    LV5_32_T1,    /* Small Key Chest Open in Palace of Winds 28 (1F Dark Room) */
    LV5_BOSSDIE,  /* Vortex to Gyorg Removed + Receive Element in Palace of Winds 46 (Vortex to Gyorg) */
    LV5_MBOSSDIE,
    LV5_00_UTSUWA, /* Obtained Heart Container in Palace of Winds 46 (Vortex to Gyorg) */
    LV5_0c_00,     /* Defeated Red Darknut in Palace of Winds 26 (1F Darknut Miniboss) */
    LV5_0A_CAP_0,  /* Ezlo talks about hole in Palace of Winds 25 (5F Hole to Darknut Miniboss) */
    LV5_0f_HK,     /* Obtained Heart Piece in Palace of Winds 18 (4F Cloud Jumps to 5F) */
    LV5_05_03,     /* Door Open in Palace of Winds 23 (5F Moblin & Wizzrobe Fight) */
    LV5_08_02,     /* Key Falls in Palace of Winds 20 (5F Boss Door Hall) */
    LV5_0c_01,
    LV5_0c_02, /* Blue Portal & Bridge Appeared in Palace of Winds 26 (1F Darknut Miniboss) */
    LV5_22_02, /* Door Open after Spinies in Palace of Winds 7 (2F East) */
    LV5_15_05, /* Red Portal Active in Palace of Winds 39 (4F Bombarossa Block Hole) */
    LV5_20_02, /* Key Falls & Door Open in Palace of Winds 12 (3F Key Switch) */
    END_9,
} LocalFlags9;

typedef enum {
    BEGIN_10,
    LV6_00_WALK, /*  Visited Room in Dark Hyrule Castle 10 (1F Entrance) */
    LV6_01_WALK, /*  Visited Room in Dark Hyrule Castle 51 (3F Northwest Key Chest) */
    LV6_02_WALK, /*  Visited Room in Dark Hyrule Castle 41 (3F Northeast Key Chest) */
    LV6_03_WALK, /*  Visited Room in Dark Hyrule Castle 48 (3F Southwest Key Chest) */
    LV6_04_WALK, /*  Visited Room in Dark Hyrule Castle 45 (3F Southeast Key Chest) */
    LV6_05_WALK, /*  Visited Room in Dark Hyrule Castle 53 (3F Vaati Keaton Hallway) */
    LV6_06_WALK, /*  Visited Room in Dark Hyrule Castle 54 (3F Vaati Triple Darknuts) */
    LV6_07_WALK, /*  Visited Room in Dark Hyrule Castle 50 (2F Northwest Corner) */
    LV6_08_WALK, /*  Visited Room in Dark Hyrule Castle 49 (2F Northwest Eye Switches) */
    LV6_09_WALK, /*  Visited Room in Dark Hyrule Castle 52 (2F Boss Key) */
    LV6_0A_WALK, /*  Visited Room in Dark Hyrule Castle 37 (2F North Darknut) */
    LV6_0B_WALK, /*  Visited Room in Dark Hyrule Castle 40 (2F Northeast Ghini) */
    LV6_0C_WALK, /*  Visited Room in Dark Hyrule Castle 39 (2F Northeast Firebar) */
    LV6_0D_WALK, /*  Visited Room in Dark Hyrule Castle 29 (2F Northeast Corner) */
    LV6_0E_WALK, /*  Visited Room in Dark Hyrule Castle 35 (2F Center Northwest) */
    LV6_0F_WALK, /*  Visited Room in Dark Hyrule Castle 36 (2F Center North, Sparks) */
    LV6_10_WALK, /*  Visited Room in Dark Hyrule Castle 38 (2F Center Northeast) */
    LV6_11_WALK,
    LV6_12_WALK, /*  Visited Room in Dark Hyrule Castle 30/34 (2F Center East/Center West) */
    LV6_13_WALK, /*  Visited Room in Dark Hyrule Castle 33 (2F Center Southwest) */
    LV6_14_WALK, /*  Visited Room in Dark Hyrule Castle 32 (2F Center South, Boss Door) */
    LV6_15_WALK, /*  Visited Room in Dark Hyrule Castle 42 (2F Center Southeast) */
    LV6_16_WALK, /*  Visited Room in Dark Hyrule Castle 46 (2F Southwest Floortiles) */
    LV6_17_WALK, /*  Visited Room in Dark Hyrule Castle 31 (2F South Entrance) */
    LV6_18_WALK, /*  Visited Room in Dark Hyrule Castle 43 (2F Southeast Clone Switches) */
    LV6_19_WALK, /*  Visited Room in Dark Hyrule Castle 48 (2F Southwest Corner) */
    LV6_1A_WALK, /*  Visited Room in Dark Hyrule Castle 47 (2F Southwest Ghini) */
    LV6_1B_WALK,
    LV6_1C_WALK, /*  Visited Room in Dark Hyrule Castle 1 (B1 Entrance to Garden) */
    LV6_1D_WALK, /*  Visited Room in Dark Hyrule Castle 44 (2F Southeast Corner) */
    LV6_1E_WALK, /*  Visited Room in Dark Hyrule Castle (1F Northwest Gibdo Corner) */
    LV6_1F_WALK, /*  Visited Room in Dark Hyrule Castle 24 (1F Throne Room) */
    LV6_20_WALK, /*  Visited Room in Dark Hyrule Castle 27 (1F Compass Room) */
    LV6_21_WALK, /*  Visited Room in Dark Hyrule Castle 28 (1F Stairs to 2F) */
    LV6_22_WALK, /*  Visited Room in Dark Hyrule Castle 23 (1F Entrance to Throne Room) */
    LV6_23_WALK, /*  Visited Room in Dark Hyrule Castle 14 (1F Center Northwest) */
    LV6_24_WALK, /*  Visited Room in Dark Hyrule Castle 15 (1F Center North) */
    LV6_25_WALK, /*  Visited Room in Dark Hyrule Castle 16 (1F Center Northeast) */
    LV6_26_WALK, /*  Visited Room in Dark Hyrule Castle 13 (1F Center West) */
    LV6_27_WALK, /*  Visited Room in Dark Hyrule Castle 17 (1F Center East) */
    LV6_28_WALK, /*  Visited Room in Dark Hyrule Castle 12 (1F Center Southwest) */
    LV6_29_WALK, /*  Visited Room in Dark Hyrule Castle 11 (1F Center South) */
    LV6_2A_WALK, /*  Visited Room in Dark Hyrule Castle 18 (1F Center Southeast) */
    LV6_2B_WALK, /*  Visited Room in Dark Hyrule Castle (1F Pot Corner) */
    LV6_2C_WALK, /*  Visited Room in Dark Hyrule Castle (1F Southeast Gibdo Corner) */
    LV6_2D_WALK, /*  Visited Room in Dark Hyrule Castle 25 (B1 Dark Hall West) */
    LV6_2E_WALK, /*  Visited Room in Dark Hyrule Castle 26 (B1 Dark Hall East) */
    LV6_2F_WALK, /*  Visited Room in Dark Hyrule Castle 22 (B1 North Stairs) */
    LV6_30_WALK, /*  Visited Room in Dark Hyrule Castle 4 (B1 Center Northwest, Stairs to B2) */
    LV6_31_WALK, /*  Visited Room in Dark Hyrule Castle 5 (B1 Center North, Minish Portal) */
    LV6_32_WALK, /*  Visited Room in Dark Hyrule Castle 21 (B1 Center Northeast, Keatons) */
    LV6_33_WALK, /*  Visited Room in Dark Hyrule Castle 3 (B1 Center West, Firebars) */
    LV6_34_WALK, /*  Visited Room in Dark Hyrule Castle 20 (B1 Center East, Cannons) */
    LV6_35_WALK, /*  Visited Room in Dark Hyrule Castle 2 (B1 Center Southwest) */
    LV6_36_WALK, /*  Visited Room in Dark Hyrule Castle 19 (B1 Center East) */
    LV6_37_WALK, /*  Visited Room in Dark Hyrule Castle 9 (B1 South Stairs) */
    LV6_38_WALK, /*  Visited Room in Dark Hyrule Castle 7 (B2 Prison West) */
    LV6_39_WALK, /*  Visited Room in Dark Hyrule Castle 8 (B2 Prison East) */
    LV6_3A_WALK, /*  Visited Room in Dark Hyrule Castle 6 (B2 Prison Southwest) */
    LV6_3B_WALK,
    LV6_00_00,       /* Locked Door Open in Dark Hyrule Castle 10 (1F Entrance) */
    LV6_01_T0,       /* Small Key Chest Open in Dark Hyrule Castle 51 (3F Northwest Key Chest) */
    LV6_02_T0,       /* Small Key Chest Open in Dark Hyrule Castle 41 (3F Northeast Key Chest) */
    LV6_03_T0,       /* Small Key Chest Open in Dark Hyrule Castle 48 (3F Southwest Key Chest) */
    LV6_04_T0,       /* Small Key Chest Open in Dark Hyrule Castle 45 (3F Southeast Key Chest) */
    LV6_07_00,       /* Hit Door Button in Dark Hyrule Castle 50 (2F Northwest Corner) */
    LV6_09_T0,       /* Boss Key Chest Open in Dark Hyrule Castle 52 (2F Boss Key) */
    LV6_09_KB0,      /* Opened Top Key Block in Dark Hyrule Castle 52 (2F Boss Key) */
    LV6_09_KB1,      /* Opened Top Middle Key Block in Dark Hyrule Castle 52 (2F Boss Key) */
    LV6_09_KB2,      /* Opened Bottom Middle Key Block in Dark Hyrule Castle 52 (2F Boss Key) */
    LV6_09_KB3,      /* Opened Bottom Key Block in Dark Hyrule Castle 52 (2F Boss Key) */
    LV6_0a_01,       /* Defeated Darknut in Dark Hyrule Castle 37 (2F North Darknut) */
    LV6_0b_00,       /* Defeated Ghini in Dark Hyrule Castle 40 (2F Northeast Ghini) */
    LV6_0c_00,       /* All Torches Lit in Dark Hyrule Castle 39 (2F Northeast Firebar) */
    LV6_0c_01,       /* Door Open in Dark Hyrule Castle 39 (2F Northeast Firebar) */
    LV6_0e_00,       /* Door Open & Camera Moves in Dark Hyrule Castle 35 (2F Center Northwest) */
    LV6_10_00,       /* Doors Open & Camera Moves in Dark Hyrule Castle 38 (2F Center Northeast) */
    LV6_11_00,       /* Hit Left Switch in Dark Hyrule Castle 34 (2F Center West) */
    LV6_11_01,       /* Hit Right Switch in Dark Hyrule Castle 34 (2F Center West) */
    LV6_11_B0,       /* Blew up left block in Dark Hyrule Castle 34 (2F Center West) */
    LV6_11_B1,       /* Blew up middle block in Dark Hyrule Castle 34 (2F Center West) */
    LV6_11_B2,       /* Blew up right block in Dark Hyrule Castle 34 (2F Center West) */
    LV6_13_00,       /* Door Open & Camera Moves in Dark Hyrule Castle 33 (2F Center Southwest) */
    LV6_14_00,       /* Defeated Ball and Chain Soldiers in Dark Hyrule Castle 32 (2F Center South, Boss Door) */
    LV6_14_BOSSDOOR, /* Boss Door Open in Dark Hyrule Castle 32 (2F Center South, Boss Door) */
    LV6_15_00,       /* Door Open & Camera Moves in Dark Hyrule Castle 42 (2F Center Southeast) */
    LV6_16_00,       /* Door Open in Dark Hyrule Castle 46 (2F Southwest Floortiles) */
    LV6_17_00,       /* Hit Switches in Dark Hyrule Castle 31 (2F South Entrance) */
    LV6_17_01,       /* Door Open in Dark Hyrule Castle 31 (2F South Entrance) */
    LV6_18_00,       /* Hit Switches in Dark Hyrule Castle 43 (2F Southeast Clone Switches) */
    LV6_1a_00,       /* Defeated Ghini in Dark Hyrule Castle 47 (2F Southwest Ghini) */
    LV6_1c_CAP_0,    /* Ezlo talks about Dark Hyrule Castle in Dark Hyrule Castle 1 (B1 Entrance to Garden) */
    LV6_1d_00,       /* Hit Door Button in Dark Hyrule Castle 44 (2F Southeast Corner) */
    LV6_1f_00,       /* Defeated Darknut in Dark Hyrule Castle 24 (1F Throne Room) */
    LV6_20_T0,       /* Compass Chest Open in Dark Hyrule Castle, Compass Room */
    LV6_24_00,       /* Tile Puzzle Complete in Dark Hyrule Castle 15 (1F Center North) */
    LV6_26_00,       /* Cannons Destroyed in Dark Hyrule Castle 12 (1F Center West) */
    LV6_26_01,       /* Pillars Down in Dark Hyrule Castle 12 (1F Center West) */
    LV6_26_CAP_0,    /* Ezlo talks about cannons in Dark Hyrule Castle 12 (1F Center West) */
    LV6_27_00,       /* Small Key Chest Appeared in Dark Hyrule Castle 17 (1F Center East) */
    LV6_27_T0,       /* Small Key Chest Open in Dark Hyrule Castle 17 (1F Center East) */
    LV6_30_00,       /* Blew up wall in Dark Hyrule Castle 4 (B1 Stairs to B2) */
    LV6_32_00,       /* Blew up wall in Dark Hyrule Castle 21 (B1 Center Northeast, Keatons) */
    LV6_34_00,       /* Cannons Destroyed in Dark Hyrule Castle 20 (B1 Center East) */
    LV6_34_01,       /* Pillars Down in Dark Hyrule Castle 20 (B1 Center East) */
    LV6_35_00,       /* Locked Door Open in Dark Hyrule Castle 2 (B1 Center Southwest) */
    LV6_37_T0,       /* Map Chest Open in Dark Hyrule Castle 9 (B1 South Stairs) */
    LV6_39_00,
    LV6_39_01, /* Hit Button in Dark Hyrule Castle 8 (B2 Prison East) */
    LV6_39_02,
    LV6_1f_CHAIR_L, /* Moved Throne in Dark Hyrule Castle 24 (1F Throne Room) */
    LV6_1f_CHAIR_R,
    LV6_1d_KEYGET, /* Obtained Small Key from Daltus in Dark Hyrule Castle 8 (B2 Prison East) */
    LV6_1b_TAREMAKU,
    LV6SOTO_01_KAIJO, /* Soldier moves out of the way in Dark Hyrule Castle, Garden to Sanctuary */
    LV6_SEKIKA_END,
    LV6_GUFUU1_FIGURE,  /* Entered Vaati 1 boss room in Dark Hyrule Castle 54 (3F Vaati Triple Darknuts) */
    LV6_GUFUU2_FIGURE,  /* Auto walk after defeating Vaati? in Dark Hyrule Castle 54 (3F Vaati Triple Darknuts) */
    LV6_GUFUU1_GISHIKI, /* Falling in pit in Dark Hyrule Castle 54 (3F Vaati Triple Darknuts) */
    LV6_GUFUU1_DEMO,    /* Started Vaati 1? in Dark Hyrule Castle 54 (3F Vaati Triple Darknuts) */
    LV6_ZELDA_DISCURSE, /* Transition to castle escape start in Dark Hyrule Castle (Zelda) */
    LV6_00_ESCAPE,      /* Ezlo talks about entrance being blocked in Dark Hyrule Castle 10 (1F Entrance) */
    LV6_GUFUU2_DEAD,    /* Defeated Vaati 2? in Dark Hyrule Castle Boss (Vaati 2) */
    LV6_KANE_START,     /* Ezlo talks about bell in Dark Hyrule Castle Boss (Ball & Chain Soldier) */
    LV6_KANE_1ST,       /* Ezlo talks about bell again in Dark Hyrule Castle 53 (3F Vaati Keaton Hallway) */
    LV6_KANE_2ND,       /* Ezlo talks about bell yet again in Dark Hyrule Castle 54 (3F Vaati Triple Darknuts) */
    LV6_SOTO_ENDING,    /* Warped back to garden? in Dark Hyrule Castle Boss (Vaati 3) */
    LV6_08_00,          /* Hit Eye Switches in Dark Hyrule Castle 49 (2F Northwest Eye Switches) */
    LV6_39_03,          /* Prison Doors Open in Dark Hyrule Castle 8 (B2 Prison East) */
    LV6_SOTO_06_00,     /* Hit East Bridge Switch in Dark Hyrule Castle Outside 2F South */
    LV6_SOTO_06_01,     /* Hit West Bridge Switch in Dark Hyrule Castle Outside 2F South */
    LV6_0A_CAP_0,
    LV6SOTO_01_CAP_0, /* Ezlo talks about frozen people in Dark Hyrule Castle, Garden to Sanctuary */
    LV6_0a_00,        /* Doors Open & Blue Portal Activated in Dark Hyrule Castle 37 (2F North Darknut) */
    LV6_0b_01,        /* Door Open in Dark Hyrule Castle 40 (2F Northeast Ghini) */
    LV6_0e_01,        /* Big Door Open in Dark Hyrule Castle 35 (2F Center Northwest) */
    LV6_10_01,        /* Doors Open in Dark Hyrule Castle 38 (2F Center Northeast) */
    LV6_13_01,        /* Big Door Open in Dark Hyrule Castle 33 (2F Center Southwest) */
    LV6_14_01,        /* Doors Open & Red Portal Activated in Dark Hyrule Castle 32 (2F Center South, Boss Door) */
    LV6_15_01,        /* Big Door Open in Dark Hyrule Castle 42 (2F Center Southeast) */
    LV6_1a_01,        /* Door Open in Dark Hyrule Castle 47 (2F Southwest Ghini) */
    LV6_1f_01,        /* Doors Open in Dark Hyrule Castle 24 (1F Throne Room) */
    LV6_39_04,        /* Camera moves to middle in Dark Hyrule Castle 8 (B2 Prison East) */
    LV6_17_02,        /* Camera moves to door in Dark Hyrule Castle 31 (2F South Entrance) */
    LV6_18_01,        /* Door Open in Dark Hyrule Castle 43 (2F Southeast Clone Switches) */
    LV6_08_01,        /* Door Open in Dark Hyrule Castle 49 (2F Northwest Eye Switches) */
    LV6_SOTO_01_00,   /* Unfroze Minister Potho in Dark Hyrule Castle, Garden to Sanctuary */
    LV6_SOTO_01_01,   /* Unfroze Left Soldier in Dark Hyrule Castle, Garden to Sanctuary */
    LV6_SOTO_01_02,   /* Unfroze Bottom Soldier in Dark Hyrule Castle, Garden to Sanctuary */
    LV6_39_KING,      /* Unfroze King Daltus in Dark Hyrule Castle 8 (B2 Prison East) */
    END_10,
} LocalFlags10;

typedef enum {
    BEGIN_11,
    END_11,
} LocalFlags11;

typedef enum {
    BEGIN_12,
    END_12,
} LocalFlags12;

#endif // FLAGS_H
