#include "asm.h"
#include "common.h"
#include "entity.h"
#include "player.h"
#include "room.h"

// vvv for specialMetaTile
const u8 gUnk_080B7910[] = {
    0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  241, 0, 0,   83,  242, 243,
    0,  0,  0,  0,  0,  0,  240, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0, 0,   0,   0,   0,
    0,  0,  0,  0,  0,  0,  0,   0,  0,  0,  0,  0,  61, 61, 61, 61, 61, 61, 61, 61, 61,  0, 0,   0,   0,   0,
    0,  0,  0,  58, 0,  0,  0,   0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,   0, 0,   0,   0,   0,
    0,  40, 0,  0,  0,  0,  0,   0,  0,  0,  0,  0,  0,  18, 18, 18, 18, 18, 18, 18, 18,  0, 116, 116, 41,  0,
    35, 41, 41, 41, 41, 41, 41,  16, 16, 16, 16, 41, 80, 81, 0,  15, 0,  0,  0,  0,  0,
};

const u8 gUnk_080B79A7[] = {
    29, 0,  0,   0,   0,   0,   15,  0,  0,  0,  0,  15, 0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  23, 40, 40,
    40, 15, 0,   0,   0,   0,   32,  0,  15, 3,  5,  10, 12, 1,  2,  4,  8,  15, 5,  10, 69, 68, 0,  0,  15, 0,
    0,  0,  15,  0,   0,   0,   0,   15, 0,  0,  15, 0,  1,  3,  2,  5,  15, 10, 4,  12, 8,  71, 15, 0,  0,  0,
    0,  0,  15,  15,  3,   5,   0,   13, 12, 11, 10, 0,  15, 15, 15, 15, 15, 15, 15, 15, 80, 7,  11, 13, 14, 15,
    15, 39, 15,  15,  16,  17,  18,  19, 0,  0,  15, 15, 0,  1,  2,  3,  4,  5,  8,  10, 12, 15, 5,  12, 0,  0,
    95, 39, 103, 104, 105, 106, 107, 49, 50, 58, 60, 35, 43, 43, 5,  34, 1,  2,  4,  8,  12,
};

const u16 gUnk_080B7A3E[] = {
    1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1,  0, 0,  0, 0, 0, 0, 0,   0, 0, 0,  0, 0, 0, 0, 0, 1, 0, 0, 0,
    0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1,  1, 1,  1, 1, 1, 0, 0,   0, 0, 0,  0, 1, 0, 0, 0, 0, 0, 0, 0,
    1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0,  1, 0,  0, 0, 0, 0, 129, 1, 1, 1,  1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 16, 0, 64, 0, 3, 3, 3, 3,   0, 0, 0,  1, 0, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0,  0, 1,  1, 1, 1, 0, 0,   0, 0, 34, 0, 0, 0, 0, 0,
}; // TODO no need to store this in an u16?
// TODO figure out type from arm_sub_080B1B84 and arm_sub_080B1BA4, also related to specialMetaTiles

void PlayerItemCellOverwriteSet(Entity* this) {
    static const s8 gUnk_080B7B6C[] = { 0x0, -0x10, 0x10, 0x0, 0x0, 0x10, -0x10, 0x0 };
    u32 tmp;
    Entity* player = &gPlayerEntity;

    if (this->action == 0) {
        this->field_0x6c.HWORD =
            GetTileType(TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                             player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                        this->collisionLayer);
        this->action++;
    }
    gPlayerState.mobility |= 0x80;
    tmp = gInput.heldKeys & R_BUTTON;
    if ((gInput.heldKeys & A_BUTTON) != 0) {
        if ((R_BUTTON & gInput.newKeys) != 0) {
            this->field_0x6c.HWORD =
                GetTileType(TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                                 player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                            this->collisionLayer);
        }
        if ((gInput.heldKeys & R_BUTTON) != 0) {
            player->iframes = 2;
        } else {
            if ((gInput.newKeys & DPAD_RIGHT) != 0) {
                this->field_0x6c.HWORD--;
            }
            if ((gInput.newKeys & DPAD_LEFT) != 0) {
                this->field_0x6c.HWORD++;
            }
            if ((gInput.heldKeys & (DPAD_LEFT | DPAD_RIGHT)) != 0) {
                if (++this->subtimer > 0x1e) {
                    this->subtimer = 30;
                    if ((gInput.heldKeys & DPAD_RIGHT) != 0) {
                        this->field_0x6c.HWORD--;
                    }
                    if ((gInput.heldKeys & DPAD_LEFT) != 0) {
                        this->field_0x6c.HWORD++;
                    }
                }
            } else {
                this->subtimer = 0;
            }
        }
    } else {
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                          player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                     this->collisionLayer);
        gPlayerState.mobility &= ~0x80;
        DeleteThisEntity();
    }
    if ((gInput.heldKeys & B_BUTTON) != 0) {
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[0], player->y.HALF.HI + gUnk_080B7B6C[1]),
                     this->collisionLayer);
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[2], player->y.HALF.HI + gUnk_080B7B6C[3]),
                     this->collisionLayer);
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[4], player->y.HALF.HI + gUnk_080B7B6C[5]),
                     this->collisionLayer);
        sub_0807B7D8(this->field_0x6c.HWORD,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[6], player->y.HALF.HI + gUnk_080B7B6C[7]),
                     this->collisionLayer);
    }
}
