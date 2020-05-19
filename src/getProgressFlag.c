#include "global.h"

u32 extern GetProgressFlagWithOffset(u32, u32);

u32 GetProgressFlag (u32 index) {
	return GetProgressFlagWithOffset(0, index);
}