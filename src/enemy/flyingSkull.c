/**
 * @file flyingSkull.c
 * @ingroup Enemies
 *
 * @brief Flying Skull enemy
 */
#include "collision.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "hitbox.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 tileIndex;
    u8 unk_0x76;
} FlyingSkullEntity;

void (*const FlyingSkull_Functions[])(Entity*);
void (*const gUnk_080CFB9C[])(FlyingSkullEntity*);
void (*const gUnk_080CFBBC[])(FlyingSkullEntity*);
void (*const gUnk_080CFBD4[])(FlyingSkullEntity*);
const s8 gUnk_080CFBE4[4];

extern s32 sub_080012DC(Entity*);
extern void RegisterCarryEntity(Entity*);

void sub_0803A100(FlyingSkullEntity* this);
void sub_0803A0E0(FlyingSkullEntity* this);

void FlyingSkull(Entity* this) {
    u32 index = sub_080012DC(this);
    if (index) {
        gUnk_080012C8[index](this);
    } else {
        FlyingSkull_Functions[GetNextFunction(this)](this);
    }
}

void FlyingSkull_OnTick(FlyingSkullEntity* this) {
    gUnk_080CFB9C[super->action](this);
}

void FlyingSkull_OnCollision(FlyingSkullEntity* this) {
    sub_0803A100(this);

    if (super->contactFlags == (CONTACT_NOW | 0x1d)) {
        super->action = 7;
        COLLISION_OFF(super);
        super->zVelocity = Q_16_16(2.625);
        super->spritePriority.b1 = 1;
        SetTile(this->tileIndex, COORD_TO_TILE(super), super->collisionLayer);
    } else if (super->z.HALF.HI) {
        sub_0803A0E0(this);
    }

    EnemyFunctionHandlerAfterCollision(super, FlyingSkull_Functions);
}

void FlyingSkull_OnGrabbed(FlyingSkullEntity* this) {
    gUnk_080CFBBC[super->subAction](this);
}

void sub_08039C98(FlyingSkullEntity* this) {
    sub_0803A100(this);
    super->subAction = 1;
    super->timer = 0;
    super->gustJarTolerance = 0x30;
}

void sub_08039CB0(FlyingSkullEntity* this) {
    u32 offset;
    sub_0803A100(this);
    offset = sub_0806F520(super);
    if (offset) {
        sub_0806F4E8(super);
    } else {
        super->spriteOffsetX = offset;
        if (super->z.HALF.HI) {
            sub_0803A0E0(this);
        }
    }
}

void sub_08039CE0(FlyingSkullEntity* this) {
    if (super->timer == 0) {
        sub_0803A100(this);
        super->timer = 1;
        super->z.HALF.HI = -1;
        super->spriteOffsetX = 0;
        SetTile(this->tileIndex, COORD_TO_TILE(super), super->collisionLayer);
    }

    if (sub_0806F520(super)) {
        sub_0806F3E4(super);
    } else {
        sub_0803A0E0(this);
    }
}

void sub_08039D4C(FlyingSkullEntity* this) {
    if ((gPlayerState.gustJarState & 0xf) == 0) {
        sub_0803A0E0(this);
    }
}

void nullsub_166(FlyingSkullEntity* this) {
}

void sub_08039D6C(FlyingSkullEntity* this) {
    sub_0803A0E0(this);
}

void sub_08039D74(FlyingSkullEntity* this) {
    u32 tilePos;
    super->action = 1;
    super->gustJarFlags = 2;
    super->carryFlags = 0;
    super->y.HALF.HI += 3;

    tilePos = COORD_TO_TILE(super);
    this->tileIndex = GetTileIndex(tilePos, super->collisionLayer);
    SetTile(SPECIAL_TILE_96, tilePos, super->collisionLayer);
    InitializeAnimation(super, 0);
}

void sub_08039DD8(FlyingSkullEntity* this) {
    sub_0803A100(this);

    if (super->type == 0) {
        if (GetTileTypeAtEntity(super) == SPECIAL_TILE_115) {
            SetTile(this->tileIndex, COORD_TO_TILE(super), super->collisionLayer);
            sub_0803A0E0(this);
        }

        RegisterCarryEntity(super);
    } else {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            Entity* player = &gPlayerEntity.base;
            if (EntityWithinDistance(super, player->x.HALF.HI, player->y.HALF.HI, 0x30)) {
                if (super->type == 1) {
                    super->action = 3;
                    super->timer = 30;
                } else {
                    player = CreateEnemy(STALFOS, super->type - 2);
                    if (player != NULL) {
                        player->type2 = 1;
                        CopyPosition(super, player);
                        SetTile(this->tileIndex, COORD_TO_TILE(super), super->collisionLayer);
                        DeleteEntity(super);
                    }
                }
            }
        }
    }
}

void sub_08039ECC(FlyingSkullEntity* this) {
    gUnk_080CFBD4[super->subAction](this);
}

void sub_08039EE4(FlyingSkullEntity* this) {
    super->subAction = 1;
    COLLISION_OFF(super);
    super->collisions = COL_NONE;
    super->hitbox = (Hitbox*)&gUnk_080FD340;
    gPlayerEntity.base.animationState;
    this->unk_0x76 = gPlayerEntity.base.animationState;
    SetTile(this->tileIndex, COORD_TO_TILE(super), super->collisionLayer);
}

void sub_08039F4C(FlyingSkullEntity* this) {
    if (gPlayerEntity.base.animationState != this->unk_0x76) {
        super->frameIndex = AnimationStateIdle(gPlayerEntity.base.animationState - this->unk_0x76 + super->frameIndex);
        this->unk_0x76 = gPlayerEntity.base.animationState;
    }
}

void sub_08039F78(FlyingSkullEntity* this) {
    super->spritePriority.b1 = 1;
    if (super->z.HALF.HI == 0 || (super->collisions != COL_NONE)) {
        sub_0803A0E0(this);
    }
}

void sub_08039FA4(FlyingSkullEntity* this) {
    sub_0803A0E0(this);
}

void sub_08039FAC(FlyingSkullEntity* this) {
    sub_0803A100(this);
    super->spriteOffsetX += gUnk_080CFBE4[super->timer & 3];

    if (--super->timer == 0) {
        super->action = 4;
        COLLISION_ON(super);
        super->spritePriority.b1 = 1;
        super->spriteOffsetX = 0;
        super->hitType = 0xa0;
        super->collisionMask = 0xf;
        super->hitbox = (Hitbox*)&gUnk_080FD34C;
        SetTile(this->tileIndex, COORD_TO_TILE(super), super->collisionLayer);
    }
}

void sub_0803A048(FlyingSkullEntity* this) {
    GetNextFrame(super);
    super->z.WORD -= Q_16_16(1.0);
    if (super->z.HALF.HI <= -6) {
        super->action = 5;
        super->timer = 10;
        super->direction = GetFacingDirection(super, &gPlayerEntity.base);
    }
}

void sub_0803A080(FlyingSkullEntity* this) {
    GetNextFrame(super);

    if (--super->timer == 0) {
        super->action = 6;
    }
}

void sub_0803A09C(FlyingSkullEntity* this) {
    GetNextFrame(super);
    ProcessMovement2(super);

    if (super->collisions != COL_NONE) {
        sub_0803A0E0(this);
    }
}

void sub_0803A0B8(FlyingSkullEntity* this) {
    if (super->zVelocity < 0) {
        super->spriteSettings.flipY = 1;
    }

    if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
        sub_0803A0E0(this);
    }
}

void sub_0803A0E0(FlyingSkullEntity* this) {
    CreateFx(super, FX_BONE, sub_0808288C(super, super->type2, 0, 0));
    DeleteThisEntity();
}

void sub_0803A100(FlyingSkullEntity* this) {
    u32 tilePos = COORD_TO_TILE(super);
    if (GetTileIndex(tilePos, super->collisionLayer) == SPECIAL_TILE_103) {
        SetTile(this->tileIndex, tilePos, super->collisionLayer);
        DeleteThisEntity();
    }
}

void (*const FlyingSkull_Functions[])(Entity*) = {
    (EntityActionPtr)FlyingSkull_OnTick,
    (EntityActionPtr)FlyingSkull_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    (EntityActionPtr)FlyingSkull_OnGrabbed,
};

void (*const gUnk_080CFB9C[])(FlyingSkullEntity*) = {
    sub_08039D74, sub_08039DD8, sub_08039ECC, sub_08039FAC, sub_0803A048, sub_0803A080, sub_0803A09C, sub_0803A0B8,
};

void (*const gUnk_080CFBBC[])(FlyingSkullEntity*) = {
    sub_08039C98, sub_08039CB0, sub_08039CE0, sub_08039D4C, nullsub_166, sub_08039D6C,
};

void (*const gUnk_080CFBD4[])(FlyingSkullEntity*) = {
    sub_08039EE4,
    sub_08039F4C,
    sub_08039F78,
    sub_08039FA4,
};

const s8 gUnk_080CFBE4[4] = { -1, 1, 1, -1 };
