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
    u16 ms;
    u16 me;
} Song;

typedef struct MusicPlayer {
    MusicPlayerInfo* info;
    MusicPlayerTrack* track;
    u8 unk_8;
    u16 unk_A;
} MusicPlayer;

extern const MusicPlayer gMPlayTable[];
extern const Song gSongTable[];

#endif // GUARD_M4A_INTERNAL_H
