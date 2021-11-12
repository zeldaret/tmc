#ifndef GUARD_M4A_INTERNAL_H
#define GUARD_M4A_INTERNAL_H

#include "global.h"

typedef struct MusicPlayerTrack MusicPlayerTrack;
typedef struct MusicPlayerInfo MusicPlayerInfo;

typedef struct WaveData {
    u16 type;
    u16 status;
    u32 freq;
    u32 loopStart;
    u32 size;   // number of samples
    s8 data[1]; // samples
} WaveData;

#define TONEDATA_TYPE_CGB 0x07
#define TONEDATA_TYPE_FIX 0x08
#define TONEDATA_TYPE_SPL 0x40 // key split
#define TONEDATA_TYPE_RHY 0x80 // rhythm

#define TONEDATA_P_S_PAN 0xc0
#define TONEDATA_P_S_PAM TONEDATA_P_S_PAN

typedef struct ToneData {
    u8 type;
    u8 key;
    u8 length;    // sound length (compatible sound)
    u8 pan_sweep; // pan or sweep (compatible sound ch. 1)
    WaveData* wav;
    u8 attack;
    u8 decay;
    u8 sustain;
    u8 release;
} ToneData;

typedef struct SongHeader {
    u8 trackCount;
    u8 blockCount;
    u8 priority;
    u8 reverb;
    ToneData* tone;
    u8* part[1];
} SongHeader;

typedef struct Song {
    const SongHeader* header;
    u16 musicPlayerIndex;
    u16 me;
} Song;

typedef struct SoundChannel {
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
    u8 envelopeVolumeRight;
    u8 envelopeVolumeLeft;
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
    u32 count;
    u32 fw;
    u32 frequency;
    WaveData* wav;
    u32 currentPointer;
    MusicPlayerTrack* track;
    u32 prev;
    u32 next;
    u32 unk3;
    u16 xpi;
    u16 xpc;
} SoundChannel;

typedef void (*MPlayMainFunc)(MusicPlayerInfo*);

// typedef above
struct MusicPlayerInfo {
    const SongHeader* songHeader;
    u32 status;
    u8 trackCount;
    u8 priority;
    u8 cmd;
    u8 unk_B;
    u32 clock;
    u8 gap[8];
    u8* memAccArea;
    u16 tempoD;
    u16 tempoU;
    u16 tempoI;
    u16 tempoC;
    u16 fadeOI;
    u16 fadeOC;
    u16 fadeOV;
    MusicPlayerTrack* tracks;
    ToneData* tone;
    u32 ident;
    MPlayMainFunc func;
    u32* intp;
};

#define MPT_FLG_VOLSET 0x01
#define MPT_FLG_VOLCHG 0x03
#define MPT_FLG_PITSET 0x04
#define MPT_FLG_PITCHG 0x0C
#define MPT_FLG_START 0x40
#define MPT_FLG_EXIST 0x80

// typedef above
struct MusicPlayerTrack {
    u8 flags;
    u8 wait;
    u8 patternLevel;
    u8 repN;
    u8 gateTime;
    u8 key;
    u8 velocity;
    u8 runningStatus;
    u8 keyM;
    u8 pitM;
    s8 keyShift;
    s8 keyShiftX;
    s8 tune;
    u8 pitX;
    s8 bend;
    u8 bendRange;
    u8 volMR;
    u8 volML;
    u8 vol;
    u8 volX;
    s8 pan;
    s8 panX;
    s8 modM;
    u8 mod;
    u8 modT;
    u8 lfoSpeed;
    u8 lfoSpeedC;
    u8 lfoDelay;
    u8 lfoDelayC;
    u8 priority;
    u8 echoVolume;
    u8 echoLength;
    SoundChannel* chan;
    ToneData tone;
    u8 gap[10];
    u16 unk_3A;
    u32 unk_3C;
    u8* cmdPtr;
    u8* patternStack[3];
};

typedef struct MusicPlayer {
    MusicPlayerInfo* info;
    MusicPlayerTrack* tracks;
    u8 nTracks;
    u16 unk_A;
} MusicPlayer;

extern const MusicPlayer gMusicPlayers[];
extern const Song gSongTable[];

void m4aSoundMain(void);
void m4aSoundVSync(void);
void m4aSoundInit(void);
void m4aSongNumStart(u16 n);
void m4aSongNumStartOrContinue(u16 n);
void m4aSongNumStop(u16 n);
void m4aMPlayAllStop(void);
void m4aMPlayImmInit(MusicPlayerInfo* mplayInfo);
void m4aMPlayTempoControl(MusicPlayerInfo* mplayInfo, u16 tempo);
void m4aMPlayVolumeControl(MusicPlayerInfo* mplayInfo, u16 trackBits, u16 volume);
void m4aSoundVSyncOn(void);
void m4aSoundVSyncOff(void);

#endif // GUARD_M4A_INTERNAL_H
