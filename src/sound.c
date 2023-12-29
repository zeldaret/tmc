#include "global.h"
#include "main.h"
#include "gba/m4a.h"
#include "sound.h"
#include "common.h"

#define IS_BGM(song) ((song)-1 <= NUM_BGM - 1)
#define IS_SFX(song) ((song)-1 > NUM_BGM - 1)

static s32 fade(s32 target, s32 current);
static void doPlaySound(u32 sound);
static void PlayFadeIn(u32 sound);
static void PlayFadeOut(u32 sound);
static void InitVolume(void);

void InitSound(void) {
    InitSoundPlayingInfo();
    m4aSoundInit();
}

void InitSoundPlayingInfo(void) {
    MemClear(&gSoundPlayingInfo, sizeof(gSoundPlayingInfo));
    InitVolume();
    gSoundPlayingInfo.volumeSfx = 0x100;
    gSoundPlayingInfo.unk_04 = 0x100;
#ifndef EU
    m4aMPlayAllStop();
#endif
}

void SetMasterVolume(u32 volume) {
    gSoundPlayingInfo.volumeMaster = volume;
    gSoundPlayingInfo.volumeMasterTarget = volume;
    doPlaySound(gSoundPlayingInfo.currentBgm);
}

void SetBgmVolume(u32 volume) {
    gSoundPlayingInfo.volumeBgmTarget = volume;
    gSoundPlayingInfo.volumeBgm = volume;
    doPlaySound(gSoundPlayingInfo.currentBgm);
}

void SetSfxVolume(u32 volume) {
    gSoundPlayingInfo.volumeSfx = volume;
}

void SoundReq(u32 sound) {
    u32 song;
    SoundPlayingInfo* ptr;
    if (gMain.field_0x7)
        return;
    ptr = &gSoundPlayingInfo;
    song = sound & 0xffff;
    switch (sound & 0xffff0000) {
        case SONG_STOP_ALL:
            ptr->currentBgm = 0;
            m4aMPlayAllStop();
            return;
        case SONG_MUTE:
            SetMasterVolume(0);
            return;
        case SONG_PLAY_VOL_RESET_ALL:
            InitVolume();
            ptr->volumeSfx = 0x100;
            doPlaySound(ptr->currentBgm);
            return;
        case SONG_VOL_FADE_OUT:
            PlayFadeOut(ptr->currentBgm);
            return;
        case SONG_FADE_IN:
            if (song == 0)
                song = ptr->currentBgm;
            if (IS_SFX(song))
                return;
            ptr->currentBgm = song;
            m4aSongNumStart(song);
            PlayFadeIn(song);
            return;
        case SONG_FADE_IN_CONTINUE:
            if (IS_SFX(song))
                return;
            ptr->currentBgm = song;
            m4aSongNumStartOrContinue(song);
            PlayFadeIn(song);
            return;
        case SONG_PLAY_TEMPO_CONTROL:
            m4aMPlayTempoControl(gMusicPlayers[gSongTable[ptr->currentBgm].musicPlayerIndex].info, song);
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
        case SONG_CONTINUE:
            if (ptr->currentBgm == 0)
                return;
            m4aSongNumStartOrContinue(ptr->currentBgm);
            doPlaySound(ptr->currentBgm);
            return;
        case SONG_PLAY_VOL_RESET:
            if (IS_SFX(song))
                return;
            ptr->currentBgm = song;
            m4aSongNumStartOrContinue(song);
            InitVolume();
            doPlaySound(song);
            return;
        case SONG_FADE_OUT_BGM:
            ptr->volumeBgmTarget = 0;
            return;
        case SONG_STOP_BGM:
            ptr->volumeBgmTarget = 0;
            ptr->stopBgm = TRUE;
            return;
        case SONG_FADE_IN_BGM:
            ptr->volumeBgmTarget = 0x100;
            return;
        case SONG_INIT:
            InitVolume();
            return;
        case SONG_BGM_0:
            ptr->currentBgm = 0;
            return;
        default:
            if (song != 0) {
                if (IS_BGM(song)) {
                    ptr->currentBgm = song;
                    m4aSongNumStart(song);
                    InitVolume();
                } else {
                    m4aSongNumStart(song);
                }
                doPlaySound(song);
            }
            return;
    }
}

void AudioMain(void) {
    s32 fadeValue;
    SoundPlayingInfo* ptr = &gSoundPlayingInfo;

    if (ptr->volumeMasterTarget != ptr->volumeMaster) {
        fadeValue = fade(ptr->volumeMasterTarget, ptr->volumeMaster);
        if (fadeValue == 0) {
            ptr->volumeMaster = ptr->volumeMasterTarget;
        } else {
            ptr->volumeMaster = ptr->volumeMaster + fadeValue;
        }
        if (ptr->volumeMaster < 0) {
            ptr->volumeMasterTarget = 0;
            ptr->volumeMaster = 0;
        }
        doPlaySound(ptr->currentBgm);
    } else {
        if (ptr->volumeBgmTarget != ptr->volumeBgm) {
            fadeValue = fade(ptr->volumeBgmTarget, ptr->volumeBgm);
            if (fadeValue == 0) {
                if (ptr->stopBgm && ptr->volumeBgmTarget == 0) {
                    ptr->stopBgm = FALSE;
                    ptr->currentBgm = 0;
                    m4aSongNumStop(0);
                } else {
                    ptr->volumeBgm = ptr->volumeBgmTarget;
                }
            } else {
                ptr->volumeBgm += fadeValue;
            }
            if (ptr->volumeBgm < 0) {
                ptr->volumeBgmTarget = 0;
                ptr->volumeBgm = 0;
            }
            doPlaySound(ptr->currentBgm);
        }
    }
}

static s32 fade(s32 target, s32 current) {
    if (target - current >= 1) {
        current += 4;
        if (target > current)
            return 4;
        return 0;
    } else {
        current -= 4;
        if (target < current)
            return -4;
        return 0;
    }
}

static void doPlaySound(u32 sound) {
    u32 volume;
    MusicPlayerInfo* musicPlayerInfo;

    if (sound == 0)
        return;

    if (IS_BGM(sound)) {
        volume = gSoundPlayingInfo.volumeBgm;
    } else {
        volume = gSoundPlayingInfo.volumeSfx;
    }
    volume = gSoundPlayingInfo.volumeMaster * volume / 0x100;
    musicPlayerInfo = gMusicPlayers[gSongTable[sound].musicPlayerIndex].info;
    m4aMPlayImmInit(musicPlayerInfo);
    m4aMPlayVolumeControl(musicPlayerInfo, 0xffff, volume);
}

static void PlayFadeIn(u32 sound) {
    gSoundPlayingInfo.volumeMasterTarget = 0x100;
    doPlaySound(sound);
}

static void PlayFadeOut(u32 sound) {
    gSoundPlayingInfo.volumeMasterTarget = 0;
    doPlaySound(sound);
}

static void InitVolume(void) {
    gSoundPlayingInfo.volumeMasterUnk = 0x100;
    gSoundPlayingInfo.volumeMaster = 0x100;
    gSoundPlayingInfo.volumeMasterTarget = 0x100;
    gSoundPlayingInfo.volumeBgmUnk = 0x100;
    gSoundPlayingInfo.volumeBgm = 0x100;
    gSoundPlayingInfo.volumeBgmTarget = 0x100;
}

extern const SongHeader sfxNone;
extern const SongHeader bgmCastleTournament;
extern const SongHeader bgmVaatiMotif;
extern const SongHeader bgmTitleScreen;
extern const SongHeader bgmCastleMotif;
extern const SongHeader bgmElementGet;
extern const SongHeader bgmFairyFountain;
extern const SongHeader bgmFileSelect;
extern const SongHeader bgmIntroCutscene;
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
extern const SongHeader bgmDeepwoodShrine;
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
extern const SongHeader sfxButtonPress;
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
extern const SongHeader sfxChestOpen;
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
extern const SongHeader sfxNearPortal;
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
extern const SongHeader sfxToggleDiving;
extern const SongHeader sfx164;
extern const SongHeader sfx165;
extern const SongHeader sfx166;
extern const SongHeader sfx167;
extern const SongHeader sfx168;
extern const SongHeader sfx169;
extern const SongHeader sfx16A;
extern const SongHeader sfxPressurePlate;
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

extern MusicPlayerTrack gMPlayTracks[];

extern MusicPlayerInfo gMPlayInfos[0x1C];
extern u8 gMPlayMemAccArea[0x10];
extern MusicPlayerInfo gMPlayInfos2[0x4];

typedef enum {
    MUSIC_PLAYER_00,
    MUSIC_PLAYER_PLY_VO,
    MUSIC_PLAYER_02,
    MUSIC_PLAYER_03,
    MUSIC_PLAYER_04,
    MUSIC_PLAYER_05,
    MUSIC_PLAYER_06,
    MUSIC_PLAYER_07,
    MUSIC_PLAYER_08,
    MUSIC_PLAYER_09,
    MUSIC_PLAYER_0A,
    MUSIC_PLAYER_0B,
    MUSIC_PLAYER_0C,
    MUSIC_PLAYER_0D,
    MUSIC_PLAYER_0E,
    MUSIC_PLAYER_0F,
    MUSIC_PLAYER_10,
    MUSIC_PLAYER_11,
    MUSIC_PLAYER_12,
    MUSIC_PLAYER_13,
    MUSIC_PLAYER_14,
    MUSIC_PLAYER_15,
    MUSIC_PLAYER_16,
    MUSIC_PLAYER_17,
    MUSIC_PLAYER_18,
    MUSIC_PLAYER_19,
    MUSIC_PLAYER_1A,
    MUSIC_PLAYER_1B,
    MUSIC_PLAYER_1C,
    MUSIC_PLAYER_1D,
    MUSIC_PLAYER_1E,
    MUSIC_PLAYER_BGM,
} MusicPlayerE;

const MusicPlayer gMusicPlayers[] = {
    [MUSIC_PLAYER_00] = { &gMPlayInfos[0x08], &gMPlayTracks[0x00], 2, 1 },
    [MUSIC_PLAYER_PLY_VO] = { &gMPlayInfos[0x12], &gMPlayTracks[0x02], 1, 1 },
    [MUSIC_PLAYER_02] = { &gMPlayInfos[0x13], &gMPlayTracks[0x03], 1, 1 },
    [MUSIC_PLAYER_03] = { &gMPlayInfos2[0x2], &gMPlayTracks[0x04], 2, 1 },
    [MUSIC_PLAYER_04] = { &gMPlayInfos[0x1B], &gMPlayTracks[0x06], 2, 1 },
    [MUSIC_PLAYER_05] = { &gMPlayInfos[0x03], &gMPlayTracks[0x08], 2, 1 },
    [MUSIC_PLAYER_06] = { &gMPlayInfos[0x07], &gMPlayTracks[0x0A], 2, 1 },
    [MUSIC_PLAYER_07] = { &gMPlayInfos[0x11], &gMPlayTracks[0x0C], 2, 1 },
    [MUSIC_PLAYER_08] = { &gMPlayInfos2[0x1], &gMPlayTracks[0x0E], 2, 1 },
    [MUSIC_PLAYER_09] = { &gMPlayInfos[0x06], &gMPlayTracks[0x10], 2, 1 },
    [MUSIC_PLAYER_0A] = { &gMPlayInfos[0x14], &gMPlayTracks[0x12], 2, 1 },
    [MUSIC_PLAYER_0B] = { &gMPlayInfos2[0x3], &gMPlayTracks[0x14], 2, 1 },
    [MUSIC_PLAYER_0C] = { &gMPlayInfos[0x19], &gMPlayTracks[0x16], 2, 1 },
    [MUSIC_PLAYER_0D] = { &gMPlayInfos[0x02], &gMPlayTracks[0x18], 2, 1 },
    [MUSIC_PLAYER_0E] = { &gMPlayInfos[0x0E], &gMPlayTracks[0x1A], 2, 1 },
    [MUSIC_PLAYER_0F] = { &gMPlayInfos[0x18], &gMPlayTracks[0x1C], 2, 1 },
    [MUSIC_PLAYER_10] = { &gMPlayInfos[0x05], &gMPlayTracks[0x1E], 2, 1 },
    [MUSIC_PLAYER_11] = { &gMPlayInfos[0x1A], &gMPlayTracks[0x20], 2, 1 },
    [MUSIC_PLAYER_12] = { &gMPlayInfos[0x0D], &gMPlayTracks[0x22], 2, 1 },
    [MUSIC_PLAYER_13] = { &gMPlayInfos[0x00], &gMPlayTracks[0x24], 2, 1 },
    [MUSIC_PLAYER_14] = { &gMPlayInfos[0x0A], &gMPlayTracks[0x26], 2, 1 },
    [MUSIC_PLAYER_15] = { &gMPlayInfos[0x0C], &gMPlayTracks[0x28], 2, 1 },
    [MUSIC_PLAYER_16] = { &gMPlayInfos[0x17], &gMPlayTracks[0x2A], 2, 1 },
    [MUSIC_PLAYER_17] = { &gMPlayInfos[0x01], &gMPlayTracks[0x2C], 2, 1 },
    [MUSIC_PLAYER_18] = { &gMPlayInfos[0x0B], &gMPlayTracks[0x2E], 2, 1 },
    [MUSIC_PLAYER_19] = { &gMPlayInfos[0x15], &gMPlayTracks[0x30], 2, 1 },
    [MUSIC_PLAYER_1A] = { &gMPlayInfos[0x09], &gMPlayTracks[0x32], 2, 1 },
    [MUSIC_PLAYER_1B] = { &gMPlayInfos2[0x0], &gMPlayTracks[0x34], 2, 1 },
    [MUSIC_PLAYER_1C] = { &gMPlayInfos[0x0F], &gMPlayTracks[0x36], 2, 1 },
    [MUSIC_PLAYER_1D] = { &gMPlayInfos[0x16], &gMPlayTracks[0x38], 2, 1 },
    [MUSIC_PLAYER_1E] = { &gMPlayInfos[0x04], &gMPlayTracks[0x3A], 0xc, 0 },
    [MUSIC_PLAYER_BGM] = { &gMPlayInfos[0x10], &gMPlayTracks[0x46], 0xc, 0 },
};

const Song gSongTable[] = {
    [SFX_NONE] = { &sfxNone, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CASTLE_TOURNAMENT] = { &bgmCastleTournament, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_VAATI_MOTIF] = { &bgmVaatiMotif, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_TITLE_SCREEN] = { &bgmTitleScreen, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CASTLE_MOTIF] = { &bgmCastleMotif, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_ELEMENT_GET] = { &bgmElementGet, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FAIRY_FOUNTAIN] = { &bgmFairyFountain, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FILE_SELECT] = { &bgmFileSelect, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_INTRO_CUTSCENE] = { &bgmIntroCutscene, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CREDITS] = { &bgmCredits, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_GAMEOVER] = { &bgmGameover, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_SAVING_ZELDA] = { &bgmSavingZelda, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_LTTP_TITLE] = { &bgmLttpTitle, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_VAATI_THEME] = { &bgmVaatiTheme, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_EZLO_THEME] = { &bgmEzloTheme, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_STORY] = { &bgmStory, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FESTIVAL_APPROACH] = { &bgmFestivalApproach, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_BEAT_VAATI] = { &bgmBeatVaati, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_UNUSED_12] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_BEANSTALK] = { &bgmBeanstalk, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_HOUSE] = { &bgmHouse, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CUCCO_MINIGAME] = { &bgmCuccoMinigame, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_SYRUP_THEME] = { &bgmSyrupTheme, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_DUNGEON] = { &bgmDungeon, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_ELEMENT_THEME] = { &bgmElementTheme, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_HYRULE_FIELD] = { &bgmHyruleField, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_HYRULE_CASTLE] = { &bgmHyruleCastle, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_HYRULE_CASTLE_NOINTRO] = { &bgmHyruleCastleNointro, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_MINISH_VILLAGE] = { &bgmMinishVillage, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_MINISH_WOODS] = { &bgmMinishWoods, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CRENEL_STORM] = { &bgmCrenelStorm, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CASTOR_WILDS] = { &bgmCastorWilds, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_HYRULE_TOWN] = { &bgmHyruleTown, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_ROYAL_VALLEY] = { &bgmRoyalValley, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CLOUD_TOPS] = { &bgmCloudTops, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_DARK_HYRULE_CASTLE] = { &bgmDarkHyruleCastle, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_SECRET_CASTLE_ENTRANCE] = { &bgmSecretCastleEntrance, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_DEEPWOOD_SHRINE] = { &bgmDeepwoodShrine, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CAVE_OF_FLAMES] = { &bgmCaveOfFlames, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FORTRESS_OF_WINDS] = { &bgmFortressOfWinds, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_TEMPLE_OF_DROPLETS] = { &bgmTempleOfDroplets, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_PALACE_OF_WINDS] = { &bgmPalaceOfWinds, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_EZLO_STORY] = { &bgmEzloStory, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_ROYAL_CRYPT] = { &bgmRoyalCrypt, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_ELEMENTAL_SANCTUARY] = { &bgmElementalSanctuary, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FIGHT_THEME] = { &bgmFightTheme, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_BOSS_THEME] = { &bgmBossTheme, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_VAATI_REBORN] = { &bgmVaatiReborn, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_VAATI_TRANSFIGURED] = { &bgmVaatiTransfigured, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_CASTLE_COLLAPSE] = { &bgmCastleCollapse, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_VAATI_WRATH] = { &bgmVaatiWrath, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FIGHT_THEME2] = { &bgmFightTheme2, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_DIGGING_CAVE] = { &bgmDiggingCave, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_SWIFTBLADE_DOJO] = { &bgmSwiftbladeDojo, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_MINISH_CAP] = { &bgmMinishCap, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_MT_CRENEL] = { &bgmMtCrenel, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_PICORI_FESTIVAL] = { &bgmPicoriFestival, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_LOST_WOODS] = { &bgmLostWoods, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_FAIRY_FOUNTAIN2] = { &bgmFairyFountain2, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_WIND_RUINS] = { &bgmWindRuins, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_UNUSED_3C] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_3D] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_3E] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_3F] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_40] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_41] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_42] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_43] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_44] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_45] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_46] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_47] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_48] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_49] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_4A] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_4B] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_4C] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_4D] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_4E] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_4F] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_50] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_51] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_52] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_53] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_54] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_55] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_56] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_57] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_58] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_59] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_5A] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_5B] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_5C] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_5D] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_LEARN_SCROLL] = { &bgmLearnScroll, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_EZLO_GET] = { &bgmEzloGet, MUSIC_PLAYER_BGM, MUSIC_PLAYER_BGM },
    [BGM_UNUSED_60] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_61] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_62] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [BGM_UNUSED_63] = { &bgmUnused, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [SFX_BEEP] = { &sfxBeep, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [SFX_TEXTBOX_OPEN] = { &sfxTextboxOpen, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_TEXTBOX_CLOSE] = { &sfxTextboxClose, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_TEXTBOX_NEXT] = { &sfxTextboxNext, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_TEXTBOX_SWAP] = { &sfxTextboxSwap, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_TEXTBOX_CHOICE] = { &sfxTextboxChoice, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_TEXTBOX_SELECT] = { &sfxTextboxSelect, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_6B] = { &sfx6B, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_MENU_CANCEL] = { &sfxMenuCancel, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_MENU_ERROR] = { &sfxMenuError, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_RUPEE_BOUNCE] = { &sfxRupeeBounce, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_RUPEE_GET] = { &sfxRupeeGet, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [SFX_HEART_BOUNCE] = { &sfxHeartBounce, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_HEART_GET] = { &sfxHeartGet, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
#ifdef EU
    [SFX_SECRET] = { &sfxSecret, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
#else
    [SFX_SECRET] = { &sfxSecret, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
#endif
    [SFX_SECRET_BIG] = { &sfxSecretBig, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_METAL_CLINK] = { &sfxMetalClink, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_PLY_VO1] = { &sfxPlyVo1, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_VO2] = { &sfxPlyVo2, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_VO3] = { &sfxPlyVo3, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_VO4] = { &sfxPlyVo4, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_VO5] = { &sfxPlyVo5, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_VO6] = { &sfxPlyVo6, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_VO7] = { &sfxPlyVo7, MUSIC_PLAYER_PLY_VO, MUSIC_PLAYER_PLY_VO },
    [SFX_PLY_JUMP] = { &sfxPlyJump, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_PLY_LAND] = { &sfxPlyLand, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_7E] = { &sfx7E, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_PLY_LIFT] = { &sfxPlyLift, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_80] = { &sfx80, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_81] = { &sfx81, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_82] = { &sfx82, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_WATER_WALK] = { &sfxWaterWalk, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_WATER_SPLASH] = { &sfxWaterSplash, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_FALL_HOLE] = { &sfxFallHole, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_86] = { &sfx86, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_PLY_DIE] = { &sfxPlyDie, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_GRAB] = { &sfx88, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_BARREL_RELEASE] = { &sfxBarrelRelease, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_BARREL_ENTER] = { &sfxBarrelEnter, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_BARREL_ROLL] = { &sfxBarrelRoll, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_BARREL_ROLL_STOP] = { &sfxBarrelRollStop, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_VO_EZLO1] = { &sfxVoEzlo1, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_EZLO2] = { &sfxVoEzlo2, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_EZLO3] = { &sfxVoEzlo3, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_EZLO4] = { &sfxVoEzlo4, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_EZLO5] = { &sfxVoEzlo5, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_EZLO6] = { &sfxVoEzlo6, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_EZLO7] = { &sfxVoEzlo7, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_VO_ZELDA1] = { &sfxVoZelda1, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_VO_ZELDA2] = { &sfxVoZelda2, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_VO_ZELDA3] = { &sfxVoZelda3, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_VO_ZELDA4] = { &sfxVoZelda4, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_VO_ZELDA5] = { &sfxVoZelda5, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_VO_ZELDA6] = { &sfxVoZelda6, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_VO_ZELDA7] = { &sfxVoZelda7, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_9B] = { &sfx9B, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_9C] = { &sfx9C, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_9D] = { &sfx9D, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_9E] = { &sfx9E, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_9F] = { &sfx9F, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_A0] = { &sfxA0, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_VO_TINGLE1] = { &sfxVoTingle1, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_VO_TINGLE2] = { &sfxVoTingle2, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_VO_KING1] = { &sfxVoKing1, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_VO_KING2] = { &sfxVoKing2, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_VO_KING3] = { &sfxVoKing3, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_VO_KING4] = { &sfxVoKing4, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_VO_KING5] = { &sfxVoKing5, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_A8] = { &sfxA8, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_A9] = { &sfxA9, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_AA] = { &sfxAA, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_SPIRITS_RELEASE] = { &sfxSpiritsRelease, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_AC] = { &sfxAC, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_VO_BEEDLE] = { &sfxVoBeedle, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_AE] = { &sfxAE, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_AF] = { &sfxAF, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_B0] = { &sfxB0, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_VO_MINISH1] = { &sfxMinish1, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_VO_MINISH2] = { &sfxMinish2, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_VO_MINISH3] = { &sfxMinish3, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_VO_MINISH4] = { &sfxMinish4, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_B5] = { &sfxB5, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_B6] = { &sfxB6, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_B7] = { &sfxB7, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_B8] = { &sfxB8, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_B9] = { &sfxB9, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_BA] = { &sfxBA, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_BB] = { &sfxBB, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_BC] = { &sfxBC, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_BD] = { &sfxBD, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_BE] = { &sfxBE, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_BF] = { &sfxBF, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_C0] = { &sfxC0, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_C1] = { &sfxC1, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_C2] = { &sfxC2, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_C3] = { &sfxC3, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_C4] = { &sfxC4, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_C5] = { &sfxC5, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_C6] = { &sfxC6, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_C7] = { &sfxC7, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_C8] = { &sfxC8, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_C9] = { &sfxC9, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_CA] = { &sfxCA, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_CB] = { &sfxCB, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_REM_SLEEP] = { &sfxRemSleep, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
#ifdef EU
    [SFX_TASK_COMPLETE] = { &sfxTaskComplete, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
#else
    [SFX_TASK_COMPLETE] = { &sfxTaskComplete, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
#endif
    [SFX_KEY_APPEAR] = { &sfxKeyAppear, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_CF] = { &sfxCF, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_D0] = { &sfxD0, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_VO_DOG] = { &sfxVoDog, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_VO_CAT] = { &sfxVoCat, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_VO_EPONA] = { &sfxVoEpona, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_VO_COW] = { &sfxVoCow, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_VO_CUCCO_CALL] = { &sfxVoCuccoCall, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_VO_CHEEP] = { &sfxVoCheep, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_ITEM_SWORD_CHARGE] = { &sfxItemSwordCharge, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_ITEM_SWORD_CHARGE_FINISH] = { &sfxItemSwordChargeFinish, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_D9] = { &sfxD9, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_DA] = { &sfxDA, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_VO_STURGEON] = { &sfxVoSturgeon, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_HAMMER1] = { &sfxHammer1, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_HAMMER2] = { &sfxHammer2, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_HAMMER3] = { &sfxHammer3, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_HAMMER4] = { &sfxHammer4, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_HAMMER5] = { &sfxHammer5, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_HAMMER6] = { &sfxHammer6, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_CUCCO_MINIGAME_BELL] = { &sfxCuccoMinigameBell, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_E3] = { &sfxE3, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_E4] = { &sfxE4, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_BUTTON_DEPRESS] = { &sfxButtonDepress, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_THUD_HEAVY] = { &sfxThudHeavy, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_WIND1] = { &sfxWind1, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_WIND2] = { &sfxWind2, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_WIND3] = { &sfxWind3, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_EA] = { &sfxEA, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_EB] = { &sfxEB, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_EC] = { &sfxEC, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_ED] = { &sfxED, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_EE] = { &sfxEE, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_EF] = { &sfxEF, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_F0] = { &sfxF0, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_F1] = { &sfxF1, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_F2] = { &sfxF2, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_F3] = { &sfxF3, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_SUMMON] = { &sfxSummon, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_F5] = { &sfxF5, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_EVAPORATE] = { &sfxEvaporate, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_APPARATE] = { &sfxApparate, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_F8] = { &sfxF8, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_TELEPORTER] = { &sfxTeleporter, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_FA] = { &sfxFA, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_FB] = { &sfxFB, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_FC] = { &sfxFC, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_ITEM_BOMB_EXPLODE] = { &sfxItemBombExplode, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_HIT] = { &sfxHit, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_FF] = { &sfxFF, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_100] = { &sfx100, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_101] = { &sfx101, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_102] = { &sfx102, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_103] = { &sfx103, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [SFX_PLACE_OBJ] = { &sfx104, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_105] = { &sfx105, MUSIC_PLAYER_1E, MUSIC_PLAYER_1E },
    [SFX_106] = { &sfx106, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_ITEM_GLOVES_AIR] = { &sfx107, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_108] = { &sfx108, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_ITEM_GET] = { &sfx109, MUSIC_PLAYER_1E, MUSIC_PLAYER_1E },
    [SFX_10A] = { &sfx10A, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_10B] = { &sfx10B, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_BUTTON_PRESS] = { &sfxButtonPress, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_10D] = { &sfx10D, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_10E] = { &sfx10E, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_10F] = { &sfx10F, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_110] = { &sfx110, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_111] = { &sfx111, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_112] = { &sfx112, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_113] = { &sfx113, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_114] = { &sfx114, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_115] = { &sfx115, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_116] = { &sfx116, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_117] = { &sfx117, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_ITEM_SHIELD_BOUNCE] = { &sfxItemShieldBounce, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_ITEM_GLOVES_KNOCKBACK] = { &sfxItemGlovesKnockback, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_EM_ARMOS_ON] = { &sfxEmArmosOn, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_CHEST_OPEN] = { &sfxChestOpen, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_11C] = { &sfx11C, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_11D] = { &sfx11D, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_EM_MOBLIN_SPEAR] = { &sfxEmMoblinSpear, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_LOW_HEALTH] = { &sfxLowHealth, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_CHARGING_UP] = { &sfxChargingUp, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_STAIRS] = { &sfxStairs, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_122] = { &sfx122, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_123] = { &sfx123, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_124] = { &sfx124, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_125] = { &sfx125, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_126] = { &sfx126, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_BOSS_HIT] = { &sfxBossHit, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_BOSS_DIE] = { &sfxBossDie, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_BOSS_EXPLODE] = { &sfxBossExplode, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_12A] = { &sfx12A, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_12B] = { &sfx12B, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_12C] = { &sfx12C, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_12D] = { &sfx12D, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_12E] = { &sfx12E, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_12F] = { &sfx12F, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_130] = { &sfx130, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_131] = { &sfx131, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_132] = { &sfx132, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_133] = { &sfx133, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_134] = { &sfx134, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_135] = { &sfx135, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_136] = { &sfx136, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_137] = { &sfx137, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_138] = { &sfx138, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_139] = { &sfx139, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_13A] = { &sfx13A, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_13B] = { &sfx13B, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_13C] = { &sfx13C, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_ITEM_LANTERN_ON] = { &sfxItemLanternOn, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_ITEM_LANTERN_OFF] = { &sfxItemLanternOff, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_ITEM_SWORD_BEAM] = { &sfxItemSwordBeam, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_140] = { &sfx140, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_HEART_CONTAINER_SPAWN] = { &sfxHeartContainerSpawn, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_SPARKLES] = { &sfxSparkles, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_143] = { &sfx143, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_144] = { &sfx144, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_145] = { &sfx145, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_146] = { &sfx146, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_147] = { &sfx147, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_148] = { &sfx148, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_149] = { &sfx149, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_14A] = { &sfx14A, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_14B] = { &sfx14B, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_14C] = { &sfx14C, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_14D] = { &sfx14D, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_14E] = { &sfx14E, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_14F] = { &sfx14F, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_150] = { &sfx150, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_151] = { &sfx151, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_NEAR_PORTAL] = { &sfxNearPortal, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_153] = { &sfx153, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_154] = { &sfx154, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_155] = { &sfx155, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_156] = { &sfx156, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_157] = { &sfx157, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_158] = { &sfx158, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_159] = { &sfx159, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_15A] = { &sfx15A, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_15B] = { &sfx15B, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_15C] = { &sfx15C, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_15D] = { &sfx15D, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_15E] = { &sfx15E, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_15F] = { &sfx15F, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_160] = { &sfx160, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_161] = { &sfx161, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_162] = { &sfx162, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_TOGGLE_DIVING] = { &sfxToggleDiving, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_164] = { &sfx164, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_165] = { &sfx165, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_166] = { &sfx166, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_167] = { &sfx167, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_168] = { &sfx168, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_169] = { &sfx169, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_16A] = { &sfx16A, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_PRESSURE_PLATE] = { &sfxPressurePlate, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_16C] = { &sfx16C, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_16D] = { &sfx16D, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_16E] = { &sfx16E, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_PLY_SHRINKING] = { &sfxPlyShrinking, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_PLY_GROW] = { &sfxPlyGrow, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_171] = { &sfx171, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_172] = { &sfx172, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_EZLO_UI] = { &sfxEzloUi, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_174] = { &sfx174, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_175] = { &sfx175, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_176] = { &sfx176, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_177] = { &sfx177, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_178] = { &sfx178, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_179] = { &sfx179, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_17A] = { &sfx17A, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_LAVA_TILE_STEP] = { &sfxLavaTitleStep, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_LAVA_TILE_WOBBLE] = { &sfxLavaTitleWobble, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_LAVA_TILE_SINK] = { &sfxLavaTitleSink, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_LAVA_TILE_FLIP] = { &sfxLavaTitleFlip, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_LAVA_TILE_LAND] = { &sfxLavaTitleLand, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_180] = { &sfx180, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_181] = { &sfx181, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_182] = { &sfx182, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_183] = { &sfx183, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_184] = { &sfx184, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_185] = { &sfx185, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_186] = { &sfx186, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_STAIRS_ASCEND] = { &sfxStairsAscend, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_STAIRS_DESCEND] = { &sfxStairsDescend, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_189] = { &sfx189, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_18A] = { &sfx18A, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_18B] = { &sfx18B, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_18C] = { &sfx18C, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_18D] = { &sfx18D, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_18E] = { &sfx18E, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_18F] = { &sfx18F, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_190] = { &sfx190, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_191] = { &sfx191, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_192] = { &sfx192, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_193] = { &sfx193, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_194] = { &sfx194, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_195] = { &sfx195, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_196] = { &sfx196, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_197] = { &sfx197, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_198] = { &sfx198, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_199] = { &sfx199, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_19A] = { &sfx19A, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_19B] = { &sfx19B, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_19C] = { &sfx19C, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_19D] = { &sfx19D, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_19E] = { &sfx19E, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_19F] = { &sfx19F, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_1A0] = { &sfx1A0, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_1A1] = { &sfx1A1, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_1A2] = { &sfx1A2, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_1A3] = { &sfx1A3, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_1A4] = { &sfx1A4, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_1A5] = { &sfx1A5, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_1A6] = { &sfx1A6, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_1A7] = { &sfx1A7, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_1A8] = { &sfx1A8, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_1A9] = { &sfx1A9, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_1AA] = { &sfx1AA, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_1AB] = { &sfx1AB, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_1AC] = { &sfx1AC, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_1AD] = { &sfx1AD, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_1AE] = { &sfx1AE, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_1AF] = { &sfx1AF, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_1B0] = { &sfx1B0, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_ICE_BLOCK_SLIDE] = { &sfxIceBlockSlide, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_ICE_BLOCK_STOP] = { &sfxIceBlockStop, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_ICE_BLOCK_MELT] = { &sfxIceBlockMelt, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_1B4] = { &sfx1B4, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_1B5] = { &sfx1B5, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_1B6] = { &sfx1B6, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_VO_GORON1] = { &sfxVoGoron1, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_VO_GORON2] = { &sfxVoGoron2, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_VO_GORON3] = { &sfxVoGoron3, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_VO_GORON4] = { &sfxVoGoron4, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_EM_DEKUSCRUB_HIT] = { &sfxEmDekuscrubHit, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_1BC] = { &sfx1BC, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_1BD] = { &sfx1BD, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_1BE] = { &sfx1BE, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_1BF] = { &sfx1BF, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_1C0] = { &sfx1C0, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_1C1] = { &sfx1C1, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_1C2] = { &sfx1C2, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_1C3] = { &sfx1C3, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_1C4] = { &sfx1C4, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1C5] = { &sfx1C5, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_1C6] = { &sfx1C6, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_1C7] = { &sfx1C7, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1C8] = { &sfx1C8, MUSIC_PLAYER_00, MUSIC_PLAYER_00 },
    [SFX_1C9] = { &sfx1C9, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_1CA] = { &sfx1CA, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_1CB] = { &sfx1CB, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_1CC] = { &sfx1CC, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_ELEMENT_PLACE] = { &sfxElementPlace, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_ELEMENT_FLOAT] = { &sfxElementFloat, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_ELEMENT_CHARGE] = { &sfxElementCharge, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_1D0] = { &sfx1D0, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_ELEMENT_INFUSE] = { &sfxElementInfuse, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_1D2] = { &sfx1D2, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_1D3] = { &sfx1D3, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_1D4] = { &sfx1D4, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_1D5] = { &sfx1D5, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_VO_CUCCO1] = { &sfxVoCucco1, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_VO_CUCCO2] = { &sfxVoCucco2, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_VO_CUCCO3] = { &sfxVoCucco3, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_VO_CUCCO4] = { &sfxVoCucco4, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_VO_CUCCO5] = { &sfxVoCucco5, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_1DB] = { &sfx1DB, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_1DC] = { &sfx1DC, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_1DD] = { &sfx1DD, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_1DE] = { &sfx1DE, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1DF] = { &sfx1DF, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1E0] = { &sfx1E0, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1E1] = { &sfx1E1, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1E2] = { &sfx1E2, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1E3] = { &sfx1E3, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_1E4] = { &sfx1E4, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_1E5] = { &sfx1E5, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_1E6] = { &sfx1E6, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_1E7] = { &sfx1E7, MUSIC_PLAYER_02, MUSIC_PLAYER_02 },
    [SFX_1E8] = { &sfx1E8, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_1E9] = { &sfx1E9, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_1EA] = { &sfx1EA, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_1EB] = { &sfx1EB, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_1EC] = { &sfx1EC, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_1ED] = { &sfx1ED, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_1EE] = { &sfx1EE, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_1EF] = { &sfx1EF, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_1F0] = { &sfx1F0, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_1F1] = { &sfx1F1, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_1F2] = { &sfx1F2, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_1F3] = { &sfx1F3, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_1F4] = { &sfx1F4, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_1F5] = { &sfx1F5, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_1F6] = { &sfx1F6, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_1F7] = { &sfx1F7, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_1F8] = { &sfx1F8, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_1F9] = { &sfx1F9, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_1FA] = { &sfx1FA, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_1FB] = { &sfx1FB, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_1FC] = { &sfx1FC, MUSIC_PLAYER_12, MUSIC_PLAYER_12 },
    [SFX_1FD] = { &sfx1FD, MUSIC_PLAYER_13, MUSIC_PLAYER_13 },
    [SFX_1FE] = { &sfx1FE, MUSIC_PLAYER_14, MUSIC_PLAYER_14 },
    [SFX_1FF] = { &sfx1FF, MUSIC_PLAYER_15, MUSIC_PLAYER_15 },
    [SFX_200] = { &sfx200, MUSIC_PLAYER_16, MUSIC_PLAYER_16 },
    [SFX_201] = { &sfx201, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
    [SFX_202] = { &sfx202, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_203] = { &sfx203, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_204] = { &sfx204, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_205] = { &sfx205, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_206] = { &sfx206, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_207] = { &sfx207, MUSIC_PLAYER_11, MUSIC_PLAYER_11 },
    [SFX_208] = { &sfx208, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_209] = { &sfx209, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_20A] = { &sfx20A, MUSIC_PLAYER_06, MUSIC_PLAYER_06 },
    [SFX_20B] = { &sfx20B, MUSIC_PLAYER_07, MUSIC_PLAYER_07 },
    [SFX_20C] = { &sfx20C, MUSIC_PLAYER_08, MUSIC_PLAYER_08 },
    [SFX_20D] = { &sfx20D, MUSIC_PLAYER_09, MUSIC_PLAYER_09 },
    [SFX_20E] = { &sfx20E, MUSIC_PLAYER_0A, MUSIC_PLAYER_0A },
    [SFX_20F] = { &sfx20F, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_210] = { &sfx210, MUSIC_PLAYER_0C, MUSIC_PLAYER_0C },
    [SFX_211] = { &sfx211, MUSIC_PLAYER_0D, MUSIC_PLAYER_0D },
    [SFX_212] = { &sfx212, MUSIC_PLAYER_0E, MUSIC_PLAYER_0E },
    [SFX_213] = { &sfx213, MUSIC_PLAYER_0F, MUSIC_PLAYER_0F },
    [SFX_214] = { &sfx214, MUSIC_PLAYER_10, MUSIC_PLAYER_10 },
    [SFX_215] = { &sfx215, MUSIC_PLAYER_05, MUSIC_PLAYER_05 },
    [SFX_216] = { &sfx216, MUSIC_PLAYER_1E, MUSIC_PLAYER_1E },
    [SFX_217] = { &sfx217, MUSIC_PLAYER_1E, MUSIC_PLAYER_1E },
    [SFX_218] = { &sfx218, MUSIC_PLAYER_04, MUSIC_PLAYER_04 },
    [SFX_219] = { &sfx219, MUSIC_PLAYER_03, MUSIC_PLAYER_03 },
    [SFX_21A] = { &sfx21A, MUSIC_PLAYER_0B, MUSIC_PLAYER_0B },
    [SFX_21B] = { &sfx21B, MUSIC_PLAYER_1D, MUSIC_PLAYER_1D },
    [SFX_21C] = { &sfx21C, MUSIC_PLAYER_1C, MUSIC_PLAYER_1C },
    [SFX_21D] = { &sfx21D, MUSIC_PLAYER_1B, MUSIC_PLAYER_1B },
    [SFX_21E] = { &sfx21E, MUSIC_PLAYER_1A, MUSIC_PLAYER_1A },
    [SFX_21F] = { &sfx21F, MUSIC_PLAYER_19, MUSIC_PLAYER_19 },
    [SFX_PICOLYTE] = { &sfx220, MUSIC_PLAYER_18, MUSIC_PLAYER_18 },
    [SFX_221] = { &sfx221, MUSIC_PLAYER_17, MUSIC_PLAYER_17 },
};
