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

extern const Droptable gDroptablesEnemies[];
extern const Droptable gUnk_0800143C[];
extern const Droptable gDroptablesAreas[];
extern const Droptable gDroptablesObjects[];
extern const Droptable gUnk_0800191C[];
extern const Droptable gDroptablesModifiers[];

#define gDroptableModifierNone gDroptablesModifiers[0]
#define gDroptableModifierNoShells gDroptablesModifiers[1]
#define gDroptableModifierNoKinstones gDroptablesModifiers[2]

#endif // TMC_DROPTABLES_H
