/**
 * @file playerItemGustBig.c
 * @ingroup Items
 *
 * @brief Gust Big Player Item
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "global.h"
#include "player.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[24];
    /*0x80*/ u32 unk_80;
    /*0x84*/ u32 unk_84;
} PlayerItemGustBigEntity;

extern void sub_08078CD0(Entity* this);
extern void sub_08018FA0(Entity* this);
extern void PlayerItemGustBig_Init(PlayerItemGustBigEntity* this);
extern void PlayerItemGustBig_Action1(PlayerItemGustBigEntity* this);
extern void PlayerItemGustBig_Action2(PlayerItemGustBigEntity* this);
extern void PlayerItemGustBig_Action3(PlayerItemGustBigEntity* this);

extern const u8 gUnk_08003E44[];

void PlayerItemGustBig(PlayerItemGustBigEntity* this) {
    static void (*const PlayerItemGustBig_Actions[])(PlayerItemGustBigEntity*) = {
        PlayerItemGustBig_Init,
        PlayerItemGustBig_Action1,
        PlayerItemGustBig_Action2,
        PlayerItemGustBig_Action3,
    };
    if (super->health) {
        super->iframes = 0;
        PlayerItemGustBig_Actions[super->action](this);
    } else {
        DeleteThisEntity();
    }
}

static const u8 gUnk_080B3DE0[] = { 0x10, 0x2, 0x20, 0x3, 0x40, 0x6, 0, 0 };
static const Hitbox gUnk_080B3E18;
static const Hitbox gUnk_080B3E20;
static const Hitbox gUnk_080B3E28;
static const Hitbox* const gUnk_080B3DE8[] = {
    &gUnk_080B3E18,
    &gUnk_080B3E20,
    &gUnk_080B3E28,
};
static const KeyValuePair gUnk_080B3DF4[] = {
    { TILE_TYPE_117, 1 }, { TILE_TYPE_118, 1 }, { TILE_TYPE_940, 1 }, { SPECIAL_TILE_80, 1 },
    { TILE_TYPE_887, 1 }, { TILE_TYPE_888, 1 }, { TILE_TYPE_113, 1 }, { TILE_TYPE_114, 1 },
};
static const u16 gUnk_080B3DF4End = 0;

static const Hitbox gUnk_080B3E18 = { 0, 0, { 6, 3, 3, 6 }, 6, 6 };
static const Hitbox gUnk_080B3E20 = { 0, 0, { 6, 3, 3, 6 }, 8, 8 };
static const Hitbox gUnk_080B3E28 = { 0, 0, { 6, 3, 3, 6 }, 12, 12 };

void PlayerItemGustBig_Init(PlayerItemGustBigEntity* this) {
    u32 PVar1;
    u8 uVar2;
    Entity* pEVar3;

    this->unk_84 = super->x.WORD = gPlayerEntity.base.x.WORD;
    this->unk_80 = super->y.WORD = gPlayerEntity.base.y.WORD;
    uVar2 = super->animationState = gPlayerEntity.base.animationState & 0xe;
    super->direction = (u8)(uVar2 << 2);
    super->speed = 0x400;
    super->hitType = 0x96;
    super->collisionFlags = (gPlayerEntity.base.collisionFlags + 1) | 0x80;
    super->collisionMask = gPlayerEntity.base.collisionMask;
    pEVar3 = super->child;
    if (pEVar3 != NULL) {
        super->action = 1;
        COLLISION_OFF(super);
        super->timer = 86;
        super->hurtType = 0x1c;
        super->damage = 6;
        super->hitbox = (Hitbox*)&gUnk_080B3E18;
        super->child->spriteOffsetX = 0;
        super->child->spriteSettings.draw = 0;
    } else {
        if (gPlayerState.gustJarState == PL_JAR_NONE) {
            DeleteThisEntity();
        }
        super->action = 2;
        super->spriteSettings.draw = 1;
        super->spriteIndex = 0xa6;
        super->palette.raw = 0x33;
        super->spriteVramOffset = 0;
        super->type = gPlayerState.gustJarCharge - 1;
        super->timer = gUnk_080B3DE0[super->type * 2];
        super->damage = gUnk_080B3DE0[super->type * 2 + 1];
        super->hurtType = 0x1b;
        super->hitbox = (Hitbox*)gUnk_080B3DE8[super->type];
        gPlayerEntity.pulledJarEntity = super;
        sub_08078CD0(&gPlayerEntity.base);
        gPlayerEntity.pulledJarEntity = pEVar3;
        InitializeAnimation(super, super->type + 10);
        sub_08018FA0(super);
    }
    sub_0801766C(super);
}

void PlayerItemGustBig_Action1(PlayerItemGustBigEntity* this) {
    if ((super->child->gustJarState & 4) == 0) {
        gPlayerState.gustJarState = PL_JAR_NONE;
        DeleteThisEntity();
    }
    switch (gPlayerState.gustJarState) {
        case PL_JAR_NONE:
            PlayerItemGustBig_Action3(this);
            break;
        case PL_JAR_BLAST_UPDATE:
            super->child->subAction = 4;
            COLLISION_ON(super);
            super->action = 2;
            super->spritePriority.b0 = 2;
            super->child->spriteSettings.draw = 1;
            sub_08018FA0(super);
            break;
    }
    sub_08078CD0(&gPlayerEntity.base);
}

void PlayerItemGustBig_Action2(PlayerItemGustBigEntity* this) {
    s32 y;
    s32 x;
    if (super->child == NULL) {
        GetNextFrame(super);
        DoTileInteractionHere(super, 5);
    } else {
        if ((super->child->gustJarState & 4) == 0) {
            DeleteThisEntity();
        }
        if ((super->contactFlags & CONTACT_NOW) != 0) {
            PlayerItemGustBig_Action3(this);
            return;
        }
    }
    if (super->timer-- != 0) {
        LinearMoveUpdate(super);

        switch (super->direction) {
            case DirectionNorth:
                x = 0;
                y = -4;
                break;
            case DirectionSouth:
                x = 0;
                y = 4;
                break;
            case DirectionWest:
                x = -4;
                y = 0;
                break;
            case DirectionEast:
                x = 4;
                y = 0;
                break;
        }
        if (super->child != NULL) {
            super->child->direction = super->direction;
            CopyPosition(super, super->child);
        }
        if (super->type2 == 0) {
            sub_0800451C(super);
        }
        if (FindValueForKey(GetTileTypeRelativeToEntity(super, x, y), gUnk_080B3DF4)) {
            return;
        }
        if (GetActTileRelativeToEntity(super, x, y) == ACT_TILE_116) {
            return;
        }
        if (sub_080040D8(super, (u8*)gUnk_08003E44, super->x.HALF.HI + x, super->y.HALF.HI + y) == 0) {
            return;
        }
    }

    if (super->child == NULL) {
        InitializeAnimation(super, super->type + 0xd);
    }
    super->action++;
    PlayerItemGustBig_Action3(this);
}

void PlayerItemGustBig_Action3(PlayerItemGustBigEntity* this) {
    if (super->child != NULL) {
        super->child->subAction = 5;
        super->child->spriteSettings.draw = 1;
    } else {
        GetNextFrame(super);
        if (super->frame == 0) {
            return;
        }
    }
    DeleteThisEntity();
}

void sub_08018FA0(Entity* this) {
    this->collisionLayer = gPlayerEntity.base.collisionLayer;
    if (this->collisionLayer == 2) {
        this->type2 = 1;
    }
    SoundReq(this->type + SFX_EA);
}
