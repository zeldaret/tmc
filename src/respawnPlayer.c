#include "player.h"
#include "functions.h"

void ResetPlayer() {
    u32 index = 0;
    ItemBehavior* ptr = gUnk_03000B80;
    do {
        sub_08077E78(ptr, index);
        ptr++;
        index++;
    } while (index <= 2);

    gPlayerState.field_0x3c[1] = 0;
    gPlayerState.field_0x1c = 0;
    gPlayerState.field_0x1f[2] = 0;
    gPlayerState.field_0x0[1] = 0;
    gPlayerState.field_0xe = 0;
    gPlayerState.dash_state = 0;
    gPlayerState.sword_state = 0;
    gPlayerState.field_0x3[0] = 0;
    gPlayerState.heldObject = 0;
    gPlayerState.flags &= 0xf7fbffff;

    gPlayerEntity.field_0x70.WORD = 0;

    if ((gPlayerState.jump_status & 0xc0) == 0) {
        gPlayerState.jump_status = 0;
    }

    switch (gPlayerState.framestate) {
        case 2:
        case 3:
        case 4: {
            gPlayerState.framestate = 0;
            break;
        }
    }
}
