#define NENT_DEPRECATED
#include "entity.h"
#include "enemy.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u16 unk_0x74;
    u8 unk_0x76;
} FlyingSkullEntity;

extern void (*const gUnk_080012C8[])(Entity*);
extern Hitbox gUnk_080FD340; // TODO should be const
extern Hitbox gUnk_080FD34C;

void (*const gUnk_080CFB84[])(Entity*);
void (*const gUnk_080CFB9C[])(FlyingSkullEntity*);
void (*const gUnk_080CFBBC[])(FlyingSkullEntity*);
void (*const gUnk_080CFBD4[])(FlyingSkullEntity*);
const s8 gUnk_080CFBE4[4];

extern s32 sub_080012DC(Entity*);
extern void sub_08078930(Entity*);

void sub_0803A100(FlyingSkullEntity* this);
void sub_0803A0E0(FlyingSkullEntity* this);

void FlyingSkull(Entity* this) {
    u32 index = sub_080012DC(this);
    if (index) {
        gUnk_080012C8[index](this);
    } else {
        gUnk_080CFB84[GetNextFunction(this)](this);
    }
}

void sub_08039BE0(FlyingSkullEntity* this) {
    gUnk_080CFB9C[super->action](this);
}

void sub_08039BF8(FlyingSkullEntity* this) {
    sub_0803A100(this);

    if (super->bitfield == 0x9d) {
        super->action = 7;
        COLLISION_OFF(super);
        super->zVelocity = Q_16_16(2.625);
        super->spritePriority.b1 = 1;
        SetTile(this->unk_0x74, COORD_TO_TILE(super), super->collisionLayer);
    } else if (super->z.HALF.HI) {
        sub_0803A0E0(this);
    }

    sub_0804AA30(super, gUnk_080CFB84);
}

void sub_08039C80(FlyingSkullEntity* this) {
    gUnk_080CFBBC[super->subAction](this);
}

void sub_08039C98(FlyingSkullEntity* this) {
    sub_0803A100(this);
    super->subAction = 1;
    super->actionDelay = 0;
    super->field_0x1d = 0x30;
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
    if (super->actionDelay == 0) {
        sub_0803A100(this);
        super->actionDelay = 1;
        super->z.HALF.HI = 0xffff;
        super->spriteOffsetX = 0;
        SetTile(this->unk_0x74, COORD_TO_TILE(super), super->collisionLayer);
    }

    if (sub_0806F520(super)) {
        sub_0806F3E4(super);
    } else {
        sub_0803A0E0(this);
    }
}

void sub_08039D4C(FlyingSkullEntity* this) {
    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        sub_0803A0E0(this);
    }
}

void nullsub_166(FlyingSkullEntity* this) {
}

void sub_08039D6C(FlyingSkullEntity* this) {
    sub_0803A0E0(this);
}

void sub_08039D74(FlyingSkullEntity* this) {
    u32 tmp;
    super->action = 1;
    super->field_0x1c = 2;
    super->field_0x16 = 0;
    super->y.HALF.HI += 3;

    tmp = COORD_TO_TILE(super);
    this->unk_0x74 = GetTileIndex(tmp, super->collisionLayer);
    SetTile(0x4060, tmp, super->collisionLayer);
    InitializeAnimation(super, 0);
}

void sub_08039DD8(FlyingSkullEntity* this) {
    sub_0803A100(this);

    if (super->type == 0) {
        if (GetTileTypeByEntity(super) == 0x4073) {
            SetTile(this->unk_0x74, COORD_TO_TILE(super), super->collisionLayer);
            sub_0803A0E0(this);
        }

        sub_08078930(super);
    } else {
        if ((gPlayerState.flags & PL_MINISH) == 0) {
            Entity* ent = &gPlayerEntity;
            if (EntityWithinDistance(super, ent->x.HALF.HI, ent->y.HALF.HI, 0x30)) {
                if (super->type == 1) {
                    super->action = 3;
                    super->actionDelay = 0x1e;
                } else {
                    ent = CreateEnemy(STALFOS, super->type - 2);
                    if (ent) {
                        ent->type2 = 1;
                        CopyPosition(super, ent);
                        SetTile(this->unk_0x74, COORD_TO_TILE(super), super->collisionLayer);
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
    super->collisions = 0;
    super->hitbox = &gUnk_080FD340;
    gPlayerEntity.animationState;
    this->unk_0x76 = gPlayerEntity.animationState;
    SetTile(this->unk_0x74, COORD_TO_TILE(super), super->collisionLayer);
}

void sub_08039F4C(FlyingSkullEntity* this) {
    if (gPlayerEntity.animationState != this->unk_0x76) {
        super->frameIndex = AnimationStateIdle(gPlayerEntity.animationState - this->unk_0x76 + super->frameIndex);
        this->unk_0x76 = gPlayerEntity.animationState;
    }
}

void sub_08039F78(FlyingSkullEntity* this) {
    super->spritePriority.b1 = 1;
    if (super->z.HALF.HI == 0 || super->collisions) {
        sub_0803A0E0(this);
    }
}

void sub_08039FA4(FlyingSkullEntity* this) {
    sub_0803A0E0(this);
}

void sub_08039FAC(FlyingSkullEntity* this) {
    sub_0803A100(this);
    super->spriteOffsetX += gUnk_080CFBE4[super->actionDelay & 3];

    if (--super->actionDelay == 0) {
        super->action = 4;
        COLLISION_ON(super);
        super->spritePriority.b1 = 1;
        super->spriteOffsetX = 0;
        super->hitType = 0xa0;
        super->flags2 = 0xf;
        super->hitbox = &gUnk_080FD34C;
        SetTile(this->unk_0x74, COORD_TO_TILE(super), super->collisionLayer);
    }
}

void sub_0803A048(FlyingSkullEntity* this) {
    GetNextFrame(super);
    super->z.WORD += 0xFFFF0000;
    if (super->z.HALF.HI <= -6) {
        super->action = 5;
        super->actionDelay = 10;
        super->direction = GetFacingDirection(super, &gPlayerEntity);
    }
}

void sub_0803A080(FlyingSkullEntity* this) {
    GetNextFrame(super);

    if (--super->actionDelay == 0) {
        super->action = 6;
    }
}

void sub_0803A09C(FlyingSkullEntity* this) {
    GetNextFrame(super);
    sub_080AEFE0(super);

    if (super->collisions) {
        sub_0803A0E0(this);
    }
}

void sub_0803A0B8(FlyingSkullEntity* this) {
    if (super->zVelocity < 0) {
        super->spriteSettings.flipY = 1;
    }

    if (GravityUpdate(super, 0x2000) == 0) {
        sub_0803A0E0(this);
    }
}

void sub_0803A0E0(FlyingSkullEntity* this) {
    CreateFx(super, FX_BONE, sub_0808288C(super, super->type2, 0, 0));
    DeleteThisEntity();
}

void sub_0803A100(FlyingSkullEntity* this) {
    u32 tile = COORD_TO_TILE(super);
    if (GetTileIndex(tile, super->collisionLayer) == 0x4067) {
        SetTile(this->unk_0x74, tile, super->collisionLayer);
        DeleteThisEntity();
    }
}

void (*const gUnk_080CFB84[])(Entity*) = {
    (EntityActionPtr)sub_08039BE0, (EntityActionPtr)sub_08039BF8, sub_08001324, sub_0804A7D4, sub_08001242,
    (EntityActionPtr)sub_08039C80,
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
