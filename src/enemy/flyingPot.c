/**
 * @file flyingPot.c
 * @ingroup Enemies
 *
 * @brief Flying pot enemy
 */
#define NENT_DEPRECATED
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "player.h"
#include "room.h"

extern Hitbox gUnk_080FD34C;

typedef struct {
    /* 0x00 */ Entity base;
    /* 0x68 */ u8 filler[0xC];
    /* 0x74 */ u16 tileIndex;
} FlyingPotEntity;

enum FlyingPotActions {
    /* 0 */ FLYING_POT_ACTION_0,
    /* 1 */ FLYING_POT_ACTION_1,
    /* 2 */ FLYING_POT_ACTION_2,
    /* 3 */ FLYING_POT_ACTION_3,
    /* 4 */ FLYING_POT_ACTION_4,
    /* 5 */ FLYING_POT_ACTION_5,
    /* 6 */ FLYING_POT_ACTION_6,
};

enum FlyingPotSubActions {
    /* 0 */ FLYING_POT_SUBACTION_0,
    /* 1 */ FLYING_POT_SUBACTION_1,
    /* 2 */ FLYING_POT_SUBACTION_2,
    /* 3 */ FLYING_POT_SUBACTION_3,
    /* 4 */ FLYING_POT_SUBACTION_DO_NOTHING,
    /* 5 */ FLYING_POT_SUBACTION_5,
};

// Functions
void FlyingPot_OnTick(FlyingPotEntity*);      // 0803708C
void FlyingPot_OnCollision(FlyingPotEntity*); // 080370A4
void FlyingPot_OnGrabbed(FlyingPotEntity*);   // 0803712C

// Subactions
void FlyingPot_SubAction0(FlyingPotEntity*); // 08037144
void FlyingPot_SubAction1(FlyingPotEntity*); // 0803715C
void FlyingPot_SubAction2(FlyingPotEntity*); // 0803718C
void FlyingPot_SubAction3(FlyingPotEntity*); // 080371F8
void FlyingPot_SubActionDoNothing(FlyingPotEntity*);
void FlyingPot_SubAction5(FlyingPotEntity*); // 08037218

// Actions
void FlyingPot_Init(FlyingPotEntity*);    // ? // 08037220
void FlyingPot_Action1(FlyingPotEntity*); // 08037280
void FlyingPot_Action2(FlyingPotEntity*); // 080372E8
void FlyingPot_Action3(FlyingPotEntity*); // 0803737C
void FlyingPot_Action4(FlyingPotEntity*); // 080373B0
void FlyingPot_Action5(FlyingPotEntity*); // 080373C8
void FlyingPot_Action6(FlyingPotEntity*); // 080373E0

void sub_08037408(FlyingPotEntity*);
void sub_08037418(FlyingPotEntity*);

void (*const FlyingPot_Functions[])(Entity*) = {
    (EntityActionPtr)FlyingPot_OnTick,
    (EntityActionPtr)FlyingPot_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    (EntityActionPtr)FlyingPot_OnGrabbed,
};

void FlyingPot(Entity* thisx) {
    s32 index = sub_080012DC(thisx);

    if (index != 0) {
        gUnk_080012C8[index](thisx);
    } else {
        FlyingPot_Functions[GetNextFunction(thisx)](thisx);
    }
}

void FlyingPot_OnTick(FlyingPotEntity* this) {
    static void (*const FlyingPot_Actions[])(FlyingPotEntity*) = {
        FlyingPot_Init,    FlyingPot_Action1, FlyingPot_Action2, FlyingPot_Action3,
        FlyingPot_Action4, FlyingPot_Action5, FlyingPot_Action6,
    };

    FlyingPot_Actions[super->action](this);
}

void FlyingPot_OnCollision(FlyingPotEntity* this) {
    sub_08037418(this);

    if (super->contactFlags == 0x9D) {
        super->action = FLYING_POT_ACTION_6;
        COLLISION_OFF(super);
        super->zVelocity = Q_16_16(2.625);
        super->spritePriority.b1 = 1;

        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    } else if (super->z.HALF.HI != 0) {
        sub_08037408(this);
    }

    EnemyFunctionHandlerAfterCollision(super, FlyingPot_Functions);
}

void FlyingPot_OnGrabbed(FlyingPotEntity* this) {
    static void (*const FlyingPot_SubActions[])(FlyingPotEntity*) = {
        FlyingPot_SubAction0, FlyingPot_SubAction1,         FlyingPot_SubAction2,
        FlyingPot_SubAction3, FlyingPot_SubActionDoNothing, FlyingPot_SubAction5,
    };

    FlyingPot_SubActions[super->subAction](this);
}

void FlyingPot_SubAction0(FlyingPotEntity* this) {
    sub_08037418(this);

    super->subAction = FLYING_POT_SUBACTION_1;
    super->timer = 0;
    super->gustJarTolerance = 0x30;
}

void FlyingPot_SubAction1(FlyingPotEntity* this) {
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

void FlyingPot_SubAction2(FlyingPotEntity* this) {
    if (super->timer == 0) {
        sub_08037418(this);
        super->timer = 1;
        COLLISION_OFF(super);
        super->spriteOffsetX = 0;

        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    }

    if (sub_0806F520(super)) {
        sub_0806F3E4(super);
    } else {
        sub_08037408(this);
    }
}

void FlyingPot_SubAction3(FlyingPotEntity* this) {
    if (!(gPlayerState.field_0x1c & 0xF)) {
        sub_08037408(this);
    }
}

void FlyingPot_SubActionDoNothing(FlyingPotEntity* this) {
}

void FlyingPot_SubAction5(FlyingPotEntity* this) {
    sub_08037408(this);
}

void FlyingPot_Init(FlyingPotEntity* this) {
    u32 tile;

    super->action = FLYING_POT_ACTION_1;
    super->gustJarFlags = 2;
    super->y.HALF.HI += 3;

    tile = TILE(super->x.HALF.HI, super->y.HALF.HI);
    this->tileIndex = GetTileIndex(tile, super->collisionLayer);
    SetTile(0x4000, tile, super->collisionLayer);
    InitializeAnimation(super, 5);
}

void FlyingPot_Action1(FlyingPotEntity* this) {
    sub_08037418(this);

    if (GetTileTypeByEntity(super) != 0x4000) {
        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
        sub_08037408(this);
    }

    if (PlayerInRange(super, 1, 0x40)) {
        super->action = FLYING_POT_ACTION_2;
        super->timer = 30;
    }
}

void FlyingPot_Action2(FlyingPotEntity* this) {
    static const u8 offsets[] = { -1, 1, 1, -1 };

    sub_08037418(this);

    super->spriteOffsetX += offsets[super->timer & 3];

    if (--super->timer == 0) {
        super->action = FLYING_POT_ACTION_3;
        super->spritePriority.b1 = 1;
        super->spriteOffsetX = 0;
        super->hitType = 0xA0;
        super->flags2 = 0xF;
        super->hitbox = &gUnk_080FD34C;

        SetTile(this->tileIndex, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    }
}

void FlyingPot_Action3(FlyingPotEntity* this) {
    super->z.WORD -= Q_16_16(1.0);

    if (super->z.HALF.HI <= -6) {
        super->action = FLYING_POT_ACTION_4;
        super->timer = 10;
        super->direction = GetFacingDirection(super, &gPlayerEntity);
    }
}

void FlyingPot_Action4(FlyingPotEntity* this) {
    if (--super->timer == 0) {
        super->action = FLYING_POT_ACTION_5;
    }
}

void FlyingPot_Action5(FlyingPotEntity* this) {
    ProcessMovement2(super);

    if (super->collisions != COL_NONE) {
        sub_08037408(this);
    }
}

void FlyingPot_Action6(FlyingPotEntity* this) {
    if (super->zVelocity < 0) {
        super->spriteSettings.flipY = 1;
    }

    if (!GravityUpdate(super, Q_8_8(32.0))) {
        sub_08037408(this);
    }
}

void sub_08037408(FlyingPotEntity* this) {
    CreateFx(super, FX_POT_SHATTER, 0);
    DeleteThisEntity();
}

void sub_08037418(FlyingPotEntity* this) {
    u32 tile = COORD_TO_TILE(super);

    if (GetTileIndex(tile, super->collisionLayer) == 0x4067) {
        SetTile(this->tileIndex, tile, super->collisionLayer);
        DeleteThisEntity();
    }
}
