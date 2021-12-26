#ifndef ASM_H
#define ASM_H

#include "global.h"

struct Entity_;

extern u32 Random(void);
extern void sub_08000152(u32);
extern void SetTile(u32 index, u32 position, u32 layer);
extern void sub_08001242(struct Entity_*);
extern void sub_08001290(struct Entity_*, u32);
extern void sub_08001324(struct Entity_*);
extern u32 sub_08002632(struct Entity_*);
extern u32 GravityUpdate(struct Entity_*, u32);
extern u32 sub_080043E8(struct Entity_*);
extern void sub_08004484(struct Entity_*, struct Entity_*);
extern u32 sub_080045D4(s16, s16, u32, u32);
extern u32 sub_080045DA(s32, s32);
extern void sub_08004596(struct Entity_*, u32);
extern u32 sub_080045B4(struct Entity_*, u32, u32);
extern u32 EntityInRectRadius(struct Entity_*, struct Entity_*, u32, u32);
extern void UpdateAnimationVariableFrames(struct Entity_*, u32);

#endif // ASM_H
