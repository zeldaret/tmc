/**
 * @file businessScrub.c
 * @ingroup Enemies
 *
 * @brief Business Scrub enemy
 */

#include "asm.h"
#include "enemy.h"
#include "message.h"
#include "save.h"
#include "npc.h"
#include "functions.h"
#include "game.h"
#include "item.h"
#include "kinstone.h"

void sub_08028E9C(Entity*);
void sub_08028EDC(Entity*);
bool32 sub_08028F98(Entity*, u32);
bool32 sub_08028FDC(Entity*);
void sub_08028FFC(Entity*);
void sub_08029078(Entity*);
void sub_080290E0(Entity*, u32);
void sub_080290FC(Entity*);
bool32 sub_0802915C(Entity*);
bool32 sub_080291DC(Entity*);
void sub_0802922C(Entity*);
void sub_0802925C(Entity*);

extern const struct SalesOffering gUnk_080CC954[];
extern const u8 kinstoneTypes[];
extern void (*const BusinessScrub_Functions[])(Entity*);
extern void (*const gUnk_080CC9E0[])(Entity*);
extern const u8 gUnk_080CCA04[];

struct SalesOffering {
    u8 field_0x0;
    u8 field_0x1;
    u16 price;
    u16 field_0x4;
    u16 field_0x6;
    u8 offeredItem; /**< @see Item */
    u8 field_0x9;
    u16 field_0xa;
};

void BusinessScrub(Entity* this) {
    EnemyFunctionHandler(this, BusinessScrub_Functions);
}

void BusinessScrub_OnTick(Entity* this) {
    gUnk_080CC9E0[this->action](this);
}

void BusinessScrub_OnCollision(Entity* this) {
    Entity* pEVar1;

    if (this->hitType == 1 && (this->contactFlags & 0x7f) == 0x42) {
        this->action = 3;
        this->subAction = 0;
        this->timer = 40;
        COLLISION_OFF(this);
        sub_080290E0(this, 4);
        pEVar1 = CreateFx(this, FX_BUSH, 0);
        if (pEVar1 != NULL) {
            pEVar1->z.HALF.HI -= 8;
        }
        EnqueueSFX(SFX_EM_DEKUSCRUB_HIT);
    }
}

void BusinessScrub_OnGrabbed(Entity* this) {
    /* ... */
}

void sub_08028994(Entity* this) {
    this->subtimer = 0;
    this->field_0x78.HWORD = this->x.HALF.HI;
    this->field_0x7a.HWORD = this->y.HALF.HI;
    this->animationState = 0;
    this->direction = 0x10;
    sub_08028E9C(this);
    if ((*(u8*)this->field_0x7c.WORD & 1) || CheckFlags(this->field_0x86.HWORD)) {
        this->action = 4;
        this->timer = 120;
        this->spritePriority.b1 = 1;
        sub_0802925C(this);
        sub_080290E0(this, 0);
    } else {
        this->timer = 0;
        this->field_0x76.HWORD = COORD_TO_TILE(this);
        this->field_0x74.HWORD = GetTileIndex(this->field_0x76.HWORD, this->collisionLayer);
        this->hurtType = 0x41;
        sub_08028FFC(this);
    }
}

void sub_08028A48(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
    } else if (sub_08028F98(this, 0)) {
        sub_08029078(this);
        this->subAction = 0;
        this->subtimer = 1;
    }
}

void sub_08028A74(Entity* this) {
    u32 unk;

    GetNextFrame(this);
    switch (this->subAction) {
        case 0:
            unk = 1;
            if (this->frame & ANIM_DONE) {
                this->subAction = 1;
                this->timer = 60;
                this->subtimer = 16;
                sub_08028FDC(this);
                sub_080290E0(this, 1);
            }
            break;
        case 1:
            unk = 1;
            if (--this->timer == 0) {
                this->subAction = 2;
                this->timer = 32;
                this->subtimer = 0;
                sub_08028FDC(this);
                sub_080290E0(this, 2);
            } else if (--this->subtimer == 0) {
                if (sub_08028FDC(this)) {
                    sub_080290E0(this, 1);
                }
                this->subtimer = 16;
            }
            break;
        case 2:
            unk = 1;
            sub_080290FC(this);
            if (this->frame & 1) {
                Entity* ent = CreateProjectileWithParent(this, DEKU_SEED_PROJECTILE, 0);
                if (ent != NULL) {
                    ent->parent = this;
                    ent->direction = this->direction;
                    this->frame &= ~1;
                    this->subAction = 3;
                }
            }
            break;
        case 3:
            unk = 2;
            if (this->frame & ANIM_DONE) {
                this->subAction = 4;
                this->timer = 80;
                sub_080290E0(this, 1);
            }
            break;
        case 4:
            unk = 2;
            if (--this->timer == 0) {
                if (sub_08028F98(this, 0)) {
                    this->subAction = 1;
                    this->timer = 60;
                    this->subtimer = 16;
                    sub_08028FDC(this);
                } else {
                    sub_08028FFC(this);
                    this->subAction = 0;
                    this->timer = 80;
                    this->subtimer = 0;
                }
                return;
            }
            break;
    }

    if (!sub_08028F98(this, unk)) {
        sub_08028FFC(this);
        this->subAction = 0;
        this->timer = 80;
        this->subtimer = 0;
    }
}

void sub_08028BC4(Entity* this) {
    Entity* iVar1;

    switch (this->subAction) {
        case 0:
            if (this->timer == 0) {
                if (this->frame & ANIM_DONE) {
                    this->subAction = 1;
                    sub_08028FDC(this);
                    sub_080290E0(this, 5);
                    this->spritePriority.b1 = 1;
                }
            } else {
                this->timer--;
            }
            break;
        case 1:
            if (this->frame & ANIM_DONE) {
                this->action = 4;
                this->subAction = 0;
                this->timer = 30;
                this->subtimer = 5;
                sub_080290E0(this, 0);
                iVar1 = Create0x68FX(this, FX_STARS);
                if (iVar1 != NULL) {
                    iVar1->spritePriority.b0 = 3;
                    iVar1->z.HALF.HI -= 12;
                    SetDefaultPriority(iVar1, PRIO_MESSAGE);
                }
                SetFlag(this->field_0x86.HWORD);
                sub_0802925C(this);
            }
            break;
    }

    GetNextFrame(this);
    sub_0800445C(this);
}

extern void sub_0804AA1C(Entity*);
void sub_08028F0C(Entity*);

void sub_08028C84(Entity* this) {
    if (--this->timer == 0) {
        this->timer = 48;
        if (this->subtimer) {
            if (--this->subtimer == 0) {
                sub_0804AA1C(this);
            }
        } else if (sub_08028FDC(this) || this->field_0x80.HALF.LO) {
            this->field_0x80.HALF.LO = 0;
            sub_080290E0(this, 0);
        }
    }
    GetNextFrame(this);
    sub_0800445C(this);
    sub_08028F0C(this);
}

void sub_08028CE8(Entity* this) {
    struct SalesOffering* offer = (struct SalesOffering*)this->field_0x7c.WORD;
    u32 subtype;

    if ((gMessage.doTextBox & 0x7f) == 0 && sub_0802915C(this) && !sub_08056338()) {
        if (offer->price <= gSave.stats.rupees) {
            if (sub_080291DC(this)) {
                /* Bag full. */
                MessageFromTarget(TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x04));
                SetPlayerControl(0);
            } else {
                ModRupees(-offer->price);
                switch (offer->field_0x0 >> 2) {
                    case 0:
                        subtype = offer->field_0x9;
                        if (subtype == KINSTONE_RANDOM) {
                            subtype = kinstoneTypes[Random() & 7];
                        }

                        CreateItemEntity(offer->offeredItem, subtype, 0);

                        this->action = 6;
                        this->timer = 4;
                        this->field_0x80.HALF.HI = 0;
                        sub_080290E0(this, 3);
#if defined(USA) || defined(DEMO_USA)
                        SetLocalFlag(KS_B06);
#endif
                        return;
                    case 1:
                        CreateItemEntity(offer->offeredItem, offer->field_0x9, 0);
                        this->timer = 4;
                        sub_0802922C(this);
                        return;
                    case 2:
                        CreateItemEntity(offer->offeredItem, offer->field_0x9, 0);
                        this->timer = 8;
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

    sub_0800445C(this);
    this->action = 4;
    this->timer = 48;
    sub_080290E0(this, 0);
}

void sub_08028DE8(Entity* this) {
    if (gPlayerEntity.action == PLAYER_ITEMGET) {
        if (this->field_0x80.HALF.HI == 0) {
            SetPlayerControl(1);
            this->field_0x80.HALF.HI = 1;
        }
    } else {
        MessageFromTarget(TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02));
        this->action = 4;
        this->field_0x80.HALF.HI = 0;
        this->timer = 1;
        sub_08028EDC(this);
        SetPlayerControl(0);
        sub_0800445C(this);
        GetNextFrame(this);
    }
}

void sub_08028E40(Entity* this) {
    if ((gMessage.doTextBox & 0x7f) == 0) {
        struct SalesOffering* offer = (struct SalesOffering*)this->field_0x7c.WORD;

        this->action = 4;
        this->subAction = gMessage.doTextBox & 0x7f;
        this->timer = 1;
        if (CheckLocalFlag(offer->field_0xa) == 0) {
            SetLocalFlag(offer->field_0xa);
        }
        SetPlayerControl(0);
    }
    sub_0800445C(this);
    GetNextFrame(this);
}

void sub_08028E84(Entity* this) {
    if (UpdateFuseInteraction(this)) {
        this->action = 4;
        this->timer = 1;
    }
}

bool32 sub_08029198(const struct SalesOffering*);

void sub_08028E9C(Entity* this) {
    const struct SalesOffering* offer = &gUnk_080CC954[this->type];
    if (sub_08029198(offer) && (offer->field_0x0 & 2)) {
        offer = &gUnk_080CC954[offer->field_0xa];
    }
    this->field_0x7c.WORD = (u32)offer;
    this->field_0x80.HALF.LO = 0;
}

void sub_08028EDC(Entity* this) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->field_0x7c.WORD;
    if (sub_08029198(offer) && (offer->field_0x0 & 2)) {
        offer = &gUnk_080CC954[offer->field_0xa];
        this->field_0x7c.WORD = (u32)offer;
    }
}

void sub_08028F0C(Entity* this) {
    if (this->interactType == 2) {
        this->action = 8;
        this->interactType = 0;
        sub_0806F118(this);
    } else if (this->interactType != 0) {
        u16 dialog;
        const struct SalesOffering* offer = (const struct SalesOffering*)this->field_0x7c.WORD;

        this->interactType = 0;
        sub_0804AA1C(this);
        this->direction = (GetAnimationState(this) << 3);
        sub_080290E0(this, 3);
        this->field_0x80.HALF.LO = 1;
        this->timer = 32;
        this->subtimer = 0;
        if (sub_08029198(offer)) {
            dialog = offer->field_0x6;
        } else {
            if ((offer->field_0x0 & 0xfc) != 0xc) {
                this->action = 5;
            } else {
                this->action = 7;
            }
            dialog = offer->field_0x4;
            SetPlayerControl(1);
        }
        MessageFromTarget(dialog);
        gMessage.rupees = offer->price;
    }
}

bool32 sub_08028F98(Entity* this, u32 param_2) {
    Entity* ent = sub_08049DF4(1);
    if (ent == NULL || EntityInRectRadius(this, ent, 0x28, 0x28)) {
        return FALSE;
    }

    if (param_2 != 2) {
        u32 distance = param_2 ? 0x58 : 0x50;

        if (!EntityInRectRadius(this, ent, distance, distance)) {
            return FALSE;
        }
    }

    return TRUE;
}

bool32 sub_08028FDC(Entity* this) {
    u32 direction = DirectionRoundUp(sub_08049F84(this, 1));
    if (direction == this->direction) {
        return FALSE;
    } else {
        this->direction = direction;
        return TRUE;
    }
}

void sub_08028FFC(Entity* this) {
    this->action = 1;
    COLLISION_OFF(this);
    this->spritePriority.b1 = 0;
    UnloadGFXSlots(this);
    UnloadOBJPalette(this);
    this->spriteVramOffset = 0xe8;
    this->palette.b.b0 = 2;
    this->palette.b.b4 = 2;
    this->spriteIndex = 0xa7;
    this->x.HALF.HI = this->field_0x78.HWORD;
    this->y.HALF.HI = this->field_0x7a.HWORD;
    InitializeAnimation(this, 0);
    SetTile(0x4022, this->field_0x76.HWORD, this->collisionLayer);
}

void sub_08029078(Entity* this) {
    this->action = 2;
    COLLISION_ON(this);
    this->spritePriority.b1 = 1;
    if (LoadFixedGFX(this, 0x72) == 0) {
        DeleteEntity(this);
    } else {
        LoadObjPalette(this, 0x6e);
        this->spriteIndex = 0xd0;
        sub_08028FDC(this);
        sub_080290E0(this, 1);
        SetTile(this->field_0x74.HWORD, this->field_0x76.HWORD, this->collisionLayer);
    }
}

void sub_080290E0(Entity* this, u32 param_2) {
    InitializeAnimation(this, this->direction >> 3 | gUnk_080CCA04[param_2]);
}

void sub_080290FC(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
        if ((this->timer < 16) && ((this->timer & 1) == 0)) {
            s32 sVar3 = ((this->direction & 0x10) != 0) ? -1 : 1;
            if ((this->direction & 8) != 0) {
                this->x.HALF.HI += ((this->timer & 8) != 0) ? -sVar3 : sVar3;
            } else {
                this->y.HALF.HI += ((this->timer & 8) != 0) ? sVar3 : -sVar3;
            }
        }
    }
}

bool32 sub_0802915C(Entity* this) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->field_0x7c.WORD;

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
        tmp = CheckLocalFlag(offer->field_0xa);
    }

    if (tmp == 0) {
        return FALSE;
    }

    return TRUE;
}

bool32 sub_080291DC(Entity* this) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->field_0x7c.WORD;

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

void sub_0802922C(Entity* this) {
    const struct SalesOffering* offer;
    this->action = 6;
    this->field_0x80.HALF.HI = 0;
    offer = (const struct SalesOffering*)this->field_0x7c.WORD;

    switch (offer->offeredItem) {
        case ITEM_BOTTLE1:
            SetGlobalFlag(AKINDO_BOTTLE_SELL);
        // It only matters here that ITEM_BOMBS10 is here and some item that is higher
        // Not sure about the original code
        case ITEM_ARROWS10:
        case ITEM_BOMBS10:
        default:
            sub_080290E0(this, 3);
            break;
    }
}

void sub_0802925C(Entity* this) {
    AddInteractableWhenBigFuser(this, GetFusionToOffer(this));
}

void sub_08029270(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitializeAnimation(this, 0xe);
    } else {
        GetNextFrame(this);
    }
}

// clang-format off
const struct SalesOffering gUnk_080CC954[] = {
    {0x06, 0x00, 0xffff, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0f), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x09, 0xff, 0x0001},
    {0x04, 0x00, 0x001e, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0e), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x6f, 0xff, 0xffff},
    {0x04, 0x00, 0x001e, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0b), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x6c, 0xff, 0xffff},
    {0x08, 0x00, 0x0028, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0c), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x11), 0x44, 0xff, 0xffff},
    {0x00, 0x00, 0x0064, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0d), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x5c, 0xff, 0xffff},
    {0x04, 0x00, 0x0014, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x10), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x11), 0x1c, 0xff, 0xffff},
    {0x0c, 0x00, 0xffff, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x12), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x13), 0xff, 0xff, 0x0046},
    {0x04, 0x00, 0x0064, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x13), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x5c, 0x75, 0xffff},
#ifdef EU
    {0x00, 0x00, 0x0064, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0d), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x5c, 0xff, 0xffff},
#else
    {0x00, 0x00, 0x00C8, TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x0d), TEXT_INDEX(TEXT_BUSINESS_SCRUB, 0x02), 0x5c, 0xff, 0xffff},
#endif
};

const u8 kinstoneTypes[] = { 0x6e, 0x6f, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75 };

void (*const BusinessScrub_Functions[])(Entity*) = {
    BusinessScrub_OnTick,
    BusinessScrub_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    BusinessScrub_OnGrabbed,
};

void (*const gUnk_080CC9E0[])(Entity*) = {
    sub_08028994,
    sub_08028A48,
    sub_08028A74,
    sub_08028BC4,
    sub_08028C84,
    sub_08028CE8,
    sub_08028DE8,
    sub_08028E40,
    sub_08028E84,
};

const u8 gUnk_080CCA04[] = {
    0, 4, 8, 12, 16, 20,
};
// clang-format on
