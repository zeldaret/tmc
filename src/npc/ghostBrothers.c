#include "entity.h"
#include "functions.h"
#include "save.h"
#include "screen.h"
#include "message.h"
#include "npc.h"

extern void (*const gUnk_0811017C[])(Entity*);

extern void (*const gUnk_08110274[])(Entity*);

extern Dialog gUnk_08110280[];

extern u32 gSpriteAnimations_GhostBrothers[];

extern u32 gUnk_08110188;
extern s8 gUnk_0811015C[8];

extern u8 gUnk_02018EB0[];
extern u8 gUnk_0811022E[];

void sub_08065C0C(Entity* this);
static EntityAction* const gUnk_08110164[];

void GhostBrothers(Entity* this) {
    if (this->flags & ENT_SCRIPTED) {
        sub_08065C0C(this);
    } else {
        gUnk_08110164[this->type](this);

        if (this->type < 3) {
            s8* ptr = gUnk_0811015C;
            u32 field_0xf = this->field_0xf++;
            this->z.HALF_U.HI = *(ptr + (((field_0xf << 0x18) >> 0x1b) & 0x7));
        }
    }
}

void sub_08065BF4(Entity* this) {
    gUnk_0811017C[this->action](this);
}

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
            if (--this->actionDelay != 0) {
                return;
            }

            puVar3 = *(u16**)&this->field_0x6c.HWORD;
            if (*puVar3 != 0xffff) {
                gScreen.controls.alphaBlend = *puVar3;
                this->actionDelay = (u8) * (++puVar3);
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
    this->actionDelay = 0x1e;
    this->spriteRendering.alphaBlend = 1;
    *(u32**)&this->field_0x6c = (u32*)gUnk_0811022E;
    gScreen.controls.layerFXControl = 0x3f40;
    gScreen.controls.alphaBlend = 0x10;
}

void sub_08065D00(Entity* this) {
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
}

void sub_08065D18(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x1e;
    this->field_0xf = 0;
    this->spriteSettings.draw = 1;
    this->spriteRendering.alphaBlend = 1;
    *(u32**)&this->field_0x6c = &gUnk_08110188;
    SetDefaultPriority(this, PRIO_MESSAGE);
    InitAnimationForceUpdate(this, 2);
    gScreen.controls.layerFXControl = 0x3f40;
    gScreen.controls.alphaBlend = 0x1000;
}

void sub_08065D74(Entity* this) {
    u16* ptr;
    if (--this->actionDelay) {
        return;
    }

    ptr = *(u16**)&this->field_0x6c;
    if (*ptr != 0xffff) {
        gScreen.controls.alphaBlend = *ptr;
        this->actionDelay = *(ptr + 1);
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
                this->actionDelay = 0x3c;
                InitAnimationForceUpdate(this, 4);
            }
            break;
        }
        case 1: {
            if (--this->actionDelay == 0) {
                this->subAction++;
                this->actionDelay = 0xb4;
                gUnk_02018EB0[1]++;
                InitAnimationForceUpdate(this, 2);
            }
            break;
        }
        case 2:
            break;
        case 3: {
            if (--this->actionDelay == 0) {
                MessageFromTarget(0);
                this->subAction++;
            }
            break;
        }
        case 4: {
            if ((gMessage.doTextBox & 0x7f) == 0) {
                this->subAction++;
                this->actionDelay = 0x1e;
                *(u8**)&this->field_0x6c = gUnk_0811022E;
            }
            break;
        }
        default: {
            if (--this->actionDelay == 0) {
                u16* puVar3 = *(u16**)&this->field_0x6c.HWORD;
                if (*puVar3 != 0xffff) {
                    gScreen.controls.alphaBlend = *puVar3;
                    this->actionDelay = (u8) * (puVar3 + 1);
                    *(u16**)&this->field_0x6c = (puVar3 + 2);
                } else {
                    gUnk_02018EB0[0]++;
                    DeleteThisEntity();
                }
            }
            break;
        }
    }

    UpdateAnimationSingleFrame(this);
}

void sub_08065EBC(Entity* this) {
    gUnk_08110274[this->action](this);
    sub_0806ED78(this);
}

void sub_08065EDC(Entity* this) {
    if (--this->actionDelay == 0) {
        u16* puVar3 = *(u16**)&this->field_0x6c.HWORD;
        if (*puVar3 != 0xffff) {
            gScreen.controls.alphaBlend = *puVar3;
            this->actionDelay = (u8) * (++puVar3);
            *(u16**)&this->field_0x6c = (++puVar3);
        } else {
            this->action++;
            sub_08078778(this);
        }
    }
}

void sub_08065F20(Entity* this) {
    UpdateAnimationSingleFrame(this);
    if (this->interactType != 0) {
        this->interactType = 0;
        MessageFromTarget(0);
        this->animIndex += 1;
        if (gSpriteAnimations_GhostBrothers[this->animIndex] == 0) {
            this->animIndex = 0;
        }
        InitAnimationForceUpdate(this, this->animIndex);
    }
}

void sub_08065F64(Entity* this) {
    s32 tmp = gSave.global_progress - 2;
    if (tmp < 0) {
        tmp = 0;
    }
    ShowNPCDialogue(this, gUnk_08110280 + this->type * 8 + tmp);
}

void GhostBrothers_Fusion(Entity* this) {
    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.draw = 1;
        InitAnimationForceUpdate(this, 2);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}
