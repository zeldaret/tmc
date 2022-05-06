#include "entity.h"
#include "player.h"
#include "room.h"
#include "common.h"
#include "asm.h"

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
                    this->subtimer = 0x1e;
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
        gPlayerState.mobility &= 0x7f;
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
