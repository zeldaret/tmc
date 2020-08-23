#include "global.h"
#include "entity.h"

extern u8 gArea;
extern u8 gUnk_08127D30[];

bool32 sub_08052620(u32 r0) {
    return gArea == 0x81;
}

bool32 sub_08052638(u32 r0) {

    return gUnk_08127D30[r0 * 4] == 0x81;
}

u32 sub_08052654() {
    return (gArea >> 7) & 1;
}

u32 CheckIsDungeon() {
    return (gArea >> 2) & 1;
}

u32 sub_08052670() {
    return (gArea >> 4) & 1;
}

u32 sub_08052680() {
    return (gArea >> 6) & 1;
}

u32 sub_08052690()

{
    return (gArea >> 3) & 1;
}
