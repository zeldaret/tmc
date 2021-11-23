#include "global.h"

extern u8 gAreaMetadata[69];

u32 sub_08052654(u32 r0) {
    return gAreaMetadata[r0 * 4] == 129;
}
