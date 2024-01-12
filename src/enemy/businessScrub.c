/**
 * @file businessScrub.c
 * @ingroup Enemies
 *
 * @brief Business Scrub enemy
 */
#include "asm.h"
#include "enemy.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "kinstone.h"
#include "message.h"
#include "npc.h"
#include "save.h"
#include "tiles.h"

struct SalesOffering {
    u8 field_0x0;
    u8 field_0x1;
    u16 price;
    u16 field_0x4;
    u16 field_0x6;
    u8 offeredItem; /**< @see Item */
    u8 item_subtype;
    u16 local_flag;
};

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ const struct SalesOffering* unk_7c;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unused2[4];
    /*0x86*/ u16 unk_86;
} BusinessScrubEntity;

void sub_08028E9C(BusinessScrubEntity*);
void sub_08028EDC(BusinessScrubEntity*);
bool32 sub_08028F98(BusinessScrubEntity*, u32);
bool32 sub_08028FDC(BusinessScrubEntity*);
void sub_08028FFC(BusinessScrubEntity*);
void sub_08029078(BusinessScrubEntity*);
void sub_080290E0(BusinessScrubEntity*, u32);
void sub_080290FC(BusinessScrubEntity*);
bool32 sub_0802915C(BusinessScrubEntity*);
bool32 BusinessScrub_CheckRefillFitsBag(BusinessScrubEntity*);
void sub_0802922C(BusinessScrubEntity*);
void sub_0802925C(BusinessScrubEntity*);

extern const struct SalesOffering gUnk_080CC954[];
extern const u8 kinstoneTypes[];
extern void (*const BusinessScrub_Functions[])(BusinessScrubEntity*);
extern void (*const BusinessScrub_Actions[])(BusinessScrubEntity*);
extern const u8 gUnk_080CCA04[];

void BusinessScrub(BusinessScrubEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)BusinessScrub_Functions);
}

void BusinessScrub_OnTick(BusinessScrubEntity* this) {
    BusinessScrub_Actions[super->action](this);
}

void BusinessScrub_OnCollision(BusinessScrubEntity* this) {
    Entity* fx;

    if (super->hitType == 1 && (super->contactFlags & 0x7f) == 0x42) {
        super->action = 3;
        super->subAction = 0;
        super->timer = 40;
        COLLISION_OFF(super);
        sub_080290E0(this, 4);
        fx = CreateFx(super, FX_BUSH, 0);
        if (fx != NULL) {
            fx->z.HALF.HI -= 8;
        }
        EnqueueSFX(SFX_EM_DEKUSCRUB_HIT);
    }
}

void BusinessScrub_OnGrabbed(BusinessScrubEntity* this) {
    /* ... */
}

void BusinessScrub_Action0(BusinessScrubEntity* this) {
    super->subtimer = 0;
    this->unk_78 = super->x.HALF.HI;
    this->unk_7a = super->y.HALF.HI;
    super->animationState = 0;
    super->direction = DirectionSouth;
    sub_08028E9C(this);
    if ((*(u8*)this->unk_7c & 1) || CheckFlags(this->unk_86)) {
        super->action = 4;
        super->timer = 120;
        super->spritePriority.b1 = 1;
        sub_0802925C(this);
        sub_080290E0(this, 0);
    } else {
        super->timer = 0;
        this->unk_76 = COORD_TO_TILE(super);
        this->unk_74 = GetTileIndex(this->unk_76, super->collisionLayer);
        super->hurtType = 0x41;
        sub_08028FFC(this);
    }
}

void BusinessScrub_Action1(BusinessScrubEntity* this) {
    if (super->timer != 0) {
        super->timer--;
    } else if (sub_08028F98(this, 0)) {
        sub_08029078(this);
        super->subAction = 0;
        super->subtimer = 1;
    }
}

void BusinessScrub_Action2(BusinessScrubEntity* this) {
    u32 unk;

    GetNextFrame(super);
    switch (super->subAction) {
        case 0:
            unk = 1;
            if (super->frame & ANIM_DONE) {
                super->subAction = 1;
                super->timer = 60;
                super->subtimer = 16;
                sub_08028FDC(this);
                sub_080290E0(this, 1);
            }
            break;
        case 1:
            unk = 1;
            if (--super->timer == 0) {
                super->subAction = 2;
                super->timer = 32;
                super->subtimer = 0;
                sub_08028FDC(this);
                sub_080290E0(this, 2);
            } else if (--super->subtimer == 0) {
                if (sub_08028FDC(this)) {
                    sub_080290E0(this, 1);
                }
                super->subtimer = 16;
            }
            break;
        case 2:
            unk = 1;
            sub_080290FC(this);
            if (super->frame & 1) {
                Entity* entity = EnemyCreateProjectile(super, DEKU_SEED_PROJECTILE, 0);
                if (entity != NULL) {
                    entity->parent = super;
                    entity->direction = super->direction;
                    super->frame &= ~1;
                    super->subAction = 3;
                }
            }
            break;
        case 3:
            unk = 2;
            if (super->frame & ANIM_DONE) {
                super->subAction = 4;
                super->timer = 80;
                sub_080290E0(this, 1);
            }
            break;
        case 4:
            unk = 2;
            if (--super->timer == 0) {
                if (sub_08028F98(this, 0)) {
                    super->subAction = 1;
                    super->timer = 60;
                    super->subtimer = 16;
                    sub_08028FDC(this);
                } else {
                    sub_08028FFC(this);
                    super->subAction = 0;
                    super->timer = 80;
                    super->subtimer = 0;
                }
                return;
            }
            break;
    }

    if (!sub_08028F98(this, unk)) {
        sub_08028FFC(this);
        super->subAction = 0;
        super->timer = 80;
        super->subtimer = 0;
    }
}

void BusinessScrub_Action3(BusinessScrubEntity* this) {
    Entity* iVar1;

    switch (super->subAction) {
        case 0:
            if (super->timer == 0) {
                if (super->frame & ANIM_DONE) {
                    super->subAction = 1;
                    sub_08028FDC(this);
                    sub_080290E0(this, 5);
                    super->spritePriority.b1 = 1;
                }
            } else {
                super->timer--;
            }
            break;
        case 1:
            if (super->frame & ANIM_DONE) {
                super->action = 4;
                super->subAction = 0;
                super->timer = 30;
                super->subtimer = 5;
                sub_080290E0(this, 0);
                iVar1 = EnemyCreateFX(super, FX_STARS);
                if (iVar1 != NULL) {
                    iVar1->spritePriority.b0 = 3;
                    iVar1->z.HALF.HI -= 12;
                    SetEntityPriority(iVar1, PRIO_MESSAGE);
                }
                SetFlag(this->unk_86);
                sub_0802925C(this);
            }
            break;
    }

    GetNextFrame(super);
    sub_0800445C(super);
}

extern void EnemyDetachFX(Entity*);
void sub_08028F0C(BusinessScrubEntity*);

void BusinessScrub_Action4(BusinessScrubEntity* this) {
    if (--super->timer == 0) {
        super->timer = 48;
        if (super->subtimer) {
            if (--super->subtimer == 0) {
                EnemyDetachFX(super);
            }
        } else if (sub_08028FDC(this) || this->unk_80) {
            this->unk_80 = 0;
            sub_080290E0(this, 0);
        }
    }
    GetNextFrame(super);
    sub_0800445C(super);
    sub_08028F0C(this);
}

void BusinessScrub_Action5(BusinessScrubEntity* this) {
    struct SalesOffering* offer = (struct SalesOffering*)this->unk_7c;
    u32 subtype;

    if ((gMessage.state & MESSAGE_ACTIVE) == 0 && sub_0802915C(this) && !sub_08056338()) {
        if (offer->price <= gSave.stats.rupees) {
            if (BusinessScrub_CheckRefillFitsBag(this)) {
                /* Bag full. */
                MessageFromTarget(TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x04));
                SetPlayerControl(0);
            } else {
                ModRupees(-offer->price);
                switch (offer->field_0x0 >> 2) {
                    case 0: // random kinstone
                        subtype = offer->item_subtype;
                        if (subtype == KINSTONE_RANDOM) {
                            subtype = kinstoneTypes[Random() & 7];
                        }

                        CreateItemEntity(offer->offeredItem, subtype, 0);

                        super->action = 6;
                        super->timer = 4;
                        this->unk_81 = 0;
                        sub_080290E0(this, 3);
#if defined(USA) || defined(DEMO_USA)
                        SetLocalFlag(KS_B06);
#endif
                        return;
                    case 1: // refill, bottle, specific kinstone
                        CreateItemEntity(offer->offeredItem, offer->item_subtype, 0);
                        super->timer = 4;
                        sub_0802922C(this);
                        return;
                    case 2: // grip ring
                        CreateItemEntity(offer->offeredItem, offer->item_subtype, 0);
                        super->timer = 8;
                        sub_0802922C(this);
                        return;
                }
            }
        } else {
            /* Not enough money. */
            MessageFromTarget(TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x03));
            SetPlayerControl(0);
        }
    }

    sub_0800445C(super);
    super->action = 4;
    super->timer = 48;
    sub_080290E0(this, 0);
}

void BusinessScrub_Action6(BusinessScrubEntity* this) {
    if (gPlayerEntity.base.action == PLAYER_ITEMGET) {
        if (this->unk_81 == 0) {
            SetPlayerControl(1);
            this->unk_81 = 1;
        }
    } else {
        MessageFromTarget(TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02));
        super->action = 4;
        this->unk_81 = 0;
        super->timer = 1;
        sub_08028EDC(this);
        SetPlayerControl(0);
        sub_0800445C(super);
        GetNextFrame(super);
    }
}

void BusinessScrub_Action7(BusinessScrubEntity* this) {
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        struct SalesOffering* offer = (struct SalesOffering*)this->unk_7c;

        super->action = 4;
        super->subAction = gMessage.state & MESSAGE_ACTIVE;
        super->timer = 1;
        if (!CheckLocalFlag(offer->local_flag)) {
            SetLocalFlag(offer->local_flag);
        }
        SetPlayerControl(0);
    }
    sub_0800445C(super);
    GetNextFrame(super);
}

void BusinessScrub_Action8(BusinessScrubEntity* this) {
    if (UpdateFuseInteraction(super)) {
        super->action = 4;
        super->timer = 1;
    }
}

bool32 sub_08029198(const struct SalesOffering*);

void sub_08028E9C(BusinessScrubEntity* this) {
    const struct SalesOffering* offer = &gUnk_080CC954[super->type];
    if (sub_08029198(offer) && (offer->field_0x0 & 2)) {
        offer = &gUnk_080CC954[offer->local_flag];
    }
    this->unk_7c = offer;
    this->unk_80 = 0;
}

void sub_08028EDC(BusinessScrubEntity* this) {
    const struct SalesOffering* offer = this->unk_7c;
    if (sub_08029198(offer) && (offer->field_0x0 & 2)) {
        offer = &gUnk_080CC954[offer->local_flag];
        this->unk_7c = offer;
    }
}

void sub_08028F0C(BusinessScrubEntity* this) {
    if (super->interactType == INTERACTION_FUSE) {
        super->action = 8;
        super->interactType = INTERACTION_NONE;
        InitializeNPCFusion(super);
    } else if (super->interactType != INTERACTION_NONE) {
        u16 dialog;
        const struct SalesOffering* offer = (const struct SalesOffering*)this->unk_7c;

        super->interactType = INTERACTION_NONE;
        EnemyDetachFX(super);
        super->direction = (GetAnimationState(super) << 3);
        sub_080290E0(this, 3);
        this->unk_80 = 1;
        super->timer = 32;
        super->subtimer = 0;
        if (sub_08029198(offer)) {
            dialog = offer->field_0x6;
        } else {
            if ((offer->field_0x0 & 0xfc) != 0xc) {
                super->action = 5;
            } else {
                super->action = 7;
            }
            dialog = offer->field_0x4;
            SetPlayerControl(1);
        }
        MessageFromTarget(dialog);
        gMessage.rupees = offer->price;
    }
}

bool32 sub_08028F98(BusinessScrubEntity* this, u32 param_2) {
    Entity* entity = sub_08049DF4(1);
    if (entity == NULL || EntityInRectRadius(super, entity, 0x28, 0x28)) {
        return FALSE;
    }

    if (param_2 != 2) {
        u32 distance = param_2 ? 0x58 : 0x50;

        if (!EntityInRectRadius(super, entity, distance, distance)) {
            return FALSE;
        }
    }

    return TRUE;
}

bool32 sub_08028FDC(BusinessScrubEntity* this) {
    u32 direction = DirectionRoundUp(sub_08049F84(super, 1));
    if (direction == super->direction) {
        return FALSE;
    } else {
        super->direction = direction;
        return TRUE;
    }
}

void sub_08028FFC(BusinessScrubEntity* this) {
    super->action = 1;
    COLLISION_OFF(super);
    super->spritePriority.b1 = 0;
    UnloadGFXSlots(super);
    UnloadOBJPalette(super);
    super->spriteVramOffset = 0xe8;
    super->palette.b.b0 = 2;
    super->palette.b.b4 = 2;
    super->spriteIndex = 0xa7;
    super->x.HALF.HI = this->unk_78;
    super->y.HALF.HI = this->unk_7a;
    InitializeAnimation(super, 0);
    SetTile(SPECIAL_TILE_34, this->unk_76, super->collisionLayer);
}

void sub_08029078(BusinessScrubEntity* this) {
    super->action = 2;
    COLLISION_ON(super);
    super->spritePriority.b1 = 1;
    if (LoadFixedGFX(super, 0x72) == 0) {
        DeleteEntity(super);
    } else {
        LoadObjPalette(super, 0x6e);
        super->spriteIndex = 0xd0;
        sub_08028FDC(this);
        sub_080290E0(this, 1);
        SetTile(this->unk_74, this->unk_76, super->collisionLayer);
    }
}

void sub_080290E0(BusinessScrubEntity* this, u32 param_2) {
    InitializeAnimation(super, super->direction >> 3 | gUnk_080CCA04[param_2]);
}

void sub_080290FC(BusinessScrubEntity* this) {
    if (super->timer != 0) {
        super->timer--;
        if ((super->timer < 16) && ((super->timer & 1) == 0)) {
            s32 sVar3 = (super->direction & DirectionSouth) ? -1 : 1;
            if (super->direction & DirectionEast) {
                super->x.HALF.HI += ((super->timer & 8) != 0) ? -sVar3 : sVar3;
            } else {
                super->y.HALF.HI += ((super->timer & 8) != 0) ? sVar3 : -sVar3;
            }
        }
    }
}

bool32 sub_0802915C(BusinessScrubEntity* this) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->unk_7c;

    switch (offer->offeredItem) {
        case ITEM_GRIP_RING:
            if (GetInventoryValue(ITEM_GRIP_RING) == 0)
                return TRUE;
            break;
        case ITEM_BOTTLE1:
            if (CheckGlobalFlag(AKINDO_BOTTLE_SELL) == 0)
                return TRUE;
            break;
        case ITEM_KINSTONE:
        case ITEM_BOMBS10:
        case ITEM_ARROWS30:
            return TRUE;
    }
    return FALSE;
}

bool32 sub_08029198(const struct SalesOffering* offer) {
    u32 tmp;

    if ((offer->field_0x0 & 0xfc) != 0xc) {
        switch (offer->offeredItem) {
            case ITEM_BOTTLE1:
                tmp = CheckGlobalFlag(AKINDO_BOTTLE_SELL);
                break;
            case ITEM_BOW:
            case ITEM_GRIP_RING:
                tmp = GetInventoryValue(offer->offeredItem);
                break;
            default:
                return 0;
        }
    } else {
        tmp = CheckLocalFlag(offer->local_flag);
    }

    if (tmp == 0) {
        return FALSE;
    }

    return TRUE;
}

bool32 BusinessScrub_CheckRefillFitsBag(BusinessScrubEntity* this) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->unk_7c;

    switch (offer->offeredItem) {
        case ITEM_BOMBS10:
            if (gBombBagSizes[gSave.stats.bombBagType] <= gSave.stats.bombCount)
                return TRUE;
            break;
        case ITEM_ARROWS30:
            if (gQuiverSizes[gSave.stats.quiverType] <= gSave.stats.arrowCount)
                return TRUE;
            break;
    }

    return FALSE;
}

void sub_0802922C(BusinessScrubEntity* this) {
    const struct SalesOffering* offer;
    super->action = 6;
    this->unk_81 = 0;
    offer = (const struct SalesOffering*)this->unk_7c;

    switch (offer->offeredItem) {
        case ITEM_BOTTLE1:
            SetGlobalFlag(AKINDO_BOTTLE_SELL);
        // It only matters here that ITEM_BOMBS10 is here and some item that is higher
        // Not sure about the original code
        case ITEM_ARROWS30:
        case ITEM_BOMBS10:
        default:
            sub_080290E0(this, 3);
            break;
    }
}

void sub_0802925C(BusinessScrubEntity* this) {
    AddInteractableWhenBigFuser(super, GetFusionToOffer(super));
}

void sub_08029270(BusinessScrubEntity* this) {
    if (super->action == 0) {
        super->action++;
        super->spriteSettings.draw = 1;
        InitializeAnimation(super, 0xe);
    } else {
        GetNextFrame(super);
    }
}

// clang-format off
const struct SalesOffering gUnk_080CC954[] = {
    {0x06, 0x00, 0xffff, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0f), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_BOW, 0xff, 0x0001},
    {0x04, 0x00,     30, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0e), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_ARROWS30, 0xff, 0xffff},
    {0x04, 0x00,     30, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0b), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_BOMBS10, 0xff, 0xffff},
    {0x08, 0x00,     40, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0c), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x11), ITEM_GRIP_RING, 0xff, 0xffff},
    {0x00, 0x00,    100, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0d), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_KINSTONE, 0xff, 0xffff},
    {0x04, 0x00,     20, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x10), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x11), ITEM_BOTTLE1, 0xff, 0xffff},
    {0x0c, 0x00, 0xffff, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x12), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x13), 0xff, 0xff, 0x0046},
    {0x04, 0x00,    100, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x13), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_KINSTONE, 0x75, 0xffff},
#ifdef EU
    {0x00, 0x00,    100, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0d), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_KINSTONE, 0xff, 0xffff},
#else
    {0x00, 0x00,    200, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0d), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), ITEM_KINSTONE, 0xff, 0xffff},
#endif
};

const u8 kinstoneTypes[] = { 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75 };

void (*const BusinessScrub_Functions[])(BusinessScrubEntity*) = {
    BusinessScrub_OnTick,
    BusinessScrub_OnCollision,
    (void (*)(BusinessScrubEntity*))GenericKnockback,
    (void (*)(BusinessScrubEntity*))GenericDeath,
    (void (*)(BusinessScrubEntity*))GenericConfused,
    BusinessScrub_OnGrabbed,
};

void (*const BusinessScrub_Actions[])(BusinessScrubEntity*) = {
    BusinessScrub_Action0,
    BusinessScrub_Action1,
    BusinessScrub_Action2,
    BusinessScrub_Action3,
    BusinessScrub_Action4,
    BusinessScrub_Action5,
    BusinessScrub_Action6,
    BusinessScrub_Action7,
    BusinessScrub_Action8,
};

const u8 gUnk_080CCA04[] = {
    0, 4, 8, 12, 16, 20,
};
// clang-format on
