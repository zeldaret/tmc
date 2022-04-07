#ifndef FADE_H
#define FADE_H

#include "global.h"

typedef enum {
    FADE_IN_OUT = 0x1,
    FADE_BLACK_WHITE = 0x2,
    FADE_INSTANT = 0x4,
    FADE_MOSAIC = 0x8,
    FADE_IRIS = 0x10,
} FadeFlags;

/**
 * @struct FadeControl
 * @brief Controls screen fading effects.
 * @see gFadeControl
 */
typedef struct {
    bool8 active; /**< Currently fading. */
    u8 unused1;
    u8 color;
    u8 unused2;
    u32 mask; /**< Fade palette mask.
               * LSB = foreground, MSB = background. */
    u16 type;
    u16 speed;
    u16 progress;
    u16 sustain; /**< Fade progress to sustain. */
    s16 iris_size;
    s16 iris_x;
    s16 iris_y;
    u16 win_inside_cnt;
    u16 win_outside_cnt;
} FadeControl;
extern FadeControl gFadeControl; /**< FadeControl instance. */

/** Set game brightness.
 * @param brightness brightness level, 0-2
 */
void SetBrightness(u32 brightness);

/**
 * Start a fade effect.
 *
 * @param type Fade type. The following flags are supported:
 *  0x1    | 0x2         | 0x4     | 0x8    | 0x10
 * :-------|:------------|:--------|:-------|:-------------------------
 *  in/out | black/white | instant | mosaic | iris fade
 * @param speed Effect speed, lower is slower. Negative values trigger an acid-like experience.
 */
void SetFade(u32 type, u32 speed);

/**
 * Perform the last fade effect in reverse.
 *
 * @param speed Fade speed.
 */
void SetFadeInverted(u32 speed);

/**
 * Peform an iris fade.
 *
 * @param x Screen x coordinate.
 * @param y Screen y coordinate.
 * @param type Fade type.
 * @param speed Fade speed.
 */
void SetFadeIris(u32 x, u32 y, u32 type, u32 speed);

/**
 * Set the fade progress.
 *
 * When used on a fade in effect, this will set the progress of the fade.
 * When used on a fade out effect, progress will be sustained at the value.
 *
 * @param progress Progress value. 0-256.
 */
void SetFadeProgress(u32 progress);

/**
 * Initialize the fade system.
 *
 * This will misbehave if called while a fade is active.
 */
void InitFade(void);

/**
 * Entry point for the fade system.
 */
void FadeMain(void);

/**
 * Fade VBlank entry point.
 */
void FadeVBlank(void);

/**
 * Reset the fade palette mask.
 */
void ResetFadeMask(void);

#endif // FADE_H
