/**
 * @file graveyardKey.c
 * @ingroup Objects
 *
 * @brief Graveyard Key object
 */
#include "asm.h"
#include "collision.h"
#include "effects.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "item.h"
#include "player.h"
#include "sound.h"

typedef struct _struct_gUnk_08123FB0 {
    void (*const funcEnt)(Entity*);
    bool32 (*const func)(Entity*, const struct _struct_gUnk_08123FB0*);
    s8 unk08;
    s8 unk09;
    u8 unk0a;
    u8 unk0b;
    u8 unk0c;
    u8 type;
    u8 unk0e;
    u8 unk0f;
    s32 zVelocity;
    u32 unk14;
    s16 speed;
    s16 y;
    u16 flag;
    u8 timer;
    u8 unk1f;
} struct_gUnk_08123FB0;

static_assert(sizeof(struct_gUnk_08123FB0) == 0x20);

void sub_0809D91C(Entity*);
bool32 sub_0809D93C(Entity*, const struct_gUnk_08123FB0*);
void GraveyardKey_Init(Entity*, const struct_gUnk_08123FB0*);
void GraveyardKey_Action1(Entity*, const struct_gUnk_08123FB0*);
void GraveyardKey_Action2(Entity*, const struct_gUnk_08123FB0*);
void GraveyardKey_Action3(Entity*, const struct_gUnk_08123FB0*);

static const struct_gUnk_08123FB0 gUnk_08123FB0[] = {
    { sub_0809D91C, sub_0809D93C, 0, 0, 0x30, 0x30, 0x1, ITEM_QST_GRAVEYARD_KEY, ITEM_QST_GRAVEYARD_KEY, 0x13,
      Q_16_16(1.0), 0x1800, 0x60, 0x40, 0x4021, 0x1, 0x0 },
    { sub_0809D91C, NULL, 0, 0, 0, 0, 0, ITEM_HEART_PIECE, ITEM_HEART_PIECE, 0x10, 0, 0x1800, 0, 0x18,
#if defined(JP) || defined(DEMO_JP) || defined(EU)
      0xCD,
#else
      0xd0,
#endif
      0, 0 },
    { sub_0809D91C, NULL, 0, 0, 0, 0, 0, ITEM_QST_GRAVEYARD_KEY, ITEM_QST_GRAVEYARD_KEY, 0xf, Q_16_16(1.0), 0x1800,
      0x60, 0x40, 0x4021, 0x1, 0x0 },
    { sub_0809D91C, NULL, 0, 0, 0, 0, 0, ITEM_QST_GRAVEYARD_KEY, ITEM_QST_GRAVEYARD_KEY, 0x2, Q_16_16(1.0), 0x1800,
      0x140, 0x40, 0x4021, 0x1, 0x0 },
    { sub_0809D91C, NULL, 0, 0, 0, 0, 0, ITEM_QST_GRAVEYARD_KEY, ITEM_QST_GRAVEYARD_KEY, 0xd, Q_16_16(1.0), 0x1800,
      0x60, 0x40, 0x4021, 0x1, 0x0 },
    { sub_0809D91C, NULL, 0, 0, 0, 0, 0, ITEM_QST_GRAVEYARD_KEY, ITEM_QST_GRAVEYARD_KEY, 0x1a, Q_16_16(1.0), 0x1800,
      0x100, 0x40, 0x4021, 0x1, 0x0 },
    { sub_0809D91C, NULL, 0, 0, 0, 0, 0, ITEM_QST_GRAVEYARD_KEY, ITEM_QST_GRAVEYARD_KEY, 0x13, Q_16_16(1.0), 0x1800,
      0x60, 0x40, 0x4021, 0x1, 0x0 },
    { NULL, NULL, 0, 0, 0, 0, 0, ITEM_KINSTONE, ITEM_KINSTONE, 0x81, 0, 0x1800, 0x100, 0x20, 0x0, 0x1, 0x0 },
};

void GraveyardKey(Entity* this) {
    static void (*const GraveyardKey_Actions[])(Entity*, const struct_gUnk_08123FB0*) = {
        GraveyardKey_Init,
        GraveyardKey_Action1,
        GraveyardKey_Action2,
        GraveyardKey_Action3,
    };
    GraveyardKey_Actions[this->action](this, &gUnk_08123FB0[this->type]);
}

void GraveyardKey_Init(Entity* this, const struct_gUnk_08123FB0* param_2) {
    u32 type;
    u32 dir;

    this->action++;
    this->collisionLayer = 2;
    this->spriteRendering.b3 = 1;
    this->zVelocity = param_2->zVelocity;
    this->direction = param_2->unk0f;
    this->speed = param_2->speed;
    this->y.HALF.HI -= param_2->y;
    this->z.WORD = 0;
    this->timer = param_2->timer;
    if ((this->direction & DIR_NOT_MOVING_CHECK)) {
        dir = this->direction;
        if (dir == (DIR_NOT_MOVING_CHECK | 0x1)) {
            this->direction = (((gPlayerEntity.base.animationState * 4 + (Random() & 3)) - 2) & 0x1f) ^ DirectionSouth;
        }
    }
    UpdateSpriteForCollisionLayer(this);
    type = this->type;
    sub_08080CB4(this);
    this->type = type;
}

void GraveyardKey_Action1(Entity* this, const struct_gUnk_08123FB0* param_2) {
    u32 type;
    s32 iVar3;

    iVar3 = 1;
    if (param_2->func != NULL) {
        iVar3 = param_2->func(this, param_2);
    }
    if (iVar3 != 0) {
        this->action++;
        this->y.HALF.HI += param_2->y;
        this->z.HALF.HI -= param_2->y;
    }
    type = this->type;
    this->type = param_2->type;
    sub_08080CB4(this);
    this->type = type;
}

void GraveyardKey_Action2(Entity* this, const struct_gUnk_08123FB0* param_2) {
    u8 type;

    LinearMoveUpdate(this);
    if (BounceUpdate(this, param_2->unk14) < BOUNCE_AIRBORNE) {
        if (this->timer) {
            this->timer--;
            this->zVelocity = param_2->unk14 << 3;
        } else {
            this->action++;
            this->collisionLayer = gPlayerEntity.base.collisionLayer;
            UpdateSpriteForCollisionLayer(this);
            if (param_2->funcEnt != NULL) {
                param_2->funcEnt(this);
            }
        }
        SoundReq(SFX_RUPEE_BOUNCE);
    }
    type = this->type;
    this->type = param_2->type;
    sub_08080CB4(this);
    this->type = type;
}

void GraveyardKey_Action3(Entity* this, const struct_gUnk_08123FB0* param_2) {
    u8 type;

    if (gPlayerState.flags & PL_MINISH) {
        sub_0800445C(this);
    } else {
        if (IsCollidingPlayer(this)) {
            CreateItemEntity(param_2->type, this->type2, 0);
            if (param_2->flag) {
                SetFlag(param_2->flag);
            }
            DeleteThisEntity();
        }
    }
    type = this->type;
    this->type = param_2->type;
    sub_08080CB4(this);
    this->type = type;
}

void sub_0809D91C(Entity* this) {
    Entity* fxEnt;

    fxEnt = CreateFx(this, FX_DASH, 0);
    if (fxEnt != NULL) {
        SortEntityBelow(this, fxEnt);
    }
    SoundReq(SFX_SECRET);
}

bool32 sub_0809D93C(Entity* this, const struct_gUnk_08123FB0* param_2) {
    u32 uVar1;

    if (gPlayerEntity.base.action == PLAYER_BOUNCE &&
        ((param_2->unk0c >> gPlayerEntity.base.animationState & 1) != 0)) {
        uVar1 = (gPlayerEntity.base.x.HALF.HI - this->x.HALF.HI) + param_2->unk08 + param_2->unk0a;
        if (param_2->unk0a * 2 <= (u16)uVar1) {
            return 0;
        }

        uVar1 = (gPlayerEntity.base.y.HALF.HI - (this->y.HALF.HI + param_2->y)) + param_2->unk09 + param_2->unk0b;
        if (param_2->unk0b * 2 > (u16)uVar1) {
            return 1;
        }
    }
    return 0;
}
