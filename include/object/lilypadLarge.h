#ifndef LILYPADLARGE_H
#define LILYPADLARGE_H

#include "entity.h"

typedef struct {
    Entity base;
    u8 unk_68[4];
    s32 unk_6c;
    s32 unk_70;
    s16 unk_74;
    s16 unk_76;
    union SplitWord unk_78;
    union SplitWord unk_7c;
    u8 unk_80[2];
    u16 unk_82;
    u8 unk_84;
    u8 unk_85;
} LilypadLargeEntity;

#endif // LILYPADLARGE_H
