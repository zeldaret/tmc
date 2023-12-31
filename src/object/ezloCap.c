/**
 * @file ezloCap.c
 * @ingroup Objects
 *
 * @brief Ezlo Cap object
 */
#include "functions.h"
#include "message.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x1a];
    /*0x82*/ u16 unk_82;
    /*0x84*/ ScriptExecutionContext* unk_84;
} EzloCapEntity;

void sub_08082D20(EzloCapEntity*, ScriptExecutionContext*);
void sub_08082C5C(EzloCapEntity*);
void EzloCap_Type0Init(EzloCapEntity*);
void EzloCap_Type0Action1(EzloCapEntity*);
void EzloCap_Type1Action1(EzloCapEntity*);
void EzloCap_ScriptedInit(EzloCapEntity*);
void EzloCap_ScriptedAction1(EzloCapEntity*);
void EzloCap_ScriptedAction2(EzloCapEntity*);
void EzloCap_ScriptedAction3(EzloCapEntity*);

void EzloCap(EzloCapEntity* this) {
    static void (*const EzloCap_Type0Actions[])(EzloCapEntity*) = {
        EzloCap_Type0Init,
        EzloCap_Type0Action1,
    };
    static void (*const EzloCap_Type1Actions[])(EzloCapEntity*) = {
        EzloCap_Type0Init,
        EzloCap_Type1Action1,
    };
    static void (*const EzloCap_ScriptedActions[])(EzloCapEntity*) = {
        EzloCap_ScriptedInit,
        EzloCap_ScriptedAction1,
        EzloCap_ScriptedAction2,
        EzloCap_ScriptedAction3,
    };
    void (*ppuVar1[0])(EzloCapEntity*);

    if ((super->flags & ENT_SCRIPTED) != 0) {
        EzloCap_ScriptedActions[super->action](this);
    } else {
        if (super->type == 0) {
            EzloCap_Type0Actions[super->action](this);
        } else {
            EzloCap_Type1Actions[super->action](this);
        }
    }
}

void EzloCap_Type0Init(EzloCapEntity* this) {
    super->updatePriority = 6;
    super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    super->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0 - 1;
    super->palette.b.b0 = gPlayerEntity.base.palette.b.b0;
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    super->action = 1;
    if (gPlayerEntity.base.animationState == 2) {
        super->spriteSettings.flipX = 1;
    }
    LoadSwapGFX(super, 1, 3);
    if (super->type == 0) {
        super->subtimer = 7;
        InitAnimationForceUpdate(super, 7);
        SoundReq(SFX_F3);
    } else {
        super->timer = 0;
        super->subtimer = 10;
        super->y.HALF.HI -= 0xe;
        InitAnimationForceUpdate(super, 0x14);
    }
}

void EzloCap_Type0Action1(EzloCapEntity* this) {
    static const u8 gUnk_0811F16C[] = { 4, 0, 2, 6, 10, 8, 9, 5, 1, 0, 0, 0 };
    u32 tmp = gPlayerEntity.base.palette.b.b0;
    super->palette.b.b0 = tmp;
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        DeleteEntity(super);
        return;
    }
    if ((gMessage.state & MESSAGE_ACTIVE) != 5) {
        if (((gMessage.unk == 0xa) || (gMessage.unk == 0)) || ((gMessage.unk & 0xf) > 9)) {
            if (super->animIndex != (super->subtimer | 3)) {
                InitAnimationForceUpdate(super, super->subtimer | 3);
                return;
            }
        } else {
            if ((gMessage.unk & 0x80) != 0) {
                if ((super->frame & 0x90) != 0) {
                    super->subtimer = gUnk_0811F16C[(s32)Random() % 9];
                    InitAnimationForceUpdate(super, super->subtimer);
                    return;
                }
            } else {
                if (super->animIndex != gUnk_0811F16C[gMessage.unk]) {
                    super->subtimer = gUnk_0811F16C[gMessage.unk];
                    InitAnimationForceUpdate(super, super->subtimer);
                    return;
                }
            }
        }
    }
    if (super->animIndex > 7) {
        super->timer = 1;
    } else {
        super->timer = 0;
    }
    UpdateAnimationSingleFrame(super);
}

void EzloCap_Type1Action1(EzloCapEntity* this) {
    static const u32 gUnk_0811F178[] = { 16, 12, 12, 16, 20 };
    Entity* obj;
    u32 tmp;

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        DeleteThisEntity();
    }
    UpdateAnimationSingleFrame(super);
    if (super->subAction == 0) {
        if (super->subtimer-- == 0) {
            super->timer++;
            super->subtimer = 10;
            tmp = super->timer - 1;
            obj = CreateObjectWithParent(super, SHRINKING_HIEROGLYPHS, tmp, 0);
            super->child = obj;
            if (obj != NULL) {
                if (tmp == 0) {
                    super->parent = obj;
                } else {
                    obj->parent = super->parent;
                }
            }
            if (super->timer == 6) {
                super->subAction = 3;
                super->timer = 60;
                super->parent->type2 = 1;
                InitAnimationForceUpdate(super, 0x1c);
            } else {
                InitAnimationForceUpdate(super, gUnk_0811F178[super->timer - 1]);
                if (super->timer > 2) {
                    super->spriteSettings.flipX = 1;
                }
            }
        }
    } else if ((super->frame & ANIM_DONE) != 0) {
        super->timer = Random() & 3;
        if (super->timer != 0) {
            super->spriteSettings.flipX = Random() & 1;
            InitAnimationForceUpdate(super, super->timer + 0x1b);
        }
    }
}

void EzloCap_ScriptedInit(EzloCapEntity* this) {
    super->updatePriority = 2;
    super->palette.b.b0 = gPlayerEntity.base.palette.b.b0;
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    super->spritePriority.b1 = 3;
    super->spriteSettings.shadow = 1;
    super->action = 1;
    LoadSwapGFX(super, 1, 3);
    InitAnimationForceUpdate(super, 0xc);
    this->unk_82 = 0;
    ExecuteScript(super, this->unk_84);
    sub_08082D20(this, this->unk_84);
    if (gPlayerEntity.base.animationState == 2) {
        super->spriteSettings.flipX = 1;
    }
    sub_08082C5C(this);
}

void EzloCap_ScriptedAction1(EzloCapEntity* this) {
    ExecuteScript(super, this->unk_84);
    sub_08082D20(this, this->unk_84);
    if (super->action < 2) {
        sub_08082C5C(this);
    }
}

void sub_08082C5C(EzloCapEntity* this) {
    static const u8 gUnk_0811F18C[] = { 12, 20, 16, 20 };
    switch (super->subAction) {
        case 0:
            if (super->animIndex != 0x17) {
                InitAnimationForceUpdate(super, 0x17);
                return;
            }
            break;
        case 1:
            if (super->animIndex != 0x18) {
                InitAnimationForceUpdate(super, 0x18);
                return;
            }
            break;
        case 2:
            if ((super->frame & ANIM_DONE) != 0) {
                InitAnimationForceUpdate(super, gUnk_0811F18C[Random() & 3] + (Random() & 3));
                return;
            }
            break;
        case 3:
            if (super->animIndex != 0x13) {
                InitAnimationForceUpdate(super, 0x13);
                return;
            }
            break;
        case 4:
            if (super->animIndex != 0x1a) {
                InitAnimationForceUpdate(super, 0x1a);
                return;
            }
    }
    GravityUpdate(super, Q_8_8(32.0));
    UpdateAnimationSingleFrame(super);
}

void sub_08082D20(EzloCapEntity* this, ScriptExecutionContext* context) {
    while (context->postScriptActions != 0) {
        u32 tmp = (~context->postScriptActions + 1) & context->postScriptActions;
        context->postScriptActions ^= tmp;
        switch (tmp) {
            case 1 << 0x00:
                super->subAction = 0;
                break;
            case 1 << 0x01:
                super->subAction = 1;
                break;
            case 1 << 0x02:
                super->subAction = 2;
                break;
            case 1 << 0x03:
                super->subAction = 3;
                break;
            case 1 << 0x08:
                super->spriteSettings.draw = 0;
                break;
            case 1 << 0x07:
                super->spriteSettings.draw = 1;
                break;
            case 1 << 0x11:
                super->spriteSettings.flipX ^= 1;
                break;
            case 1 << 0x06:
                DeleteThisEntity();
                // fallthrough
            case 1 << 0x14:
                super->action = 2;
                super->subAction = 0;
                return;
            case 1 << 0x15:
                super->subAction = 4;
                super->spriteOffsetX = 4;
                break;
            case 1 << 0x16:
                super->action = 3;
                super->subAction = 0;
                super->spriteOffsetX = 4;
                InitAnimationForceUpdate(super, 0x1b);
                return;
        }
    }
}

void EzloCap_ScriptedAction2(EzloCapEntity* this) {
    ExecuteScript(super, this->unk_84);
    GravityUpdate(super, Q_8_8(24.0));
    switch (super->subAction) {
        case 0:
            if (super->zVelocity < 0) {
                super->subAction = 1;
            }
            break;
        case 1:
            if (super->z.HALF.HI > -10) {
                gActiveScriptInfo.syncFlags |= 2;
                DeleteThisEntity();
            }
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void EzloCap_ScriptedAction3(EzloCapEntity* this) {
    UpdateAnimationSingleFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 1;
        super->subAction = 0;
        super->spriteOffsetX = 0;
        InitAnimationForceUpdate(super, 0x17);
    }
}
