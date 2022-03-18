/**
 * @file flyingPot.c
 * @ingroup Enemies
 *
 * @brief Flying pot enemy
 */
#include "functions.h"
#include "enemy.h"
#include "player.h"
#include "room.h"

extern void (*const gUnk_080012C8[])(Entity*);
extern Hitbox gUnk_080FD34C;

void sub_0803708C(Entity*);
void sub_080370A4(Entity*);
void sub_0803712C(Entity*);
void sub_08037144(Entity*);
void sub_0803715C(Entity*);
void sub_0803718C(Entity*);
void sub_080371F8(Entity*);
void nullsub_161(Entity*);
void sub_08037218(Entity*);
void sub_08037220(Entity*);
void sub_08037280(Entity*);
void sub_080372E8(Entity*);
void sub_0803737C(Entity*);
void sub_080373B0(Entity*);
void sub_080373C8(Entity*);
void sub_080373E0(Entity*);
void sub_08037408(Entity*);
void sub_08037418(Entity*);

void (*const gUnk_080CF244[])(Entity*) = {
    sub_0803708C, sub_080370A4, GenericKnockback, GenericDeath, GenericConfused, sub_0803712C,
};

void FlyingPot(Entity* this) {
    s32 index = sub_080012DC(this);

    if (index != 0) {
        gUnk_080012C8[index](this);
    } else {
        gUnk_080CF244[GetNextFunction(this)](this);
    }
}


void sub_0803708C(Entity* this) {
    static void (*const gUnk_080CF25C[])(Entity*) = {
        sub_08037220, sub_08037280, sub_080372E8, sub_0803737C, sub_080373B0, sub_080373C8, sub_080373E0,
    };

    gUnk_080CF25C[this->action](this);
}

void sub_080370A4(Entity* this) {
    sub_08037418(this);

    if (this->bitfield == 0x9D) {
        this->action = 6;
        this->flags &= 0x7F;
        this->zVelocity = 0x2A000;
        this->spritePriority.b1 = 1;

        SetTile(this->field_0x74.HWORD, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    } else if (this->z.HALF.HI != 0) {
        sub_08037408(this);
    }

    EnemyFunctionHandlerAfterCollision(this, gUnk_080CF244);
}

void sub_0803712C(Entity* this) {
    static void (*const gUnk_080CF278[])(Entity*) = {
        sub_08037144, sub_0803715C, sub_0803718C, sub_080371F8, nullsub_161, sub_08037218,
    };

    gUnk_080CF278[this->subAction](this);
}

void sub_08037144(Entity* this) {
    sub_08037418(this);

    this->subAction = 1;
    this->actionDelay = 0;
    this->field_0x1d = 0x30;
}

void sub_0803715C(Entity* this) {
    sub_08037418(this);

    if (sub_0806F520(this)) {
        sub_0806F4E8(this);
    } else {
        this->spriteOffsetX = 0;

        if (this->z.HALF.HI != 0) {
            sub_08037408(this);
        }
    }
}

void sub_0803718C(Entity* this) {
    if (this->actionDelay == 0) {
        sub_08037418(this);
        this->actionDelay = 1;
        this->flags &= 0x7F;
        this->spriteOffsetX = 0;

        SetTile(this->field_0x74.HWORD, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    }

    if (sub_0806F520(this)) {
        sub_0806F3E4(this);
    } else {
        sub_08037408(this);
    }
}

void sub_080371F8(Entity* this) {
    if (!(gPlayerState.field_0x1c & 0xF)) {
        sub_08037408(this);
    }
}

void nullsub_161(Entity* this) {
}

void sub_08037218(Entity* this) {
    sub_08037408(this);
}

void sub_08037220(Entity* this) {
    u32 tile;
    this->action = 1;
    this->field_0x1c = 2;
    this->y.HALF.HI += 3;

    tile = TILE(this->x.HALF.HI, this->y.HALF.HI);
    this->field_0x74.HWORD = GetTileIndex(tile, this->collisionLayer);
    SetTile(0x4000, tile, this->collisionLayer);
    InitializeAnimation(this, 5);
}

void sub_08037280(Entity* this) {
    sub_08037418(this);

    if (GetTileTypeByEntity(this) != 0x4000) {
        SetTile(this->field_0x74.HWORD, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
        sub_08037408(this);
    }

    if (PlayerInRange(this, 1, 0x40)) {
        this->action = 2;
        this->actionDelay = 30;
    }
}

void sub_080372E8(Entity* this) {
    static const u8 gUnk_080CF290[] = { -1, 1, 1, -1 };

    sub_08037418(this);

    this->spriteOffsetX += gUnk_080CF290[this->actionDelay & 3];

    if (--this->actionDelay == 0) {
        this->action = 3;
        this->spritePriority.b1 = 1;
        this->spriteOffsetX = 0;
        this->hitType = 0xA0;
        this->flags2 = 0xF;
        this->hitbox = &gUnk_080FD34C;

        SetTile(this->field_0x74.HWORD, TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    }
}

void sub_0803737C(Entity* this) {
    this->z.WORD -= 0x10000;

    if (this->z.HALF.HI <= -6) {
        this->action = 4;
        this->actionDelay = 10;
        this->direction = GetFacingDirection(this, &gPlayerEntity);
    }
}

void sub_080373B0(Entity* this) {
    if (--this->actionDelay == 0) {
        this->action = 5;
    }
}

void sub_080373C8(Entity* this) {
    ProcessMovement2(this);

    if (this->collisions != 0) {
        sub_08037408(this);
    }
}

void sub_080373E0(Entity* this) {
    if (this->zVelocity < 0) {
        this->spriteSettings.flipY = 1;
    }

    if (GravityUpdate(this, 0x2000) == 0) {
        sub_08037408(this);
    }
}

void sub_08037408(Entity* this) {
    CreateFx(this, 5, 0);
    DeleteThisEntity();
}

void sub_08037418(Entity* this) {
    u32 tile = COORD_TO_TILE(this);

    if (GetTileIndex(tile, this->collisionLayer) == 0x4067) {
        SetTile(this->field_0x74.HWORD, tile, this->collisionLayer);
        DeleteThisEntity();
    }
}
