/**
 * @file ghostBrothers.c
 * @ingroup NPCs
 *
 * @brief Ghost Brothers NPC
 */
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "npc.h"
#include "save.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 fusionOffer;
    /*0x69*/ u8 unused[3];
    /*0x6c*/ const u16* unk_6c;
} GhostBrothersEntity;

extern u32 gSpriteAnimations_GhostBrothers[];

void sub_08065C0C(GhostBrothersEntity* this);
void sub_08065BF4(GhostBrothersEntity* this);
void sub_08065EBC(GhostBrothersEntity* this);
void sub_08065D18(GhostBrothersEntity* this);
void sub_08065D74(GhostBrothersEntity* this);
void sub_08065DB8(GhostBrothersEntity* this);
void sub_08065EDC(GhostBrothersEntity* this);
void sub_08065F20(GhostBrothersEntity* this);

void GhostBrothers(GhostBrothersEntity* this) {
    static const s8 gUnk_0811015C[8] = { -14, -16, -18, -20, -22, -20, -18, -16 };
    static void (*const actionFuncs[])(GhostBrothersEntity*) = {
        sub_08065BF4, sub_08065BF4, sub_08065BF4, sub_08065BF4, sub_08065EBC, sub_08065EBC,
    };
    if (super->flags & ENT_SCRIPTED) {
        sub_08065C0C(this);
    } else {
        actionFuncs[super->type](this);

        if (super->type < 3) {
            const s8* ptr = gUnk_0811015C;
            u32 subtimer = super->subtimer++;
            super->z.HALF_U.HI = *(ptr + (((subtimer << 0x18) >> 0x1b) & 0x7));
        }
    }
}

void sub_08065BF4(GhostBrothersEntity* this) {
    static void (*const actionFuncs[])(GhostBrothersEntity*) = {
        sub_08065D18,
        sub_08065D74,
        sub_08065DB8,
    };
    actionFuncs[super->action](this);
}

static const u16 gUnk_08110188[] = { 0x1000, 0x4,  0xf01, 0x4, 0xe02,  0x4,  0xd03, 0x4, 0xc04, 0x8,  0xd03, 0x4,
                                     0xe02,  0x4,  0xf01, 0x4, 0x1000, 0x14, 0xf01, 0x4, 0xe02, 0x4,  0xd03, 0x4,
                                     0xc04,  0x4,  0xb05, 0x4, 0xa06,  0x4,  0x907, 0x4, 0x808, 0x8,  0x907, 0x4,
                                     0xa06,  0x4,  0xb05, 0x4, 0xc04,  0x4,  0xd03, 0x4, 0xe02, 0x4,  0xf01, 0x4,
                                     0x1000, 0x14, 0xf01, 0x4, 0xe02,  0x4,  0xd03, 0x4, 0xc04, 0x4,  0xb05, 0x4,
                                     0xa06,  0x4,  0x907, 0x4, 0x808,  0x4,  0x709, 0x4, 0x60a, 0x4,  0x50b, 0x4,
                                     0x40c,  0x4,  0x30d, 0x4, 0x20e,  0x4,  0x10f, 0x4, 0x10,  0x1e, 0xffff };
static const u16 gUnk_0811022E[] = { 0x10,  0x2, 0x10f, 0x2, 0x20e, 0x2, 0x30d, 0x2, 0x40c,  0x2, 0x50b, 0x2,
                                     0x60a, 0x2, 0x709, 0x2, 0x808, 0x2, 0x907, 0x2, 0xa06,  0x2, 0xb05, 0x2,
                                     0xc04, 0x2, 0xd03, 0x2, 0xe02, 0x2, 0xf01, 0x2, 0x1000, 0x2, 0xffff };

void sub_08065C0C(GhostBrothersEntity* this) {
    const u16* puVar3;

    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            InitScriptForNPC(super);
            break;
        case 1:
            if (super->interactType == INTERACTION_FUSE) {
                super->action = 2;
                super->interactType = INTERACTION_NONE;
                InitAnimationForceUpdate(
                    super, GetAnimationStateForDirection4(GetFacingDirection(super, &gPlayerEntity.base)));
                InitializeNPCFusion(super);
            } else {
                ExecuteScriptAndHandleAnimation(super, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(super) == 0) {
                return;
            }

            super->action = 1;
            break;
        case 3:
            if (--super->timer != 0) {
                return;
            }

            puVar3 = this->unk_6c;
            if (*puVar3 != 0xffff) {
                gScreen.controls.alphaBlend = *puVar3;
                super->timer = (u8) * (++puVar3);
                this->unk_6c = ++puVar3;
                return;
            }

            super->spriteSettings.draw = 0;

            super->action = 1;
            break;
    }
}

void sub_08065CCC(GhostBrothersEntity* this) {
    super->action = 3;
    super->timer = 30;
    super->spriteRendering.alphaBlend = 1;
    this->unk_6c = gUnk_0811022E;
    gScreen.controls.layerFXControl = 0x3f40;
    gScreen.controls.alphaBlend = 0x10;
}

void GhostBrothers_MakeInteractable(GhostBrothersEntity* this) {
    this->fusionOffer = GetFusionToOffer(super);
    AddInteractableWhenBigFuser(super, this->fusionOffer);
}

void sub_08065D18(GhostBrothersEntity* this) {
    super->action = 1;
    super->timer = 30;
    super->subtimer = 0;
    super->spriteSettings.draw = 1;
    super->spriteRendering.alphaBlend = 1;
    this->unk_6c = gUnk_08110188;
    SetEntityPriority(super, PRIO_MESSAGE);
    InitAnimationForceUpdate(super, 2);
    gScreen.controls.layerFXControl = 0x3f40;
    gScreen.controls.alphaBlend = 0x1000;
}

void sub_08065D74(GhostBrothersEntity* this) {
    const u16* ptr;
    if (--super->timer) {
        return;
    }

    ptr = this->unk_6c;
    if (*ptr != 0xffff) {
        gScreen.controls.alphaBlend = *ptr;
        super->timer = *(ptr + 1);
        this->unk_6c = (ptr + 2);
    } else {
        super->action++;
        MessageFromTarget(0);
    }
}

void sub_08065DB8(GhostBrothersEntity* this) {
    switch (super->subAction) {
        case 0: {
            if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
                super->subAction++;
                super->timer = 60;
                InitAnimationForceUpdate(super, 4);
            }
            break;
        }
        case 1: {
            if (--super->timer == 0) {
                super->subAction++;
                super->timer = 180;
                gUnk_02018EB0.unk_1++;
                InitAnimationForceUpdate(super, 2);
            }
            break;
        }
        case 2:
            break;
        case 3: {
            if (--super->timer == 0) {
                MessageFromTarget(0);
                super->subAction++;
            }
            break;
        }
        case 4: {
            if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
                super->subAction++;
                super->timer = 30;
                this->unk_6c = gUnk_0811022E;
            }
            break;
        }
        default: {
            if (--super->timer == 0) {
                const u16* puVar3 = this->unk_6c;
                if (*puVar3 != 0xffff) {
                    gScreen.controls.alphaBlend = *puVar3;
                    super->timer = (u8) * (puVar3 + 1);
                    this->unk_6c = (puVar3 + 2);
                } else {
                    gUnk_02018EB0.unk_0++;
                    DeleteThisEntity();
                }
            }
            break;
        }
    }

    UpdateAnimationSingleFrame(super);
}

void sub_08065EBC(GhostBrothersEntity* this) {
    static void (*const actionFuncs[])(GhostBrothersEntity*) = {
        sub_08065D18,
        sub_08065EDC,
        sub_08065F20,
    };
    actionFuncs[super->action](this);
    sub_0806ED78(super);
}

void sub_08065EDC(GhostBrothersEntity* this) {
    if (--super->timer == 0) {
        const u16* puVar3 = this->unk_6c;
        if (*puVar3 != 0xffff) {
            gScreen.controls.alphaBlend = *puVar3;
            super->timer = (u8) * (++puVar3);
            this->unk_6c = (++puVar3);
        } else {
            super->action++;
            AddInteractableWhenBigObject(super);
        }
    }
}

void sub_08065F20(GhostBrothersEntity* this) {
    UpdateAnimationSingleFrame(super);
    if (super->interactType != INTERACTION_NONE) {
        super->interactType = INTERACTION_NONE;
        MessageFromTarget(0);
        super->animIndex++;
        if (gSpriteAnimations_GhostBrothers[super->animIndex] == 0) {
            super->animIndex = 0;
        }
        InitAnimationForceUpdate(super, super->animIndex);
    }
}

void sub_08065F64(Entity* this) {
    static const Dialog dialogs[][8] = {
        { { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TINGLE, 0x31) } } },
        { { 4, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x17), TEXT_INDEX(TEXT_TOWN, 0x16) } },
          { 4, DIALOG_ROOM_FLAG, DIALOG_TOGGLE_FLAG, 1, { TEXT_INDEX(TEXT_TOWN, 0x17), TEXT_INDEX(TEXT_TOWN, 0x16) } },
          { 4,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN2, 0x13), TEXT_INDEX(TEXT_TOWN2, 0x12) } },
          { 4,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN3, 0x13), TEXT_INDEX(TEXT_TOWN3, 0x12) } },
          { 4,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN4, 0x13), TEXT_INDEX(TEXT_TOWN4, 0x12) } },
          { 4,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN5, 0x13), TEXT_INDEX(TEXT_TOWN5, 0x12) } },
          { 4,
            DIALOG_ROOM_FLAG,
            DIALOG_TOGGLE_FLAG,
            1,
            { TEXT_INDEX(TEXT_TOWN6, 0x12), TEXT_INDEX(TEXT_TOWN6, 0x11) } },
          { 0, 0, DIALOG_NORMAL, 1, { 0, TEXT_INDEX(TEXT_TOWN7, 0x3) } } },
    };
    s32 tmp = gSave.global_progress - 2;
    if (tmp < 0) {
        tmp = 0;
    }
    ShowNPCDialogue(this, &dialogs[this->type][tmp]);
}

void GhostBrothers_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
