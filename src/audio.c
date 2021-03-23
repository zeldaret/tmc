#include "global.h"
#include "main.h"
#include "gba/m4a.h"
#include "audio.h"
#include "structures.h"

extern void sub_080A35A0(u32);
extern void sub_080A35C8(void);
extern void sub_080A353C(u32);
extern void sub_080A3234(u32);
extern void sub_080A35B4(u32);

#define IS_BGM(song) (song) - 1 <= NUM_BGM - 1
#define IS_SFX(song) (song) - 1 > NUM_BGM - 1

void SoundReq(Sound sound) {
    u32 song;
    struct_02021EE0* ptr;
    if (gMain.field_0x7)
        return;
    ptr = &gUnk_02021EE0;
    song = sound & 0xffff;
    switch (sound & 0xffff0000) {
        case SONG_STOP_ALL:
            ptr->currentBgm = 0;
            m4aMPlayAllStop();
            return;
        case SONG_VOL_ZERO:
            sub_080A3234(0);
            return;
        case SONG_VOL_RESET_ALL:
            sub_080A35C8();
            ptr->unk_12 = 0x100;
            sub_080A353C(ptr->currentBgm);
            return;
        case SONG_VOL_FADE_OUT:
            sub_080A35B4(ptr->currentBgm);
            return;
        case SONG_UNK_9:
            if (song == 0)
                song = ptr->currentBgm;
            if (IS_SFX(song))
                return;
            ptr->currentBgm = song;
            m4aSongNumStart(song);
            sub_080A35A0(song);
            return;
        case SONG_UNK_A:
            if (IS_SFX(song))
                return;
            ptr->currentBgm = song;
            m4aSongNumStartOrContinue(song);
            sub_080A35A0(song);
            return;
        case SONG_UNK_C:
            m4aMPlayTempoControl(gMPlayTable[gSongTable[ptr->currentBgm].ms].info, song);
            return;
        case SONG_VSYNC_OFF:
            m4aMPlayAllStop();
            m4aSoundVSyncOff();
            return;
        case SONG_STOP:
            if (ptr->currentBgm == 0)
                return;
            m4aSongNumStop(ptr->currentBgm);
            return;
        case SONG_VSYNC_ON:
            m4aSoundVSyncOn();
        case SONG_UNK_7:
            if (ptr->currentBgm == 0)
                return;
            m4aSongNumStartOrContinue(ptr->currentBgm);
            sub_080A353C(ptr->currentBgm);
            return;
        case SONG_VOL_RESET:
            if (IS_SFX(song))
                return;
            ptr->currentBgm = song;
            m4aSongNumStartOrContinue(song);
            sub_080A35C8();
            sub_080A353C(song);
            return;
        case SONG_VOL_CHAN1_SILENT:
            ptr->unk_10 = 0;
            return;
        case SONG_RESET_UNK:
            ptr->unk_10 = 0;
            ptr->unk_02 = 1;
            return;
        case SONG_VOL_CHAN1_RESET:
            ptr->unk_10 = 0x100;
            return;
        case SONG_UNK_F:
            sub_080A35C8();
            return;
        case SONG_UNK_11:
            ptr->currentBgm = 0;
            return;
        default:
            if (song != 0) {
                if (IS_BGM(song)) {
                    ptr->currentBgm = song;
                    m4aSongNumStart(song);
                    sub_080A35C8();
                } else {
                    m4aSongNumStart(song);
                }
                sub_080A353C(song);
            }
            return;
    }
}

extern const SongHeader song_08DCC48C;
extern const SongHeader bgmCastleTournament;
extern const SongHeader bgmVaatiMotif;
extern const SongHeader bgmTitleScreen;
extern const SongHeader bgmCastleMotif;
extern const SongHeader bgmElementGet;
extern const SongHeader bgmFairyFountain;
extern const SongHeader bgmFileSelect;
extern const SongHeader bgmIntorCutscene;
extern const SongHeader bgmCredits;
extern const SongHeader bgmGameover;
extern const SongHeader bgmSavingZelda;
extern const SongHeader bgmLttpTitle;
extern const SongHeader bgmVaatiTheme;
extern const SongHeader bgmEzloTheme;
extern const SongHeader bgmStory;
extern const SongHeader bgmFestivalApproach;
extern const SongHeader bgmBeatVaati;
extern const SongHeader bgmUnused;
extern const SongHeader bgmBeanstalk;
extern const SongHeader bgmHouse;
extern const SongHeader bgmCuccoMinigame;
extern const SongHeader bgmSyrupTheme;
extern const SongHeader bgmDungeon;
extern const SongHeader bgmElementTheme;
extern const SongHeader bgmHyruleField;
extern const SongHeader bgmHyruleCastle;
extern const SongHeader bgmHyruleCastleNointro;
extern const SongHeader bgmMinishVillage;
extern const SongHeader bgmMinishWoods;
extern const SongHeader bgmCrenelStorm;
extern const SongHeader bgmCastorWilds;
extern const SongHeader bgmHyruleTown;
extern const SongHeader bgmRoyalValley;
extern const SongHeader bgmCloudTops;
extern const SongHeader bgmDarkHyruleCastle;
extern const SongHeader bgmSecretCastleEntrance;
extern const SongHeader bmgDeepwoodShrine;
extern const SongHeader bgmCaveOfFlames;
extern const SongHeader bgmFortressOfWinds;
extern const SongHeader bgmTempleOfDroplets;
extern const SongHeader bgmPalaceOfWinds;
extern const SongHeader bgmEzloStory;
extern const SongHeader bgmRoyalCrypt;
extern const SongHeader bgmElementalSanctuary;
extern const SongHeader bgmFightTheme;
extern const SongHeader bgmBossTheme;
extern const SongHeader bgmVaatiReborn;
extern const SongHeader bgmVaatiTransfigured;
extern const SongHeader bgmCastleCollapse;
extern const SongHeader bgmVaatiWrath;
extern const SongHeader bgmFightTheme2;
extern const SongHeader bgmDiggingCave;
extern const SongHeader bgmSwiftbladeDojo;
extern const SongHeader bgmMinishCap;
extern const SongHeader bgmMtCrenel;
extern const SongHeader bgmPicoriFestival;
extern const SongHeader bgmLostWoods;
extern const SongHeader bgmFairyFountain2;
extern const SongHeader bgmWindRuins;
extern const SongHeader bgmLearnScroll;
extern const SongHeader bgmEzloGet;
extern const SongHeader sfxBeep;
extern const SongHeader sfxTextboxOpen;
extern const SongHeader sfxTextboxClose;
extern const SongHeader sfxTextboxNext;
extern const SongHeader sfxTextboxSwap;
extern const SongHeader sfxTextboxChoice;
extern const SongHeader sfxTextboxSelect;
extern const SongHeader sfx6B;
extern const SongHeader sfxMenuCancel;
extern const SongHeader sfxMenuError;
extern const SongHeader sfxRupeeBounce;
extern const SongHeader sfxRupeeGet;
extern const SongHeader sfxHeartBounce;
extern const SongHeader sfxHeartGet;
extern const SongHeader sfxSecret;
extern const SongHeader sfxSecretBig;
extern const SongHeader sfxMetalClink;
extern const SongHeader sfxPlyVo1;
extern const SongHeader sfxPlyVo2;
extern const SongHeader sfxPlyVo3;
extern const SongHeader sfxPlyVo4;
extern const SongHeader sfxPlyVo5;
extern const SongHeader sfxPlyVo6;
extern const SongHeader sfxPlyVo7;
extern const SongHeader sfxPlyJump;
extern const SongHeader sfxPlyLand;
extern const SongHeader sfx7E;
extern const SongHeader sfxPlyLift;
extern const SongHeader sfx80;
extern const SongHeader sfx81;
extern const SongHeader sfx82;
extern const SongHeader sfxWaterWalk;
extern const SongHeader sfxWaterSplash;
extern const SongHeader sfxFallHole;
extern const SongHeader sfx86;
extern const SongHeader sfxPlyDie;
extern const SongHeader sfx88;
extern const SongHeader sfxBarrelRelease;
extern const SongHeader sfxBarrelEnter;
extern const SongHeader sfxBarrelRoll;
extern const SongHeader sfxBarrelRollStop;
extern const SongHeader sfxVoEzlo1;
extern const SongHeader sfxVoEzlo2;
extern const SongHeader sfxVoEzlo3;
extern const SongHeader sfxVoEzlo4;
extern const SongHeader sfxVoEzlo5;
extern const SongHeader sfxVoEzlo6;
extern const SongHeader sfxVoEzlo7;
extern const SongHeader sfxVoZelda1;
extern const SongHeader sfxVoZelda2;
extern const SongHeader sfxVoZelda3;
extern const SongHeader sfxVoZelda4;
extern const SongHeader sfxVoZelda5;
extern const SongHeader sfxVoZelda6;
extern const SongHeader sfxVoZelda7;
extern const SongHeader sfx9B;
extern const SongHeader sfx9C;
extern const SongHeader sfx9D;
extern const SongHeader sfx9E;
extern const SongHeader sfx9F;
extern const SongHeader sfxA0;
extern const SongHeader sfxVoTingle1;
extern const SongHeader sfxVoTingle2;
extern const SongHeader sfxVoKing1;
extern const SongHeader sfxVoKing2;
extern const SongHeader sfxVoKing3;
extern const SongHeader sfxVoKing4;
extern const SongHeader sfxVoKing5;
extern const SongHeader sfxA8;
extern const SongHeader sfxA9;
extern const SongHeader sfxAA;
extern const SongHeader sfxSpiritsRelease;
extern const SongHeader sfxAC;
extern const SongHeader sfxVoBeedle;
extern const SongHeader sfxAE;
extern const SongHeader sfxAF;
extern const SongHeader sfxB0;
extern const SongHeader sfxMinish1;
extern const SongHeader sfxMinish2;
extern const SongHeader sfxMinish3;
extern const SongHeader sfxMinish4;
extern const SongHeader sfxB5;
extern const SongHeader sfxB6;
extern const SongHeader sfxB7;
extern const SongHeader sfxB8;
extern const SongHeader sfxB9;
extern const SongHeader sfxBA;
extern const SongHeader sfxBB;
extern const SongHeader sfxBC;
extern const SongHeader sfxBD;
extern const SongHeader sfxBE;
extern const SongHeader sfxBF;
extern const SongHeader sfxC0;
extern const SongHeader sfxC1;
extern const SongHeader sfxC2;
extern const SongHeader sfxC3;
extern const SongHeader sfxC4;
extern const SongHeader sfxC5;
extern const SongHeader sfxC6;
extern const SongHeader sfxC7;
extern const SongHeader sfxC8;
extern const SongHeader sfxC9;
extern const SongHeader sfxCA;
extern const SongHeader sfxCB;
extern const SongHeader sfxRemSleep;
extern const SongHeader sfxTaskComplete;
extern const SongHeader sfxKeyAppear;
extern const SongHeader sfxCF;
extern const SongHeader sfxD0;
extern const SongHeader sfxVoDog;
extern const SongHeader sfxVoCat;
extern const SongHeader sfxVoEpona;
extern const SongHeader sfxVoCow;
extern const SongHeader sfxVoCuccoCall;
extern const SongHeader sfxVoCheep;
extern const SongHeader sfxItemSwordCharge;
extern const SongHeader sfxItemSwordChargeFinish;
extern const SongHeader sfxD9;
extern const SongHeader sfxDA;
extern const SongHeader sfxVoSturgeon;
extern const SongHeader sfxHammer1;
extern const SongHeader sfxHammer2;
extern const SongHeader sfxHammer3;
extern const SongHeader sfxHammer4;
extern const SongHeader sfxHammer5;
extern const SongHeader sfxHammer6;
extern const SongHeader sfxCuccoMinigameBell;
extern const SongHeader sfxE3;
extern const SongHeader sfxE4;
extern const SongHeader sfxButtonDepress;
extern const SongHeader sfxThudHeavy;
extern const SongHeader sfxWind1;
extern const SongHeader sfxWind2;
extern const SongHeader sfxWind3;
extern const SongHeader sfxEA;
extern const SongHeader sfxEB;
extern const SongHeader sfxEC;
extern const SongHeader sfxED;
extern const SongHeader sfxEE;
extern const SongHeader sfxEF;
extern const SongHeader sfxF0;
extern const SongHeader sfxF1;
extern const SongHeader sfxF2;
extern const SongHeader sfxF3;
extern const SongHeader sfxSummon;
extern const SongHeader sfxF5;
extern const SongHeader sfxEvaporate;
extern const SongHeader sfxApparate;
extern const SongHeader sfxF8;
extern const SongHeader sfxTeleporter;
extern const SongHeader sfxFA;
extern const SongHeader sfxFB;
extern const SongHeader sfxFC;
extern const SongHeader sfxItemBombExplode;
extern const SongHeader sfxHit;
extern const SongHeader sfxFF;
extern const SongHeader sfx100;
extern const SongHeader sfx101;
extern const SongHeader sfx102;
extern const SongHeader sfx103;
extern const SongHeader sfx104;
extern const SongHeader sfx105;
extern const SongHeader sfx106;
extern const SongHeader sfx107;
extern const SongHeader sfx108;
extern const SongHeader sfx109;
extern const SongHeader sfx10A;
extern const SongHeader sfx10B;
extern const SongHeader sfx10C;
extern const SongHeader sfx10D;
extern const SongHeader sfx10E;
extern const SongHeader sfx10F;
extern const SongHeader sfx110;
extern const SongHeader sfx111;
extern const SongHeader sfx112;
extern const SongHeader sfx113;
extern const SongHeader sfx114;
extern const SongHeader sfx115;
extern const SongHeader sfx116;
extern const SongHeader sfx117;
extern const SongHeader sfxItemShieldBounce;
extern const SongHeader sfxItemGlovesKnockback;
extern const SongHeader sfxEmArmosOn;
extern const SongHeader sfx11B;
extern const SongHeader sfx11C;
extern const SongHeader sfx11D;
extern const SongHeader sfxEmMoblinSpear;
extern const SongHeader sfxLowHealth;
extern const SongHeader sfxChargingUp;
extern const SongHeader sfxStairs;
extern const SongHeader sfx122;
extern const SongHeader sfx123;
extern const SongHeader sfx124;
extern const SongHeader sfx125;
extern const SongHeader sfx126;
extern const SongHeader sfxBossHit;
extern const SongHeader sfxBossDie;
extern const SongHeader sfxBossExplode;
extern const SongHeader sfx12A;
extern const SongHeader sfx12B;
extern const SongHeader sfx12C;
extern const SongHeader sfx12D;
extern const SongHeader sfx12E;
extern const SongHeader sfx12F;
extern const SongHeader sfx130;
extern const SongHeader sfx131;
extern const SongHeader sfx132;
extern const SongHeader sfx133;
extern const SongHeader sfx134;
extern const SongHeader sfx135;
extern const SongHeader sfx136;
extern const SongHeader sfx137;
extern const SongHeader sfx138;
extern const SongHeader sfx139;
extern const SongHeader sfx13A;
extern const SongHeader sfx13B;
extern const SongHeader sfx13C;
extern const SongHeader sfxItemLanternOn;
extern const SongHeader sfxItemLanternOff;
extern const SongHeader sfxItemSwordBeam;
extern const SongHeader sfx140;
extern const SongHeader sfxHeartContainerSpawn;
extern const SongHeader sfxSparkles;
extern const SongHeader sfx143;
extern const SongHeader sfx144;
extern const SongHeader sfx145;
extern const SongHeader sfx146;
extern const SongHeader sfx147;
extern const SongHeader sfx148;
extern const SongHeader sfx149;
extern const SongHeader sfx14A;
extern const SongHeader sfx14B;
extern const SongHeader sfx14C;
extern const SongHeader sfx14D;
extern const SongHeader sfx14E;
extern const SongHeader sfx14F;
extern const SongHeader sfx150;
extern const SongHeader sfx151;
extern const SongHeader sfx152;
extern const SongHeader sfx153;
extern const SongHeader sfx154;
extern const SongHeader sfx155;
extern const SongHeader sfx156;
extern const SongHeader sfx157;
extern const SongHeader sfx158;
extern const SongHeader sfx159;
extern const SongHeader sfx15A;
extern const SongHeader sfx15B;
extern const SongHeader sfx15C;
extern const SongHeader sfx15D;
extern const SongHeader sfx15E;
extern const SongHeader sfx15F;
extern const SongHeader sfx160;
extern const SongHeader sfx161;
extern const SongHeader sfx162;
extern const SongHeader sfx163;
extern const SongHeader sfx164;
extern const SongHeader sfx165;
extern const SongHeader sfx166;
extern const SongHeader sfx167;
extern const SongHeader sfx168;
extern const SongHeader sfx169;
extern const SongHeader sfx16A;
extern const SongHeader sfx16B;
extern const SongHeader sfx16C;
extern const SongHeader sfx16D;
extern const SongHeader sfx16E;
extern const SongHeader sfxPlyShrinking;
extern const SongHeader sfxPlyGrow;
extern const SongHeader sfx171;
extern const SongHeader sfx172;
extern const SongHeader sfxEzloUi;
extern const SongHeader sfx174;
extern const SongHeader sfx175;
extern const SongHeader sfx176;
extern const SongHeader sfx177;
extern const SongHeader sfx178;
extern const SongHeader sfx179;
extern const SongHeader sfx17A;
extern const SongHeader sfxLavaTitleStep;
extern const SongHeader sfxLavaTitleWobble;
extern const SongHeader sfxLavaTitleSink;
extern const SongHeader sfxLavaTitleFlip;
extern const SongHeader sfxLavaTitleLand;
extern const SongHeader sfx180;
extern const SongHeader sfx181;
extern const SongHeader sfx182;
extern const SongHeader sfx183;
extern const SongHeader sfx184;
extern const SongHeader sfx185;
extern const SongHeader sfx186;
extern const SongHeader sfxStairsAscend;
extern const SongHeader sfxStairsDescend;
extern const SongHeader sfx189;
extern const SongHeader sfx18A;
extern const SongHeader sfx18B;
extern const SongHeader sfx18C;
extern const SongHeader sfx18D;
extern const SongHeader sfx18E;
extern const SongHeader sfx18F;
extern const SongHeader sfx190;
extern const SongHeader sfx191;
extern const SongHeader sfx192;
extern const SongHeader sfx193;
extern const SongHeader sfx194;
extern const SongHeader sfx195;
extern const SongHeader sfx196;
extern const SongHeader sfx197;
extern const SongHeader sfx198;
extern const SongHeader sfx199;
extern const SongHeader sfx19A;
extern const SongHeader sfx19B;
extern const SongHeader sfx19C;
extern const SongHeader sfx19D;
extern const SongHeader sfx19E;
extern const SongHeader sfx19F;
extern const SongHeader sfx1A0;
extern const SongHeader sfx1A1;
extern const SongHeader sfx1A2;
extern const SongHeader sfx1A3;
extern const SongHeader sfx1A4;
extern const SongHeader sfx1A5;
extern const SongHeader sfx1A6;
extern const SongHeader sfx1A7;
extern const SongHeader sfx1A8;
extern const SongHeader sfx1A9;
extern const SongHeader sfx1AA;
extern const SongHeader sfx1AB;
extern const SongHeader sfx1AC;
extern const SongHeader sfx1AD;
extern const SongHeader sfx1AE;
extern const SongHeader sfx1AF;
extern const SongHeader sfx1B0;
extern const SongHeader sfxIceBlockSlide;
extern const SongHeader sfxIceBlockStop;
extern const SongHeader sfxIceBlockMelt;
extern const SongHeader sfx1B4;
extern const SongHeader sfx1B5;
extern const SongHeader sfx1B6;
extern const SongHeader sfxVoGoron1;
extern const SongHeader sfxVoGoron2;
extern const SongHeader sfxVoGoron3;
extern const SongHeader sfxVoGoron4;
extern const SongHeader sfxEmDekuscrubHit;
extern const SongHeader sfx1BC;
extern const SongHeader sfx1BD;
extern const SongHeader sfx1BE;
extern const SongHeader sfx1BF;
extern const SongHeader sfx1C0;
extern const SongHeader sfx1C1;
extern const SongHeader sfx1C2;
extern const SongHeader sfx1C3;
extern const SongHeader sfx1C4;
extern const SongHeader sfx1C5;
extern const SongHeader sfx1C6;
extern const SongHeader sfx1C7;
extern const SongHeader sfx1C8;
extern const SongHeader sfx1C9;
extern const SongHeader sfx1CA;
extern const SongHeader sfx1CB;
extern const SongHeader sfx1CC;
extern const SongHeader sfxElementPlace;
extern const SongHeader sfxElementFloat;
extern const SongHeader sfxElementCharge;
extern const SongHeader sfx1D0;
extern const SongHeader sfxElementInfuse;
extern const SongHeader sfx1D2;
extern const SongHeader sfx1D3;
extern const SongHeader sfx1D4;
extern const SongHeader sfx1D5;
extern const SongHeader sfxVoCucco1;
extern const SongHeader sfxVoCucco2;
extern const SongHeader sfxVoCucco3;
extern const SongHeader sfxVoCucco4;
extern const SongHeader sfxVoCucco5;
extern const SongHeader sfx1DB;
extern const SongHeader sfx1DC;
extern const SongHeader sfx1DD;
extern const SongHeader sfx1DE;
extern const SongHeader sfx1DF;
extern const SongHeader sfx1E0;
extern const SongHeader sfx1E1;
extern const SongHeader sfx1E2;
extern const SongHeader sfx1E3;
extern const SongHeader sfx1E4;
extern const SongHeader sfx1E5;
extern const SongHeader sfx1E6;
extern const SongHeader sfx1E7;
extern const SongHeader sfx1E8;
extern const SongHeader sfx1E9;
extern const SongHeader sfx1EA;
extern const SongHeader sfx1EB;
extern const SongHeader sfx1EC;
extern const SongHeader sfx1ED;
extern const SongHeader sfx1EE;
extern const SongHeader sfx1EF;
extern const SongHeader sfx1F0;
extern const SongHeader sfx1F1;
extern const SongHeader sfx1F2;
extern const SongHeader sfx1F3;
extern const SongHeader sfx1F4;
extern const SongHeader sfx1F5;
extern const SongHeader sfx1F6;
extern const SongHeader sfx1F7;
extern const SongHeader sfx1F8;
extern const SongHeader sfx1F9;
extern const SongHeader sfx1FA;
extern const SongHeader sfx1FB;
extern const SongHeader sfx1FC;
extern const SongHeader sfx1FD;
extern const SongHeader sfx1FE;
extern const SongHeader sfx1FF;
extern const SongHeader sfx200;
extern const SongHeader sfx201;
extern const SongHeader sfx202;
extern const SongHeader sfx203;
extern const SongHeader sfx204;
extern const SongHeader sfx205;
extern const SongHeader sfx206;
extern const SongHeader sfx207;
extern const SongHeader sfx208;
extern const SongHeader sfx209;
extern const SongHeader sfx20A;
extern const SongHeader sfx20B;
extern const SongHeader sfx20C;
extern const SongHeader sfx20D;
extern const SongHeader sfx20E;
extern const SongHeader sfx20F;
extern const SongHeader sfx210;
extern const SongHeader sfx211;
extern const SongHeader sfx212;
extern const SongHeader sfx213;
extern const SongHeader sfx214;
extern const SongHeader sfx215;
extern const SongHeader sfx216;
extern const SongHeader sfx217;
extern const SongHeader sfx218;
extern const SongHeader sfx219;
extern const SongHeader sfx21A;
extern const SongHeader sfx21B;
extern const SongHeader sfx21C;
extern const SongHeader sfx21D;
extern const SongHeader sfx21E;
extern const SongHeader sfx21F;
extern const SongHeader sfx220;
extern const SongHeader sfx221;

const Song gSongTable[] = {
    { &song_08DCC48C, 0x001f, 0x001f },
    { &bgmCastleTournament, 0x001f, 0x001f },
    { &bgmVaatiMotif, 0x001f, 0x001f },
    { &bgmTitleScreen, 0x001f, 0x001f },
    { &bgmCastleMotif, 0x001f, 0x001f },
    { &bgmElementGet, 0x001f, 0x001f },
    { &bgmFairyFountain, 0x001f, 0x001f },
    { &bgmFileSelect, 0x001f, 0x001f },
    { &bgmIntorCutscene, 0x001f, 0x001f },
    { &bgmCredits, 0x001f, 0x001f },
    { &bgmGameover, 0x001f, 0x001f },
    { &bgmSavingZelda, 0x001f, 0x001f },
    { &bgmLttpTitle, 0x001f, 0x001f },
    { &bgmVaatiTheme, 0x001f, 0x001f },
    { &bgmEzloTheme, 0x001f, 0x001f },
    { &bgmStory, 0x001f, 0x001f },
    { &bgmFestivalApproach, 0x001f, 0x001f },
    { &bgmBeatVaati, 0x001f, 0x001f },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmBeanstalk, 0x001f, 0x001f },
    { &bgmHouse, 0x001f, 0x001f },
    { &bgmCuccoMinigame, 0x001f, 0x001f },
    { &bgmSyrupTheme, 0x001f, 0x001f },
    { &bgmDungeon, 0x001f, 0x001f },
    { &bgmElementTheme, 0x001f, 0x001f },
    { &bgmHyruleField, 0x001f, 0x001f },
    { &bgmHyruleCastle, 0x001f, 0x001f },
    { &bgmHyruleCastleNointro, 0x001f, 0x001f },
    { &bgmMinishVillage, 0x001f, 0x001f },
    { &bgmMinishWoods, 0x001f, 0x001f },
    { &bgmCrenelStorm, 0x001f, 0x001f },
    { &bgmCastorWilds, 0x001f, 0x001f },
    { &bgmHyruleTown, 0x001f, 0x001f },
    { &bgmRoyalValley, 0x001f, 0x001f },
    { &bgmCloudTops, 0x001f, 0x001f },
    { &bgmDarkHyruleCastle, 0x001f, 0x001f },
    { &bgmSecretCastleEntrance, 0x001f, 0x001f },
    { &bmgDeepwoodShrine, 0x001f, 0x001f },
    { &bgmCaveOfFlames, 0x001f, 0x001f },
    { &bgmFortressOfWinds, 0x001f, 0x001f },
    { &bgmTempleOfDroplets, 0x001f, 0x001f },
    { &bgmPalaceOfWinds, 0x001f, 0x001f },
    { &bgmEzloStory, 0x001f, 0x001f },
    { &bgmRoyalCrypt, 0x001f, 0x001f },
    { &bgmElementalSanctuary, 0x001f, 0x001f },
    { &bgmFightTheme, 0x001f, 0x001f },
    { &bgmBossTheme, 0x001f, 0x001f },
    { &bgmVaatiReborn, 0x001f, 0x001f },
    { &bgmVaatiTransfigured, 0x001f, 0x001f },
    { &bgmCastleCollapse, 0x001f, 0x001f },
    { &bgmVaatiWrath, 0x001f, 0x001f },
    { &bgmFightTheme2, 0x001f, 0x001f },
    { &bgmDiggingCave, 0x001f, 0x001f },
    { &bgmSwiftbladeDojo, 0x001f, 0x001f },
    { &bgmMinishCap, 0x001f, 0x001f },
    { &bgmMtCrenel, 0x001f, 0x001f },
    { &bgmPicoriFestival, 0x001f, 0x001f },
    { &bgmLostWoods, 0x001f, 0x001f },
    { &bgmFairyFountain2, 0x001f, 0x001f },
    { &bgmWindRuins, 0x001f, 0x001f },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmLearnScroll, 0x001f, 0x001f },
    { &bgmEzloGet, 0x001f, 0x001f },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &bgmUnused, 0x0000, 0x0000 },
    { &sfxBeep, 0x0000, 0x0000 },
    { &sfxTextboxOpen, 0x001d, 0x001d },
    { &sfxTextboxClose, 0x001c, 0x001c },
    { &sfxTextboxNext, 0x001b, 0x001b },
    { &sfxTextboxSwap, 0x001a, 0x001a },
    { &sfxTextboxChoice, 0x0019, 0x0019 },
    { &sfxTextboxSelect, 0x0018, 0x0018 },
    { &sfx6B, 0x0017, 0x0017 },
    { &sfxMenuCancel, 0x0016, 0x0016 },
    { &sfxMenuError, 0x0015, 0x0015 },
    { &sfxRupeeBounce, 0x0014, 0x0014 },
    { &sfxRupeeGet, 0x0000, 0x0000 },
    { &sfxHeartBounce, 0x0012, 0x0012 },
    { &sfxHeartGet, 0x0000, 0x0000 },
    { &sfxSecret, 0x0003, 0x0003 },
    { &sfxSecretBig, 0x0003, 0x0003 },
    { &sfxMetalClink, 0x000e, 0x000e },
    { &sfxPlyVo1, 0x0001, 0x0001 },
    { &sfxPlyVo2, 0x0001, 0x0001 },
    { &sfxPlyVo3, 0x0001, 0x0001 },
    { &sfxPlyVo4, 0x0001, 0x0001 },
    { &sfxPlyVo5, 0x0001, 0x0001 },
    { &sfxPlyVo6, 0x0001, 0x0001 },
    { &sfxPlyVo7, 0x0001, 0x0001 },
    { &sfxPlyJump, 0x000d, 0x000d },
    { &sfxPlyLand, 0x000c, 0x000c },
    { &sfx7E, 0x000b, 0x000b },
    { &sfxPlyLift, 0x000a, 0x000a },
    { &sfx80, 0x0009, 0x0009 },
    { &sfx81, 0x0008, 0x0008 },
    { &sfx82, 0x0007, 0x0007 },
    { &sfxWaterWalk, 0x0006, 0x0006 },
    { &sfxWaterSplash, 0x0005, 0x0005 },
    { &sfxFallHole, 0x0004, 0x0004 },
    { &sfx86, 0x000f, 0x000f },
    { &sfxPlyDie, 0x001d, 0x001d },
    { &sfx88, 0x001c, 0x001c },
    { &sfxBarrelRelease, 0x001b, 0x001b },
    { &sfxBarrelEnter, 0x001a, 0x001a },
    { &sfxBarrelRoll, 0x0019, 0x0019 },
    { &sfxBarrelRollStop, 0x0018, 0x0018 },
    { &sfxVoEzlo1, 0x0002, 0x0002 },
    { &sfxVoEzlo2, 0x0002, 0x0002 },
    { &sfxVoEzlo3, 0x0002, 0x0002 },
    { &sfxVoEzlo4, 0x0002, 0x0002 },
    { &sfxVoEzlo5, 0x0002, 0x0002 },
    { &sfxVoEzlo6, 0x0002, 0x0002 },
    { &sfxVoEzlo7, 0x0002, 0x0002 },
    { &sfxVoZelda1, 0x0003, 0x0003 },
    { &sfxVoZelda2, 0x0003, 0x0003 },
    { &sfxVoZelda3, 0x0003, 0x0003 },
    { &sfxVoZelda4, 0x0003, 0x0003 },
    { &sfxVoZelda5, 0x0003, 0x0003 },
    { &sfxVoZelda6, 0x0003, 0x0003 },
    { &sfxVoZelda7, 0x0003, 0x0003 },
    { &sfx9B, 0x0004, 0x0004 },
    { &sfx9C, 0x0004, 0x0004 },
    { &sfx9D, 0x0004, 0x0004 },
    { &sfx9E, 0x0004, 0x0004 },
    { &sfx9F, 0x0004, 0x0004 },
    { &sfxA0, 0x0004, 0x0004 },
    { &sfxVoTingle1, 0x0005, 0x0005 },
    { &sfxVoTingle2, 0x0005, 0x0005 },
    { &sfxVoKing1, 0x0006, 0x0006 },
    { &sfxVoKing2, 0x0006, 0x0006 },
    { &sfxVoKing3, 0x0006, 0x0006 },
    { &sfxVoKing4, 0x0007, 0x0007 },
    { &sfxVoKing5, 0x0007, 0x0007 },
    { &sfxA8, 0x0007, 0x0007 },
    { &sfxA9, 0x0008, 0x0008 },
    { &sfxAA, 0x000a, 0x000a },
    { &sfxSpiritsRelease, 0x0009, 0x0009 },
    { &sfxAC, 0x000b, 0x000b },
    { &sfxVoBeedle, 0x000c, 0x000c },
    { &sfxAE, 0x000d, 0x000d },
    { &sfxAF, 0x000e, 0x000e },
    { &sfxB0, 0x000f, 0x000f },
    { &sfxMinish1, 0x0010, 0x0010 },
    { &sfxMinish2, 0x0011, 0x0011 },
    { &sfxMinish3, 0x0012, 0x0012 },
    { &sfxMinish4, 0x0013, 0x0013 },
    { &sfxB5, 0x0014, 0x0014 },
    { &sfxB6, 0x0015, 0x0015 },
    { &sfxB7, 0x0016, 0x0016 },
    { &sfxB8, 0x0017, 0x0017 },
    { &sfxB9, 0x0018, 0x0018 },
    { &sfxBA, 0x0019, 0x0019 },
    { &sfxBB, 0x001a, 0x001a },
    { &sfxBC, 0x001b, 0x001b },
    { &sfxBD, 0x001c, 0x001c },
    { &sfxBE, 0x001c, 0x001c },
    { &sfxBF, 0x0003, 0x0003 },
    { &sfxC0, 0x0004, 0x0004 },
    { &sfxC1, 0x0005, 0x0005 },
    { &sfxC2, 0x0006, 0x0006 },
    { &sfxC3, 0x0007, 0x0007 },
    { &sfxC4, 0x0008, 0x0008 },
    { &sfxC5, 0x0009, 0x0009 },
    { &sfxC6, 0x000a, 0x000a },
    { &sfxC7, 0x000b, 0x000b },
    { &sfxC8, 0x000c, 0x000c },
    { &sfxC9, 0x000d, 0x000d },
    { &sfxCA, 0x000e, 0x000e },
    { &sfxCB, 0x000f, 0x000f },
    { &sfxRemSleep, 0x0010, 0x0010 },
    { &sfxTaskComplete, 0x0003, 0x0003 },
    { &sfxKeyAppear, 0x0016, 0x0016 },
    { &sfxCF, 0x0011, 0x0011 },
    { &sfxD0, 0x0012, 0x0012 },
    { &sfxVoDog, 0x0013, 0x0013 },
    { &sfxVoCat, 0x0014, 0x0014 },
    { &sfxVoEpona, 0x0015, 0x0015 },
    { &sfxVoCow, 0x0016, 0x0016 },
    { &sfxVoCuccoCall, 0x0017, 0x0017 },
    { &sfxVoCheep, 0x0018, 0x0018 },
    { &sfxItemSwordCharge, 0x0015, 0x0015 },
    { &sfxItemSwordChargeFinish, 0x0014, 0x0014 },
    { &sfxD9, 0x0019, 0x0019 },
    { &sfxDA, 0x001a, 0x001a },
    { &sfxVoSturgeon, 0x001b, 0x001b },
    { &sfxHammer1, 0x0013, 0x0013 },
    { &sfxHammer2, 0x0012, 0x0012 },
    { &sfxHammer3, 0x0011, 0x0011 },
    { &sfxHammer4, 0x0010, 0x0010 },
    { &sfxHammer5, 0x000f, 0x000f },
    { &sfxHammer6, 0x000e, 0x000e },
    { &sfxCuccoMinigameBell, 0x000d, 0x000d },
    { &sfxE3, 0x000c, 0x000c },
    { &sfxE4, 0x000b, 0x000b },
    { &sfxButtonDepress, 0x000a, 0x000a },
    { &sfxThudHeavy, 0x0009, 0x0009 },
    { &sfxWind1, 0x0008, 0x0008 },
    { &sfxWind2, 0x0008, 0x0008 },
    { &sfxWind3, 0x0008, 0x0008 },
    { &sfxEA, 0x0008, 0x0008 },
    { &sfxEB, 0x0008, 0x0008 },
    { &sfxEC, 0x0008, 0x0008 },
    { &sfxED, 0x0008, 0x0008 },
    { &sfxEE, 0x0008, 0x0008 },
    { &sfxEF, 0x0007, 0x0007 },
    { &sfxF0, 0x0006, 0x0006 },
    { &sfxF1, 0x0005, 0x0005 },
    { &sfxF2, 0x0004, 0x0004 },
    { &sfxF3, 0x0003, 0x0003 },
    { &sfxSummon, 0x001d, 0x001d },
    { &sfxF5, 0x001c, 0x001c },
    { &sfxEvaporate, 0x001b, 0x001b },
    { &sfxApparate, 0x001a, 0x001a },
    { &sfxF8, 0x0019, 0x0019 },
    { &sfxTeleporter, 0x0018, 0x0018 },
    { &sfxFA, 0x0017, 0x0017 },
    { &sfxFB, 0x0016, 0x0016 },
    { &sfxFC, 0x0015, 0x0015 },
    { &sfxItemBombExplode, 0x0014, 0x0014 },
    { &sfxHit, 0x0013, 0x0013 },
    { &sfxFF, 0x0012, 0x0012 },
    { &sfx100, 0x0011, 0x0011 },
    { &sfx101, 0x0010, 0x0010 },
    { &sfx102, 0x000f, 0x000f },
    { &sfx103, 0x0000, 0x0000 },
    { &sfx104, 0x000d, 0x000d },
    { &sfx105, 0x001e, 0x001e },
    { &sfx106, 0x000b, 0x000b },
    { &sfx107, 0x000a, 0x000a },
    { &sfx108, 0x0009, 0x0009 },
    { &sfx109, 0x001e, 0x001e },
    { &sfx10A, 0x0008, 0x0008 },
    { &sfx10B, 0x0007, 0x0007 },
    { &sfx10C, 0x0006, 0x0006 },
    { &sfx10D, 0x0005, 0x0005 },
    { &sfx10E, 0x0004, 0x0004 },
    { &sfx10F, 0x0003, 0x0003 },
    { &sfx110, 0x001d, 0x001d },
    { &sfx111, 0x001c, 0x001c },
    { &sfx112, 0x001b, 0x001b },
    { &sfx113, 0x001a, 0x001a },
    { &sfx114, 0x0019, 0x0019 },
    { &sfx115, 0x0018, 0x0018 },
    { &sfx116, 0x0004, 0x0004 },
    { &sfx117, 0x0016, 0x0016 },
    { &sfxItemShieldBounce, 0x0007, 0x0007 },
    { &sfxItemGlovesKnockback, 0x0014, 0x0014 },
    { &sfxEmArmosOn, 0x0013, 0x0013 },
    { &sfx11B, 0x0012, 0x0012 },
    { &sfx11C, 0x0011, 0x0011 },
    { &sfx11D, 0x0010, 0x0010 },
    { &sfxEmMoblinSpear, 0x000f, 0x000f },
    { &sfxLowHealth, 0x000e, 0x000e },
    { &sfxChargingUp, 0x000d, 0x000d },
    { &sfxStairs, 0x000c, 0x000c },
    { &sfx122, 0x000b, 0x000b },
    { &sfx123, 0x0017, 0x0017 },
    { &sfx124, 0x0009, 0x0009 },
    { &sfx125, 0x0008, 0x0008 },
    { &sfx126, 0x0007, 0x0007 },
    { &sfxBossHit, 0x0006, 0x0006 },
    { &sfxBossDie, 0x0005, 0x0005 },
    { &sfxBossExplode, 0x0004, 0x0004 },
    { &sfx12A, 0x0003, 0x0003 },
    { &sfx12B, 0x001d, 0x001d },
    { &sfx12C, 0x001c, 0x001c },
    { &sfx12D, 0x001b, 0x001b },
    { &sfx12E, 0x001a, 0x001a },
    { &sfx12F, 0x0019, 0x0019 },
    { &sfx130, 0x0018, 0x0018 },
    { &sfx131, 0x0017, 0x0017 },
    { &sfx132, 0x0016, 0x0016 },
    { &sfx133, 0x0015, 0x0015 },
    { &sfx134, 0x0015, 0x0015 },
    { &sfx135, 0x0013, 0x0013 },
    { &sfx136, 0x0012, 0x0012 },
    { &sfx137, 0x0011, 0x0011 },
    { &sfx138, 0x0010, 0x0010 },
    { &sfx139, 0x000f, 0x000f },
    { &sfx13A, 0x000e, 0x000e },
    { &sfx13B, 0x000d, 0x000d },
    { &sfx13C, 0x000c, 0x000c },
    { &sfxItemLanternOn, 0x000b, 0x000b },
    { &sfxItemLanternOff, 0x000a, 0x000a },
    { &sfxItemSwordBeam, 0x0009, 0x0009 },
    { &sfx140, 0x0008, 0x0008 },
    { &sfxHeartContainerSpawn, 0x0007, 0x0007 },
    { &sfxSparkles, 0x0006, 0x0006 },
    { &sfx143, 0x0006, 0x0006 },
    { &sfx144, 0x0005, 0x0005 },
    { &sfx145, 0x0004, 0x0004 },
    { &sfx146, 0x0003, 0x0003 },
    { &sfx147, 0x001d, 0x001d },
    { &sfx148, 0x001c, 0x001c },
    { &sfx149, 0x001b, 0x001b },
    { &sfx14A, 0x001a, 0x001a },
    { &sfx14B, 0x0019, 0x0019 },
    { &sfx14C, 0x0012, 0x0012 },
    { &sfx14D, 0x0017, 0x0017 },
    { &sfx14E, 0x0016, 0x0016 },
    { &sfx14F, 0x0015, 0x0015 },
    { &sfx150, 0x0014, 0x0014 },
    { &sfx151, 0x0013, 0x0013 },
    { &sfx152, 0x0018, 0x0018 },
    { &sfx153, 0x0011, 0x0011 },
    { &sfx154, 0x0010, 0x0010 },
    { &sfx155, 0x000f, 0x000f },
    { &sfx156, 0x000e, 0x000e },
    { &sfx157, 0x000d, 0x000d },
    { &sfx158, 0x000c, 0x000c },
    { &sfx159, 0x000b, 0x000b },
    { &sfx15A, 0x000a, 0x000a },
    { &sfx15B, 0x0009, 0x0009 },
    { &sfx15C, 0x0008, 0x0008 },
    { &sfx15D, 0x0015, 0x0015 },
    { &sfx15E, 0x0006, 0x0006 },
    { &sfx15F, 0x0005, 0x0005 },
    { &sfx160, 0x0004, 0x0004 },
    { &sfx161, 0x001d, 0x001d },
    { &sfx162, 0x001c, 0x001c },
    { &sfx163, 0x001b, 0x001b },
    { &sfx164, 0x001a, 0x001a },
    { &sfx165, 0x0019, 0x0019 },
    { &sfx166, 0x0018, 0x0018 },
    { &sfx167, 0x0017, 0x0017 },
    { &sfx168, 0x0016, 0x0016 },
    { &sfx169, 0x0015, 0x0015 },
    { &sfx16A, 0x0014, 0x0014 },
    { &sfx16B, 0x0013, 0x0013 },
    { &sfx16C, 0x0003, 0x0003 },
    { &sfx16D, 0x0012, 0x0012 },
    { &sfx16E, 0x0011, 0x0011 },
    { &sfxPlyShrinking, 0x0010, 0x0010 },
    { &sfxPlyGrow, 0x000f, 0x000f },
    { &sfx171, 0x000e, 0x000e },
    { &sfx172, 0x000d, 0x000d },
    { &sfxEzloUi, 0x000c, 0x000c },
    { &sfx174, 0x000b, 0x000b },
    { &sfx175, 0x000a, 0x000a },
    { &sfx176, 0x0009, 0x0009 },
    { &sfx177, 0x0009, 0x0009 },
    { &sfx178, 0x0008, 0x0008 },
    { &sfx179, 0x0007, 0x0007 },
    { &sfx17A, 0x0006, 0x0006 },
    { &sfxLavaTitleStep, 0x001d, 0x001d },
    { &sfxLavaTitleWobble, 0x001c, 0x001c },
    { &sfxLavaTitleSink, 0x001b, 0x001b },
    { &sfxLavaTitleFlip, 0x001a, 0x001a },
    { &sfxLavaTitleLand, 0x0019, 0x0019 },
    { &sfx180, 0x0005, 0x0005 },
    { &sfx181, 0x0004, 0x0004 },
    { &sfx182, 0x0003, 0x0003 },
    { &sfx183, 0x0018, 0x0018 },
    { &sfx184, 0x0017, 0x0017 },
    { &sfx185, 0x0016, 0x0016 },
    { &sfx186, 0x0015, 0x0015 },
    { &sfxStairsAscend, 0x0014, 0x0014 },
    { &sfxStairsDescend, 0x0013, 0x0013 },
    { &sfx189, 0x0012, 0x0012 },
    { &sfx18A, 0x0011, 0x0011 },
    { &sfx18B, 0x0010, 0x0010 },
    { &sfx18C, 0x000f, 0x000f },
    { &sfx18D, 0x000e, 0x000e },
    { &sfx18E, 0x000d, 0x000d },
    { &sfx18F, 0x000c, 0x000c },
    { &sfx190, 0x000b, 0x000b },
    { &sfx191, 0x000a, 0x000a },
    { &sfx192, 0x0009, 0x0009 },
    { &sfx193, 0x0008, 0x0008 },
    { &sfx194, 0x0007, 0x0007 },
    { &sfx195, 0x0006, 0x0006 },
    { &sfx196, 0x0005, 0x0005 },
    { &sfx197, 0x0004, 0x0004 },
    { &sfx198, 0x0003, 0x0003 },
    { &sfx199, 0x001d, 0x001d },
    { &sfx19A, 0x001c, 0x001c },
    { &sfx19B, 0x001b, 0x001b },
    { &sfx19C, 0x001a, 0x001a },
    { &sfx19D, 0x0019, 0x0019 },
    { &sfx19E, 0x0018, 0x0018 },
    { &sfx19F, 0x0017, 0x0017 },
    { &sfx1A0, 0x0016, 0x0016 },
    { &sfx1A1, 0x0015, 0x0015 },
    { &sfx1A2, 0x0014, 0x0014 },
    { &sfx1A3, 0x0013, 0x0013 },
    { &sfx1A4, 0x0012, 0x0012 },
    { &sfx1A5, 0x0011, 0x0011 },
    { &sfx1A6, 0x0010, 0x0010 },
    { &sfx1A7, 0x000f, 0x000f },
    { &sfx1A8, 0x000e, 0x000e },
    { &sfx1A9, 0x000d, 0x000d },
    { &sfx1AA, 0x000c, 0x000c },
    { &sfx1AB, 0x000c, 0x000c },
    { &sfx1AC, 0x000a, 0x000a },
    { &sfx1AD, 0x0009, 0x0009 },
    { &sfx1AE, 0x0008, 0x0008 },
    { &sfx1AF, 0x0007, 0x0007 },
    { &sfx1B0, 0x0006, 0x0006 },
    { &sfxIceBlockSlide, 0x001d, 0x001d },
    { &sfxIceBlockStop, 0x001c, 0x001c },
    { &sfxIceBlockMelt, 0x001b, 0x001b },
    { &sfx1B4, 0x001a, 0x001a },
    { &sfx1B5, 0x0019, 0x0019 },
    { &sfx1B6, 0x0018, 0x0018 },
    { &sfxVoGoron1, 0x000a, 0x000a },
    { &sfxVoGoron2, 0x000b, 0x000b },
    { &sfxVoGoron3, 0x000c, 0x000c },
    { &sfxVoGoron4, 0x000d, 0x000d },
    { &sfxEmDekuscrubHit, 0x000e, 0x000e },
    { &sfx1BC, 0x000f, 0x000f },
    { &sfx1BD, 0x0010, 0x0010 },
    { &sfx1BE, 0x0011, 0x0011 },
    { &sfx1BF, 0x0012, 0x0012 },
    { &sfx1C0, 0x0013, 0x0013 },
    { &sfx1C1, 0x0014, 0x0014 },
    { &sfx1C2, 0x0005, 0x0005 },
    { &sfx1C3, 0x0004, 0x0004 },
    { &sfx1C4, 0x0003, 0x0003 },
    { &sfx1C5, 0x001d, 0x001d },
    { &sfx1C6, 0x001c, 0x001c },
    { &sfx1C7, 0x0003, 0x0003 },
    { &sfx1C8, 0x0000, 0x0000 },
    { &sfx1C9, 0x001a, 0x001a },
    { &sfx1CA, 0x001a, 0x001a },
    { &sfx1CB, 0x0018, 0x0018 },
    { &sfx1CC, 0x0017, 0x0017 },
    { &sfxElementPlace, 0x0016, 0x0016 },
    { &sfxElementFloat, 0x0015, 0x0015 },
    { &sfxElementCharge, 0x0014, 0x0014 },
    { &sfx1D0, 0x0013, 0x0013 },
    { &sfxElementInfuse, 0x0012, 0x0012 },
    { &sfx1D2, 0x0011, 0x0011 },
    { &sfx1D3, 0x0010, 0x0010 },
    { &sfx1D4, 0x000f, 0x000f },
    { &sfx1D5, 0x000e, 0x000e },
    { &sfxVoCucco1, 0x000d, 0x000d },
    { &sfxVoCucco2, 0x000c, 0x000c },
    { &sfxVoCucco3, 0x000b, 0x000b },
    { &sfxVoCucco4, 0x000a, 0x000a },
    { &sfxVoCucco5, 0x0009, 0x0009 },
    { &sfx1DB, 0x0008, 0x0008 },
    { &sfx1DC, 0x0007, 0x0007 },
    { &sfx1DD, 0x0006, 0x0006 },
    { &sfx1DE, 0x0003, 0x0003 },
    { &sfx1DF, 0x0003, 0x0003 },
    { &sfx1E0, 0x0003, 0x0003 },
    { &sfx1E1, 0x0003, 0x0003 },
    { &sfx1E2, 0x0003, 0x0003 },
    { &sfx1E3, 0x0003, 0x0003 },
    { &sfx1E4, 0x0002, 0x0002 },
    { &sfx1E5, 0x0002, 0x0002 },
    { &sfx1E6, 0x0002, 0x0002 },
    { &sfx1E7, 0x0002, 0x0002 },
    { &sfx1E8, 0x0004, 0x0004 },
    { &sfx1E9, 0x0004, 0x0004 },
    { &sfx1EA, 0x0006, 0x0006 },
    { &sfx1EB, 0x0006, 0x0006 },
    { &sfx1EC, 0x0006, 0x0006 },
    { &sfx1ED, 0x0006, 0x0006 },
    { &sfx1EE, 0x0007, 0x0007 },
    { &sfx1EF, 0x0007, 0x0007 },
    { &sfx1F0, 0x0007, 0x0007 },
    { &sfx1F1, 0x0008, 0x0008 },
    { &sfx1F2, 0x0008, 0x0008 },
    { &sfx1F3, 0x0009, 0x0009 },
    { &sfx1F4, 0x000a, 0x000a },
    { &sfx1F5, 0x000b, 0x000b },
    { &sfx1F6, 0x000c, 0x000c },
    { &sfx1F7, 0x000d, 0x000d },
    { &sfx1F8, 0x000e, 0x000e },
    { &sfx1F9, 0x000f, 0x000f },
    { &sfx1FA, 0x0010, 0x0010 },
    { &sfx1FB, 0x0011, 0x0011 },
    { &sfx1FC, 0x0012, 0x0012 },
    { &sfx1FD, 0x0013, 0x0013 },
    { &sfx1FE, 0x0014, 0x0014 },
    { &sfx1FF, 0x0015, 0x0015 },
    { &sfx200, 0x0016, 0x0016 },
    { &sfx201, 0x0017, 0x0017 },
    { &sfx202, 0x0018, 0x0018 },
    { &sfx203, 0x0019, 0x0019 },
    { &sfx204, 0x001a, 0x001a },
    { &sfx205, 0x001b, 0x001b },
    { &sfx206, 0x001c, 0x001c },
    { &sfx207, 0x0011, 0x0011 },
    { &sfx208, 0x0004, 0x0004 },
    { &sfx209, 0x0005, 0x0005 },
    { &sfx20A, 0x0006, 0x0006 },
    { &sfx20B, 0x0007, 0x0007 },
    { &sfx20C, 0x0008, 0x0008 },
    { &sfx20D, 0x0009, 0x0009 },
    { &sfx20E, 0x000a, 0x000a },
    { &sfx20F, 0x000b, 0x000b },
    { &sfx210, 0x000c, 0x000c },
    { &sfx211, 0x000d, 0x000d },
    { &sfx212, 0x000e, 0x000e },
    { &sfx213, 0x000f, 0x000f },
    { &sfx214, 0x0010, 0x0010 },
    { &sfx215, 0x0005, 0x0005 },
    { &sfx216, 0x001e, 0x001e },
    { &sfx217, 0x001e, 0x001e },
    { &sfx218, 0x0004, 0x0004 },
    { &sfx219, 0x0003, 0x0003 },
    { &sfx21A, 0x000b, 0x000b },
    { &sfx21B, 0x001d, 0x001d },
    { &sfx21C, 0x001c, 0x001c },
    { &sfx21D, 0x001b, 0x001b },
    { &sfx21E, 0x001a, 0x001a },
    { &sfx21F, 0x0019, 0x0019 },
    { &sfx220, 0x0018, 0x0018 },
    { &sfx221, 0x0017, 0x0017 },
};
