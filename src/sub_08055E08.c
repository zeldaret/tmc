
#include "global.h"

extern u32 * _call_via_r0(u32 *func);
extern u8 gUnk_02000080;
extern u32 *gUnk_080FF420;

void sub_08055E08() {
    u32 **arr = &gUnk_080FF420;
    u8 i = gUnk_02000080;
	i = *(&gUnk_02000080 + 6);
	 _call_via_r0(arr[i]);
}