/**
 * @file dog.c
 * @ingroup NPCs
 *
 * @brief Dog NPC
 */
#include "collision.h"
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "npc.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u8 unk_6a;
    /*0x6b*/ u8 unk_6b;
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unk_74;
} DogEntity;

void sub_08069FE8(DogEntity*);
bool32 sub_08069EF0(DogEntity*);
bool32 sub_08069F90(DogEntity*);
void sub_08069F6C(DogEntity*);
void sub_08069D00(DogEntity*);
void sub_08069CB8(DogEntity*);
void sub_0806A028(DogEntity*);
void sub_08069FBC(DogEntity*);
void sub_0806A080(DogEntity*);

const SpriteLoadData gUnk_08111D58[] = {
#ifdef EU
    { 82, 67, 4 }, { 7250, 67, 4 }, { 0, 0, 0 }, { 64, 69, 4 }, { 7232, 69, 4 }, { 0, 0, 0 },
#else
    { 82, 67, 4 }, { 7250, 67, 4 }, { 0, 0, 0 }, { 1, 69, 4 },  { 7169, 69, 4 }, { 0, 0, 0 },
#endif
    { 4, 68, 4 },  { 7172, 68, 4 }, { 0, 0, 0 }, { 83, 69, 4 }, { 7251, 69, 4 }, { 0, 0, 0 },
};

void sub_08069B44(DogEntity*);
void sub_08069C40(DogEntity*);
void sub_08069D54(DogEntity*);
void sub_08069DF8(DogEntity*);
void sub_08069E44(DogEntity*);
void sub_08069E50(DogEntity*);
void sub_08069ECC(DogEntity*);
void sub_08069EE0(DogEntity*);
void (*const gUnk_08111D88[])(DogEntity*) = {
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
void Dog(DogEntity* this) {
    gUnk_08111D88[super->action](this);
    sub_0806ED78(super);
    sub_08069FE8(this);
}

void sub_08069B44(DogEntity* this) {
    u32 uVar2;
    u32 sVar3;
    u32 uVar4;
    u32 uVar5;
    if (sub_08069EF0(this)) {
        uVar5 = sub_0805ACC0(super);
        if (uVar5 == 0) {
            sVar3 = super->x.HALF.HI;
            uVar2 = super->y.HALF.HI;
        } else {
            sVar3 = uVar5 >> 0x10;
            uVar2 = uVar5;
        }

        uVar4 = super->timer == 0 ? 0x20 : super->timer;

        this->unk_6e = sVar3 - uVar4;
        this->unk_6c = sVar3 + uVar4;
        this->unk_70 = uVar2 - 8;
        this->unk_72 = uVar2 + 8;
        super->speed = 0x100;
        super->timer = 30;
        super->animationState = 2;
        this->unk_6a = 0xff;
        this->unk_74 = GetFusionToOffer(super);
        SetEntityPriority(super, PRIO_MESSAGE);
        InitAnimationForceUpdate(super, 10);
        if ((super->flags & ENT_SCRIPTED) != 0) {
            InitScriptForNPC(super);
        }
        if (((super->type == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) &&
            (GetInventoryValue(ITEM_QST_DOGFOOD) != 2)) {
            super->action = 4;
        }
        if ((super->type == 2) && (CheckLocalFlag(MACHI_02_DOG) == 0)) {
            SetTile(SPECIAL_TILE_114, TILE(super->x.HALF.HI, super->y.HALF.HI - 8), super->collisionLayer);
        }
    }
}

void sub_08069C40(DogEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (sub_08069F90(this)) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            sub_08069CB8(this);
        } else {
            super->animationState = GetAnimationState(super);
            sub_08069D00(this);
        }
        super->timer = 30;
    } else {
        super->timer--;
        if (super->timer == 0) {
            super->action = 2;
            super->timer = (Random() & 0x1f) + 30;
            super->direction = gUnk_08111DA8[Random() & 7];
            sub_08069F6C(this);
        }
    }
}

void sub_08069CB8(DogEntity* this) {
    u32 direction;
    u32 animState;

    direction = GetFacingDirection(super, &gPlayerEntity.base);
    animState = gUnk_08111DB0[direction + super->animationState * 0x20];
    super->animationState = animState >> 6;
    this->unk_6b = animState & 0x3f;
    sub_0806A028(this);
    if (super->animIndex != this->unk_6b) {
        InitAnimationForceUpdate(super, this->unk_6b);
    }
}

void sub_08069D00(DogEntity* this) {
    this->unk_6b = 8;
    sub_0806A028(this);
    if (0x1f < super->animIndex) {
        if ((super->frame & ANIM_DONE) == 0) {
            return;
        }
        this->unk_6b = 8;
    }
    if ((Random() & 0x1ff) < 3) {
        sub_08069FBC(this);
    }
    if (super->animIndex != this->unk_6b + super->animationState) {
        InitAnimationForceUpdate(super, this->unk_6b + super->animationState);
    }
}

void sub_08069D54(DogEntity* this) {
    u16 collisions;
    if (!sub_08069F90(this)) {
        super->timer--;
        if (super->timer != 0) {
            UpdateAnimationSingleFrame(super);
            ProcessMovement0(super);
            collisions = super->collisions;

            if (super->x.HALF.HI < this->unk_6e) {
                super->x.HALF.HI = this->unk_6e + 1;
                collisions = COL_WEST_ANY;
            } else if (super->x.HALF.HI > this->unk_6c) {
                super->x.HALF.HI = this->unk_6c - 1;
                collisions = COL_EAST_ANY;
            }
            if (super->y.HALF.HI < this->unk_70) {
                super->y.HALF.HI = this->unk_70 + 1;
                collisions = COL_NORTH_ANY;
            } else if (super->y.HALF.HI > this->unk_72) {
                super->y.HALF.HI = this->unk_72 - 1;
                collisions = COL_SOUTH_ANY;
            }
            sub_0800417E(super, collisions);
            sub_08069F6C(this);
            return;
        }
    }
    if (sub_08069F90(this)) {
        super->action = 1;
    } else {
        super->action = 3;
    }
    super->timer = (Random() & 0x1f) + 30;
}

void sub_08069DF8(DogEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (sub_08069F90(this)) {
        super->action = 1;
    } else {
        super->timer--;
        if (super->timer != 0) {
            sub_08069D00(this);
            return;
        }
        if ((Random() & 0xff) < 0x30) {
            super->action = 2;
        } else {
            super->action = 3;
        }
    }
    super->timer = (Random() & 0x1f) + 30;
}

void sub_08069E44(DogEntity* this) {
    ExecuteScriptAndHandleAnimation(super, NULL);
}

void sub_08069E50(DogEntity* this) {
    super->animationState = GetAnimationState(super);
    this->unk_6b = 8;
    sub_0806A028(this);
    UpdateAnimationSingleFrame(super);
    if (super->animIndex > 0x1f) {
        if ((super->frame & ANIM_DONE) == 0) {
            return;
        }
        this->unk_6b = 8;
    }
    sub_08069FBC(this);
    if (super->animIndex != this->unk_6b + super->animationState) {
        InitAnimationForceUpdate(super, this->unk_6b + super->animationState);
    }
    if (GetInventoryValue(ITEM_QST_DOGFOOD) == 2) {
        super->action = 7;
        InitAnimationForceUpdate(super, 0x29);
        RemoveInteractableObject(super);
        EnqueueSFX(SFX_VO_DOG);
        EnqueueSFX(SFX_TASK_COMPLETE);
    }
}

void sub_08069ECC(DogEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
#ifdef EU
        if (GetInventoryValue(ITEM_QST_DOGFOOD) != 2) {
            super->action = 5;
        } else {
            super->action = 1;
        }
#else
        super->action = 1;
#endif
    }
}

void sub_08069EE0(DogEntity* this) {
    UpdateAnimationSingleFrame(super);
}

void sub_08069EE8(DogEntity* this) {
    super->action = 5;
}

bool32 sub_08069EF0(DogEntity* this) {
    if (!LoadExtraSpriteData(super, &gUnk_08111D58[super->type * 3])) {
        return FALSE;
    }
    super->action = 1;
    this->unk_68 = gUnk_08111E30[super->type];
    return TRUE;
}

void Dog_Head(DogEntity* this) {
    u32 frame;
    frame = super->frame & ~ANIM_DONE;
    if (frame != 0) {
        frame += this->unk_68;
    }
    SetExtraSpriteFrame(super, 0, frame - 1);
    SetExtraSpriteFrame(super, 1, super->frameIndex);
    SetSpriteSubEntryOffsetData1(super, 1, 0);
    sub_0807000C(super);
}

void sub_08069F6C(DogEntity* this) {
    super->animationState = GetAnimationStateForDirection4(super->direction);
    if (super->animationState + 4 != super->animIndex) {
        InitAnimationForceUpdate(super, super->animationState + 4);
    }
}

bool32 sub_08069F90(DogEntity* this) {
    if ((super->type == 2) && (CheckLocalFlag(MACHI_02_DOG) == 0)) {
        return TRUE;
    } else {
        return EntityInRectRadius(super, &gPlayerEntity.base, 0x14, 0x14);
    }
}

void sub_08069FBC(DogEntity* this) {
    u32 tmp = (gPlayerState.flags & PL_MINISH) != 0 ? 0x24 : 0x20;
    if ((super->animationState == 1) || (super->animationState == 3)) {
        this->unk_6b = tmp;
    }
}

void sub_08069FE8(DogEntity* this) {
    u32 tmp;
    if ((gPlayerState.flags & PL_MINISH) != 0) {
        tmp = TRUE;
    } else {
        tmp = FALSE;
    }

    if (tmp != this->unk_6a) {
        if (tmp == 0) {
            AddInteractableWhenBigObject(super);
        } else {
            AddInteractableAsMinishFuser(super, this->unk_74);
        }
    }
    this->unk_6a = tmp;
}

void sub_0806A028(DogEntity* this) {
    if (super->interactType != INTERACTION_NONE) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 6;
                InitializeNPCFusion(super);
            } else {
                sub_0806A080(this);
            }
        } else {
            sub_08069FBC(this);
            sub_0806A080(this);
            SoundReq(SFX_VO_DOG);
            ResetPlayerAnimationAndAction();
        }
        super->interactType = INTERACTION_NONE;
    }
}

void sub_0806A080(DogEntity* this) {
    ShowNPCDialogue(super, &(gUnk_08111E34[super->type2][gSave.global_progress]));
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

void Dog_Fusion(DogEntity* this) {
    if (super->action == 0) {
        if (sub_08069EF0(this)) {
            super->action++;
            super->spriteSettings.draw = 1;
            SetEntityPriority(super, PRIO_MESSAGE);
            InitializeAnimation(super, 0x23);
        }
    } else {
        GetNextFrame(super);
    }
}
