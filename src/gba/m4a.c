#include "global.h"
#include "gba/m4a.h"

// ASCII encoding of 'Smsh' in reverse
// This is presumably short for SMASH, the developer of MKS4AGB.
#define ID_NUMBER 'hsmS'

#define C_V 0x40 // center value for PAN, BEND, and TUNE

#define SOUND_MODE_REVERB_VAL 0x0000007F
#define SOUND_MODE_REVERB_SET 0x00000080
#define SOUND_MODE_MAXCHN 0x00000F00
#define SOUND_MODE_MAXCHN_SHIFT 8
#define SOUND_MODE_MASVOL 0x0000F000
#define SOUND_MODE_MASVOL_SHIFT 12
#define SOUND_MODE_FREQ_05734 0x00010000
#define SOUND_MODE_FREQ_07884 0x00020000
#define SOUND_MODE_FREQ_10512 0x00030000
#define SOUND_MODE_FREQ_13379 0x00040000
#define SOUND_MODE_FREQ_15768 0x00050000
#define SOUND_MODE_FREQ_18157 0x00060000
#define SOUND_MODE_FREQ_21024 0x00070000
#define SOUND_MODE_FREQ_26758 0x00080000
#define SOUND_MODE_FREQ_31536 0x00090000
#define SOUND_MODE_FREQ_36314 0x000A0000
#define SOUND_MODE_FREQ_40137 0x000B0000
#define SOUND_MODE_FREQ_42048 0x000C0000
#define SOUND_MODE_FREQ 0x000F0000
#define SOUND_MODE_FREQ_SHIFT 16
#define SOUND_MODE_DA_BIT_9 0x00800000
#define SOUND_MODE_DA_BIT_8 0x00900000
#define SOUND_MODE_DA_BIT_7 0x00A00000
#define SOUND_MODE_DA_BIT_6 0x00B00000
#define SOUND_MODE_DA_BIT 0x00B00000
#define SOUND_MODE_DA_BIT_SHIFT 20

typedef void (*MPlayFunc)();
typedef void (*PlyNoteFunc)(u32, MusicPlayerInfo*, MusicPlayerTrack*);
typedef void (*CgbSoundFunc)(void);
typedef void (*CgbOscOffFunc)(u8);
typedef u32 (*MidiKeyToCgbFreqFunc)(u8, u8, u8);
typedef void (*ExtVolPitFunc)(void);
typedef void (*XcmdFunc)(MusicPlayerInfo*, MusicPlayerTrack*);

typedef struct CgbChannel {
    u8 statusFlags;
    u8 type;
    u8 rightVolume;
    u8 leftVolume;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
    u8 key;
    u8 envelopeVolume;
    u8 envelopeGoal;
    u8 envelopeCounter;
    u8 echoVolume;
    u8 echoLength;
    u8 unk0;
    u8 unk1;
    u8 gateTime;
    u8 midiKey;
    u8 velocity;
    u8 priority;
    u8 rhythmPan;
    u8 unk2[3];
    u8 unk3;
    u8 sustainGoal;
    u8 n4; // NR[1-4]4 register (initial, length bit)
    u8 pan;
    u8 panMask;
    u8 modify;
    u8 length;
    u8 sweep;
    u32 frequency;
    u32* nextWave;
    u32* currentWave;
    u32 track;
    u32 prev;
    u32 next;
    u8 unk4[8];
} CgbChannel;

#define MAX_DIRECTSOUND_CHANNELS 12

#define PCM_DMA_BUF_SIZE 1584 // size of Direct Sound buffer

typedef struct SoundInfo {
    // This field is normally equal to ID_NUMBER but it is set to other
    // values during sensitive operations for locking purposes.
    // This field should be volatile but isn't. This could potentially cause
    // race conditions.
    u32 ident;

    vu8 pcmDmaCounter;

    // Direct Sound
    u8 reverb;
    u8 maxChannels;
    u8 masterVolume;
    u8 frequency;

    u8 mode;
    u8 c15;          // periodically counts from 14 down to 0 (15 states)
    u8 pcmDmaPeriod; // number of V-blanks per PCM DMA
    u8 maxLines;
    u8 gap[3];
    s32 pcmSamplesPerVBlank;
    s32 pcmFreqency;
    s32 divFreq;
    CgbChannel* cgbChannels;
    MPlayMainFunc MPlayMainHead;
    void* intp;
    void (*CgbSound)(void);
    void (*CgbOscOff)(u8);
    u32 (*MidiKeyToCgbFreq)(u8, u8, u8);
    void* MPlayJumpTable;
    void* plynote;
    void (*ExtVolPit)(void);
    u8 gap2[16];
    SoundChannel chans[MAX_DIRECTSOUND_CHANNELS];
    s8 pcmBuffer[PCM_DMA_BUF_SIZE];
} SoundInfo;

#define MUSICPLAYER_STATUS_TRACK 0x0000ffff
#define MUSICPLAYER_STATUS_PAUSE 0x80000000

#define MAX_MUSICPLAYER_TRACKS 16

#define TEMPORARY_FADE 0x0001
#define FADE_IN 0x0002
#define FADE_VOL_MAX 64
#define FADE_VOL_SHIFT 2

extern u8 gMPlayMemAccArea[];

extern char SoundMainRAM[];

extern void* gMPlayJumpTable[];

extern CgbChannel gCgbChans[];

extern char gNumMusicPlayers[];
extern char gMaxLines[];

#define NUM_MUSIC_PLAYERS ((u16)gNumMusicPlayers)
#define MAX_LINES ((u32)gMaxLines)

u32 umul3232H32(u32 multiplier, u32 multiplicand);
void SoundMain(void);
void SoundMainBTM(void);
void TrackStop(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track);
void MPlayMain();
void RealClearChain(void* x);

void MPlayContinue(MusicPlayerInfo* mplayInfo);
void MPlayStart(MusicPlayerInfo* mplayInfo, const SongHeader* songHeader);
void MPlayStop(MusicPlayerInfo* mplayInfo);
void FadeOutBody(MusicPlayerInfo* mplayInfo);
void TrkVolPitSet(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track);
void MPlayFadeOut(MusicPlayerInfo* mplayInfo, u16 speed);
void ClearChain(void* x);
void Clear64byte(void* addr);
void SoundInit(SoundInfo* soundInfo);
void MPlayExtender(CgbChannel* cgbChans);
void m4aSoundMode(u32 mode);
void MPlayOpen(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track, u8 trackCount);
void CgbSound(void);
void CgbOscOff(u8);
u32 MidiKeyToCgbFreq(u8, u8, u8);
void nullsub_141(void);
void MPlayJumpTableCopy(void** mplayJumpTable);
void SampleFreqSet(u32 freq);

void m4aMPlayVolumeControl(MusicPlayerInfo* mplayInfo, u16 trackBits, u16 volume);
void m4aMPlayPitchControl(MusicPlayerInfo* mplayInfo, u16 trackBits, s16 pitch);
void m4aMPlayPanpotControl(MusicPlayerInfo* mplayInfo, u16 trackBits, s8 pan);
void ClearModM(MusicPlayerTrack* track);
void m4aMPlayModDepthSet(MusicPlayerInfo* mplayInfo, u16 trackBits, u8 modDepth);
void m4aMPlayLFOSpeedSet(MusicPlayerInfo* mplayInfo, u16 trackBits, u8 lfoSpeed);

// sound command handler functions
void ply_fine(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_goto(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_patt(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_pend(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_rept(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_memacc(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_prio(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_tempo(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_keysh(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_voice(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_vol(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_pan(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_bend(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_bendr(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_lfos(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_lfodl(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_mod(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_modt(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_tune(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_port(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xcmd(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_endtie(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_note(MusicPlayerInfo*, MusicPlayerTrack*);

// extended sound command handler functions
void ply_xxx(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xwave(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xtype(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xatta(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xdeca(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xsust(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xrele(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xiecv(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xiecl(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xleng(MusicPlayerInfo*, MusicPlayerTrack*);
void ply_xswee(MusicPlayerInfo*, MusicPlayerTrack*);

u8 SoundMainRAM_Buffer[0x380];
extern SoundInfo gSoundInfo;

#define SOUND_CHANNEL_SF_START 0x80
#define SOUND_CHANNEL_SF_STOP 0x40
#define SOUND_CHANNEL_SF_LOOP 0x10
#define SOUND_CHANNEL_SF_IEC 0x04
#define SOUND_CHANNEL_SF_ENV 0x03
#define SOUND_CHANNEL_SF_ENV_ATTACK 0x03
#define SOUND_CHANNEL_SF_ENV_DECAY 0x02
#define SOUND_CHANNEL_SF_ENV_SUSTAIN 0x01
#define SOUND_CHANNEL_SF_ENV_RELEASE 0x00
#define SOUND_CHANNEL_SF_ON \
    (SOUND_CHANNEL_SF_START | SOUND_CHANNEL_SF_STOP | SOUND_CHANNEL_SF_IEC | SOUND_CHANNEL_SF_ENV)

#define CGB_CHANNEL_MO_PIT 0x02
#define CGB_CHANNEL_MO_VOL 0x01

#define CGB_NRx2_ENV_DIR_DEC 0x00
#define CGB_NRx2_ENV_DIR_INC 0x08

void* const gMPlayJumpTableTemplate[] = {
    ply_fine,  ply_goto,  ply_patt,   ply_pend,      ply_rept,  ply_fine,    ply_fine,     ply_fine,       ply_fine,
    ply_prio,  ply_tempo, ply_keysh,  ply_voice,     ply_vol,   ply_pan,     ply_bend,     ply_bendr,      ply_lfos,
    ply_lfodl, ply_mod,   ply_modt,   ply_fine,      ply_fine,  ply_tune,    ply_fine,     ply_fine,       ply_fine,
    ply_port,  ply_fine,  ply_endtie, SampleFreqSet, TrackStop, FadeOutBody, TrkVolPitSet, RealClearChain, SoundMainBTM,
};

const u8 gScaleTable[] = {
    0xE0, 0xE1, 0xE2, 0xE3, 0xE4, 0xE5, 0xE6, 0xE7, 0xE8, 0xE9, 0xEA, 0xEB, 0xD0, 0xD1, 0xD2, 0xD3, 0xD4, 0xD5,
    0xD6, 0xD7, 0xD8, 0xD9, 0xDA, 0xDB, 0xC0, 0xC1, 0xC2, 0xC3, 0xC4, 0xC5, 0xC6, 0xC7, 0xC8, 0xC9, 0xCA, 0xCB,
    0xB0, 0xB1, 0xB2, 0xB3, 0xB4, 0xB5, 0xB6, 0xB7, 0xB8, 0xB9, 0xBA, 0xBB, 0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5,
    0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B,
    0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75,
    0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B,
    0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45,
    0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B,
    0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15,
    0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B,
};

const u32 gFreqTable[] = {
    2147483648u, 2275179671u, 2410468894u, 2553802834u, 2705659852u, 2866546760u,
    3037000500u, 3217589947u, 3408917802u, 3611622603u, 3826380858u, 4053909305u,
};

const u16 gPcmSamplesPerVBlankTable[] = {
    96, 132, 176, 224, 264, 304, 352, 448, 528, 608, 672, 704,
};

const u8 gCgbScaleTable[] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16,
    0x17, 0x18, 0x19, 0x1A, 0x1B, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x30, 0x31,
    0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48,
    0x49, 0x4A, 0x4B, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x60, 0x61, 0x62, 0x63,
    0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A,
    0x7B, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B, 0x90, 0x91, 0x92, 0x93, 0x94, 0x95,
    0x96, 0x97, 0x98, 0x99, 0x9A, 0x9B, 0xA0, 0xA1, 0xA2, 0xA3, 0xA4, 0xA5, 0xA6, 0xA7, 0xA8, 0xA9, 0xAA, 0xAB,
};

const s16 gCgbFreqTable[] = {
    -2004, -1891, -1785, -1685, -1591, -1501, -1417, -1337, -1262, -1192, -1125, -1062,
};

const u8 gNoiseTable[] = {
    0xD7, 0xD6, 0xD5, 0xD4, 0xC7, 0xC6, 0xC5, 0xC4, 0xB7, 0xB6, 0xB5, 0xB4, 0xA7, 0xA6, 0xA5,
    0xA4, 0x97, 0x96, 0x95, 0x94, 0x87, 0x86, 0x85, 0x84, 0x77, 0x76, 0x75, 0x74, 0x67, 0x66,
    0x65, 0x64, 0x57, 0x56, 0x55, 0x54, 0x47, 0x46, 0x45, 0x44, 0x37, 0x36, 0x35, 0x34, 0x27,
    0x26, 0x25, 0x24, 0x17, 0x16, 0x15, 0x14, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00,
};

const u8 gCgb3Vol[] = {
    0x00, 0x00, 0x60, 0x60, 0x60, 0x60, 0x40, 0x40, 0x40, 0x40, 0x80, 0x80, 0x80, 0x80, 0x20, 0x20,
};

const u8 gClockTable[] = {
    0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10,
    0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x1C, 0x1E, 0x20, 0x24, 0x28, 0x2A, 0x2C, 0x30, 0x34,
    0x36, 0x38, 0x3C, 0x40, 0x42, 0x44, 0x48, 0x4C, 0x4E, 0x50, 0x54, 0x58, 0x5A, 0x5C, 0x60,
};

const XcmdFunc gXcmdTable[] = {
    ply_xxx,   ply_xwave, ply_xtype, ply_xxx,   ply_xatta, ply_xdeca,
    ply_xsust, ply_xrele, ply_xiecv, ply_xiecl, ply_xleng, ply_xswee,
};

void nullsub_544();

u32 MidiKeyToFreq(WaveData* wav, u8 key, u8 fineAdjust) {
    u32 val1;
    u32 val2;
    u32 fineAdjustShifted = fineAdjust << 24;

    if (key > 178) {
        key = 178;
        fineAdjustShifted = 255 << 24;
    }

    val1 = gScaleTable[key];
    val1 = gFreqTable[val1 & 0xF] >> (val1 >> 4);

    val2 = gScaleTable[key + 1];
    val2 = gFreqTable[val2 & 0xF] >> (val2 >> 4);

    return umul3232H32(wav->freq, val1 + umul3232H32(val2 - val1, fineAdjustShifted));
}

void nullsub_543() {
}

void MPlayContinue(MusicPlayerInfo* mplayInfo) {
    if (mplayInfo->ident == ID_NUMBER) {
        mplayInfo->ident++;
        mplayInfo->status &= ~MUSICPLAYER_STATUS_PAUSE;
        mplayInfo->ident = ID_NUMBER;
    }
}

void MPlayFadeOut(MusicPlayerInfo* mplayInfo, u16 speed) {
    if (mplayInfo->ident == ID_NUMBER) {
        mplayInfo->ident++;
        mplayInfo->fadeOC = speed;
        mplayInfo->fadeOI = speed;
        mplayInfo->fadeOV = (64 << FADE_VOL_SHIFT);
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aSoundInit(void) {
    s32 i;

    CpuCopy32((void*)((s32)SoundMainRAM & ~1), SoundMainRAM_Buffer, sizeof(SoundMainRAM_Buffer));

    SoundInit(&gSoundInfo);
    MPlayExtender(gCgbChans);
    m4aSoundMode(SOUND_MODE_DA_BIT_8 | SOUND_MODE_FREQ_15768 | (0xf << SOUND_MODE_MASVOL_SHIFT) |
                 (8 << SOUND_MODE_MAXCHN_SHIFT));

    for (i = 0; i < NUM_MUSIC_PLAYERS; i++) {
        MusicPlayerInfo* mplayInfo = gMusicPlayers[i].info;
        MPlayOpen(mplayInfo, gMusicPlayers[i].tracks, gMusicPlayers[i].nTracks);
        mplayInfo->unk_B = gMusicPlayers[i].unk_A;
        mplayInfo->memAccArea = gMPlayMemAccArea;
    }
}

void m4aSoundMain(void) {
    SoundMain();
}

void m4aSongNumStart(u16 n) {
    const MusicPlayer* mplayTable = gMusicPlayers;
    const Song* songTable = gSongTable;
    const Song* song = &songTable[n];
    const MusicPlayer* mplay = &mplayTable[song->musicPlayerIndex];

    MPlayStart(mplay->info, song->header);
}

void m4aSongNumStartOrChange(u16 n) {
    const MusicPlayer* mplayTable = gMusicPlayers;
    const Song* songTable = gSongTable;
    const Song* song = &songTable[n];
    const MusicPlayer* mplay = &mplayTable[song->musicPlayerIndex];

    if (mplay->info->songHeader != song->header) {
        MPlayStart(mplay->info, song->header);
    } else {
        if ((mplay->info->status & MUSICPLAYER_STATUS_TRACK) == 0 || (mplay->info->status & MUSICPLAYER_STATUS_PAUSE)) {
            MPlayStart(mplay->info, song->header);
        }
    }
}

void m4aSongNumStartOrContinue(u16 n) {
    const MusicPlayer* mplayTable = gMusicPlayers;
    const Song* songTable = gSongTable;
    const Song* song = &songTable[n];
    const MusicPlayer* mplay = &mplayTable[song->musicPlayerIndex];

    if (mplay->info->songHeader != song->header)
        MPlayStart(mplay->info, song->header);
    else if ((mplay->info->status & MUSICPLAYER_STATUS_TRACK) == 0)
        MPlayStart(mplay->info, song->header);
    else if (mplay->info->status & MUSICPLAYER_STATUS_PAUSE)
        MPlayContinue(mplay->info);
}

void m4aSongNumStop(u16 n) {
    const MusicPlayer* mplayTable = gMusicPlayers;
    const Song* songTable = gSongTable;
    const Song* song = &songTable[n];
    const MusicPlayer* mplay = &mplayTable[song->musicPlayerIndex];

    if (mplay->info->songHeader == song->header)
        MPlayStop(mplay->info);
}

void m4aSongNumContinue(u16 n) {
    const MusicPlayer* mplayTable = gMusicPlayers;
    const Song* songTable = gSongTable;
    const Song* song = &songTable[n];
    const MusicPlayer* mplay = &mplayTable[song->musicPlayerIndex];

    if (mplay->info->songHeader == song->header)
        MPlayContinue(mplay->info);
}

void m4aMPlayAllStop(void) {
    s32 i;

    for (i = 0; i < NUM_MUSIC_PLAYERS; i++)
        MPlayStop(gMusicPlayers[i].info);
}

void m4aMPlayContinue(MusicPlayerInfo* mplayInfo) {
    MPlayContinue(mplayInfo);
}

void m4aMPlayAllContinue(void) {
    s32 i;

    for (i = 0; i < NUM_MUSIC_PLAYERS; i++)
        MPlayContinue(gMusicPlayers[i].info);
}

void m4aMPlayFadeOut(MusicPlayerInfo* mplayInfo, u16 speed) {
    MPlayFadeOut(mplayInfo, speed);
}

void m4aMPlayFadeOutTemporarily(MusicPlayerInfo* mplayInfo, u16 speed) {
    if (mplayInfo->ident == ID_NUMBER) {
        mplayInfo->ident++;
        mplayInfo->fadeOC = speed;
        mplayInfo->fadeOI = speed;
        mplayInfo->fadeOV = (64 << FADE_VOL_SHIFT) | TEMPORARY_FADE;
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aMPlayFadeIn(MusicPlayerInfo* mplayInfo, u16 speed) {
    if (mplayInfo->ident == ID_NUMBER) {
        mplayInfo->ident++;
        mplayInfo->fadeOC = speed;
        mplayInfo->fadeOI = speed;
        mplayInfo->fadeOV = (0 << FADE_VOL_SHIFT) | FADE_IN;
        mplayInfo->status &= ~MUSICPLAYER_STATUS_PAUSE;
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aMPlayImmInit(MusicPlayerInfo* mplayInfo) {
    s32 trackCount;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;
    trackCount = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (trackCount > 0) {
        if (track->flags & MPT_FLG_EXIST) {
            if (track->flags & MPT_FLG_START) {
                Clear64byte(track);
                track->flags = MPT_FLG_EXIST;
                track->bendRange = 2;
                track->volX = 64;
                track->lfoSpeed = 22;
                track->tone.type = 1;
            }
        }

        trackCount--;
        track++;
    }
    mplayInfo->ident = ID_NUMBER;
}

void MPlayExtender(CgbChannel* cgbChans) {
    SoundInfo* soundInfo;
    u32 ident;

    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE | SOUND_4_ON | SOUND_3_ON | SOUND_2_ON | SOUND_1_ON;
    REG_SOUNDCNT_L = 0; // set master volume to zero
    REG_NR12 = 0x8;
    REG_NR22 = 0x8;
    REG_NR42 = 0x8;
    REG_NR14 = 0x80;
    REG_NR24 = 0x80;
    REG_NR44 = 0x80;
    REG_NR30 = 0;
    REG_NR50 = 0x77;

    soundInfo = SOUND_INFO_PTR;

    ident = soundInfo->ident;

    if (ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    gMPlayJumpTable[8] = ply_memacc;
    gMPlayJumpTable[17] = ply_lfos;
    gMPlayJumpTable[19] = ply_mod;
    gMPlayJumpTable[28] = ply_xcmd;
    gMPlayJumpTable[29] = ply_endtie;
    gMPlayJumpTable[30] = SampleFreqSet;
    gMPlayJumpTable[31] = TrackStop;
    gMPlayJumpTable[32] = FadeOutBody;
    gMPlayJumpTable[33] = TrkVolPitSet;

    soundInfo->cgbChannels = cgbChans;
    soundInfo->CgbSound = CgbSound;
    soundInfo->CgbOscOff = CgbOscOff;
    soundInfo->MidiKeyToCgbFreq = MidiKeyToCgbFreq;
    soundInfo->maxLines = MAX_LINES;

    CpuFill32(0, cgbChans, sizeof(CgbChannel) * 4);

    cgbChans[0].type = 1;
    cgbChans[0].panMask = 0x11;
    cgbChans[1].type = 2;
    cgbChans[1].panMask = 0x22;
    cgbChans[2].type = 3;
    cgbChans[2].panMask = 0x44;
    cgbChans[3].type = 4;
    cgbChans[3].panMask = 0x88;

    soundInfo->ident = ident;
}

void MusicPlayerJumpTableCopy(void) {
    asm("swi 0x2A");
}

void ClearChain(void* x) {
    void (*func)(void*) = *(&gMPlayJumpTable[34]);
    func(x);
}

void Clear64byte(void* addr) {
    void (*func)(void*) = *(&gMPlayJumpTable[35]);
    func(addr);
}

void SoundInit(SoundInfo* soundInfo) {
    soundInfo->ident = 0;

    if (REG_DMA1CNT & (DMA_REPEAT << 16))
        REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

    REG_DMA1CNT_H = DMA_32BIT;
    REG_SOUNDCNT_X = SOUND_MASTER_ENABLE | SOUND_4_ON | SOUND_3_ON | SOUND_2_ON | SOUND_1_ON;
    REG_SOUNDCNT_H =
        SOUND_A_FIFO_RESET | SOUND_A_TIMER_0 | SOUND_A_LEFT_OUTPUT | SOUND_A_RIGHT_OUTPUT | SOUND_ALL_MIX_FULL;
    REG_SOUNDBIAS_H = (REG_SOUNDBIAS_H & 0x3F) | 0x40;

    REG_DMA1SAD = (s32)soundInfo->pcmBuffer;
    REG_DMA1DAD = (s32)&REG_FIFO_A;

    SOUND_INFO_PTR = soundInfo;
    CpuFill32(0, soundInfo, sizeof(SoundInfo));

    soundInfo->maxChannels = 8;
    soundInfo->masterVolume = 15;
    soundInfo->plynote = ply_note;
    soundInfo->CgbSound = nullsub_544;
    soundInfo->CgbOscOff = (CgbOscOffFunc)nullsub_544;
    soundInfo->MidiKeyToCgbFreq = (MidiKeyToCgbFreqFunc)nullsub_544;
    soundInfo->ExtVolPit = (ExtVolPitFunc)nullsub_544;

    MPlayJumpTableCopy(gMPlayJumpTable);

    soundInfo->MPlayJumpTable = gMPlayJumpTable;

    SampleFreqSet(SOUND_MODE_FREQ_13379);

    soundInfo->ident = ID_NUMBER;
}

void SampleFreqSet(u32 freq) {
    SoundInfo* soundInfo;
    m4aSoundVSyncOff();
    soundInfo = SOUND_INFO_PTR;

    freq = (freq & 0xF0000) >> 16;
    soundInfo->frequency = freq;
    soundInfo->pcmSamplesPerVBlank = gPcmSamplesPerVBlankTable[freq - 1];
    soundInfo->pcmDmaPeriod = PCM_DMA_BUF_SIZE / soundInfo->pcmSamplesPerVBlank;

    // LCD refresh rate 59.7275Hz
    soundInfo->pcmFreqency = (597275 * soundInfo->pcmSamplesPerVBlank + 5000) / 10000;

    // CPU frequency 16.78Mhz
    soundInfo->divFreq = (16777216 / soundInfo->pcmFreqency + 1) >> 1;

    m4aSoundVSyncOn();
}

void m4aSoundMode(u32 mode) {
    SoundInfo* soundInfo = SOUND_INFO_PTR;
    u32 temp;

    if (soundInfo->ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    temp = mode & (SOUND_MODE_REVERB_SET | SOUND_MODE_REVERB_VAL);

    if (temp)
        soundInfo->reverb = temp & SOUND_MODE_REVERB_VAL;

    temp = mode & SOUND_MODE_MAXCHN;

    if (temp) {
        SoundChannel* chan;

        soundInfo->maxChannels = temp >> SOUND_MODE_MAXCHN_SHIFT;

        temp = MAX_DIRECTSOUND_CHANNELS;
        chan = &soundInfo->chans[0];

        while (temp != 0) {
            chan->statusFlags = 0;
            temp--;
            chan++;
        }
    }

    temp = mode & SOUND_MODE_MASVOL;

    if (temp)
        soundInfo->masterVolume = temp >> SOUND_MODE_MASVOL_SHIFT;

    temp = mode & SOUND_MODE_DA_BIT;

    if (temp) {
        temp = (temp & 0x300000) >> 14;
        REG_SOUNDBIAS_H = (REG_SOUNDBIAS_H & 0x3F) | temp;
    }

    temp = mode & SOUND_MODE_FREQ;

    if (temp) {
        SampleFreqSet(temp);
    }

    soundInfo->ident = ID_NUMBER;
}

void SoundClear(void) {
    SoundInfo* soundInfo = SOUND_INFO_PTR;
    s32 i;
    void* chan;

    if (soundInfo->ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    i = MAX_DIRECTSOUND_CHANNELS;
    chan = &soundInfo->chans[0];

    while (i > 0) {
        ((SoundChannel*)chan)->statusFlags = 0;
        i--;
        chan = (void*)((s32)chan + sizeof(SoundChannel));
    }

    chan = soundInfo->cgbChannels;

    if (chan) {
        i = 1;

        while (i <= 4) {
            soundInfo->CgbOscOff(i);
            ((CgbChannel*)chan)->statusFlags = 0;
            i++;
            chan = (void*)((s32)chan + sizeof(CgbChannel));
        }
    }

    soundInfo->ident = ID_NUMBER;
}

void m4aSoundVSyncOff(void) {
    SoundInfo* soundInfo = SOUND_INFO_PTR;

    if (soundInfo->ident >= ID_NUMBER && soundInfo->ident <= ID_NUMBER + 1) {
        soundInfo->ident += 10;

        REG_TM0CNT_H = 0;

        if (REG_DMA1CNT & (DMA_REPEAT << 16))
            REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;

        REG_DMA1CNT_H = DMA_32BIT;

        CpuFill32(0, soundInfo->pcmBuffer, sizeof(soundInfo->pcmBuffer));
    }
}

#define REG_VCOUNT_8 (*(vu8*)REG_ADDR_VCOUNT)

void m4aSoundVSyncOn(void) {
    SoundInfo* soundInfo = SOUND_INFO_PTR;
    u32 ident = soundInfo->ident;

    if (ident == ID_NUMBER)
        return;

    REG_DMA1CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;

    soundInfo->pcmDmaCounter = 0;
    soundInfo->ident = ident - 10;

    while (REG_VCOUNT_8 == 0x9f) {}
    while (REG_VCOUNT_8 != 0x9f) {}

    REG_TM0CNT_L = -(0x44940 / soundInfo->pcmSamplesPerVBlank);
    REG_TM0CNT_H = 0x80;
}

void m4aSoundVSync(void) {
    SoundInfo* soundInfo = SOUND_INFO_PTR;

    if (soundInfo->ident - ID_NUMBER > 1)
        return;

    soundInfo->pcmDmaCounter--;
    if ((s8)soundInfo->pcmDmaCounter > 0)
        return;
    soundInfo->pcmDmaCounter = soundInfo->pcmDmaPeriod;
    if (REG_DMA1CNT & (DMA_REPEAT << 16)) {
        REG_DMA1CNT = ((DMA_ENABLE | DMA_START_NOW | DMA_32BIT | DMA_SRC_INC | DMA_DEST_FIXED) << 16) | 4;
    }
    REG_DMA1CNT_H = DMA_32BIT;
    REG_DMA1CNT_H = DMA_ENABLE | DMA_START_SPECIAL | DMA_32BIT | DMA_REPEAT;
}

void MPlayOpen(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* tracks, u8 trackCount) {
    SoundInfo* soundInfo;

    if (trackCount == 0)
        return;

    if (trackCount > MAX_MUSICPLAYER_TRACKS)
        trackCount = MAX_MUSICPLAYER_TRACKS;

    soundInfo = SOUND_INFO_PTR;

    if (soundInfo->ident != ID_NUMBER)
        return;

    soundInfo->ident++;

    Clear64byte(mplayInfo);

    mplayInfo->tracks = tracks;
    mplayInfo->trackCount = trackCount;
    mplayInfo->status = MUSICPLAYER_STATUS_PAUSE;

    while (trackCount != 0) {
        tracks->flags = 0;
        trackCount--;
        tracks++;
    }

    // append music player and MPlayMain to linked list

    if (soundInfo->MPlayMainHead != NULL) {
        mplayInfo->func = soundInfo->MPlayMainHead;
        mplayInfo->intp = soundInfo->intp;
        // NULL assignment semantically useless, but required for match
        soundInfo->MPlayMainHead = NULL;
    }

    soundInfo->intp = mplayInfo;
    soundInfo->MPlayMainHead = MPlayMain;
    soundInfo->ident = ID_NUMBER;
    mplayInfo->ident = ID_NUMBER;
}

void MPlayStart(MusicPlayerInfo* mplayInfo, const SongHeader* songHeader) {
    s32 i;
    u8 unk_B;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;
    mplayInfo->ident++;

    unk_B = mplayInfo->unk_B;

    if (!unk_B ||
        ((!mplayInfo->songHeader || !(mplayInfo->tracks[0].flags & MPT_FLG_START)) &&
         ((mplayInfo->status & MUSICPLAYER_STATUS_TRACK) == 0 || (mplayInfo->status & MUSICPLAYER_STATUS_PAUSE))) ||
        (mplayInfo->priority <= songHeader->priority)) {
        mplayInfo->status = 0;
        mplayInfo->songHeader = songHeader;
        mplayInfo->tone = songHeader->tone;
        mplayInfo->priority = songHeader->priority;
        mplayInfo->clock = 0;
        mplayInfo->tempoD = 150;
        mplayInfo->tempoI = 150;
        mplayInfo->tempoU = 0x100;
        mplayInfo->tempoC = 0;
        mplayInfo->fadeOI = 0;

        i = 0;
        track = mplayInfo->tracks;

        while (i < songHeader->trackCount && i < mplayInfo->trackCount) {
            TrackStop(mplayInfo, track);
            track->flags = MPT_FLG_EXIST | MPT_FLG_START;
            track->chan = 0;
            track->cmdPtr = songHeader->part[i];
            i++;
            track++;
        }

        while (i < mplayInfo->trackCount) {
            TrackStop(mplayInfo, track);
            track->flags = 0;
            i++;
            track++;
        }

        if (songHeader->reverb & SOUND_MODE_REVERB_SET)
            m4aSoundMode(songHeader->reverb);
    }
    mplayInfo->ident = ID_NUMBER;
}

void MPlayStop(MusicPlayerInfo* mplayInfo) {
    s32 i;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;
    mplayInfo->status |= MUSICPLAYER_STATUS_PAUSE;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (i > 0) {
        TrackStop(mplayInfo, track);
        i--;
        track++;
    }

    mplayInfo->ident = ID_NUMBER;
}

void FadeOutBody(MusicPlayerInfo* mplayInfo) {
    s32 i;
    MusicPlayerTrack* track;
    u16 fadeOV;

    if (mplayInfo->fadeOI == 0)
        return;
    if (--mplayInfo->fadeOC != 0)
        return;

    mplayInfo->fadeOC = mplayInfo->fadeOI;

    if (mplayInfo->fadeOV & FADE_IN) {
        if ((u16)(mplayInfo->fadeOV += (4 << FADE_VOL_SHIFT)) >= (64 << FADE_VOL_SHIFT)) {
            mplayInfo->fadeOV = (64 << FADE_VOL_SHIFT);
            mplayInfo->fadeOI = 0;
        }
    } else {
        if ((s16)(mplayInfo->fadeOV -= (4 << FADE_VOL_SHIFT)) <= 0) {
            i = mplayInfo->trackCount;
            track = mplayInfo->tracks;

            while (i > 0) {
                u32 val;

                TrackStop(mplayInfo, track);

                fadeOV = mplayInfo->fadeOV;
                val = TEMPORARY_FADE;
                val &= fadeOV;

                if (!val)
                    track->flags = 0;

                i--;
                track++;
            }

            if (mplayInfo->fadeOV & TEMPORARY_FADE)
                mplayInfo->status |= MUSICPLAYER_STATUS_PAUSE;
            else
                mplayInfo->status = MUSICPLAYER_STATUS_PAUSE;

            mplayInfo->fadeOI = 0;
            return;
        }
    }

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;

    while (i > 0) {
        if (track->flags & MPT_FLG_EXIST) {
            fadeOV = mplayInfo->fadeOV;

            track->volX = (fadeOV >> FADE_VOL_SHIFT);
            track->flags |= MPT_FLG_VOLCHG;
        }

        i--;
        track++;
    }
}

void TrkVolPitSet(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    if (track->flags & MPT_FLG_VOLSET) {
        s32 x;
        s32 y;

        x = (u32)(track->vol * track->volX) >> 5;

        if (track->modT == 1)
            x = (u32)(x * (track->modM + 128)) >> 7;

        y = 2 * track->pan + track->panX;

        if (track->modT == 2)
            y += track->modM;

        if (y < -128)
            y = -128;
        else if (y > 127)
            y = 127;

        track->volMR = (u32)((y + 128) * x) >> 8;
        track->volML = (u32)((127 - y) * x) >> 8;
    }

    if (track->flags & MPT_FLG_PITSET) {
        s32 bend = track->bend * track->bendRange;
        s32 x = (track->tune + bend) * 4 + (track->keyShift << 8) + (track->keyShiftX << 8) + track->pitX;

        if (track->modT == 0)
            x += 16 * track->modM;

        track->keyM = x >> 8;
        track->pitM = x;
    }

    track->flags &= ~(MPT_FLG_PITSET | MPT_FLG_VOLSET);
}

u32 MidiKeyToCgbFreq(u8 chanNum, u8 key, u8 fineAdjust) {
    if (chanNum == 4) {
        if (key <= 20) {
            key = 0;
        } else {
            key -= 21;
            if (key > 59)
                key = 59;
        }

        return gNoiseTable[key];
    } else {
        s32 val1;
        s32 val2;

        if (key <= 35) {
            fineAdjust = 0;
            key = 0;
        } else {
            key -= 36;
            if (key > 130) {
                key = 130;
                fineAdjust = 255;
            }
        }

        val1 = gCgbScaleTable[key];
        val1 = gCgbFreqTable[val1 & 0xF] >> (val1 >> 4);

        val2 = gCgbScaleTable[key + 1];
        val2 = gCgbFreqTable[val2 & 0xF] >> (val2 >> 4);

        return val1 + ((fineAdjust * (val2 - val1)) >> 8) + 2048;
    }
}

void CgbOscOff(u8 chanNum) {
    switch (chanNum) {
        case 1:
            REG_NR12 = 8;
            REG_NR14 = 0x80;
            break;
        case 2:
            REG_NR22 = 8;
            REG_NR24 = 0x80;
            break;
        case 3:
            REG_NR30 = 0;
            break;
        default:
            REG_NR42 = 8;
            REG_NR44 = 0x80;
    }
}

static inline int CgbPan(CgbChannel* chan) {
    u32 rightVolume = chan->rightVolume;
    u32 leftVolume = chan->leftVolume;
    u8 rightVolume2 = rightVolume;
    u8 leftVolume2 = leftVolume;
    if (rightVolume2 >= leftVolume2) {
        if (rightVolume2 / 2 >= leftVolume2) {
            chan->pan = 0x0F;
            return 1;
        }
    } else {
        if (leftVolume2 / 2 >= rightVolume2) {
            chan->pan = 0xF0;
            return 1;
        }
    }
    return 0;
}

void CgbModVol(CgbChannel* chan) {
    SoundInfo* soundInfo = SOUND_INFO_PTR;

    if (!CgbPan(chan)) {
        chan->pan = 0xFF;
        chan->envelopeGoal = (u32)(chan->rightVolume + chan->leftVolume) / 16;
    } else {
        chan->envelopeGoal = (u32)(chan->rightVolume + chan->leftVolume) / 16;
        if (chan->envelopeGoal > 15)
            chan->envelopeGoal = 15;
    }

    chan->sustainGoal = (chan->envelopeGoal * chan->sustain + 15) >> 4;
    chan->pan &= chan->panMask;
}

void CgbSound(void) {
    s32 ch;
    CgbChannel* channels;
    s32 envelopeStepTimeAndDir;
    s32 prevC15;
    SoundInfo* soundInfo = SOUND_INFO_PTR;
    vu8* nrx0ptr;
    vu8* nrx1ptr;
    vu8* nrx2ptr;
    vu8* nrx3ptr;
    vu8* nrx4ptr;
    vu8* sp1C;
    u8 sp00;

    // Most comparision operations that cast to s8 perform 'and' by 0xFF.
    int mask = 0xff;

    if (soundInfo->c15)
        soundInfo->c15--;
    else
        soundInfo->c15 = 14;

    for (ch = 1, channels = soundInfo->cgbChannels, sp1C = &sp00; ch <= 4; ch++, channels++) {
        if (!(channels->statusFlags & SOUND_CHANNEL_SF_ON))
            continue;

        /* 1. determine hardware channel registers */
        switch (ch) {
            case 1:
                nrx0ptr = (vu8*)(REG_ADDR_NR10);
                nrx1ptr = (vu8*)(REG_ADDR_NR11);
                nrx2ptr = (vu8*)(REG_ADDR_NR12);
                nrx3ptr = (vu8*)(REG_ADDR_NR13);
                nrx4ptr = (vu8*)(REG_ADDR_NR14);
                *sp1C = 0;
                break;
            case 2:
                nrx0ptr = (vu8*)(REG_ADDR_NR10 + 1);
                nrx1ptr = (vu8*)(REG_ADDR_NR21);
                nrx2ptr = (vu8*)(REG_ADDR_NR22);
                nrx3ptr = (vu8*)(REG_ADDR_NR23);
                nrx4ptr = (vu8*)(REG_ADDR_NR24);
                *sp1C = 1;
                break;
            case 3:
                nrx0ptr = (vu8*)(REG_ADDR_NR30);
                nrx1ptr = (vu8*)(REG_ADDR_NR31);
                nrx2ptr = (vu8*)(REG_ADDR_NR32);
                nrx3ptr = (vu8*)(REG_ADDR_NR33);
                nrx4ptr = (vu8*)(REG_ADDR_NR34);
                *sp1C = 2;
                break;
            default:
                nrx0ptr = (vu8*)(REG_ADDR_NR30 + 1);
                nrx1ptr = (vu8*)(REG_ADDR_NR41);
                nrx2ptr = (vu8*)(REG_ADDR_NR42);
                nrx3ptr = (vu8*)(REG_ADDR_NR43);
                nrx4ptr = (vu8*)(REG_ADDR_NR44);
                *sp1C = 3;
                break;
        }

        prevC15 = soundInfo->c15;
        envelopeStepTimeAndDir = *nrx2ptr;

        /* 2. calculate envelope volume */
        if (channels->statusFlags & SOUND_CHANNEL_SF_START) {
            if (!(channels->statusFlags & SOUND_CHANNEL_SF_STOP)) {
                channels->statusFlags = SOUND_CHANNEL_SF_ENV_ATTACK;
                channels->modify = CGB_CHANNEL_MO_PIT | CGB_CHANNEL_MO_VOL;
                CgbModVol(channels);
                switch (ch) {
                    case 1:
                        *nrx0ptr = channels->sweep;
                        // fallthrough
                    case 2:
                        *nrx1ptr = ((u32)channels->nextWave << 6) + channels->length;
                        goto init_env_step_time_dir;
                    case 3:
                        if (channels->nextWave != channels->currentWave) {
                            *nrx0ptr = 0x40;
                            REG_WAVE_RAM0 = channels->nextWave[0];
                            REG_WAVE_RAM1 = channels->nextWave[1];
                            REG_WAVE_RAM2 = channels->nextWave[2];
                            REG_WAVE_RAM3 = channels->nextWave[3];
                            channels->currentWave = channels->nextWave;
                        }
                        *nrx0ptr = 0;
                        *nrx1ptr = channels->length;
                        if (channels->length)
                            channels->n4 = 0xC0;
                        else
                            channels->n4 = 0x80;
                        break;
                    default:
                        *nrx1ptr = channels->length;
                        *nrx3ptr = (u32)channels->nextWave << 3;
                    init_env_step_time_dir:
                        envelopeStepTimeAndDir = channels->attack + CGB_NRx2_ENV_DIR_INC;
                        if (channels->length)
                            channels->n4 = 0x40;
                        else
                            channels->n4 = 0x00;
                        break;
                }
                channels->envelopeCounter = channels->attack;
                if ((s8)(channels->attack & mask)) {
                    channels->envelopeVolume = 0;
                    goto envelope_step_complete;
                } else {
                    // skip attack phase if attack is instantaneous (=0)
                    goto envelope_decay_start;
                }
            } else {
                goto oscillator_off;
            }
        } else if (channels->statusFlags & SOUND_CHANNEL_SF_IEC || !((REG_NR52 >> *sp1C) & 1)) {
            channels->echoLength--;
            if ((s8)(channels->echoLength & mask) <= 0) {
            oscillator_off:
                CgbOscOff(ch);
                channels->statusFlags = 0;
                goto channel_complete;
            }
            goto envelope_complete;
        } else if ((channels->statusFlags & SOUND_CHANNEL_SF_STOP) && (channels->statusFlags & SOUND_CHANNEL_SF_ENV)) {
            channels->statusFlags &= ~SOUND_CHANNEL_SF_ENV;
            channels->envelopeCounter = channels->release;
            if ((s8)(channels->release & mask)) {
                channels->modify |= CGB_CHANNEL_MO_VOL;
                if (ch != 3)
                    envelopeStepTimeAndDir = channels->release | CGB_NRx2_ENV_DIR_DEC;
                goto envelope_step_complete;
            } else {
                goto envelope_pseudoecho_start;
            }
        } else {
        envelope_step_repeat:
            if (channels->envelopeCounter == 0) {
                if (ch == 3)
                    channels->modify |= CGB_CHANNEL_MO_VOL;

                CgbModVol(channels);
                if ((channels->statusFlags & SOUND_CHANNEL_SF_ENV) == SOUND_CHANNEL_SF_ENV_RELEASE) {
                    channels->envelopeVolume--;
                    if ((s8)(channels->envelopeVolume & mask) <= 0) {
                    envelope_pseudoecho_start:
                        channels->envelopeVolume = ((channels->envelopeGoal * channels->echoVolume) + 0xFF) >> 8;
                        if (channels->envelopeVolume) {
                            channels->statusFlags |= SOUND_CHANNEL_SF_IEC;
                            channels->modify |= CGB_CHANNEL_MO_VOL;
                            if (ch != 3)
                                envelopeStepTimeAndDir = 0 | CGB_NRx2_ENV_DIR_INC;
                            goto envelope_complete;
                        } else {
                            goto oscillator_off;
                        }
                    } else {
                        channels->envelopeCounter = channels->release;
                    }
                } else if ((channels->statusFlags & SOUND_CHANNEL_SF_ENV) == SOUND_CHANNEL_SF_ENV_SUSTAIN) {
                envelope_sustain:
                    channels->envelopeVolume = channels->sustainGoal;
                    channels->envelopeCounter = 7;
                } else if ((channels->statusFlags & SOUND_CHANNEL_SF_ENV) == SOUND_CHANNEL_SF_ENV_DECAY) {
                    int envelopeVolume, sustainGoal;

                    channels->envelopeVolume--;
                    envelopeVolume = (s8)(channels->envelopeVolume & mask);
                    sustainGoal = (s8)(channels->sustainGoal);
                    if (envelopeVolume <= sustainGoal) {
                    envelope_sustain_start:
                        if (channels->sustain == 0) {
                            channels->statusFlags &= ~SOUND_CHANNEL_SF_ENV;
                            goto envelope_pseudoecho_start;
                        } else {
                            channels->statusFlags--;
                            channels->modify |= CGB_CHANNEL_MO_VOL;
                            if (ch != 3)
                                envelopeStepTimeAndDir = 0 | CGB_NRx2_ENV_DIR_INC;
                            goto envelope_sustain;
                        }
                    } else {
                        channels->envelopeCounter = channels->decay;
                    }
                } else {
                    channels->envelopeVolume++;
                    if ((u8)(channels->envelopeVolume & mask) >= channels->envelopeGoal) {
                    envelope_decay_start:
                        channels->statusFlags--;
                        channels->envelopeCounter = channels->decay;
                        if ((u8)(channels->envelopeCounter & mask)) {
                            channels->modify |= CGB_CHANNEL_MO_VOL;
                            channels->envelopeVolume = channels->envelopeGoal;
                            if (ch != 3)
                                envelopeStepTimeAndDir = channels->decay | CGB_NRx2_ENV_DIR_DEC;
                        } else {
                            goto envelope_sustain_start;
                        }
                    } else {
                        channels->envelopeCounter = channels->attack;
                    }
                }
            }
        }

    envelope_step_complete:
        // every 15 frames, envelope calculation has to be done twice
        // to keep up with the hardware envelope rate (1/64 s)
        channels->envelopeCounter--;
        if (prevC15 == 0) {
            prevC15--;
            goto envelope_step_repeat;
        }

    envelope_complete:
        /* 3. apply pitch to HW registers */
        if (channels->modify & CGB_CHANNEL_MO_PIT) {
            if (ch < 4 && (channels->type & TONEDATA_TYPE_FIX)) {
                int dac_pwm_rate = REG_SOUNDBIAS_H;
                asm("" ::: "r0");
                if (dac_pwm_rate < 0x40) // if PWM rate = 32768 Hz
                    channels->frequency = (channels->frequency + 2) & 0x7fc;
                else if (dac_pwm_rate < 0x80) // if PWM rate = 65536 Hz
                    channels->frequency = (channels->frequency + 1) & 0x7fe;
            }

            if (ch != 4)
                *nrx3ptr = channels->frequency;
            else
                *nrx3ptr = (*nrx3ptr & 0x08) | channels->frequency;
            channels->n4 = (channels->n4 & 0xC0) + ((channels->frequency & 0x3F00) >> 8);
            *nrx4ptr = (s8)(channels->n4 & mask);
        }

        /* 4. apply envelope & volume to HW registers */
        if (channels->modify & CGB_CHANNEL_MO_VOL) {
            REG_NR51 = (REG_NR51 & ~channels->panMask) | channels->pan;
            if (ch == 3) {
                *nrx2ptr = gCgb3Vol[channels->envelopeVolume];
                if (channels->n4 & 0x80) {
                    *nrx0ptr = 0x80;
                    *nrx4ptr = channels->n4;
                    channels->n4 &= ~0x80;
                }
            } else {
                envelopeStepTimeAndDir &= 0xf;
                *nrx2ptr = (channels->envelopeVolume << 4) + envelopeStepTimeAndDir;
                *nrx4ptr = channels->n4 | 0x80;
                if (ch == 1 && !(*nrx0ptr & 0x08))
                    *nrx4ptr = channels->n4 | 0x80;
            }
        }

    channel_complete:
        channels->modify = 0;
    }
}

void m4aMPlayTempoControl(MusicPlayerInfo* mplayInfo, u16 tempo) {
    if (mplayInfo->ident == ID_NUMBER) {
        mplayInfo->ident++;
        mplayInfo->tempoU = tempo;
        mplayInfo->tempoI = (mplayInfo->tempoD * mplayInfo->tempoU) >> 8;
        mplayInfo->ident = ID_NUMBER;
    }
}

void m4aMPlayVolumeControl(MusicPlayerInfo* mplayInfo, u16 trackBits, u16 volume) {
    s32 i;
    u32 bit;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->flags & MPT_FLG_EXIST) {
                track->volX = volume / 4;
                track->flags |= MPT_FLG_VOLCHG;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void m4aMPlayPitchControl(MusicPlayerInfo* mplayInfo, u16 trackBits, s16 pitch) {
    s32 i;
    u32 bit;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->flags & MPT_FLG_EXIST) {
                track->keyShiftX = pitch >> 8;
                track->pitX = pitch;
                track->flags |= MPT_FLG_PITCHG;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void m4aMPlayPanpotControl(MusicPlayerInfo* mplayInfo, u16 trackBits, s8 pan) {
    s32 i;
    u32 bit;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->flags & MPT_FLG_EXIST) {
                track->panX = pan;
                track->flags |= MPT_FLG_VOLCHG;
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void ClearModM(MusicPlayerTrack* track) {
    track->lfoSpeedC = 0;
    track->modM = 0;

    if (track->modT == 0)
        track->flags |= MPT_FLG_PITCHG;
    else
        track->flags |= MPT_FLG_VOLCHG;
}

void m4aMPlayModDepthSet(MusicPlayerInfo* mplayInfo, u16 trackBits, u8 modDepth) {
    s32 i;
    u32 bit;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->flags & MPT_FLG_EXIST) {
                track->mod = modDepth;

                if (!track->mod)
                    ClearModM(track);
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

void m4aMPlayLFOSpeedSet(MusicPlayerInfo* mplayInfo, u16 trackBits, u8 lfoSpeed) {
    s32 i;
    u32 bit;
    MusicPlayerTrack* track;

    if (mplayInfo->ident != ID_NUMBER)
        return;

    mplayInfo->ident++;

    i = mplayInfo->trackCount;
    track = mplayInfo->tracks;
    bit = 1;

    while (i > 0) {
        if (trackBits & bit) {
            if (track->flags & MPT_FLG_EXIST) {
                track->lfoSpeed = lfoSpeed;

                if (!track->lfoSpeed)
                    ClearModM(track);
            }
        }

        i--;
        track++;
        bit <<= 1;
    }

    mplayInfo->ident = ID_NUMBER;
}

#define MEMACC_COND_JUMP(cond) \
    if (cond)                  \
        goto cond_true;        \
    else                       \
        goto cond_false;

void ply_memacc(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    u32 op;
    u8* addr;
    u8 data;

    op = *track->cmdPtr;
    track->cmdPtr++;

    addr = mplayInfo->memAccArea + *track->cmdPtr;
    track->cmdPtr++;

    data = *track->cmdPtr;
    track->cmdPtr++;

    switch (op) {
        case 0:
            *addr = data;
            return;
        case 1:
            *addr += data;
            return;
        case 2:
            *addr -= data;
            return;
        case 3:
            *addr = mplayInfo->memAccArea[data];
            return;
        case 4:
            *addr += mplayInfo->memAccArea[data];
            return;
        case 5:
            *addr -= mplayInfo->memAccArea[data];
            return;
        case 6:
            MEMACC_COND_JUMP(*addr == data)
            return;
        case 7:
            MEMACC_COND_JUMP(*addr != data)
            return;
        case 8:
            MEMACC_COND_JUMP(*addr > data)
            return;
        case 9:
            MEMACC_COND_JUMP(*addr >= data)
            return;
        case 10:
            MEMACC_COND_JUMP(*addr <= data)
            return;
        case 11:
            MEMACC_COND_JUMP(*addr < data)
            return;
        case 12:
            MEMACC_COND_JUMP(*addr == mplayInfo->memAccArea[data])
            return;
        case 13:
            MEMACC_COND_JUMP(*addr != mplayInfo->memAccArea[data])
            return;
        case 14:
            MEMACC_COND_JUMP(*addr > mplayInfo->memAccArea[data])
            return;
        case 15:
            MEMACC_COND_JUMP(*addr >= mplayInfo->memAccArea[data])
            return;
        case 16:
            MEMACC_COND_JUMP(*addr <= mplayInfo->memAccArea[data])
            return;
        case 17:
            MEMACC_COND_JUMP(*addr < mplayInfo->memAccArea[data])
            return;
        default:
            return;
    }

cond_true : {
    // *& is required for matching
    ((MPlayFunc)(*&gMPlayJumpTable[1]))(mplayInfo, track);
    return;
}

cond_false:
    track->cmdPtr += 4;
}

void ply_xcmd(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    u32 n = *track->cmdPtr;
    track->cmdPtr++;

    gXcmdTable[n](mplayInfo, track);
}

void ply_xxx(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    ((MPlayFunc)(gMPlayJumpTable[0]))(mplayInfo, track);
}

#define READ_XCMD_BYTE(var, n)         \
    {                                  \
        u32 byte = track->cmdPtr[(n)]; \
        byte <<= n * 8;                \
        (var) &= ~(0xFF << (n * 8));   \
        (var) |= byte;                 \
    }

void ply_xwave(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    u32 wav;

    READ_XCMD_BYTE(wav, 0) // UB: uninitialized variable
    READ_XCMD_BYTE(wav, 1)
    READ_XCMD_BYTE(wav, 2)
    READ_XCMD_BYTE(wav, 3)

    track->tone.wav = (WaveData*)wav;
    track->cmdPtr += 4;
}

void ply_xtype(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.type = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xatta(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.attack = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xdeca(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.decay = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xsust(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.sustain = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xrele(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.release = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xiecv(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->echoVolume = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xiecl(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->echoLength = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xleng(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.length = *track->cmdPtr;
    track->cmdPtr++;
}

void ply_xswee(MusicPlayerInfo* mplayInfo, MusicPlayerTrack* track) {
    track->tone.pan_sweep = *track->cmdPtr;
    track->cmdPtr++;
}

void nullsub_544() {
}
