#ifndef TMC_DROPTABLES_H
#define TMC_DROPTABLES_H

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
        s16 kinstoneGreen;
        s16 kinstoneBlue;
        s16 kinstoneRed;
        s16 none2;
        s16 none3;
        s16 none4;
        s16 none5;
    } s;
    s16 a[16];
} Droptable;
static_assert(sizeof(Droptable) == 0x20);

extern const Droptable gUnk_0800137C[];
extern const Droptable gUnk_0800143C[];
extern const Droptable gUnk_080015BC[];
extern const Droptable gUnk_0800161C[];
extern const Droptable gUnk_0800191C[];
extern const Droptable gUnk_08001A1C[];

#endif // TMC_DROPTABLES_H
