/**
 * @file playerItemBow.c
 * @ingroup Items
 *
 * @brief Bow Player Item
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "playeritem.h"
#include "save.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x69*/ u8 unk_69[3];
    /*0x6c*/ u32 unk_6c;
    /*0x70*/ u32 unk_70;
    /*0x74*/ u32 unk_74;
    /*0x78*/ u32 unk_78;
} PlayerItemBowEntity;

typedef struct {
    s8 x;
    s8 y;
    u8 spriteSettings;
    u8 unk_3;
    s8 unk_4;
    s8 unk_5;
    u8 animIndex;
    u8 unk_7;
    const Hitbox* hitbox;
} struct_080B3E40;

extern u8 gUnk_08003E44;

extern Entity* sub_08008782(Entity*, u32, s32, s32);
extern void sub_08017744(Entity*);
extern void ModArrows(s32);

void sub_08019468(PlayerItemBowEntity* this);
void PlayerItemBow_Init(PlayerItemBowEntity* this);
void PlayerItemBow_Action1(PlayerItemBowEntity* this);
void PlayerItemBow_Action2(PlayerItemBowEntity* this);
void PlayerItemBow_Action3(PlayerItemBowEntity* this);

void PlayerItemBow(Entity* this) {
    static void (*const PlayerItemBow_Actions[])(PlayerItemBowEntity*) = {
        PlayerItemBow_Init,
        PlayerItemBow_Action1,
        PlayerItemBow_Action2,
        PlayerItemBow_Action3,
    };
    PlayerItemBow_Actions[this->action]((PlayerItemBowEntity*)this);
}

static const Hitbox gUnk_080B3E70;
static const Hitbox gUnk_080B3E78;

static const struct_080B3E40 gUnk_080B3E40[] = {
    { -3, -12, 0, 0, 0, -5, 2, 0, &gUnk_080B3E78 },
    { 8, -4, 1, 0, 5, 0, 1, 0, &gUnk_080B3E70 },
    { 0, 1, 0, 1, 0, 5, 2, 0, &gUnk_080B3E78 },
    { -8, -4, 0, 0, -5, 0, 1, 0, &gUnk_080B3E70 },
};

static const Hitbox gUnk_080B3E70 = { 0, 0, { 4, 0, 0, 0 }, 6, 4 };
static const Hitbox gUnk_080B3E78 = { 0, 0, { 0, 0, 0, 4 }, 4, 6 };

void PlayerItemBow_Init(PlayerItemBowEntity* this) {
    Entity* object;
    const struct_080B3E40* ptr;
    super->action = 1;
    if (super->type != 0) {
        super->spriteSettings.draw = 1;
        super->flags |= 0x80;
        this->unk_74 = 106;
        super->hurtType = super->type2;
        super->spriteIndex = 0xa6;
        if (super->hurtType == 0x0e) {
            super->speed = 0x400;
        } else {
            super->speed = 0x300;
        }
        super->direction = super->animationState << 2;
        super->collisionFlags = gPlayerEntity.collisionFlags + 1;
        super->flags2 = gPlayerEntity.flags2;
        if (super->collisionLayer == 2) {
            super->type2 = 1;
        } else {
            super->type2 = 0;
        }
        super->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
        ptr = &gUnk_080B3E40[super->animationState >> 1];
        super->x.HALF.HI = gPlayerEntity.x.HALF.HI + ptr->x;
        super->y.HALF.HI = gPlayerEntity.y.HALF.HI + ptr->y;
        super->spriteSettings.flipX = ptr->spriteSettings;
        super->spriteSettings.flipY = ptr->unk_3;
        super->animIndex = ptr->animIndex;
        this->unk_6c = ptr->unk_4;
        this->unk_70 = ptr->unk_5;
        super->hitbox = (Hitbox*)ptr->hitbox;
        sub_0801766C(super);
        if (super->hurtType == 0x0e) {
            super->animIndex += 6;
            super->spriteVramOffset = 0;
        }
        InitializeAnimation(super, super->animIndex);
        SoundReq(SFX_FC);
    } else {
        super->updatePriority = 6;
        super->frameIndex = 0xff;
        super->spriteSettings.flipX = gUnk_080B3E40[super->animationState >> 1].spriteSettings;
        gPlayerState.item = super;
        LoadSwapGFX(super, 1, 3);
        sub_08079BD8(super);
        if (this->unk_68 == 0xa) {
            this->unk_78 = 60;
            object = CreateObject(SWORD_PARTICLE, super->type, 1);
            if (object != NULL) {
                CopyPosition(super, object);
            }
        } else {
            this->unk_78 = 0;
        }
        PlayerItemBow_Action1(this);
    }
}

void PlayerItemBow_Action1(PlayerItemBowEntity* this) {
    u8 arrowCount;
    bool32 tmp2;
    s32 tmp3;
    Entity* entity;

    if (super->type != 0) {
        if (--this->unk_74 == 0) {
            sub_08019468(this);
            DeleteThisEntity();
        }
        GetNextFrame(super);
        if (this->unk_74 < 24) {
            super->spriteSettings.draw ^= 1;
        }
        LinearMoveUpdate(super);
        if (sub_08008782(super, (super->hurtType == 0x0e) ? 1 : 4, this->unk_6c, this->unk_70) != NULL) {
            if (super->hurtType != 0x0e) {
                DeleteThisEntity();
            }
            tmp2 = TRUE;
        } else {
            tmp2 = FALSE;
        }
        if (super->hurtType == 0x0e) {
            super->timer++;
            if ((super->timer & 7) == 0) {
                CreateFx(super, FX_SPARKLE2, 0);
            }
        }
        if (super->type2 == 0) {
            sub_0800451C(super);
        }
        if ((sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.collisionLayer, 0x80) == 0) && (!tmp2) &&
            sub_080040D8(super, &gUnk_08003E44, super->x.HALF.HI, super->y.HALF.HI) != 0) {
            super->timer = 30;
            super->action++;
            if (super->hurtType == 0x0e) {
                sub_08019468(this);
                InitializeAnimation(super, super->animIndex + 0xf);
            } else {
                InitializeAnimation(super, super->animIndex + 2);
            }
            sub_08017744(super);
            super->flags &= ~0x80;
            super->speed = 0;
            tmp3 = super->x.WORD;
            if (tmp3 < 0) {
                tmp3 = 0;
            }
            super->x.WORD = tmp3;
            tmp3 = super->y.WORD;
            if (tmp3 < 0) {
                tmp3 = 0;
            }
            super->y.WORD = tmp3;
            SoundReq(SFX_18A);
        }
        if ((super->contactFlags != 0) && (!tmp2)) {
            if (super->hurtType == 0x0e) {
                sub_08019468(this);
            }
            sub_08017744(super);
            if ((super->contactFlags & 0x3f) == 0x42) {
                super->spriteSettings.draw = 1;
                super->action = 3;
                super->direction ^= 0x10;
                super->speed = 0x100;
                super->zVelocity = Q_16_16(0.5);
                super->flags &= ~0x80;
                InitializeAnimation(super, 6);
            } else {
                super->action++;
                super->timer = 1;
                super->spriteSettings.draw = 0;
            }
        }

    } else {
        if ((PlayerItemBowEntity*)gPlayerState.item != this || (gPlayerState.field_0x1f[2] == 0)) {
            if ((PlayerItemBowEntity*)gPlayerState.item == this) {
                gPlayerState.item = 0;
            }
            gPlayerState.field_0x1f[2] = 0;
            DeleteThisEntity();
        }
        if ((this->unk_68 == 0xa) && (gPlayerState.field_0x1f[2] != 0)) {
            if (gPlayerState.field_0x1f[2] < 0x78) {
                gPlayerState.field_0x1f[2]++;
            } else {
                super->hurtType = 0x0e;
            }
        }
        arrowCount = gSave.stats.arrowCount;
        if (super->frameIndex - this->unk_78 != gPlayerEntity.frameIndex) {
            super->frameIndex = gPlayerEntity.frameIndex + this->unk_78;
            if (arrowCount == 0) {
                super->frameIndex += 0x2a;
            }
            sub_080042D0(super, super->frameIndex, super->spriteIndex);
        }
        if ((gPlayerEntity.frame & 1) != 0 && arrowCount != 0) {
            entity = CreatePlayerItem(PLAYER_ITEM_BOW, 1, super->hurtType, 9);
            if (entity != NULL) {
                gPlayerState.attack_status |= 0x80;
                ModArrows(-1);
            }
        }
        sub_08078E84(super, &gPlayerEntity);
    }
}

void PlayerItemBow_Action2(PlayerItemBowEntity* this) {
    if (super->timer < 0xf) {
        InitializeAnimation(super, super->animIndex);
    } else {
        GetNextFrame(super);
    }
    if (super->timer-- == 0) {
        DeleteThisEntity();
    }
}

void PlayerItemBow_Action3(PlayerItemBowEntity* this) {
    GetNextFrame(super);
    LinearMoveUpdate(super);
    if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
        DeleteThisEntity();
    }
}

void sub_08019468(PlayerItemBowEntity* this) {
    if (super->hurtType == 0xe) {
        CreateFx(super, FX_REFLECT5, 0);
    }
}

// Probably belongs to collision.c, but needs to be placed at the end of playerItemBow.c or start of
// playerItemSwordBeam.c
const u8 gUnk_080B3E80[] = {
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   255, 255, 255, 255, 255, 255, 255, 0,   255, 255, 255,
    255, 255, 255, 0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   255, 0,   0,   255,
    0,   0,   0,   0,   0,   0,   0,   33,  0,   0,   0,   48,  34,  34,  36,  0,   0,   29,  29,  29,  255, 255, 29,
    29,  29,  29,  29,  29,  29,  29,  29,  29,  29,  29,  255, 255, 255, 255, 255, 29,  29,  29,  255, 255, 29,  29,
    255, 255, 255, 255, 255, 0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   15,  15,  32,  32,
    15,  15,  15,  15,  0,   0,   0,   0,   21,  21,  20,  20,  95,  255, 255, 255, 255, 255, 255, 15,  41,  41,  41,
    41,  0,   36,  36,  36,  15,  15,  15,  15,  255, 255, 255, 255, 255, 255, 15,  15,  15,  15,  39,  39,  15,  15,
    15,  39,  15,  15,  35,  15,  15,  35,  15,  15,  15,  15,  15,  15,  15,  15,  15,  39,  15,  15,  39,  39,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  39,  15,  15,  255, 39,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  39,  39,  15,  15,  39,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  35,  15,  15,  35,
    35,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  35,  35,  15,  15,  35,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   15,  15,  15,  15,  15,  15,  95,  255, 255, 15,  15,  21,  15,  0,   0,   0,   255, 12,  0,   0,   12,
    12,  66,  96,  15,  29,  255, 15,  15,  15,  0,   15,  15,  15,  15,  10,  5,   10,  5,   1,   1,   1,   0,   0,
    0,   0,   0,   0,   5,   15,  10,  0,   0,   5,   15,  10,  0,   0,   0,   0,   0,   0,   0,   0,   0,   5,   0,
    10,  4,   12,  8,   0,   0,   0,   5,   0,   10,  4,   12,  8,   15,  15,  15,  15,  15,  16,  17,  17,  16,  42,
    42,  42,  42,  42,  42,  42,  42,  42,  42,  42,  42,  27,  25,  28,  26,  43,  43,  97,  23,  23,  84,  23,  23,
    23,  0,   0,   84,  15,  15,  15,  15,  15,  15,  15,  0,   0,   0,   0,   18,  15,  15,  19,  15,  15,  15,  15,
    15,  15,  15,  15,  5,   0,   0,   0,   0,   15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  0,   0,   0,   0,   0,   0,   1,   3,   2,   0,   0,   5,   15,  10,  0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   15,  15,  71,  15,  15,  15,  1,   3,   2,   15,  15,  5,   15,  10,  15,
    15,  4,   0,   8,   15,  12,  12,  0,   12,  12,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,
    48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  48,  16,  15,  17,  15,  15,  15,  15,  15,
    15,  0,   0,   0,   0,   0,   0,   0,   0,   0,   5,   15,  0,   0,   5,   15,  15,  15,  15,  15,  15,  15,  15,
    39,  15,  15,  39,  255, 15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  39,  15,  15,  39,  255, 15,  15,
    15,  15,  255, 255, 255, 255, 255, 255, 15,  39,  15,  15,  255, 39,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   3,   0,   0,   0,   0,
    0,   0,   0,   5,   0,   10,  4,   12,  8,   70,  75,  74,  72,  71,  96,  98,  97,  99,  100, 102, 15,  80,  48,
    48,  255, 0,   255, 0,   0,   0,   0,   255, 0,   0,   37,  15,  255, 255, 255, 255, 255, 255, 0,   0,   33,  33,
    33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,  33,
    33,  33,  33,  33,  33,  0,   12,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   15,  255, 255, 255, 255, 255,
    40,  255, 40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,
    15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  15,  21,  20,  20,
    15,  15,  15,  15,  15,  15,  15,  15,  255, 1,   1,   1,   255, 255, 255, 255, 24,  24,  24,  24,  38,  15,  0,
    28,  26,  27,  25,  255, 0,   15,  21,  15,  15,  15,  19,  18,  15,  15,  15,  18,  19,  35,  39,  0,   0,   2,
    14,  13,  12,  3,   9,   6,   4,   8,   11,  7,   10,  5,   3,   107, 103, 106, 15,  12,  20,  21,  15,  0,   15,
    40,  95,  15,  5,   10,  16,  17,  18,  19,  71,  12,  13,  14,  71,  20,  92,  13,  5,   4,   8,   1,   2,   10,
    5,   10,  15,  4,   8,   15,  3,   2,   5,   15,  10,  4,   12,  8,   3,   2,   5,   15,  10,  4,   12,  8,   92,
    84,  81,  83,  81,  82,  83,  90,  87,  91,  95,  84,  88,  92,  85,  93,  94,  39,  88,  85,  10,  83,  90,  81,
    15,  89,  0,   0,   69,  71,  67,  70,  0,   3,   15,  1,   2,   3,   10,  12,  5,   4,   8,   4,   1,   3,   15,
    95,  97,  0,   3,   28,  27,  21,  69,  3,   96,  12,  102, 100, 101, 26,  25,  18,  17,  19,  16,  2,   4,   8,
    14,  15,  11,  84,  69,  68,  4,   13,  0,   0,   12,  12,  15,  15,  10,  5,   10,  5,   12,  97,  10,  5,   11,
    7,   67,  69,  1,   2,   4,   8,   13,  3,   3,   7,   15,  3,   0,   2,   84,  92,  88,  12,  67,  0,   0,   8,
    1,   2,   87,  95,  91,  82,  14,  18,  19,  10,  5,   0,   10,  5,   3,   63,  19,  18,  47,  46,  17,  16,  11,
    7,   15,  0,   3,   15,  15,  1,   8,   12,  12,  15,  1,   3,   2,   5,   10,  4,   12,  8,   9,   39,  2,   14,
    13,  12,  3,   6,   9,   4,   8,   11,  7,   10,  5,   34,  35,  4,   12,  3,   3,   1,   5,   10,  4,   8,   0,
    107, 103, 106, 18,  45,  44,  0,   15,  41,  40,  0,   0,   0,   0,   0,   0,   0,   20,  33,  39,  67,  4,   8,
    12,  3,   3,   1,   2,   0,   12,  3,   2,   5,   10,  14,  13,  4,   8,   11,  7,   12,  0,   0,   39,  1,   2,
    1,   2,   4,   12,  7,   11,  4,   8,   16,  17,  43,  43,  18,  19,  10,  5,   2,   1,   35,  1,   3,   2,   5,
    10,  14,  13,  11,  7,   4,   8,   10,  5,   10,  5,   13,  14,  8,   4,   7,   11,  0,   9,   6,   0,   15,  7,
    11,  3,   33,  33,  33,  33,  33,  33,  33,  15,  5,   10,  96,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   48,  0,   3,   48,  48,  0,   0,   0,   0,   0,   0,   48,  48,
    33,  33,  0,   15,  83,  92,  85,  90,  96,  97,  95,  18,  19,  16,  10,  10,  35,  10,  5,   14,  13,  11,  7,
    10,  5,   14,  13,  11,  7,   0,   0,   3,   0,   39,  12,  12,  33,  0,   0,
};
