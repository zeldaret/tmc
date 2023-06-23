#ifndef BACKGROUNDANIMATIONS_H
#define BACKGROUNDANIMATIONS_H

#include "global.h"

typedef enum {
    BG_ANIM_DEFAULT = 0,
    BG_ANIM_PALETTE = 16,
    BG_ANIM_MULTIPLE = 128,
} BgAnimFlags;

typedef struct {
    u16 vramOffset;
    u8 gfxSize;
    u8 flags; /**< @see BgAnimFlags */
    u32 gfxOffset;
} BgAnimationGfx;

typedef struct {
    const BgAnimationGfx* gfx;
    u32 unk_4;
} BgAnimationFrame;

typedef struct {
    const BgAnimationFrame* currentFrame;
    u16 unk_4;
    u16 timer;
} BgAnimation;
#define MAX_BG_ANIMATIONS 8
extern BgAnimation gBgAnimations[MAX_BG_ANIMATIONS];

extern const u16* const gUnk_080B755C[];
extern const u16 gUnk_080B77C0[];

#endif // BACKGROUNDANIMATIONS_H
