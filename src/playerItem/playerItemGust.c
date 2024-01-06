/**
 * @file playerItemGust.c
 * @ingroup Items
 *
 * @brief Gust Player Item
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "player.h"
#include "playeritem.h"

enum {
    GUST_INIT,
    GUST_UPDATE,
};

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u32 filler68[2];
    /*0x70*/ u32 timer;
    /*0x74*/ u32 offset_iter;
    /*0x78*/ u32 unk78;
} PlayerItemGustEntity;

typedef void(GustActionFunc)(PlayerItemGustEntity*);

static GustActionFunc PlayerItemGust_Init;
static GustActionFunc PlayerItemGust_Update;

static void sub_080ACC78(PlayerItemGustEntity*);
/*static*/ bool32 sub_080ACDB0(PlayerItemGustEntity*);
static void sub_080ACECC(PlayerItemGustEntity*);

typedef struct {
    u16 bits;
    u8 type2;
    u8 timer;
    u8 _4;
    u8 type;
    u16 tileID;
} Obj11;

Obj11* DoTileInteractionOffset(Entity*, u32, u32, u32);

extern const s8* const sOffsets[];
extern const s8 gUnk_0812AABC[];
extern const Hitbox* const sHitboxes[];
extern const u8 gUnk_0812AAE8[];
extern const s8 gUnk_08126EE4[];

// specifically, the little gusts that come out while the item is active
// type 0: stays close to jar?
// type 1: causes the particles to move away from the jar
// type 2: same as 1?
// type 3: horizontal spread
void PlayerItemGust(Entity* this) {
    static GustActionFunc* const PlayerItemGust_Actions[] = {
        PlayerItemGust_Init,
        PlayerItemGust_Update,
    };

    if ((gPlayerState.gustJarState & 0x7f) != 1) {
        DeleteThisEntity();
    }
    PlayerItemGust_Actions[this->action]((PlayerItemGustEntity*)this);
    this->iframes = 0;
}

static void PlayerItemGust_Init(PlayerItemGustEntity* this) {
    super->action = GUST_UPDATE;
    super->collisionMask = gPlayerEntity.base.collisionMask;
    super->direction = super->animationState << 2;
    super->speed = 0x200;
    super->flags |= ENT_COLLIDE | ENT_PERSIST;
    super->collisionFlags = 2;
    super->hitbox = (Hitbox*)sHitboxes[super->type];
    this->timer = 16;
    sub_080ACDB0(this);
    sub_0801766C(super);
}

static void PlayerItemGust_Update(PlayerItemGustEntity* this) {
    if (sub_080ACDB0(this) == FALSE) {
        sub_080ACC78(this);
        sub_080ACECC(this);
    }
}

static void sub_080ACC78(PlayerItemGustEntity* this) {
    s32 width;
    Obj11* o;
    Entity* child;
    s32 offset;
    const s8* child_offsets;

    // this is what makes types 1 and 2 different?
    if ((super->type + gRoomTransition.frameCount) & 1) {
        child_offsets = sOffsets[super->type];
        if (child_offsets[this->offset_iter] == 0) {
            this->offset_iter = 0;
        }
        o = DoTileInteractionOffset(super, 0xe, child_offsets[this->offset_iter], child_offsets[this->offset_iter + 1]);
        if (o != NULL) {
            child = CreateObject(BUSH, o->type, o->type2);
            if (child != NULL) {
                child->timer = o->timer;
                child->x.HALF.HI = child_offsets[this->offset_iter] + super->x.HALF.HI;
                child->y.HALF.HI = child_offsets[this->offset_iter + 1] + super->y.HALF.HI;
            }
        }
        this->offset_iter += 2;
    }

    if (super->child == NULL && (u32)this->timer > 2) {
        this->timer = 1;
    }

    if (this->timer-- != 0) {
        return;
    }
    if (super->child == NULL) {
        this->timer = 2;
    } else {
        this->timer = gUnk_0812AABC[super->type];
    }
    child = CreateObject(GUST_JAR_PARTICLE, 0, 0);
    if (child == NULL) {
        return;
    }
    offset = Random() % 16;
    width = super->hitbox->width;
    if (width < offset) {
        offset = width;
    }
    if (offset & 1) {
        offset = -offset;
    }
    switch (super->animationState >> 1) {
        case 0:
            child->y.HALF.HI = super->y.HALF.HI - super->hitbox->height;
            child->x.HALF.HI = super->x.HALF.HI + offset;
            break;
        case 2:
            child->y.HALF.HI = super->y.HALF.HI + super->hitbox->height;
            child->x.HALF.HI = super->x.HALF.HI + offset;
            break;
        case 1:
            child->x.HALF.HI = super->x.HALF.HI + super->hitbox->width;
            child->y.HALF.HI = super->y.HALF.HI + offset;
            break;
        case 3:
            child->x.HALF.HI = super->x.HALF.HI - super->hitbox->width;
            child->y.HALF.HI = super->y.HALF.HI + offset;
            break;
    }
}

bool32 sub_080ACDB0(PlayerItemGustEntity* this) {
    s32 sVar2;
    s32 sVar3;
    Entity* pEVar4;
    u32 uVar6;
    u32 uVar7;
    u32 tmp;

    if (super->type == 0) {
        super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI + gUnk_08126EE4[super->animationState];
        super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI + gUnk_08126EE4[super->animationState + 1];
    } else {
        if ((super->animationState & 2) != 0) {
            super->y.HALF.HI = super->parent->y.HALF.HI - 3;
            tmp = super->animationState & 4;
            pEVar4 = super->parent;
            if ((tmp) != 0) {
                sVar3 = pEVar4->x.HALF.HI;
                sVar2 = super->x.HALF.HI;
                uVar7 = -(u16)gUnk_0812AAE8[super->type];
            } else {
                sVar2 = pEVar4->x.HALF.HI;
                sVar3 = super->x.HALF.HI;
                uVar7 = (u16)gUnk_0812AAE8[super->type];
            }
            this->unk78 = (s32)sVar3 - (s32)sVar2;
            uVar6 = gUnk_0812AAE8[super->type];
            if (uVar6 <= this->unk78) {
                super->x.HALF.HI = pEVar4->x.HALF.HI + uVar7;
            } else {
                super->speed = (uVar6 - this->unk78) * 0x100;
                if (0x200 < (s32)((uVar6 - this->unk78) * 0x1000000) >> 0x10) {
                    super->speed = 0x200;
                }
                ProcessMovement1(super);
            }
        } else {
            super->x.HALF.HI = super->parent->x.HALF.HI;
            tmp = super->animationState & 4;
            pEVar4 = super->parent;
            if ((super->animationState & 4) != 0) {
                sVar2 = pEVar4->y.HALF.HI;
                sVar3 = super->y.HALF.HI;
                uVar7 = gUnk_0812AAE8[super->type];
            } else {
                sVar3 = pEVar4->y.HALF.HI;
                sVar2 = super->y.HALF.HI;
                uVar7 = -gUnk_0812AAE8[super->type];
            }
            this->unk78 = sVar3 - sVar2;
            uVar6 = gUnk_0812AAE8[super->type];
            if (uVar6 > this->unk78) {
                super->speed = (uVar6 - this->unk78) * 0x100;
                if (0x200 < (s32)((uVar6 - this->unk78) * 0x1000000) >> 0x10) {
                    super->speed = 0x200;
                }
                ProcessMovement1(super);
            } else {
                super->y.HALF.HI = pEVar4->y.HALF.HI + uVar7;
            }
        }
    }
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    return 0;
}

static void sub_080ACECC(PlayerItemGustEntity* this) {
    Entity* entity;

    if (super->type < 3 && super->child == NULL && (s32)this->unk78 >= 0 && gUnk_0812AAE8[super->type] <= this->unk78) {
        entity = CreatePlayerItem(PLAYER_ITEM_GUST, super->type + 1, 0, 0);
        if (entity != NULL) {
            entity->parent = super;
            super->child = entity;
            entity->x.HALF.HI = super->x.HALF.HI;
            entity->y.HALF.HI = super->y.HALF.HI;
        }
    }
}

static const s8 sOffsets0[] = {
    -4, -4, 4, -4, -4, 4, 4, 4, 0,
};

static const s8 sOffsets1And2[] = {
    -5, -5, 5, -5, -5, 5, 5, 5, 0,
};

static const s8 sOffsets3[] = {
    -9, -9, 1, -9, 9, -9, -9, 1, 9, 1, -9, 9, 1, 9, 9, 9, 0, 0,
};

static const s8* const sOffsets[] = {
    sOffsets0,
    sOffsets1And2,
    sOffsets1And2,
    sOffsets3,
};

static const s8 gUnk_0812AABC[] = {
    120,
    80,
    40,
    4,
};

static const Hitbox sHitbox0 = {
    0, 0, 4, 2, 2, 4, 4, 4,
};

static const Hitbox sHitbox1And2 = {
    0, 0, 4, 3, 3, 4, 9, 9,
};

static const Hitbox sHitbox3 = {
    0, 0, 8, 7, 7, 8, 14, 14,
};

static const Hitbox* const sHitboxes[] = {
    &sHitbox0,
    &sHitbox1And2,
    &sHitbox1And2,
    &sHitbox3,
};

static const u8 gUnk_0812AAE8[] = {
    0,
    12,
    16,
    16,
};
