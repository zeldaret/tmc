#include "entity.h"
#include "room.h"
#include "player.h"
#include "asm.h"
#include "sound.h"
#include "functions.h"
#include "effects.h"

void LadderUp(Entity* this) {
    Entity* fxEnt;
    u32 uVar4;

    switch (this->action) {
        case 0:
            if (this->timer) {
                uVar4 = 1;
            } else {
#ifndef EU
                uVar4 = 3;
#else
                uVar4 = 2;
#endif
            }
            this->action = uVar4;
            this->spriteOffsetY += 8;
            InitializeAnimation(this, 10);
            if (this->action == 1) {
                this->z.HALF.HI = 0xff80;
            }
            if (this->type2) {
                return;
            }
            this->y.HALF.HI = (this->y.HALF.HI & 0xfff0) + 0xc;
            SetTile(0x4023, COORD_TO_TILE(this), this->collisionLayer);
            break;
        case 1:
            if (GravityUpdate(this, Q_8_8(16.0)) == 0) {
                fxEnt = CreateFx(this, FX_GIANT_EXPLOSION, 0x40);
                if (fxEnt) {
                    fxEnt->y.HALF.HI += 8;
                }
                InitScreenShake(0x1e, 0);
                SoundReq(SFX_10B);
                this->action = 2;
#ifndef EU
                this->timer = 0x3c;
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
                if (gPlayerEntity.y.HALF.HI < this->y.HALF.HI) {
                    if (gPlayerState.floor_type != 0x1e && (GetTileTypeByEntity(this) == 0x4017)) {
                        SetTile(0x4023, COORD_TO_TILE(this), this->collisionLayer);
                        RestorePrevTileEntity(COORD_TO_TILE_OFFSET(this, 0, 0x10), this->collisionLayer);
                    }
                } else {
                    if (GetTileTypeByEntity(this) != 0x4017) {
                        SetTile(0x4017, COORD_TO_TILE(this), this->collisionLayer);
                        if (this->type == 0) {
                            SetTile(0x4017, COORD_TO_TILE_OFFSET(this, 0, 0x10), this->collisionLayer);
                        } else {
                            SetTile(0x4014, COORD_TO_TILE_OFFSET(this, 0, 0x10), this->collisionLayer);
                        }
                    }
                }
            }
    }
}
