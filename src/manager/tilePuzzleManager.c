/**
 * @file tilePuzzleManager.c
 * @ingroup Managers
 *
 * @brief Tile puzzles (step on all blue tiles exactly once).
 *
 * The Manager's field 0xe is used for the remaining number of tiles to be changed.
 *               field 0xf is used for the   total   number of tiles to be changed.
 */
#include "manager/tilePuzzleManager.h"
#include "asm.h"
#include "flags.h"
#include "functions.h"
#include "sound.h"
#include "tiles.h"

enum { INIT, IN_PROGRESS, FAILED, SUCCEEDED };

void TilePuzzleManager_Main(TilePuzzleManager* this) {
    u32 i, j, tmp, tmp2;
    switch (super->action) {
        default:
            break;
        case INIT:
            super->action = IN_PROGRESS;
            super->subtimer = super->timer;
            this->own_tile = (((this->x >> 4) & 0x3fU) | ((this->y >> 4) & 0x3fU) << 6);
            this->player_previous_tile = this->player_current_tile = COORD_TO_TILE((&gPlayerEntity.base));
            break;
        case 1:
            this->player_current_tile = COORD_TO_TILE((&gPlayerEntity.base));
            if (this->player_current_tile != this->player_previous_tile) {
                this->player_previous_tile = this->player_current_tile;
                switch (GetTileTypeAtTilePos(this->player_current_tile, super->type2)) {
                    case TILE_TYPE_791:
                        // stepped on a red tile again
                        super->action = FAILED;
                        SoundReq(SFX_MENU_ERROR);
                        break;
                    case TILE_TYPE_792:
                        // stepped on a blue tile
                        // turn the tile into a red tile
                        sub_0807B7D8(TILE_TYPE_791, this->player_current_tile, super->type2);
                        SoundReq(SFX_6B);
                        // decrease the number of remaining tiles and check if we're done
                        if (--super->timer == 0) {
                            super->action = SUCCEEDED;
                            // set up delay for setting the flag/playing the success sfx
                            super->timer = 64;
                        }
                        break;
                }
            }
            // fall through, can be reset in-progress
        case FAILED:
            if (!this->flag_reset)
                return; // can't be reset
            if (!CheckFlags(this->flag_reset))
                return;                  // wait for the flag telling it to reset
            ClearFlag(this->flag_reset); // make sure the puzzle can be reset again later
            super->action = IN_PROGRESS;
            super->timer = super->subtimer;
            for (i = 0; i < this->height; i++) {
                tmp = this->own_tile + (i << 6);
                for (j = 0; j < this->width; j++) {
                    RestorePrevTileEntity(tmp + j, super->type2);
                }
            }
            break;
        case SUCCEEDED:
            if (super->timer == 0)
                return;
            tmp2 = --super->timer;
            if (tmp2) {
                if (tmp2 == 0x20) {
                    SetFlag(this->flag_succeeded);
                }
            } else {
                SoundReq(SFX_SECRET);
            }
    }
}
