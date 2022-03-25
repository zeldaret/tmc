#include "entity.h"
#include "collision.h"
#include "functions.h"
#include "npc.h"
#include "item.h"

extern void (*gUnk_08111D88[])(Entity*);
void sub_08069FE8(Entity*);
u32 sub_08069EF0(Entity*);

extern u8 gUnk_08111DA8[];
u32 sub_08069F90(Entity*);
void sub_08069F6C(Entity*);
void sub_08069D00(Entity*);
void sub_08069CB8(Entity*);

extern u8 gUnk_08111DB0[];
void sub_0806A028(Entity*);

void sub_08069FBC(Entity*);

extern SpriteLoadData gUnk_08111D58[];
extern u8 gUnk_08111E30[];

void sub_0806A080(Entity*);

extern Dialog gUnk_08111E34[];

extern u16 gUnk_08111F74[];

extern u16 gUnk_08111FD8[];

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
    if (sub_08069EF0(this) != 0) {
        uVar5 = sub_0805ACC0(this);
        if (uVar5 == 0) {
            sVar3 = this->x.HALF.HI;
            uVar2 = this->y.HALF.HI;
        } else {
            sVar3 = uVar5 >> 0x10;
            uVar2 = uVar5;
        }

        uVar4 = this->actionDelay == 0 ? 0x20 : this->actionDelay;

        this->field_0x6e.HWORD = sVar3 - uVar4;
        this->field_0x6c.HWORD = sVar3 + uVar4;
        this->field_0x70.HALF.LO = uVar2 - 8;
        this->field_0x70.HALF.HI = uVar2 + 8;
        this->speed = 0x100;
        this->actionDelay = 0x1e;
        this->animationState = 2;
        this->field_0x6a.HALF.LO = 0xff;
        this->field_0x74.HALF.LO = sub_0801E99C(this);
        SetDefaultPriority(this, PRIO_MESSAGE);
        InitAnimationForceUpdate(this, 10);
        if ((this->flags & ENT_SCRIPTED) != 0) {
            sub_0807DD50(this);
        }
        if (((this->type == 0) && ((gPlayerState.flags & PL_MINISH) == 0)) &&
            (GetInventoryValue(ITEM_QST_DOGFOOD) != 2)) {
            this->action = 4;
        }
#if defined(JP) || defined(EU) || defined(DEMO_JP)
        if ((this->type == 2) && (CheckLocalFlag(0xcc) == 0)) {
#else
        if ((this->type == 2) && (CheckLocalFlag(0xcf) == 0)) {
#endif
            SetTile(0x4072, TILE(this->x.HALF.HI, this->y.HALF.HI - 8), this->collisionLayer);
        }
    }
}

void sub_08069C40(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (sub_08069F90(this) != 0) {
        if ((gPlayerState.flags & PL_MINISH) != 0) {
            sub_08069CB8(this);
        } else {
            this->animationState = GetAnimationState(this);
            sub_08069D00(this);
        }
        this->actionDelay = 0x1e;
    } else {
        this->actionDelay -= 1;
        if (this->actionDelay == 0) {
            this->action = 2;
            this->actionDelay = (Random() & 0x1f) + 0x1e;
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
    if (sub_08069F90(this) == 0) {
        this->actionDelay -= 1;
        if (this->actionDelay != 0) {
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
    if (sub_08069F90(this) != 0) {
        this->action = 1;
    } else {
        this->action = 3;
    }
    this->actionDelay = (Random() & 0x1f) + 0x1e;
}

void sub_08069DF8(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (sub_08069F90(this) != 0) {
        this->action = 1;
    } else {
        this->actionDelay -= 1;
        if (this->actionDelay != 0) {
            sub_08069D00(this);
            return;
        }
        if ((Random() & 0xff) < 0x30) {
            this->action = 2;
        } else {
            this->action = 3;
        }
    }
    this->actionDelay = (Random() & 0x1f) + 0x1e;
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
        sub_080788E0(this);
        EnqueueSFX(0xd1);
        EnqueueSFX(0xcd);
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

u32 sub_08069EF0(Entity* this) {
    if (LoadExtraSpriteData(this, &gUnk_08111D58[this->type * 3]) == 0) {
        return 0;
    }
    this->action = 1;
    this->field_0x68.HWORD = gUnk_08111E30[this->type];
    return 1;
}

void Dog_Head(Entity* this) {
    u32 frame;
    frame = this->frame & 0xffffff7f;
    if (frame != 0) {
        frame = frame + this->field_0x68.HWORD;
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

u32 sub_08069F90(Entity* this) {
    if ((this->type == 2) && (CheckLocalFlag(MACHI_02_DOG) == 0)) {
        return 1;
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
    u32 tmp = -((s32) - (gPlayerState.flags & PL_MINISH) >> 0x1f);
    if (tmp != this->field_0x6a.HALF.LO) {
        if (tmp == 0) {
            sub_08078778(this);
        } else {
            sub_080787A8(this, this->field_0x74.HALF.LO);
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
    ShowNPCDialogue(this, (Dialog*)&gUnk_08111E34 + this->type2 * 10 + gSave.global_progress);
}

void sub_0806A0A4(Entity* this) {
    s32 dialog;

    if (gPlayerState.flags & PL_MINISH) {
        dialog = 4;
        if (CheckLocalFlag(MACHI_02_DOG) == 0) {
            dialog = 3;
            SetLocalFlag(MACHI_02_DOG);
            sub_0807BA8C(TILE(this->x.HALF.HI, this->y.HALF.HI - 8), (u32)this->collisionLayer);
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
    MessageNoOverlap(gUnk_08111F74[(u32)gSave.global_progress * 5 + dialog], this);
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
        if (sub_08069EF0(this) != 0) {
            this->action += 1;
            this->spriteSettings.draw = 1;
            SetDefaultPriority(this, PRIO_MESSAGE);
            InitializeAnimation(this, 0x23);
        }
    } else {
        GetNextFrame(this);
    }
}
