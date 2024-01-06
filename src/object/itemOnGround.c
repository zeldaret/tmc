/**
 * @file itemOnGround.c
 * @ingroup Objects
 *
 * @brief Item On Ground object
 */
#include "object/itemOnGround.h"
#include "collision.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "hitbox.h"
#include "item.h"
#include "itemMetaData.h"
#include "object.h"
#include "player.h"
#include "sound.h"
#include "tiles.h"

void sub_08081150(ItemOnGroundEntity* this);
u8 sub_0808147C(u32);
void sub_080814A4(ItemOnGroundEntity* this);
u32 sub_080814C0(ItemOnGroundEntity* this);
void sub_08081500(ItemOnGroundEntity* this);
void sub_0808153C(ItemOnGroundEntity* this);
void sub_08081598(ItemOnGroundEntity* this);
void sub_080813BC(ItemOnGroundEntity* this);
void sub_080810FC(ItemOnGroundEntity* this);
void ItemOnGround_Init(ItemOnGroundEntity* this);
void ItemOnGround_Action1(ItemOnGroundEntity* this);
void ItemOnGround_Action2(ItemOnGroundEntity* this);
void ItemOnGround_Action3(ItemOnGroundEntity* this);
void ItemOnGround_Action4(ItemOnGroundEntity* this);
void sub_080810A8(ItemOnGroundEntity* this);
void sub_080810FC(ItemOnGroundEntity* this);
void sub_08081150(ItemOnGroundEntity* this);
void sub_08081134(ItemOnGroundEntity* this);
void sub_08081188(ItemOnGroundEntity* this);
void sub_080811AC(ItemOnGroundEntity* this);
void sub_080811C8(ItemOnGroundEntity* this);
void sub_080811D8(ItemOnGroundEntity* this);
void sub_08081248(ItemOnGroundEntity* this);
void sub_0808126C(ItemOnGroundEntity* this);
void sub_0808127C(ItemOnGroundEntity* this);
void nullsub_113(ItemOnGroundEntity* this);
void sub_080812A0(ItemOnGroundEntity* this);
void sub_080812A8(ItemOnGroundEntity* this);
void sub_080812E8(ItemOnGroundEntity* this);
void nullsub_510(ItemOnGroundEntity* this);
void sub_080813D4(ItemOnGroundEntity* this);
void sub_080813E8(ItemOnGroundEntity* this);
void sub_080813F0(ItemOnGroundEntity* this);
bool32 CheckShouldPlayItemGetCutscene(ItemOnGroundEntity* this);
void sub_08081404(ItemOnGroundEntity*, u32);

typedef struct {
    u8 unk0[2];
    u16 sfx;
    u8 unk4;
    u8 unk5[3];
} Unk_0811E84C;

void ItemOnGround(ItemOnGroundEntity* this) {
    static void (*const ItemOnGround_Actions[])(ItemOnGroundEntity*) = {
        ItemOnGround_Init, ItemOnGround_Action1, ItemOnGround_Action2, ItemOnGround_Action3, ItemOnGround_Action4,
    };
    if (super->contactFlags & CONTACT_NOW) {
        switch (super->contactFlags & 0x7F) {
            case 20:
                super->action = 3;
                COLLISION_OFF(super);
                super->spriteSettings.draw = 1;
                super->collisionFlags |= 0x10;
                super->child = super->contactedEntity;
                break;
            case 0:
            case 1:
            case 4:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 30:
                sub_08081598(this);
                break;
        }
    }

    if (sub_0806F520(super)) {
        sub_080813BC(this);
    } else {
        ItemOnGround_Actions[super->action](this);
    }

    if (super->type == 0x5C) {
        gRoomVars.numKinstoneDrops++;
    }

    sub_08080CB4(super);
}

void ItemOnGround_Init(ItemOnGroundEntity* this) {
    static void (*const gUnk_0811E7E8[])(ItemOnGroundEntity*) = {
        sub_080810A8, sub_080810FC, sub_08081150, sub_08081134, sub_08081188, sub_080810A8,
        sub_080810A8, sub_080811AC, sub_080811C8, sub_080811D8, sub_080810A8,
    };
    if (this->unk_86 && CheckFlags(this->unk_86)) {
        DeleteThisEntity();
    }

    if (super->type != ITEM_FAIRY) {
        super->spriteSettings.draw = 1;
        super->spritePriority.b1 = 3;
        super->spriteSettings.shadow = 0;
        super->hitType = 7;
        super->collisionFlags = 0x47;
        super->hurtType = 0x44;
        super->health = 0xFF;
        super->hitbox = (Hitbox*)&gUnk_080FD1A8;
        switch (super->type) {
            case ITEM_SHELLS:
            case ITEM_RUPEE1:
            case ITEM_RUPEE5:
            case ITEM_RUPEE20:
            case ITEM_RUPEE50:
            case ITEM_RUPEE100:
            case ITEM_KINSTONE:
            case ITEM_BOMBS5:
            case ITEM_ARROWS5:
            case ITEM_HEART:
                super->collisionMask = 0x17;
                break;
            default:
                super->collisionMask = 0x11;
                break;
        }

        this->unk_69 = super->timer;
        this->unk_6a = 0;
        this->unk_6c = 0;
        this->unk_68 = 0;
        super->timer = 0;
        SetEntityPriority(super, PRIO_NO_BLOCK);
        super->gustJarFlags = sub_0808147C(super->type);
        gUnk_0811E7E8[this->unk_69](this);
    } else {
        Entity* entity = CreateObject(FAIRY, 0x60, 0);
        if (entity != NULL) {
            entity->timer = 0;
            if (super->timer == 1) {
                entity->type2 = 2;
            }
            CopyPosition(super, entity);
            DeleteThisEntity();
        }
    }
}

void sub_080810A8(ItemOnGroundEntity* this) {
    super->action = 1;
    sub_080814A4(this);
    if (super->direction & 0x80) {
        super->direction &= 0x1F;
        if (super->speed == 0) {
            super->speed = 0x100;
        }
    } else {
        super->direction |= 0xFF;
    }

    if (super->zVelocity == 0) {
        super->zVelocity = Q_16_16(1.875);
    }

    if (super->collisionLayer == 2) {
        ResolveCollisionLayer(super);
    }
}

void sub_080810FC(ItemOnGroundEntity* this) {
    if (super->type != ITEM_HEART) {
        sub_08081598(this);
    } else {
        super->action = 2;
        super->subAction = 0;
        COLLISION_ON(super);
        super->collisionMask = 0x11;
        CopyPosition(&gPlayerEntity.base, super);
    }
}

void sub_08081134(ItemOnGroundEntity* this) {
    sub_080814A4(this);
    this->unk_6c += 80;
    sub_08081150(this);
}

void sub_08081150(ItemOnGroundEntity* this) {
    super->action = 2;
    COLLISION_ON(super);
    super->z.HALF.HI = -0x80;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 1;
    SoundReq(SFX_12D);
}

void sub_08081188(ItemOnGroundEntity* this) {
    super->action = 2;
    COLLISION_ON(super);
    if (super->collisionLayer == 2) {
        ResolveCollisionLayer(super);
    }
}

void sub_080811AC(ItemOnGroundEntity* this) {
    super->action = 2;
    super->spriteSettings.draw = 0;
    this->unk_6e = GetTileTypeAtEntity(super);
}

void sub_080811C8(ItemOnGroundEntity* this) {
    super->action = 2;
    super->spriteSettings.draw = 0;
}

void sub_080811D8(ItemOnGroundEntity* this) {
    sub_08081188(this);
    SoundReq(SFX_215);
}

void ItemOnGround_Action1(ItemOnGroundEntity* this) {
    if (this->unk_69 != 6) {
        ProcessMovement2(super);
    } else {
        LinearMoveUpdate(super);
    }

    GravityUpdate(super, Q_8_8(40.0));
    if (super->zVelocity <= 0) {
        super->action = 2;
        COLLISION_ON(super);
        sub_080814A4(this);
    }
}

void ItemOnGround_Action2(ItemOnGroundEntity* this) {
    static void (*const gUnk_0811E814[])(ItemOnGroundEntity*) = {
        sub_08081248, sub_08081248, sub_0808126C, sub_0808127C, nullsub_113,  sub_080812A0,
        sub_08081248, sub_080812A8, sub_080812E8, nullsub_510,  sub_08081248,
    };
    gUnk_0811E814[this->unk_69](this);
}

void sub_08081248(ItemOnGroundEntity* this) {
    sub_08081500(this);
    if (sub_080814C0(this)) {
        sub_08081404(this, 0);
    } else {
        sub_0800442E(super);
    }
}

void sub_0808126C(ItemOnGroundEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_0808153C(this);
}

void sub_0808127C(ItemOnGroundEntity* this) {
    if (sub_080814C0(this)) {
        sub_08081404(this, 0);
    } else {
        sub_0808153C(this);
    }
}

void nullsub_113(ItemOnGroundEntity* this) {
}

void sub_080812A0(ItemOnGroundEntity* this) {
    sub_08081500(this);
}

void sub_080812A8(ItemOnGroundEntity* this) {
    if (GetCollisionDataAtEntity(super) != COLLISION_DATA_15 && this->unk_6e != GetTileTypeAtEntity(super)) {
        super->direction = 0;
        super->speed = 0;
        super->spriteSettings.draw = 1;
        this->unk_69 = 0;
        sub_080810A8(this);
    }
}

void sub_080812E8(ItemOnGroundEntity* this) {
    PlayerState* playerState = &gPlayerState;
#ifdef EU
    if ((playerState->swim_state & 0x80) && IsColliding(super, &gPlayerEntity.base)) {
#else
    if ((playerState->swim_state & 0x80) && (playerState->flags & PL_MINISH) == 0 &&
        IsColliding(super, &gPlayerEntity.base)) {
#endif
        sub_080810FC(this);
    }
}

void nullsub_510(ItemOnGroundEntity* this) {
}

void ItemOnGround_Action3(ItemOnGroundEntity* this) {
    Entity* other = super->child;
    if (!(other->kind == PLAYER_ITEM && other->id == 3)) {
        sub_08081404(this, 0);
    } else {
        CopyPosition(other, super);
        super->z.HALF.HI--;
        other = &gPlayerEntity.base;
        if (IsColliding(super, other)) {
            sub_080810FC(this);
        }
    }
}

void ItemOnGround_Action4(ItemOnGroundEntity* this) {
    if (--super->timer) {
        Entity* other = super->child;
        super->x.WORD = other->x.WORD;
        super->y.WORD = other->y.WORD;
        super->spriteOrientation.flipY = other->spriteOrientation.flipY;
        super->spriteRendering.b3 = other->spriteRendering.b3;
        GravityUpdate(super, Q_8_8(40.0));
    } else {
        sub_08081404(this, 1);
    }
}

void sub_080813BC(ItemOnGroundEntity* this) {
    static void (*const subActionFuncs[])(ItemOnGroundEntity*) = {
        sub_080813D4,
        sub_080813E8,
        sub_080813F0,
    };
    subActionFuncs[super->subAction](this);
}

void sub_080813D4(ItemOnGroundEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 1;
    super->spriteSettings.draw = 1;
}

void sub_080813E8(ItemOnGroundEntity* this) {
    sub_0806F4E8(super);
}

void sub_080813F0(ItemOnGroundEntity* this) {
    if (sub_0806F3E4(super)) {
        sub_080810FC(this);
    }
}

void sub_08081404(ItemOnGroundEntity* this, u32 arg1) {
    if (arg1 && this->unk_86) {
        SetFlag(this->unk_86);
    }

    DeleteThisEntity();
}

bool32 sub_08081420(ItemOnGroundEntity* this) {
    if (CheckShouldPlayItemGetCutscene(this)) {
        SetEntityPriority(super, PRIO_PLAYER_EVENT);
        CreateItemEntity(super->type, super->type2, 0);
        return TRUE;
    } else {
        GiveItem(super->type, super->type2);
        return FALSE;
    }
}

bool32 CheckShouldPlayItemGetCutscene(ItemOnGroundEntity* this) {
    return ((gItemMetaData[super->type].unk3 & 0x2) || !GetInventoryValue(super->type));
}

static const Unk_0811E84C gUnk_0811E84C[118] = {
    [ITEM_SHELLS] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_DUNGEON_MAP] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_COMPASS] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_BIG_KEY] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_SMALL_KEY] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_RUPEE1] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_RUPEE5] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_RUPEE20] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_RUPEE50] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_RUPEE100] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_RUPEE200] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_KINSTONE] = { { 0x0, 0x0 }, SFX_RUPEE_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_BOMBS5] = { { 0x0, 0x0 }, SFX_HEART_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_ARROWS5] = { { 0x0, 0x0 }, SFX_HEART_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
    [ITEM_HEART] = { { 0x0, 0x0 }, SFX_HEART_BOUNCE, 0x1, { 0x0, 0x0, 0x0 } },
};

u8 sub_0808147C(u32 arg0) {
    const Unk_0811E84C* var0 = &gUnk_0811E84C[arg0];
    return var0->unk4;
}

void sub_0808148C(u32 arg0) {
    const Unk_0811E84C* var0 = &gUnk_0811E84C[arg0];
    if (var0->sfx) {
        SoundReq(var0->sfx);
    }
}

void sub_080814A4(ItemOnGroundEntity* this) {
    if (this->unk_69 == 10) {
        this->unk_6c = 120;
    } else {
        this->unk_6c = 600;
    }
}

u32 sub_080814C0(ItemOnGroundEntity* this) {
    if (!AnyPrioritySet()) {
        if (--this->unk_6c == 0) {
            return TRUE;
        }

        if (this->unk_6c < 90) {
            super->spriteSettings.draw ^= 1;
        }
    }

    return FALSE;
}

void sub_08081500(ItemOnGroundEntity* this) {
    if (this->unk_68 == 0) {
        u32 var0 = BounceUpdate(super, Q_8_8(40.0));
        if (var0 == 0) {
            this->unk_68 = 1;
        } else {
            if (var0 == 1) {
                sub_0808148C(super->type);
                UpdateSpriteForCollisionLayer(super);
            }

            ProcessMovement2(super);
        }
    }
}

void sub_0808153C(ItemOnGroundEntity* this) {
    if (this->unk_68 > 1)
        return;

    if (this->unk_68 == 0) {
        if (!GravityUpdate(super, Q_8_8(16.0)) && !sub_0800442E(super)) {
            this->unk_68 = 1;
            super->zVelocity = Q_16_16(1.875);
            sub_0808148C(super->type);
            UpdateSpriteForCollisionLayer(super);
        }
    } else {
        if (!GravityUpdate(super, Q_8_8(40.0))) {
            this->unk_68 = 2;
            sub_0808148C(super->type);
        }
    }
}

void sub_08081598(ItemOnGroundEntity* this) {
    if (super->health == 0) {
        sub_08081404(this, 1);
    }

    COLLISION_OFF(super);
    super->action = 4;
    super->timer = 14;
    super->zVelocity = Q_16_16(2.0);
    super->spriteSettings.draw = 1;
    super->spritePriority.b1 = 2;
    super->spritePriority.b0 = 3;
    super->child = &gPlayerEntity.base;
    CopyPosition(super->child, super);
    super->z.HALF.HI -= 4;
    if (super->type != 0x5F && sub_08081420(this)) {
        sub_08081404(this, 1);
    }
}
