/**
 * @file playerItemCellOverwriteSet.c
 * @ingroup Items
 *
 * @brief Cell Overwrite Set Player Item
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "common.h"
#include "entity.h"
#include "player.h"
#include "room.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[4];
    /*0x6c*/ u16 tileType;
} PlayerItemCellOverwriteSetEntity;

extern const u8 gUnk_080B7910[];
extern const u8 gUnk_080B79A7[];
extern const u8 gUnk_080B7A3E[]; // TODO figure out type from arm_sub_080B1B84 and arm_sub_080B1BA4

void PlayerItemCellOverwriteSet(PlayerItemCellOverwriteSetEntity* this) {
    static const s8 gUnk_080B7B6C[] = { 0x0, -0x10, 0x10, 0x0, 0x0, 0x10, -0x10, 0x0 };
    u32 tmp;
    Entity* player = &gPlayerEntity;

    if (super->action == 0) {
        this->tileType = GetTileType(TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                                          player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                                     super->collisionLayer);
        super->action++;
    }
    gPlayerState.mobility |= 0x80;
    tmp = gInput.heldKeys & R_BUTTON;
    if ((gInput.heldKeys & A_BUTTON) != 0) {
        if ((R_BUTTON & gInput.newKeys) != 0) {
            this->tileType = GetTileType(TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                                              player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                                         super->collisionLayer);
        }
        if ((gInput.heldKeys & R_BUTTON) != 0) {
            player->iframes = 2;
        } else {
            if ((gInput.newKeys & DPAD_RIGHT) != 0) {
                this->tileType--;
            }
            if ((gInput.newKeys & DPAD_LEFT) != 0) {
                this->tileType++;
            }
            if ((gInput.heldKeys & (DPAD_LEFT | DPAD_RIGHT)) != 0) {
                if (++super->subtimer > 0x1e) {
                    super->subtimer = 30;
                    if ((gInput.heldKeys & DPAD_RIGHT) != 0) {
                        this->tileType--;
                    }
                    if ((gInput.heldKeys & DPAD_LEFT) != 0) {
                        this->tileType++;
                    }
                }
            } else {
                super->subtimer = 0;
            }
        }
    } else {
        sub_0807B7D8(this->tileType,
                     TILE(player->x.HALF.HI + gUnk_080B7B6C[player->animationState & 0xe],
                          player->y.HALF.HI + gUnk_080B7B6C[(player->animationState & 0xe) + 1]),
                     super->collisionLayer);
        gPlayerState.mobility &= ~0x80;
        DeleteThisEntity();
    }
    if ((gInput.heldKeys & B_BUTTON) != 0) {
        sub_0807B7D8(this->tileType, TILE(player->x.HALF.HI + gUnk_080B7B6C[0], player->y.HALF.HI + gUnk_080B7B6C[1]),
                     super->collisionLayer);
        sub_0807B7D8(this->tileType, TILE(player->x.HALF.HI + gUnk_080B7B6C[2], player->y.HALF.HI + gUnk_080B7B6C[3]),
                     super->collisionLayer);
        sub_0807B7D8(this->tileType, TILE(player->x.HALF.HI + gUnk_080B7B6C[4], player->y.HALF.HI + gUnk_080B7B6C[5]),
                     super->collisionLayer);
        sub_0807B7D8(this->tileType, TILE(player->x.HALF.HI + gUnk_080B7B6C[6], player->y.HALF.HI + gUnk_080B7B6C[7]),
                     super->collisionLayer);
    }
}
