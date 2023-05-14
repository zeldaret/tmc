#include "entity.h"
#include "collision.h"
#include "functions.h"
#include "npc.h"
#include "item.h"

void sub_08069FE8(Entity*);
bool32 sub_08069EF0(Entity*);
bool32 sub_08069F90(Entity*);
void sub_08069F6C(Entity*);
void sub_08069D00(Entity*);
void sub_08069CB8(Entity*);
void sub_0806A028(Entity*);
void sub_08069FBC(Entity*);
void sub_0806A080(Entity*);

const SpriteLoadData gUnk_08111D58[] = {
#ifdef EU
    { 82, 67, 4 }, { 7250, 67, 4 }, { 0, 0, 0 }, { 64, 69, 4 }, { 7232, 69, 4 }, { 0, 0, 0 },
#else
    { 82, 67, 4 }, { 7250, 67, 4 }, { 0, 0, 0 }, { 1, 69, 4 },  { 7169, 69, 4 }, { 0, 0, 0 },
#endif
    { 4, 68, 4 },  { 7172, 68, 4 }, { 0, 0, 0 }, { 83, 69, 4 }, { 7251, 69, 4 }, { 0, 0, 0 },
};

void sub_08069B44(Entity*);
void sub_08069C40(Entity*);
void sub_08069D54(Entity*);
void sub_08069DF8(Entity*);
void sub_08069E44(Entity*);
void sub_08069E50(Entity*);
void sub_08069ECC(Entity*);
void sub_08069EE0(Entity*);
void (*const gUnk_08111D88[])(Entity*) = {
    sub_08069B44, sub_08069C40, sub_08069D54, sub_08069DF8, sub_08069E44, sub_08069E50, sub_08069ECC, sub_08069EE0,
};

const u8 gUnk_08111DA8[] = { 7, 23, 8, 24, 8, 24, 9, 25 };
const u8 gUnk_08111DB0[] = {
    24,  24,  24,  24,  25,  25,  25,  25,  77,  77,  77,  77,  78,  78,  78,  146, 146, 214, 214, 214, 215, 215,
    215, 215, 27,  27,  27,  27,  24,  24,  24,  24,  76,  76,  76,  76,  77,  77,  77,  77,  77,  77,  77,  77,
    78,  78,  78,  78,  146, 146, 146, 146, 147, 147, 147, 215, 215, 27,  27,  27,  24,  24,  24,  24,  24,  76,
    76,  76,  77,  77,  77,  77,  145, 145, 145, 145, 146, 146, 146, 146, 146, 146, 146, 146, 147, 147, 147, 147,
    215, 215, 215, 215, 212, 212, 212, 24,  24,  24,  24,  24,  25,  25,  25,  77,  77,  145, 145, 145, 146, 146,
    146, 146, 214, 214, 214, 214, 215, 215, 215, 215, 215, 215, 215, 215, 212, 212, 212, 212,
};
const u8 gUnk_08111E30[] = { 19, 13, 13, 13 };

void sub_0806A0A4(Entity*);
void sub_0806A144(Entity*);

const Dialog gUnk_08111E34[][10] = {
    {
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_LON_LON, 0x8), TEXT_INDEX(TEXT_STOCKWELL, 0x23) } },
    },
    {
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN, 0x18), TEXT_INDEX(TEXT_TOWN, 0x19) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN, 0x18), TEXT_INDEX(TEXT_TOWN, 0x19) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN, 0x18), TEXT_INDEX(TEXT_TOWN, 0x19) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN, 0x18), TEXT_INDEX(TEXT_TOWN, 0x19) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN2, 0x14), TEXT_INDEX(TEXT_TOWN2, 0x15) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN3, 0x14), TEXT_INDEX(TEXT_TOWN3, 0x15) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN4, 0x14), TEXT_INDEX(TEXT_TOWN4, 0x15) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN5, 0x14), TEXT_INDEX(TEXT_TOWN5, 0x15) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN6, 0x13), TEXT_INDEX(TEXT_TOWN6, 0x14) } },
        { 0, 0, DIALOG_MINISH, 1, { TEXT_INDEX(TEXT_TOWN6, 0x13), TEXT_INDEX(TEXT_TOWN6, 0x14) } },
    },
    {
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A0A4 } },
    },
    {
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
        { 0, 0, DIALOG_CALL_FUNC, 0, { .func = sub_0806A144 } },
    }
};
const u16 gUnk_08111F74[][5] = {
    {
        TEXT_INDEX(TEXT_TOWN, 0x3b),
        TEXT_INDEX(TEXT_TOWN, 0x3c),
        TEXT_INDEX(TEXT_TOWN2, 0x32),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN2, 0x34),
    },
    {
        TEXT_INDEX(TEXT_TOWN, 0x3b),
        TEXT_INDEX(TEXT_TOWN, 0x3c),
        TEXT_INDEX(TEXT_TOWN2, 0x32),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN2, 0x34),
    },
    {
        TEXT_INDEX(TEXT_TOWN, 0x3b),
        TEXT_INDEX(TEXT_TOWN, 0x3c),
        TEXT_INDEX(TEXT_TOWN2, 0x32),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN2, 0x34),
    },
    {
        TEXT_INDEX(TEXT_TOWN, 0x3b),
        TEXT_INDEX(TEXT_TOWN, 0x3c),
        TEXT_INDEX(TEXT_TOWN2, 0x32),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN2, 0x34),
    },
    {
        TEXT_INDEX(TEXT_TOWN2, 0x30),
        TEXT_INDEX(TEXT_TOWN2, 0x31),
        TEXT_INDEX(TEXT_TOWN2, 0x32),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN2, 0x34),
    },
    {
        TEXT_INDEX(TEXT_TOWN3, 0x2c),
        TEXT_INDEX(TEXT_TOWN3, 0x2d),
        TEXT_INDEX(TEXT_TOWN3, 0x2e),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN3, 0x2f),
    },
    {
        TEXT_INDEX(TEXT_TOWN4, 0x28),
        TEXT_INDEX(TEXT_TOWN4, 0x29),
        TEXT_INDEX(TEXT_TOWN4, 0x2a),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN4, 0x2b),
    },
    {
        TEXT_INDEX(TEXT_TOWN5, 0x28),
        TEXT_INDEX(TEXT_TOWN5, 0x29),
        TEXT_INDEX(TEXT_TOWN5, 0x2a),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN5, 0x2b),
    },
    {
        TEXT_INDEX(TEXT_TOWN6, 0x21),
        TEXT_INDEX(TEXT_TOWN6, 0x22),
        TEXT_INDEX(TEXT_TOWN6, 0x23),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN6, 0x24),
    },
    {
        TEXT_INDEX(TEXT_TOWN6, 0x21),
        TEXT_INDEX(TEXT_TOWN6, 0x22),
        TEXT_INDEX(TEXT_TOWN6, 0x23),
        TEXT_INDEX(TEXT_TOWN2, 0x33),
        TEXT_INDEX(TEXT_TOWN6, 0x24),
    },
};
const u16 gUnk_08111FD8[] = {
    TEXT_INDEX(TEXT_TOWN8, 0x7),  TEXT_INDEX(TEXT_TOWN8, 0x8), TEXT_INDEX(TEXT_TOWN8, 0x9),
    TEXT_INDEX(TEXT_TOWN8, 0x11), TEXT_INDEX(TEXT_TOWN8, 0x3),
};
void Dog(Entity* this) {
    gUnk_08111D88[this->action](this);
    sub_0806ED78(this);
    sub_08069FE8(this);
}

void sub_08069B44(Entity* this) {
    u32 uVar2;
    u32 sVar3;
    u32 uVar4;
    u32 uVar5;
    if (sub_08069EF0(this)) {
        uVar5 = sub_0805ACC0(this);
        if (uVar5 == 0) {
            sVar3 = this->x.HALF.HI;
            uVar2 = this->y.HALF.HI;
        } else {
            sVar3 = uVar5 >> 0x10;
            uVar2 = uVar5;
        }

        uVar4 = this->timer == 0 ? 0x20 : this->timer;

        this->field_0x6e.HWORD = sVar3 - uVar4;
        this->field_0x6c.HWORD = sVar3 + uVar4;
        this->field_0x70.HALF.LO = uVar2 - 8;
        this->field_0x70.HALF.HI = uVar2 + 8;
        this->speed = 0x100;
        this->timer = 30;
        this->animationState = 2;
        this->field_0x6a.HALF.LO = 0xff;
        this->field_0x74.HALF.LO = GetFusionToOffer(this);
        SetDefaultPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 10);
        if ((this->flags & ENT_SCRIPTED) != 0) {
            sub_0807DD50(this);
        }
        if (((this->type == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) &&
            (GetInventoryValue(ITEM_QST_DOGFOOD) != 2)) {
            this->action = 4;
        }
        if ((this->type == 2) && (CheckLocalFlag(MACHI_02_DOG) == 0)) {
            SetTile(0x4072, TILE(this->x.HALF.HI, this->y.HALF.HI - 8), this->collisionLayer);
        }
    }
}

void sub_08069C40(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (sub_08069F90(this)) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            sub_08069CB8(this);
        } else {
            this->animationState = GetAnimationState(this);
            sub_08069D00(this);
        }
        this->timer = 30;
    } else {
        this->timer--;
        if (this->timer == 0) {
            this->action = 2;
            this->timer = (Random() & 0x1f) + 30;
            this->direction = gUnk_08111DA8[Random() & 7];
            sub_08069F6C(this);
        }
    }
}

void sub_08069CB8(Entity* this) {
    u32 direction;
    u32 animState;

    direction = GetFacingDirection(this, &gPlayerEntity);
    animState = gUnk_08111DB0[direction + this->animationState * 0x20];
    this->animationState = animState >> 6;
    this->field_0x6a.HALF.HI = animState & 0x3f;
    sub_0806A028(this);
    if (this->animIndex != this->field_0x6a.HALF.HI) {
        InitAnimationForceUpdate(this, this->field_0x6a.HALF.HI);
    }
}

void sub_08069D00(Entity* this) {
    this->field_0x6a.HALF.HI = 8;
    sub_0806A028(this);
    if (0x1f < this->animIndex) {
        if ((this->frame & ANIM_DONE) == 0) {
            return;
        }
        this->field_0x6a.HALF.HI = 8;
    }
    if ((Random() & 0x1ff) < 3) {
        sub_08069FBC(this);
    }
    if (this->animIndex != this->field_0x6a.HALF.HI + this->animationState) {
        InitAnimationForceUpdate(this, this->field_0x6a.HALF.HI + this->animationState);
    }
}

void sub_08069D54(Entity* this) {
    u16 collisions;
    if (!sub_08069F90(this)) {
        this->timer--;
        if (this->timer != 0) {
            UpdateAnimationSingleFrame(this);
            ProcessMovement0(this);
            collisions = this->collisions;

            if (this->x.HALF.HI < this->field_0x6e.HWORD) {
                this->x.HALF.HI = this->field_0x6e.HWORD + 1;
                collisions = COL_WEST_ANY;
            } else if (this->x.HALF.HI > this->field_0x6c.HWORD) {
                this->x.HALF.HI = this->field_0x6c.HWORD - 1;
                collisions = COL_EAST_ANY;
            }
            if (this->y.HALF.HI < this->field_0x70.HALF_U.LO) {
                this->y.HALF.HI = this->field_0x70.HALF_U.LO + 1;
                collisions = COL_NORTH_ANY;
            } else if (this->y.HALF.HI > this->field_0x70.HALF_U.HI) {
                this->y.HALF.HI = this->field_0x70.HALF_U.HI - 1;
                collisions = COL_SOUTH_ANY;
            }
            sub_0800417E(this, collisions);
            sub_08069F6C(this);
            return;
        }
    }
    if (sub_08069F90(this)) {
        this->action = 1;
    } else {
        this->action = 3;
    }
    this->timer = (Random() & 0x1f) + 30;
}

void sub_08069DF8(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (sub_08069F90(this)) {
        this->action = 1;
    } else {
        this->timer--;
        if (this->timer != 0) {
            sub_08069D00(this);
            return;
        }
        if ((Random() & 0xff) < 0x30) {
            this->action = 2;
        } else {
            this->action = 3;
        }
    }
    this->timer = (Random() & 0x1f) + 30;
}

void sub_08069E44(Entity* this) {
    sub_0807DD94(this, NULL);
}

void sub_08069E50(Entity* this) {
    this->animationState = GetAnimationState(this);
    this->field_0x6a.HALF.HI = 8;
    sub_0806A028(this);
    UpdateAnimationSingleFrame(this);
    if (this->animIndex > 0x1f) {
        if ((this->frame & ANIM_DONE) == 0) {
            return;
        }
        this->field_0x6a.HALF.HI = 8;
    }
    sub_08069FBC(this);
    if (this->animIndex != this->field_0x6a.HALF.HI + this->animationState) {
        InitAnimationForceUpdate(this, this->field_0x6a.HALF.HI + this->animationState);
    }
    if (GetInventoryValue(ITEM_QST_DOGFOOD) == 2) {
        this->action = 7;
        InitAnimationForceUpdate(this, 0x29);
        RemoveInteractableObject(this);
        EnqueueSFX(SFX_VO_DOG);
        EnqueueSFX(SFX_TASK_COMPLETE);
    }
}

void sub_08069ECC(Entity* this) {
    if (UpdateFuseInteraction(this) != 0) {
#ifdef EU
        if (GetInventoryValue(ITEM_QST_DOGFOOD) != 2) {
            this->action = 5;
        } else {
            this->action = 1;
        }
#else
        this->action = 1;
#endif
    }
}

void sub_08069EE0(Entity* this) {
    UpdateAnimationSingleFrame(this);
}

void sub_08069EE8(Entity* this) {
    this->action = 5;
}

bool32 sub_08069EF0(Entity* this) {
    if (!LoadExtraSpriteData(this, &gUnk_08111D58[this->type * 3])) {
        return FALSE;
    }
    this->action = 1;
    this->field_0x68.HWORD = gUnk_08111E30[this->type];
    return TRUE;
}

void Dog_Head(Entity* this) {
    u32 frame;
    frame = this->frame & ~ANIM_DONE;
    if (frame != 0) {
        frame += this->field_0x68.HWORD;
    }
    SetExtraSpriteFrame(this, 0, frame - 1);
    SetExtraSpriteFrame(this, 1, this->frameIndex);
    SetSpriteSubEntryOffsetData1(this, 1, 0);
    sub_0807000C(this);
}

void sub_08069F6C(Entity* this) {
    this->animationState = sub_0806F5A4(this->direction);
    if (this->animationState + 4 != this->animIndex) {
        InitAnimationForceUpdate(this, this->animationState + 4);
    }
}

bool32 sub_08069F90(Entity* this) {
    if ((this->type == 2) && (CheckLocalFlag(MACHI_02_DOG) == 0)) {
        return TRUE;
    } else {
        return EntityInRectRadius(this, &gPlayerEntity, 0x14, 0x14);
    }
}

void sub_08069FBC(Entity* this) {
    u32 tmp = (gPlayerState.flags & PL_MINISH) != 0 ? 0x24 : 0x20;
    if ((this->animationState == 1) || (this->animationState == 3)) {
        this->field_0x6a.HALF.HI = tmp;
    }
}

void sub_08069FE8(Entity* this) {
    u32 tmp;
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        tmp = TRUE;
    } else {
        tmp = FALSE;
    }

    if (tmp != this->field_0x6a.HALF.LO) {
        if (tmp == 0) {
            AddInteractableWhenBigObject(this);
        } else {
            AddInteractableAsMinishFuser(this, this->field_0x74.HALF.LO);
        }
    }
    this->field_0x6a.HALF.LO = tmp;
}

void sub_0806A028(Entity* this) {
    if (this->interactType != 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            if (this->interactType == 2) {
                this->action = 6;
                sub_0806F118(this);
            } else {
                sub_0806A080(this);
            }
        } else {
            sub_08069FBC(this);
            sub_0806A080(this);
            SoundReq(SFX_VO_DOG);
            ResetPlayerAnimationAndAction();
        }
        this->interactType = 0;
    }
}

void sub_0806A080(Entity* this) {
    ShowNPCDialogue(this, &(gUnk_08111E34[this->type2][gSave.global_progress]));
}

void sub_0806A0A4(Entity* this) {
    s32 dialog;

    if (gPlayerState.flags & PL_MINISH) {
        dialog = 4;
        if (CheckLocalFlag(MACHI_02_DOG) == 0) {
            dialog = 3;
            SetLocalFlag(MACHI_02_DOG);
            RestorePrevTileEntity(TILE(this->x.HALF.HI, this->y.HALF.HI - 8), (u32)this->collisionLayer);
        }
    } else {
        dialog = 2;
        if (CheckLocalFlag(MACHI_02_DOG) == 0) {
            dialog = 1;
            if (CheckLocalFlag(MACHI_DOG_C) == 0) {
                dialog = 0;
                SetLocalFlag(MACHI_DOG_C);
            }
        }
    }
    MessageNoOverlap(gUnk_08111F74[gSave.global_progress][dialog], this);
}

void sub_0806A144(Entity* this) {
    s32 dialog = 4;
    if (gPlayerState.flags & PL_MINISH) {
        dialog = 3;
        if (GetInventoryValue(ITEM_FLIPPERS) == 0 && CheckGlobalFlag(MIZUKAKI_START)) {
            if (CheckLocalFlag(0x85) == 0) {
                dialog = 1;
            } else {
                dialog = 2;
            }
        }
    }
    MessageNoOverlap(gUnk_08111FD8[dialog], this);
}

void Dog_Fusion(Entity* this) {
    if (this->action == 0) {
        if (sub_08069EF0(this)) {
            this->action++;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, 0x23);
        }
    } else {
        GetNextFrame(this);
    }
}
