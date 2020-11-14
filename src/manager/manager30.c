#include "global.h"
#include "manager.h"
#include "flags.h"
#include "functions.h"

typedef struct Manager30 {
    Manager manager;
    u8 unk_20[8]; // unused
    u16 own_tile;
    u8 unk_2a[0x2]; // unused
    u16 player_previous_tile;
    u16 player_current_tile;
    u8 unk_30[0x6]; // unused
    u8 width;
    u8 height;
    s16 x;
    s16 y;
    u16 flag_succeeded;
    u16 flag_reset;
} Manager30;

extern void sub_0807B7D8(u32, u32, u32);

enum { INIT, IN_PROGRESS, FAILED, SUCCEEDED };

/*
 * Tile puzzles (step on all blue tiles exactly once).
 *
 * The Manager's field 0xe is used for the remaining number of tiles to be changed.
 *               field 0xf is used for the   total   number of tiles to be changed.
 */
void Manager30_Main(Manager30* this) {
    u32 i, j, tmp, tmp2;
    switch (this->manager.action) {
        default:
            break;
        case INIT:
            this->manager.action = IN_PROGRESS;
            this->manager.unk_0f = this->manager.unk_0e;
            this->own_tile = (((this->x >> 4) & 0x3fU) | ((this->y >> 4) & 0x3fU) << 6);
            this->player_previous_tile = this->player_current_tile = COORD_TO_TILE((&gPlayerEntity));
            break;
        case 1:
            this->player_current_tile = COORD_TO_TILE((&gPlayerEntity));
            if (this->player_current_tile != this->player_previous_tile) {
                this->player_previous_tile = this->player_current_tile;
                switch (GetTileType(this->player_current_tile, this->manager.unk_0b)) {
                    case 0x317:
                        // stepped on a red tile again
                        this->manager.action = FAILED;
                        PlaySFX(0x6d);
                        break;
                    case 0x318:
                        // stepped on a blue tile
                        // turn the tile into a red tile
                        sub_0807B7D8(0x317, this->player_current_tile, this->manager.unk_0b);
                        PlaySFX(0x6b);
                        // decrease the number of remaining tiles and check if we're done
                        if (--this->manager.unk_0e == 0) {
                            this->manager.action = SUCCEEDED;
                            // set up delay for setting the flag/playing the success sfx
                            this->manager.unk_0e = 0x40;
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
            this->manager.action = IN_PROGRESS;
            this->manager.unk_0e = this->manager.unk_0f;
            for (i = 0; i < this->height; i++) {
                tmp = this->own_tile + (i << 6);
                for (j = 0; j < this->width; j++) {
                    sub_0807BA8C(tmp + j, this->manager.unk_0b);
                }
            }
            break;
        case SUCCEEDED:
            if (this->manager.unk_0e == 0)
                return;
            tmp2 = --this->manager.unk_0e;
            if (tmp2) {
                if (tmp2 == 0x20) {
                    SetFlag(this->flag_succeeded);
                }
            } else {
                PlaySFX(0x72);
            }
    }
}
