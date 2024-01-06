/**
 * @file ladderUp.c
 * @ingroup Objects
 *
 * @brief Ladder Up object
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

void LadderUp(Entity* this) {
    Entity* fxEnt;
    u32 action;

    switch (this->action) {
        case 0:
            if (this->timer) {
                action = 1;
            } else {
#ifndef EU
                action = 3;
#else
                action = 2;
#endif
            }
            this->action = action;
            this->spriteOffsetY += 8;
            InitializeAnimation(this, 10);
            if (this->action == 1) {
                this->z.HALF.HI = -0x80;
            }
            if (this->type2) {
                return;
            }
            this->y.HALF.HI = (this->y.HALF.HI & 0xfff0) + 0xc;
            SetTile(SPECIAL_TILE_35, COORD_TO_TILE(this), this->collisionLayer);
            break;
        case 1:
            if (GravityUpdate(this, Q_8_8(16.0)) == 0) {
                fxEnt = CreateFx(this, FX_GIANT_EXPLOSION, 0x40);
                if (fxEnt) {
                    fxEnt->y.HALF.HI += 8;
                }
                InitScreenShake(30, 0);
                SoundReq(SFX_10B);
                this->action = 2;
#ifndef EU
                this->timer = 60;
#endif
            }
            break;
        case 2:
#ifndef EU
            if (--this->timer) {
                return;
            }
            this->action = 3;
            SoundReq(SFX_SECRET_BIG);
            break;
#endif
        default:
            if (this->type2 == 0) {
                if (gPlayerEntity.base.y.HALF.HI < this->y.HALF.HI) {
                    if (gPlayerState.floor_type != SURFACE_LADDER && (GetTileTypeAtEntity(this) == SPECIAL_TILE_23)) {
                        SetTile(SPECIAL_TILE_35, COORD_TO_TILE(this), this->collisionLayer);
                        RestorePrevTileEntity(COORD_TO_TILE_OFFSET(this, 0, 16), this->collisionLayer);
                    }
                } else {
                    if (GetTileTypeAtEntity(this) != SPECIAL_TILE_23) {
                        SetTile(SPECIAL_TILE_23, COORD_TO_TILE(this), this->collisionLayer);
                        if (this->type == 0) {
                            SetTile(SPECIAL_TILE_23, COORD_TO_TILE_OFFSET(this, 0, 16), this->collisionLayer);
                        } else {
                            SetTile(SPECIAL_TILE_20, COORD_TO_TILE_OFFSET(this, 0, 16), this->collisionLayer);
                        }
                    }
                }
            }
            break;
    }
}
