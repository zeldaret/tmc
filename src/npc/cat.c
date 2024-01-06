/**
 * @file cat.c
 * @ingroup NPCs
 *
 * @brief Cat NPC
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unk_69;
    /*0x6a*/ u8 unused[2];
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u8 unk_70;
    /*0x71*/ u8 unk_71;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unk_75;
} CatEntity;

static const Hitbox gUnk_08110EF0 = { 0, -1, { 5, 3, 3, 5 }, 5, 4 };

void sub_08067C44(CatEntity*);
void sub_08067B08(CatEntity*);
bool32 sub_08067D20(CatEntity*);
void sub_08067AAC(CatEntity*);
void sub_08067B34(CatEntity*);
void sub_08067B80(CatEntity*, u32);
void sub_08067B70(CatEntity*);
void sub_08067C24(CatEntity*);
void sub_08067BD4(Entity*);
bool32 sub_08067D74(Entity*);
void sub_08067C18(Entity*);
void sub_08067DCC(CatEntity*, u32);
void sub_08067DDC(Entity*);
void sub_080677EC(CatEntity*);
void sub_080678AC(CatEntity*);
void sub_08067904(CatEntity*);
void sub_0806797C(CatEntity*);
void sub_0806799C(CatEntity*);
void sub_080679C4(CatEntity*);
void sub_08067A0C(CatEntity*);
void sub_08067A78(CatEntity*);
void sub_08067A98(CatEntity*);

extern Hitbox* gUnk_08111154[8];

void sub_08067790(Entity* this) {
    static const Dialog dialogs[][10] = {
        { { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN2, 0x03), TEXT_INDEX(TEXT_TOWN2, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN3, 0x03), TEXT_INDEX(TEXT_TOWN3, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN4, 0x03), TEXT_INDEX(TEXT_TOWN4, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN5, 0x03), TEXT_INDEX(TEXT_TOWN5, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) } },
        { { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN2, 0x03), TEXT_INDEX(TEXT_TOWN2, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN3, 0x03), TEXT_INDEX(TEXT_TOWN3, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN4, 0x03), TEXT_INDEX(TEXT_TOWN4, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN5, 0x03), TEXT_INDEX(TEXT_TOWN5, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) } },
        { { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN2, 0x03), TEXT_INDEX(TEXT_TOWN2, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN3, 0x03), TEXT_INDEX(TEXT_TOWN3, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN4, 0x03), TEXT_INDEX(TEXT_TOWN4, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN5, 0x03), TEXT_INDEX(TEXT_TOWN5, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) } },
        { { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN2, 0x03), TEXT_INDEX(TEXT_TOWN2, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN3, 0x03), TEXT_INDEX(TEXT_TOWN3, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN4, 0x03), TEXT_INDEX(TEXT_TOWN4, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN5, 0x03), TEXT_INDEX(TEXT_TOWN5, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) } },
        { { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN8, 0x17), TEXT_INDEX(TEXT_TOWN8, 0x18) } },
        { { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN, 0x07), TEXT_INDEX(TEXT_TOWN, 0x08) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN2, 0x03), TEXT_INDEX(TEXT_TOWN2, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN3, 0x03), TEXT_INDEX(TEXT_TOWN3, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN4, 0x03), TEXT_INDEX(TEXT_TOWN4, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN5, 0x03), TEXT_INDEX(TEXT_TOWN5, 0x04) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) },
          { 0, 0, DIALOG_MINISH, 1, TEXT_INDEX(TEXT_TOWN6, 0x02), TEXT_INDEX(TEXT_TOWN6, 0x03) } },
    };
    ShowNPCDialogue(this, &dialogs[this->type][gSave.global_progress]);
}

// Main
void Cat(CatEntity* this) {
    static void (*const actionFuncs[9])(CatEntity*) = {
        sub_080677EC, sub_080678AC, sub_08067904, sub_0806797C, sub_0806799C,
        sub_080679C4, sub_08067A0C, sub_08067A78, sub_08067A98,
    };
    actionFuncs[super->action](this);
    sub_08067C44(this);
    if (((super->flags & ENT_COLLIDE) == 0) && (super->type != 5)) {
        sub_0806ED78(super);
    }
}

void sub_080677EC(CatEntity* this) {
    u32 uVar2;

    super->spriteSettings.draw = 1;
    super->direction = 8;
    super->speed = 0x80;
    super->collisionFlags = 7;
    super->hurtType = 0x48;
    super->hitType = -0x58;
    super->collisionMask = 1;
    this->unk_69 = 0xff;
    if (super->x.HALF.HI < gPlayerEntity.base.x.HALF.HI) {
        super->spriteSettings.flipX = 1;
    } else {
        super->spriteSettings.flipX = 0;
    }

    this->fusionOffer = GetFusionToOffer(super);
    super->hitbox = (Hitbox*)&gUnk_08110EF0;
    uVar2 = sub_0805ACC0(super);
    if (uVar2 == 0) {
        uVar2 = super->x.HALF.HI;
    } else {
        uVar2 >>= 0x10;
    }
    this->unk_6c = uVar2;
    this->unk_6e = super->timer + uVar2;
    super->timer = 0;
    this->unk_75 = 0;
    this->unk_74 = (Random() & 0x7f) + 0x1e;
    this->unk_69 = 0xff;
    sub_08067B08(this);
}

void sub_080678AC(CatEntity* this) {
    if (sub_08067D20(this)) {
        sub_08067B80(this, 5);
    } else {
        if (this->unk_72 != 0) {
            this->unk_72--;
        }
        if ((super->frame == 1) && (this->unk_72 == 0)) {
            sub_08067AAC(this);
        } else {
            UpdateAnimationSingleFrame(super);
            if ((super->frame & ANIM_DONE) != 0) {
                sub_08067B34(this);
            }
        }
    }
}

void sub_08067904(CatEntity* this) {
    if (sub_08067D20(this) != 0) {
        sub_08067B80(this, 8);
        return;
    }

    this->unk_72--;
    if (this->unk_72 == 0) {
        sub_08067B70(this);
        return;
    }
    if (super->direction == 8) {
        if (super->x.HALF.HI > this->unk_6e) {
            super->direction = 0x18;
            super->spriteSettings.flipX = 0;
        }
    } else {
        if (super->x.HALF.HI < this->unk_6c) {
            super->direction = 8;
            super->spriteSettings.flipX = 1;
        }
    }
    LinearMoveUpdate(super);
    UpdateAnimationSingleFrame(super);
}

void sub_0806797C(CatEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_08067B08(this);
    }
}

void sub_0806799C(CatEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        sub_08067B08(this);
        SetEntityPriority(super, PRIO_PLAYER);
    }
}

void sub_080679C4(CatEntity* this) {
    if (this->unk_74 == 0 || --this->unk_74 == 0 || sub_08067D20(this) == 0) {
        sub_08067C24(this);
    } else {
        UpdateAnimationSingleFrame(super);
        sub_08067BD4(super);
        if (sub_08067D74(super) != 0) {
            sub_08067C18(super);
        }
    }
}

void sub_08067A0C(CatEntity* this) {
    u8 tmp;

    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        if (sub_08067D20(this)) {
            sub_08067B80(this, 5);
            super->timer += 20;
        } else {
            sub_08067C24(this);
        }
    } else {
        tmp = (super->frame & 7);
        if (tmp != 0) {
            COLLISION_ON(super);
            super->hitbox = gUnk_08111154[tmp - 1 + ((super->spriteSettings.flipX << 2))];
        } else {
            sub_08067DDC(super);
        }
    }
}

void sub_08067A78(CatEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->frame & ANIM_DONE) {
        sub_08067AAC(this);
    }
}

void sub_08067A98(CatEntity* this) {
    if (UpdateFuseInteraction(super) != 0) {
        sub_08067B08(this);
    }
}

static const u16 gUnk_081110FC[4] = {
    60,
    150,
    240,
    400,
};

static const u16 gUnk_08111104[] = {
    180,
    300,
    450,
    600,
};

static const u8 gUnk_0811110C[] = { 0x3c, 0x96, 0x14 };
static const u8 gUnk_0811110F[] = { 0, -4, 8, 8, 0 };

void sub_08067AAC(CatEntity* this) {
    super->action = 2;
    this->unk_72 = gUnk_081110FC[(Random() & 3)];

    super->spriteSettings.flipX = super->direction >> 4 ^ 1;

    sub_08067DCC(this, 3);
    SetInteractableObjectCollision(super, 0, gUnk_0811110C[2], gUnk_0811110F);
}

void sub_08067B08(CatEntity* this) {
    super->action = 1;
    this->unk_72 = gUnk_08111104[Random() & 3];
    sub_08067B34(this);
}

void sub_08067B34(CatEntity* this) {
    sub_08067DCC(this, 0);
    super->frameDuration = (Random() & 0x30) + 0xb4;
    SetInteractableObjectCollision(super, 0, gUnk_0811110C[super->spriteSettings.flipX], gUnk_0811110F);
}

void sub_08067B70(CatEntity* this) {
    super->action = 3;
    sub_08067DCC(this, 4);
}

void sub_08067B80(CatEntity* this, u32 animIndex) {
    super->action = 5;
    super->timer = 20;
    this->unk_74 = (Random() & 0x7f) + 0x1e;
    InitAnimationForceUpdate(super, animIndex);
    sub_08067DDC(super);
    if (super->x.HALF.HI < gPlayerEntity.base.x.HALF.HI) {
        super->spriteSettings.flipX = 1;
    } else {
        super->spriteSettings.flipX = 0;
    }
}

void sub_08067BD4(Entity* this) {
    if (this->spriteSettings.flipX > 0) {
        if (this->x.HALF.HI - 4 > gPlayerEntity.base.x.HALF.HI) {
            this->spriteSettings.flipX = 0;
        }
    } else {
        if (this->x.HALF.HI + 4 < gPlayerEntity.base.x.HALF.HI) {
            this->spriteSettings.flipX = 1;
        }
    }
}

void sub_08067C18(Entity* this) {
    this->action = 6;
    InitAnimationForceUpdate(this, 6);
}

void sub_08067C24(CatEntity* this) {
    super->action = 7;
    this->unk_75 = 0x14;
    sub_08067DDC(super);
    InitAnimationForceUpdate(super, 7);
}

void sub_08067C44(CatEntity* this) {
    s32 iVar4;
    u32 uVar5;

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        uVar5 = TRUE;
    } else {
        uVar5 = FALSE;
    }

    if (uVar5 != this->unk_69) {
        if (uVar5 == 0) {
            AddInteractableWhenBigObject(super);
        } else {
            AddInteractableAsMinishFuser(super, this->fusionOffer);
        }
    }

    this->unk_69 = uVar5;

    if (super->interactType == INTERACTION_NONE) {
        return;
    }

    iVar4 = sub_0806FCA0(super, &gPlayerEntity.base);
    switch (super->animIndex) {
        case 0:
        default:
            if (iVar4 == 2) {
                InitAnimationForceUpdate(super, 2);
            } else {
                InitAnimationForceUpdate(super, 1);
            }
            break;
        case 3:
            if (iVar4 == 1) {
                super->spriteSettings.flipX = 1;
            } else {
                if (super->spriteSettings.flipX == 3) { // TODO 3 ???
                    super->spriteSettings.flipX = 0;
                }
            }
            if (iVar4 != 2) {
                InitAnimationForceUpdate(super, 1);
            } else {
                InitAnimationForceUpdate(super, 2);
            }
            break;
    }

    if (super->interactType == INTERACTION_FUSE) {
        super->action = 8;
        InitializeNPCFusion(super);
    } else {
        super->action = 4;
        sub_08067790(super);
        SetEntityPriority(super, PRIO_MESSAGE);
    }
    super->interactType = INTERACTION_NONE;
    SoundReq(SFX_VO_CAT);
}

bool32 sub_08067D20(CatEntity* this) {
    s32 tmp;
    Entity* entity;
    int iVar4;
    if (this->unk_75 != 0) {
        this->unk_75--;
    } else {
        entity = sub_08049DF4(2);
        if (entity != NULL) {
            iVar4 = super->spriteSettings.flipX ? 0x10 : 0x28;
            if (((u32)(entity->x.HALF.HI - (super->x.HALF.HI - iVar4)) < 0x31) &&
                ((((u32)entity->y.HALF.HI) - (super->y.HALF.HI - 4)) < 0x39)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

bool32 sub_08067D74(Entity* this) {
    Entity* entity;
    int iVar2;

    if (this->type != 5) {
        if (this->timer != 0) {
            this->timer--;
        }
        entity = sub_08049DF4(2);
        if (entity != NULL) {
            iVar2 = this->spriteSettings.flipX ? 0x8 : 0x18;
            if ((((u32)(entity->x.HALF.HI - (this->x.HALF.HI - iVar2)) < 0x1f) &&
                 ((u32)(entity->y.HALF.HI - this->y.HALF.HI) < 0x17)) &&
                (this->timer == 0)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

void sub_08067DCC(CatEntity* this, u32 animIndex) {
    this->unk_71 = animIndex;
    InitAnimationForceUpdate(super, animIndex);
}

void sub_08067DDC(Entity* this) {
    COLLISION_OFF(this);
    this->contactFlags = 0;
    this->iframes = 0;
    this->hitbox = (Hitbox*)&gUnk_08110EF0;
}

void Cat_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 5);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
