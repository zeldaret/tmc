#ifndef DROPTABLES_H
#define DROPTABLES_H

#include "global.h"

typedef union {
    struct {
        s16 none;
        s16 rupee1;
        s16 rupee5;
        s16 rupee20;
        s16 hearts;
        s16 fairy;
        s16 bombs;
        s16 arrows;
        s16 mysteriousShells;
        s16 kinstoneRed;
        s16 kinstoneBlue;
        s16 kinstoneGreen;
        s16 none2;
        s16 none3;
        s16 none4;
        s16 none5;
    } s;
    s16 a[16];
} Droptable;
static_assert(sizeof(Droptable) == 0x20);

extern const Droptable gEnemyDroptables[];
extern const Droptable gAreaDroptables[];
extern const Droptable gObjectDroptables[];
extern const Droptable gUnk_0800191C[];
enum {
    DROPTABLE_NONE,
    DROPTABLE_NO_SHELLS,
    DROPTABLE_NO_KINSTONES,
};
extern const Droptable gDroptableModifiers[];

#endif // DROPTABLES_H
