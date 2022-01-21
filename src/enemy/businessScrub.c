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

bool32 sub_0802915C(Entity*);
bool32 sub_080291DC(Entity*);
void sub_0802922C(Entity*);
void sub_08028E9C(Entity*);
u32 sub_080001DA(u32, u32);
void sub_08028FFC(Entity*);
void sub_0802925C(Entity*);
void sub_080290E0(Entity*, u32);
bool32 sub_08028F98(Entity*, u32);
void sub_08029078(Entity*);
bool32 sub_08028FDC(Entity*);
void sub_080290FC(Entity*);
void sub_08028EDC(Entity*);

extern const struct SalesOffering gUnk_080CC954[];
extern const u8 gUnk_080CC9C0[];
extern void (*const gUnk_080CC9C8[])(Entity*);
extern void (*const gUnk_080CC9E0[])(Entity*);
extern const u8 gUnk_080CCA04[];

struct SalesOffering {
    u8 field_0x0;
    u8 field_0x1;
    u16 price;
    u16 field_0x4;
    u16 field_0x6;
    u8 field_0x8;
    u8 field_0x9;
    u16 field_0xa;
};

void BusinessScrub(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CC9C8);
}

void sub_0802891C(Entity* this) {
    gUnk_080CC9E0[this->action](this);
}

void sub_08028934(Entity* this) {
    Entity* pEVar1;

    if (this->hitType == 1 && (this->bitfield & 0x7f) == 0x42) {
        this->action = 3;
        this->subAction = 0;
        this->actionDelay = 0x28;
        COLLISION_OFF(this);
        sub_080290E0(this, 4);
        pEVar1 = CreateFx(this, FX_BUSH, 0);
        if (pEVar1 != NULL) {
            pEVar1->z.HALF.HI -= 8;
        }
        EnqueueSFX(0x1bb);
    }
}

void nullsub_140(Entity* this) {
    /* ... */
}

void sub_08028994(Entity* this) {
    this->field_0xf = 0;
    this->field_0x78.HWORD = this->x.HALF.HI;
    this->field_0x7a.HWORD = this->y.HALF.HI;
    this->animationState = 0;
    this->direction = 0x10;
    sub_08028E9C(this);
    if ((*(u8*)this->field_0x7c.WORD & 1) || CheckFlags(this->field_0x86.HWORD)) {
        this->action = 4;
        this->actionDelay = 0x78;
        this->spritePriority.b1 = 1;
        sub_0802925C(this);
        sub_080290E0(this, 0);
    } else {
        this->actionDelay = 0;
        this->field_0x76.HWORD = COORD_TO_TILE(this);
        this->field_0x74.HWORD = sub_080001DA(this->field_0x76.HWORD, this->collisionLayer);
        this->hurtType = 0x41;
        sub_08028FFC(this);
    }
}

void sub_08028A48(Entity* this) {
    if (this->actionDelay) {
        this->actionDelay--;
    } else if (sub_08028F98(this, 0)) {
        sub_08029078(this);
        this->subAction = 0;
        this->field_0xf = 1;
    }
}

void sub_08028A74(Entity* this) {
    u32 unk;

    GetNextFrame(this);
    switch (this->subAction) {
        case 0:
            unk = 1;
            if (this->frame & 0x80) {
                this->subAction = 1;
                this->actionDelay = 0x3c;
                this->field_0xf = 0x10;
                sub_08028FDC(this);
                sub_080290E0(this, 1);
            }
            break;
        case 1:
            unk = 1;
            if (--this->actionDelay == 0) {
                this->subAction = 2;
                this->actionDelay = 0x20;
                this->field_0xf = 0;
                sub_08028FDC(this);
                sub_080290E0(this, 2);
            } else if (--this->field_0xf == 0) {
                if (sub_08028FDC(this)) {
                    sub_080290E0(this, 1);
                }
                this->field_0xf = 0x10;
            }
            break;
        case 2:
            unk = 1;
            sub_080290FC(this);
            if (this->frame & 1) {
                Entity* ent = CreateProjectileWithParent(this, 4, 0);
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
            if (this->frame & 0x80) {
                this->subAction = 4;
                this->actionDelay = 0x50;
                sub_080290E0(this, 1);
            }
            break;
        case 4:
            unk = 2;
            if (--this->actionDelay == 0) {
                if (sub_08028F98(this, 0)) {
                    this->subAction = 1;
                    this->actionDelay = 0x3c;
                    this->field_0xf = 0x10;
                    sub_08028FDC(this);
                } else {
                    sub_08028FFC(this);
                    this->subAction = 0;
                    this->actionDelay = 0x50;
                    this->field_0xf = 0;
                }
                return;
            }
            break;
    }

    if (!sub_08028F98(this, unk)) {
        sub_08028FFC(this);
        this->subAction = 0;
        this->actionDelay = 0x50;
        this->field_0xf = 0;
    }
}

void sub_08028BC4(Entity* this) {
    Entity* iVar1;

    switch (this->subAction) {
        case 0:
            if (this->actionDelay == 0) {
                if (this->frame & 0x80) {
                    this->subAction = 1;
                    sub_08028FDC(this);
                    sub_080290E0(this, 5);
                    this->spritePriority.b1 = 1;
                }
            } else {
                this->actionDelay--;
            }
            break;
        case 1:
            if (this->frame & 0x80) {
                this->action = 4;
                this->subAction = 0;
                this->actionDelay = 0x1e;
                this->field_0xf = 5;
                sub_080290E0(this, 0);
                iVar1 = sub_0804A9FC(this, 0x1c);
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
    if (--this->actionDelay == 0) {
        this->actionDelay = 0x30;
        if (this->field_0xf) {
            if (--this->field_0xf == 0) {
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
                MessageFromTarget(0x2904);
                SetPlayerControl(0);
            } else {
                ModRupees(-offer->price);
                switch (offer->field_0x0 >> 2) {
                    case 0:
                        subtype = offer->field_0x9;
                        if (subtype == 0xff) {
                            subtype = gUnk_080CC9C0[Random() & 7];
                        }

                        CreateItemEntity(offer->field_0x8, subtype, 0);

                        this->action = 6;
                        this->actionDelay = 4;
                        this->field_0x80.HALF.HI = 0;
                        sub_080290E0(this, 3);
#if defined(USA) || defined(DEMO_USA)
                        SetLocalFlag(KS_B06);
#endif
                        return;
                    case 1:
                        CreateItemEntity(offer->field_0x8, offer->field_0x9, 0);
                        this->actionDelay = 4;
                        sub_0802922C(this);
                        return;
                    case 2:
                        CreateItemEntity(offer->field_0x8, offer->field_0x9, 0);
                        this->actionDelay = 8;
                        sub_0802922C(this);
                        return;
                }
            }
        } else {
            /* Not enough money. */
            MessageFromTarget(0x2903);
            SetPlayerControl(0);
        }
    }

    sub_0800445C(this);
    this->action = 4;
    this->actionDelay = 0x30;
    sub_080290E0(this, 0);
}

void sub_08028DE8(Entity* this) {
    if (gPlayerEntity.action == 8) {
        if (this->field_0x80.HALF.HI == 0) {
            SetPlayerControl(1);
            this->field_0x80.HALF.HI = 1;
        }
    } else {
        MessageFromTarget(0x2902);
        this->action = 4;
        this->field_0x80.HALF.HI = 0;
        this->actionDelay = 1;
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
        this->actionDelay = 1;
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
        this->actionDelay = 1;
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
        this->actionDelay = 0x20;
        this->field_0xf = 0;
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
        gMessage.field_0x10 = offer->price;
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
    sub_080AE068(this);
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
    if (this->actionDelay != 0) {
        if (--this->actionDelay < 0x10 && (this->actionDelay & 1) == 0) {
            s32 sVar3 = (this->direction & 0x10) ? -1 : 1;
            if ((this->direction & 8)) {
                this->x.HALF.HI += (this->actionDelay & 8) ? -sVar3 : sVar3;
            } else {
                this->y.HALF.HI += (this->actionDelay & 8) ? sVar3 : -sVar3;
            }
        }
    }
}

bool32 sub_0802915C(Entity* this) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->field_0x7c.WORD;

    switch (offer->field_0x8) {
        case 0x44:
            if (GetInventoryValue(0x44) == 0)
                return TRUE;
            break;
        case 0x1c:
            if (CheckGlobalFlag(AKINDO_BOTTLE_SELL) == 0)
                return TRUE;
            break;
        case 0x5c:
        case 0x6c:
        case 0x6f:
            return TRUE;
    }
    return FALSE;
}

bool32 sub_08029198(const struct SalesOffering* offer) {
    u32 tmp;

    if ((offer->field_0x0 & 0xfc) != 0xc) {
        switch (offer->field_0x8) {
            case 0x1c:
                tmp = CheckGlobalFlag(AKINDO_BOTTLE_SELL);
                break;
            case 0x9:
            case 0x44:
                tmp = GetInventoryValue(offer->field_0x8);
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

    switch (offer->field_0x8) {
        case 0x6c:
            if (gBombBagSizes[gSave.stats.bombBagType] <= gSave.stats.bombCount)
                return TRUE;
            break;
        case 0x6f:
            if (gQuiverSizes[gSave.stats.quiverType] <= gSave.stats.arrowCount)
                return TRUE;
            break;
    }

    return FALSE;
}

NONMATCH("asm/non_matching/businessScrub/sub_0802922C.inc", void sub_0802922C(Entity* this)) {
    const struct SalesOffering* offer = (const struct SalesOffering*)this->field_0x7c.WORD;

    this->action = 6;
    this->field_0x80.HALF.HI = 0;

    switch (offer->field_0x8) {
        case 0x1c:
            SetGlobalFlag(AKINDO_BOTTLE_SELL);
            break;
    }

    sub_080290E0(this, 3);
}
END_NONMATCH

void sub_0802925C(Entity* this) {
    sub_08078784(this, sub_0801E99C(this));
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
    {0x06, 0x00, 0xffff, 0x290f, 0x2902, 0x09, 0xff, 0x0001},
    {0x04, 0x00, 0x001e, 0x290e, 0x2902, 0x6f, 0xff, 0xffff},
    {0x04, 0x00, 0x001e, 0x290b, 0x2902, 0x6c, 0xff, 0xffff},
    {0x08, 0x00, 0x0028, 0x290c, 0x2911, 0x44, 0xff, 0xffff},
    {0x00, 0x00, 0x0064, 0x290d, 0x2902, 0x5c, 0xff, 0xffff},
    {0x04, 0x00, 0x0014, 0x2910, 0x2911, 0x1c, 0xff, 0xffff},
    {0x0c, 0x00, 0xffff, 0x2912, 0x2913, 0xff, 0xff, 0x0046},
    {0x04, 0x00, 0x0064, 0x2913, 0x2902, 0x5c, 0x75, 0xffff},
#ifdef EU
    {0x00, 0x00, 0x0064, 0x290d, 0x2902, 0x5c, 0xff, 0xffff},
#else
    {0x00, 0x00, 0x00C8, 0x290d, 0x2902, 0x5c, 0xff, 0xffff},
#endif
};

const u8 gUnk_080CC9C0[] = {
    0x6e,
    0x6f,
    0x70,
    0x71,
    0x72,
    0x73,
    0x74,
    0x75,

};

void (*const gUnk_080CC9C8[])(Entity*) = {
    sub_0802891C,
    sub_08028934,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_140,
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
