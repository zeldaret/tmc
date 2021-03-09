#ifndef GREATFAIRY_H
#define GREATFAIRY_H

#include "screen.h"

void GreatFairy_InitializeAnimation(Entity*);
Entity* GreatFairy_CreateForm(Entity*, u32, u32);
void sub_080873D0();
extern void (*const GreatFairy_Main[])(Entity*);
extern void (*const GreatFairy_Behaviors[])(Entity*);
extern void (*const GreatFairy_WingsBehaviors[])(Entity*);
extern void (*const GreatFairy_WakeBehaviors[])(Entity*);
extern void (*const GreatFairy_MiniBehaviors[])(Entity*);
extern void (*const GreatFairy_MiniAffineBehaviors[])(Entity*);
extern void (*const GreatFairy_DropletBehaviors[])(Entity*);
extern void (*const GreatFairy_RippleBehaviors[])(Entity*);
extern void (*const GreatFairy_BigRippleBehaviors[])(Entity*);
extern void (*const GreatFairy_EnergyBehaviors[])(Entity*);
extern void (*const GreatFairy_Form1Behaviors[])(Entity*);
extern void (*const GreatFairy_Form2Behaviors[])(Entity*);
extern void (*const gUnk_081207A4[])(Entity*);

extern u32 gUnk_0810C2E4;
extern const s16 GreatFairy_RippleOffsets[10];
extern u32 gUnk_02034350;
extern u8 gUnk_0812079C[8];
extern s16 gSineTable[];
extern s8 gUnk_081207AC[];

typedef struct {
    s32 unk0;
    s32 unk4;
} struct_08087424;

#endif
