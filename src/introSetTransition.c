#include "global.h"
#include "menu.h"

typedef struct {
    u8 unk;
    u8 unk2;
    u8 unk3;
    u8 functionIndex;
    u16 unk6;
    u8 filler[5];
    u32 ticks;
    u16 unk7;
} TransitionStruct;

extern u32 DoFade(u32, u32);
extern void _DmaZero(u32*, u32, u32);
extern TransitionStruct gUnk_03001000;
extern MenuControls gUnk_02032EC0;

u32 IntroSetTransition(u8 transition, u32 param_2, u32 param_3)

{
    gUnk_02032EC0.transitionType = transition;
    gUnk_03001000.functionIndex = 2;
    _DmaZero((u32 *)&gMenu, 48, param_3);
    return DoFade(7, 8);
}
