#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"
#include <string.h>

// Prevent cross-jump optimization.
#define BLOCK_CROSS_JUMP asm("");

// to help in decompiling
#define asm_comment(x) asm volatile("@ -- " x " -- ")
#define asm_unified(x) asm(".syntax unified\n" x "\n.syntax divided")

#if defined(__APPLE__) || defined(__CYGWIN__)
// Get the IDE to stfu

// We define it this way to fool preproc.
#define INCBIN(...) \
    { 0 }
#define INCBIN_U8 INCBIN
#define INCBIN_U16 INCBIN
#define INCBIN_U32 INCBIN
#define INCBIN_S8 INCBIN
#define INCBIN_S16 INCBIN
#define INCBIN_S32 INCBIN
#define _(x) (x)
#define __(x) (x)
#endif // __APPLE__

#define ARRAY_COUNT(array) (sizeof(array) / sizeof((array)[0]))

#define SWAP(a, b, temp) \
    {                    \
        (temp) = a;      \
        (a) = b;         \
        (b) = temp;      \
    }

// useful math macros

// Converts a number to Q8.8 fixed-point format
#define Q_8_8(n) ((s16)((n)*256))

// Converts a number to Q4.12 fixed-point format
#define Q_4_12(n) ((s16)((n)*4096))

#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) >= (b) ? (a) : (b))

#define BOOLCAST(x) ((-(x) | (x)) >> 31)
#define static_assert(cond) extern char assertion[(cond) ? 1 : -1]

#if NON_MATCHING
#define asmfunc(prologue, path)
#else
#define asmfunc(prologue, path) \
    NAKED prologue {            \
        asm(".include " #path); \
    }
#endif

#if NON_MATCHING
#define NONMATCH(prologue, path) prologue
#define END_NONMATCH
#else
#define NONMATCH(path, prologue) \
    NAKED prologue {             \
        asm(".include " #path);  \
        if (0)
#define END_NONMATCH }
#endif

typedef union {
    s32 WORD;
    struct {
        s16 x, y;
    } HALF;
} Coords;

union SplitWord {
    s32 WORD;
    struct {
        s16 LO, HI;
    } HALF;
    struct {
        u16 LO, HI;
    } HALF_U;
    struct {
        u8 byte0, byte1, byte2, byte3;
    } BYTES;
};

union SplitHWord {
    u16 HWORD;
    struct {
        u8 LO, HI;
    } PACKED HALF;
} PACKED;

#endif // GUARD_GLOBAL_H
