/**
 * @file flyingPot.c
 * @ingroup Enemies
 *
 * @brief Flying pot enemy
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "enemy.h"
#include "player.h"
#include "room.h"

extern void (*const gUnk_080012C8[])(Entity*);
extern Hitbox gUnk_080FD34C;

typedef struct {
    /* 0x00 */ Entity base;
    /* 0x68 */ u8 filler[0xC];
    /* 0x74 */ u16 tileIndex;
} FlyingPotEntity;

// Knockback
void sub_0803708C(FlyingPotEntity*);
void sub_080370A4(FlyingPotEntity*);
void sub_0803712C(FlyingPotEntity*);

// Subactions?
void sub_08037144(FlyingPotEntity*);
void sub_0803715C(FlyingPotEntity*);
void sub_0803718C(FlyingPotEntity*);
void sub_080371F8(FlyingPotEntity*);
void nullsub_161(FlyingPotEntity*);
void sub_08037218(FlyingPotEntity*);

// Actions
void sub_08037220(FlyingPotEntity*);
void sub_08037280(FlyingPotEntity*);
void sub_080372E8(FlyingPotEntity*);
void sub_0803737C(FlyingPotEntity*);
void sub_080373B0(FlyingPotEntity*);
void sub_080373C8(FlyingPotEntity*);
void sub_080373E0(FlyingPotEntity*);

void sub_08037408(FlyingPotEntity*);
void sub_08037418(FlyingPotEntity*);

extern void (*const gUnk_080CF244[])(Entity*);
extern void (*const gUnk_080CF25C[])(FlyingPotEntity*);
extern void (*const gUnk_080CF278[])(FlyingPotEntity*);

void (*const gUnk_080CF244[])(Entity*) = {
    (EntityActionPtr)sub_0803708C, (EntityActionPtr)sub_080370A4, GenericKnockback, GenericDeath, GenericConfused,
    (EntityActionPtr)sub_0803712C,
};

void FlyingPot(Entity* thisx) {
    s32 index = sub_080012DC(thisx);

    if (index != 0) {
        gUnk_080012C8[index](thisx);
    } else {
        gUnk_080CF244[GetNextFunction(thisx)](thisx);
    }
}

void sub_0803708C(FlyingPotEntity* this) {
    static void (*const gUnk_080CF25C[])(FlyingPotEntity*) = {
        sub_08037220, sub_08037280, sub_080372E8, sub_0803737C, sub_080373B0, sub_080373C8, sub_080373E0,
    };

    gUnk_080CF25C[super->action](this);
}

void sub_080370A4(FlyingPotEntity* this) {
    sub_08037418(this);

    if (super->bitfield == 0x9D) {
        super->action = 6;
        super->flags &= ~0x80;
        super->zVelocity = 0x2A000;
        super->spritePriority.b1 = 1;

        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    } else if (super->z.HALF.HI != 0) {
        sub_08037408(this);
    }

    EnemyFunctionHandlerAfterCollision(super, gUnk_080CF244);
}

void sub_0803712C(FlyingPotEntity* this) {
    static void (*const gUnk_080CF278[])(FlyingPotEntity*) = {
        sub_08037144, sub_0803715C, sub_0803718C, sub_080371F8, nullsub_161, sub_08037218,
    };

    gUnk_080CF278[super->subAction](this);
}

void sub_08037144(FlyingPotEntity* this) {
    sub_08037418(this);

    super->subAction = 1;
    super->actionDelay = 0;
    super->field_0x1d = 0x30;
}

void sub_0803715C(FlyingPotEntity* this) {
    sub_08037418(this);

    if (sub_0806F520(super)) {
        sub_0806F4E8(super);
    } else {
        super->spriteOffsetX = 0;

        if (super->z.HALF.HI != 0) {
            sub_08037408(this);
        }
    }
}

void sub_0803718C(FlyingPotEntity* this) {
    if (super->actionDelay == 0) {
        sub_08037418(this);
        super->actionDelay = 1;
        super->flags &= ~0x80;
        super->spriteOffsetX = 0;

        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    }

    if (sub_0806F520(super)) {
        sub_0806F3E4(super);
    } else {
        sub_08037408(this);
    }
}

void sub_080371F8(FlyingPotEntity* this) {
    if (!(gPlayerState.field_0x1c & 0xF)) {
        sub_08037408(this);
    }
}

void nullsub_161(FlyingPotEntity* this) {
}

void sub_08037218(FlyingPotEntity* this) {
    sub_08037408(this);
}

void sub_08037220(FlyingPotEntity* this) {
    u32 tile;

    super->action = 1;
    super->field_0x1c = 2;
    super->y.HALF.HI += 3;

    tile = TILE(super->x.HALF.HI, super->y.HALF.HI);
    this->tileIndex = GetTileIndex(tile, super->collisionLayer);
    SetTile(0x4000, tile, super->collisionLayer);
    InitializeAnimation(super, 5);
}

void sub_08037280(FlyingPotEntity* this) {
    sub_08037418(this);

    if (GetTileTypeByEntity(super) != 0x4000) {
        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
        sub_08037408(this);
    }

    if (PlayerInRange(super, 1, 0x40)) {
        super->action = 2;
        super->actionDelay = 30;
    }
}

void sub_080372E8(FlyingPotEntity* this) {
    static const u8 gUnk_080CF290[] = { -1, 1, 1, -1 };

    sub_08037418(this);

    super->spriteOffsetX += gUnk_080CF290[super->actionDelay & 3];

    if (--super->actionDelay == 0) {
        super->action = 3;
        super->spritePriority.b1 = 1;
        super->spriteOffsetX = 0;
        super->hitType = 0xA0;
        super->flags2 = 0xF;
        super->hitbox = &gUnk_080FD34C;

        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    }
}

void sub_0803737C(FlyingPotEntity* this) {
    super->z.WORD -= 0x10000;

    if (super->z.HALF.HI <= -6) {
        super->action = 4;
        super->actionDelay = 10;
        super->direction = GetFacingDirection(super, &gPlayerEntity);
    }
}

void sub_080373B0(FlyingPotEntity* this) {
    if (--super->actionDelay == 0) {
        super->action = 5;
    }
}

void sub_080373C8(FlyingPotEntity* this) {
    ProcessMovement2(super);

    if (super->collisions != 0) {
        sub_08037408(this);
    }
}

void sub_080373E0(FlyingPotEntity* this) {
    if (super->zVelocity < 0) {
        super->spriteSettings.flipY = 1;
    }

    if (!GravityUpdate(super, 0x2000)) {
        sub_08037408(this);
    }
}

void sub_08037408(FlyingPotEntity* this) {
    CreateFx(super, 5, 0);
    DeleteThisEntity();
}

void sub_08037418(FlyingPotEntity* this) {
    u32 tile = COORD_TO_TILE(super);

    if (GetTileIndex(tile, super->collisionLayer) == 0x4067) {
        SetTile(this->tileIndex, tile, super->collisionLayer);
        DeleteThisEntity();
    }
}
