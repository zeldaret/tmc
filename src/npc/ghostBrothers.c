#include "entity.h"
#include "functions.h"
#include "save.h"
#include "screen.h"
#include "message.h"
#include "npc.h"

extern u32 gSpriteAnimations_GhostBrothers[];

void sub_08065C0C(Entity* this);
void sub_08065BF4(Entity* this);
void sub_08065EBC(Entity* this);
void sub_08065D18(Entity* this);
void sub_08065D74(Entity* this);
void sub_08065DB8(Entity* this);
void sub_08065D18(Entity* this);
void sub_08065EDC(Entity* this);
void sub_08065F20(Entity* this);

void GhostBrothers(Entity* this) {
    static const s8 gUnk_0811015C[8] = { -14, -16, -18, -20, -22, -20, -18, -16 };
    static EntityAction* const actionFuncs[] = {
        sub_08065BF4, sub_08065BF4, sub_08065BF4, sub_08065BF4, sub_08065EBC, sub_08065EBC,
    };
    if (this->flags & ENT_SCRIPTED) {
        sub_08065C0C(this);
    } else {
        actionFuncs[this->type](this);

        if (this->type < 3) {
            const s8* ptr = gUnk_0811015C;
            u32 subtimer = this->subtimer++;
            this->z.HALF_U.HI = *(ptr + (((subtimer << 0x18) >> 0x1b) & 0x7));
        }
    }
}

void sub_08065BF4(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08065D18,
        sub_08065D74,
        sub_08065DB8,
    };
    actionFuncs[this->action](this);
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

void sub_08065C0C(Entity* this) {
    u16* puVar3;

    switch (this->action) {
        case 0:
            this->action = 1;
            this->spriteSettings.draw = 1;
            sub_0807DD50(this);
            break;
        case 1:
            if (this->interactType == 2) {
                this->action = 2;
                this->interactType = 0;
                InitAnimationForceUpdate(this, sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity)));
                sub_0806F118(this);
            } else {
                sub_0807DD94(this, NULL);
            }
            break;
        case 2:
            if (UpdateFuseInteraction(this) == 0) {
                return;
            }

            this->action = 1;
            break;
        case 3:
            if (--this->timer != 0) {
                return;
            }

            puVar3 = *(u16**)&this->field_0x6c.HWORD;
            if (*puVar3 != 0xffff) {
                gScreen.controls.alphaBlend = *puVar3;
                this->timer = (u8) * (++puVar3);
                *(u16**)&this->field_0x6c = ++puVar3;
                return;
            }

            this->spriteSettings.draw = 0;

            this->action = 1;
            break;
    }
}

void sub_08065CCC(Entity* this) {
    this->action = 3;
    this->timer = 30;
    this->spriteRendering.alphaBlend = 1;
    *(const u16**)&this->field_0x6c = gUnk_0811022E;
    gScreen.controls.layerFXControl = 0x3f40;
    gScreen.controls.alphaBlend = 0x10;
}

void GhostBrothers_MakeInteractable(Entity* this) {
    this->field_0x68.HALF.LO = GetFusionToOffer(this);
    AddInteractableWhenBigFuser(this, this->field_0x68.HALF.LO);
}

void sub_08065D18(Entity* this) {
    this->action = 1;
    this->timer = 30;
    this->subtimer = 0;
    this->spriteSettings.draw = 1;
    this->spriteRendering.alphaBlend = 1;
    *(const u16**)&this->field_0x6c = gUnk_08110188;
    SetDefaultPriority(this, PRIO_MESSAGE);
    InitAnimationForceUpdate(this, 2);
    gScreen.controls.layerFXControl = 0x3f40;
    gScreen.controls.alphaBlend = 0x1000;
}

void sub_08065D74(Entity* this) {
    u16* ptr;
    if (--this->timer) {
        return;
    }

    ptr = *(u16**)&this->field_0x6c;
    if (*ptr != 0xffff) {
        gScreen.controls.alphaBlend = *ptr;
        this->timer = *(ptr + 1);
        *(u32*)&this->field_0x6c = (u32)(ptr + 2);
    } else {
        this->action++;
        MessageFromTarget(0);
    }
}

void sub_08065DB8(Entity* this) {
    switch (this->subAction) {
        case 0: {
            if ((gMessage.doTextBox & 0x7f) == 0) {
                this->subAction++;
                this->timer = 60;
                InitAnimationForceUpdate(this, 4);
            }
            break;
        }
        case 1: {
            if (--this->timer == 0) {
                this->subAction++;
                this->timer = 180;
                gUnk_02018EB0.unk_1++;
                InitAnimationForceUpdate(this, 2);
            }
            break;
        }
        case 2:
            break;
        case 3: {
            if (--this->timer == 0) {
                MessageFromTarget(0);
                this->subAction++;
            }
            break;
        }
        case 4: {
            if ((gMessage.doTextBox & 0x7f) == 0) {
                this->subAction++;
                this->timer = 30;
                *(const u16**)&this->field_0x6c = gUnk_0811022E;
            }
            break;
        }
        default: {
            if (--this->timer == 0) {
                u16* puVar3 = *(u16**)&this->field_0x6c.HWORD;
                if (*puVar3 != 0xffff) {
                    gScreen.controls.alphaBlend = *puVar3;
                    this->timer = (u8) * (puVar3 + 1);
                    *(u16**)&this->field_0x6c = (puVar3 + 2);
                } else {
                    gUnk_02018EB0.unk_0++;
                    DeleteThisEntity();
                }
            }
            break;
        }
    }

    UpdateAnimationSingleFrame(this);
}

void sub_08065EBC(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08065D18,
        sub_08065EDC,
        sub_08065F20,
    };
    actionFuncs[this->action](this);
    sub_0806ED78(this);
}

void sub_08065EDC(Entity* this) {
    if (--this->timer == 0) {
        u16* puVar3 = *(u16**)&this->field_0x6c.HWORD;
        if (*puVar3 != 0xffff) {
            gScreen.controls.alphaBlend = *puVar3;
            this->timer = (u8) * (++puVar3);
            *(u16**)&this->field_0x6c = (++puVar3);
        } else {
            this->action++;
            AddInteractableWhenBigObject(this);
        }
    }
}

void sub_08065F20(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->interactType != 0) {
        this->interactType = 0;
        MessageFromTarget(0);
        this->animIndex++;
        if (gSpriteAnimations_GhostBrothers[this->animIndex] == 0) {
            this->animIndex = 0;
        }
        InitAnimationForceUpdate(this, this->animIndex);
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
