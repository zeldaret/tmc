/**
 * @file torchTrap.c
 * @ingroup Enemies
 *
 * @brief Torch Trap enemy
 */
#include "enemy.h"
#include "entity.h"
#include "physics.h"
#include "player.h"
#include "room.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 tilePos;
    u16 filler2;
    u16 unk_78;
    u16 projectileTimer;
    u16 unk_7c;
    u8 filler3[0x2];
    u16 unk_80;
    u16 unk_82;
    u16 unk_84;
} TorchTrapEntity;

void (*const gTorchTrapActions[])(TorchTrapEntity*);
const u16 gTorchTrapTimerLengths[];
const u16 gTorchTrapProjectileSpeeds[];

extern Entity* gUnk_020000B0;

bool32 sub_0803CFF0(TorchTrapEntity*);
bool32 sub_0803CFD8(TorchTrapEntity*);
void sub_0803D0B0(TorchTrapEntity*);
void TorchTrap_Reset(TorchTrapEntity*);
void TorchTrap_CreateProjectile(TorchTrapEntity*);

void TorchTrap(Entity* this) {
    gTorchTrapActions[this->action]((TorchTrapEntity*)this);
}

void TorchTrap_Init(TorchTrapEntity* this) {
    super->speed = (this->unk_84 & 0xf000) >> 5;
    this->unk_84 &= 0xfff;
    sub_0804A720(super);
    super->action = 1;
    this->tilePos = this->unk_82 & 0xfff;
    super->x.HALF.HI = ((this->unk_82 & 0x3f) << 4) + 8 + gRoomControls.origin_x;
    super->y.HALF.HI = ((this->unk_82 & 0xfc0) >> 2) + (gRoomControls.origin_y + 8);
    super->direction = ((s16)this->unk_82 & 0xf000) >> 10;
    this->unk_78 = super->type << 2;
    if (sub_0803CFF0(this)) {
        sub_0803D0B0(this);
    }
}

void sub_0803CF24(TorchTrapEntity* this) {
    if (sub_0803CFD8(this)) {
        TorchTrap_Reset(this);
    }
}

void sub_0803CF38(TorchTrapEntity* this) {
    if (sub_0803CFF0(this)) {
        sub_0803D0B0(this);
    } else if (sub_08049FDC(super, 0)) {
        if (EntityWithinDistance(super, gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI, 0x20) == 0) {
            if (--this->projectileTimer == 0) {
                TorchTrap_CreateProjectile(this);
                TorchTrap_Reset(this);
            }
        }
    }
}

void sub_0803CF94(TorchTrapEntity* this) {
    if (GetTileTypeAtTilePos(this->tilePos, super->collisionLayer) == TILE_TYPE_118) {
        this->unk_80 = 0;
        TorchTrap_Reset(this);
    } else if (this->unk_7c && sub_0803CFD8(this)) {
        TorchTrap_Reset(this);
    }
}

bool32 sub_0803CFD8(TorchTrapEntity* this) {
    u32 result;
    if (this->unk_7c == 0) {
        result = TRUE;
    } else {
        result = CheckFlags(this->unk_7c);
    }
    return result;
}

bool32 sub_0803CFF0(TorchTrapEntity* this) {
    u32 result;
    if (this->unk_80 != 0) {
        if (this->unk_80 == this->unk_7c) {
            u32 val = CheckFlags(this->unk_80);
            result = FALSE;
            if (val == 0) {
                result = TRUE;
            }
            return result;
        } else {
            return CheckFlags(this->unk_80);
        }
    }

    return FALSE;
}

void TorchTrap_Reset(TorchTrapEntity* this) {
    super->action = 2;
    if (this->unk_78) {
        this->projectileTimer = this->unk_78;
    } else {
        this->projectileTimer = gTorchTrapTimerLengths[Random() & 7];
    }
}

void TorchTrap_CreateProjectile(TorchTrapEntity* this) {
    Entity* proj = EnemyCreateProjectile(super, TORCH_TRAP_PROJECTILE, 0);
    if (proj) {
        u16 speed = super->speed;
        if (super->speed) {
            proj->speed = speed;
        } else {
            proj->speed = gTorchTrapProjectileSpeeds[Random() & 3];
        }

        if (super->direction & 0x20) {
            proj->direction = GetFacingDirection(super, gUnk_020000B0);
        } else {
            proj->direction = super->direction;
        }
    }
}

void sub_0803D0B0(TorchTrapEntity* this) {
    super->action = 3;
    sub_0807B7D8(TILE_TYPE_117, this->tilePos, super->collisionLayer);
}

void (*const gTorchTrapActions[])(TorchTrapEntity*) = {
    TorchTrap_Init,
    sub_0803CF24,
    sub_0803CF38,
    sub_0803CF94,
};

const u16 gTorchTrapTimerLengths[] = {
    60, 60, 90, 90, 90, 120, 120, 150,
};

const u16 gTorchTrapProjectileSpeeds[] = {
    128,
    256,
    384,
    512,
};
