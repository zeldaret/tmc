#ifndef UI_H
#define UI_H

#include "global.h"

extern void DrawUIElements(void);
extern void CreateUIElement(u32, u32);
extern void sub_0801C2F0(u32, u32);
extern void sub_0801C25C(void);
extern void DrawUI(void);
extern void InitUI(bool32);
extern void RefreshUI(void);
extern void RecoverUI(u32 bottomPt, u32 topPt);

#endif // UI_H
