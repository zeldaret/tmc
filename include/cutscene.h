#ifndef CUTSCENE_H
#define CUTSCENE_H

#include "global.h"

typedef struct {
    u32* cutsceneData;
    u8 textIndex;
    u8 filler[11];
    u16 pauseTime;
    u8 filler[2];
    s32 targetX;
    s32 targetY;
} CutsceneBehavior;

#endif
