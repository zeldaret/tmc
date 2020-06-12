#include "global.h"

u32 extern CheckLocalFlagByOffset(u32, u32);

u32 CheckGlobalFlag (u32 index) {
	return CheckLocalFlagByOffset(0, index);
}