#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

/**
 * @defgroup Tasks Tasks
 * @defgroup Subtasks Subtasks
 */

/** @defgroup Entities Entities */
///@{
/**
 * @defgroup Player Player
 * @defgroup Enemies Enemies
 * @defgroup Projectiles Projectiles
 * @defgroup Objects Objects
 * @defgroup NPCs NPCs
 * @defgroup Items Items
 * @defgroup Managers Managers
 */
///@}

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

// Converts a number to Q16.16 fixed-point format
#define Q_16_16(n) ((s32)((n) * (1 << 16)))

#define min(a, b) ((a) < (b) ? (a) : (b))
#define max(a, b) ((a) >= (b) ? (a) : (b))

#define BOOLCAST(x) ((-(x) | (x)) >> 31)
#define static_assert(cond) extern char assertion[(cond) ? 1 : -1]

#define super (&this->base)

#if NON_MATCHING
#define ASM_FUNC(path, decl)
#else
#define ASM_FUNC(path, decl)    \
    NAKED decl {                \
        asm(".include " #path); \
    }
#endif

#if NON_MATCHING
#define NONMATCH(path, decl) decl
#define END_NONMATCH
#else
#define NONMATCH(path, decl)    \
    NAKED decl {                \
        asm(".include " #path); \
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
    u32 WORD_U;
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

#define FORCE_WORD_ALIGNED __attribute__((packed, aligned(2)))

/* forward decls */
struct Entity_;

#endif // GUARD_GLOBAL_H
