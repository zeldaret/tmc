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

extern u32 sub_08050054(u32, u32);
extern void sub_0801D630(u32 *, u32, u32);
extern u32 gUnk_02000080;
extern TransitionStruct gUnk_03001000;
extern Menu gUnk_02032EC0;


u32 IntroSetTransition(u8 transition,u32 param_2,u32 param_3)

{
    gUnk_02032EC0.transitionType = transition;
    gUnk_03001000.functionIndex = 2;
    sub_0801D630(&gUnk_02000080,48,param_3);
    return sub_08050054(7,8);
}
