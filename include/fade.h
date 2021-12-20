#ifndef FADE_H
#define FADE_H

#include "global.h"

void SetBrightness(u32 arg0);
void DoFade(u32 type, u32 speed);

void sub_08050008(void);
void sub_08050038(u32);
void sub_080500F4(u32 arg0);
void sub_08050110(u32 param_1, u32 param_2, u32 fadeType, u32 fadeSpeed);

void InitFade(void);
void FadeMain(void);
void FadeVBlank(void);

#endif // FADE_H
