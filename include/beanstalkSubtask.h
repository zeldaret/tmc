#ifndef BEANSTALK_SUBTASK_H
#define BEANSTALK_SUBTASK_H

#include "global.h"

/*
tiles 0x4000 and above create an entry here
 */
#define MAX_0200B240 0x100
typedef struct {
    u16 position; // (layer << 0xc) | position
    u16 data;
} struct_0200B240;
extern struct_0200B240 gUnk_0200B240[MAX_0200B240];

typedef struct {
    u16 vramOffset;
    u8 gfxSize;
    u8 unk_3;
    u32 gfxOffset;
} BgAnimationGfx;

typedef struct {
    BgAnimationGfx* gfx;
    u32 unk_4;
} BgAnimationFrame;

typedef struct {
    BgAnimationFrame* currentFrame;
    u16 unk_4;
    u16 timer;
} BgAnimation;
#define MAX_BG_ANIMATIONS 8
extern BgAnimation gBgAnimations[MAX_BG_ANIMATIONS];

#endif // BEANSTALK_SUBTASK_H