/**
 * @file figurineDevice.c
 * @ingroup Objects
 *
 * @brief Figurine Device object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "message.h"
#include "fileselect.h"
#include "screen.h"
#include "item.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x10];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
#ifdef EU
    /*0x7c*/ u8 unk_80;
    /*0x7d*/ u8 unk_7c;
    /*0x7e*/ u8 unk_7d;
    /*0x7f*/ u8 unk_7e[2];
#else
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unk_7e[2];
    /*0x80*/ u8 unk_80;
#endif
    /*0x81*/ u8 unk_81;
    /*0x82*/ s8 unk_82;
#ifdef EU
    /*0x83*/ u8 unk_83;
#else
    /*0x83*/ s8 unk_83;
#endif
} FigurineDeviceEntity;

extern void ModShells(s32);
extern u8 gUnk_020227F0;
typedef struct {
    u32 unk_0;
    u16 unk_4;
    u8 unk_6;
    u8 unk_7;
} struct_080FC3E4;
extern const struct_080FC3E4 gUnk_080FC3E4[];

void sub_0808804C(FigurineDeviceEntity*);
void sub_08087F58(FigurineDeviceEntity*);
void sub_08088328(FigurineDeviceEntity*);
void sub_0808826C(FigurineDeviceEntity*);
void sub_080882A8(FigurineDeviceEntity*);
void sub_080880D8(FigurineDeviceEntity*);
void sub_08087F94(FigurineDeviceEntity*, s32);
void sub_08088034(FigurineDeviceEntity*);
bool32 sub_08088160(FigurineDeviceEntity*, s32);
void sub_08088424(FigurineDeviceEntity*);
void FigurineDevice_Init(FigurineDeviceEntity*);
void FigurineDevice_Action1(FigurineDeviceEntity*);
void FigurineDevice_Action2(FigurineDeviceEntity*);
void FigurineDevice_Action3(FigurineDeviceEntity*);
void FigurineDevice_Action4(FigurineDeviceEntity*);

void FigurineDevice(FigurineDeviceEntity* this) {

    static void (*const FigurineDevice_Actions[])(FigurineDeviceEntity*) = {
        FigurineDevice_Init,    FigurineDevice_Action1, FigurineDevice_Action2,
        FigurineDevice_Action3, FigurineDevice_Action4,
    };

    FigurineDevice_Actions[super->action](this);
}

void FigurineDevice_Init(FigurineDeviceEntity* this) {
    Entity* entity;

    super->action = super->type + 1;
    switch (super->type) {
        case 0:
            if (CheckLocalFlag(SHOP07_TANA)) {
                this->unk_7a = 1;
                sub_080787B4(super);
            } else {
                this->unk_7a = 0;
            }
            super->spriteRendering.b3 = 3;
            super->spritePriority.b0 = 7;
            this->unk_78 = COORD_TO_TILE(super);
            sub_08087F58(this);
            break;
        case 1:
            entity = CreateObject(FIGURINE_DEVICE, 3, 0);
            if (entity != NULL) {
                entity->parent = super;
                super->child = entity;
            }
            this->unk_7a = 0;
            super->spriteRendering.b3 = 3;
            super->spritePriority.b0 = 7;
            this->unk_78 = COORD_TO_TILE(super);
            sub_08087F58(this);
            break;

        case 2:
            this->unk_7a = 0;
            SetDefaultPriority(super, 7);
            InitializeAnimation(super, 1);
            break;
        case 3:
            super->actionDelay = 0x1e;
            super->field_0xf = 0;
            this->unk_81 = 1;
            this->unk_7a = 0;
            this->unk_7b = 0;
            this->unk_80 = 0;
            sub_0808804C(this);
            SetDefaultPriority(super, 6);
            break;
    }
}

void FigurineDevice_Action1(FigurineDeviceEntity* this) {
    switch (this->unk_7a) {
        case 0:
            this->unk_7a = 1;
            sub_080787B4(super);
            break;
        case 1:
            if (super->interactType != 0) {
                super->interactType = 0;
                ResetPlayerAnimationAndAction();
                if (CheckLocalFlag(SHOP07_TANA)) {
                    this->unk_7a = 2;
                    SetRoomFlag(2);
                    MenuFadeIn(7, 0xff);
                } else {
                    SetRoomFlag(5);
                }
            }
            break;
        case 2:
        default:
            if (CheckRoomFlag(2) == 0) {
                this->unk_7a = 1;
                sub_080787B4(super);
            }
            break;
    }
}

void FigurineDevice_Action2(FigurineDeviceEntity* this) {
    Entity* entity;
    const u8* ptr;

    switch (this->unk_7a) {
        case 0:
            if (CheckRoomFlag(0)) {
                if (CheckLocalFlag(SHOP07_TANA)) {
                    this->unk_7a = 1;
                } else {
                    this->unk_7a = 2;
                }
            }
            break;
        case 2:
            SetLocalFlag(SHOP07_TANA);
        case 1:
            this->unk_7a = 0;
            sub_08088328((FigurineDeviceEntity*)super->child);
            ClearRoomFlag(0);
            entity = CreateObject(FIGURINE_DEVICE, 2, 0);
            if (entity != NULL) {
                entity->parent = super;
                entity->field_0xf = this->unk_7d;
                ptr = (u8*)gUnk_080FC3E4; // FIXME use struct
                entity->type2 = ptr[(entity->field_0xf << 3) + 7];
                PositionRelative(super, entity, 0x80000, 0x70000);
            }
            EnqueueSFX(SFX_111);
            break;
    }
}

void FigurineDevice_Action3(FigurineDeviceEntity* this) {
    static const u8 gUnk_08120AA8[] = {
        0,
        1,
        2,
        4,
    };

    GetNextFrame(super);
    switch (this->unk_7a) {
        case 0:
            if ((super->frame & ANIM_DONE) != 0) {
                this->unk_7a = 1;
                super->actionDelay = 0x28;
                ChangeObjPalette(super, gUnk_08120AA8[super->type2]);
                InitializeAnimation(super, 2);
                SoundReq(SFX_110);
            }
            break;

        case 1:
            if (((super->frame & ANIM_DONE) != 0) && (--super->actionDelay == 0)) {
                this->unk_7a = 2;
                SetRoomFlag(2);
                MenuFadeIn(7, super->field_0xf);
            }
            break;
        case 2:
        default:
            if (!CheckRoomFlag(2)) {
                super->spriteSettings.draw = 0;
#ifdef EU
                ClearRoomFlag(9);
#else
                ClearRoomFlag(4);
#endif
                DeleteThisEntity();
            }
            break;
    }
}

void FigurineDevice_Action4(FigurineDeviceEntity* this) {
    u8 old_81;
    s32 tmp;

    switch (this->unk_7a) {
        case 0:
            if (this->unk_7b == 4) {
                if (!CheckRoomFlag(1)) {
                    return;
                }
                this->unk_7a = 1;
                this->unk_81 = 1;
                ClearRoomFlag(1);
                sub_0808826C(this);
                sub_080882A8(this);
            } else {
                sub_080880D8(this);
            }
            break;
        case 1:
            if (super->actionDelay != 0) {
                super->actionDelay--;
            }
            if ((gInput.newKeys & 1) != 0) {
                SoundReq(SFX_TEXTBOX_SELECT);
                this->unk_7a = 2;
                super->actionDelay = 0x3c;
                sub_08050384();
                return;
            }
            old_81 = this->unk_81;
#ifndef EU
            if ((gInput.heldKeys & 0x100) != 0) {
                tmp = 10;
            } else {
                tmp = 1;
            }
#ifdef JP
            switch (gInput.unk4) {
#else
            switch (gInput.unk4 & 0xfffffeff) {
#endif
                case 0x40:
                    sub_08087F94(this, tmp);
                    break;
                case 0x80:
                    sub_08087F94(this, -tmp);
                    break;
            }
            if (old_81 != this->unk_81) {
                sub_080882A8(this);
            }
#else
            switch (gInput.unk4) {
                case 0x40:
                    sub_08087F94(this, 1);
                    break;
                case 0x80:
                    sub_08087F94(this, -1);
                    break;
            }
            if (old_81 != this->unk_81) {
                sub_080882A8(this);
            }
#endif
            break;
        case 2:
            this->unk_7a = 0;
            this->unk_7b = 4;
            SetRoomFlag(3);
            MessageFromTarget(0x431a);
#ifndef EU
            gMessage.textWindowPosX = 1;
            gMessage.textWindowPosY = 0xc;
#endif
            gMessage.rupees = this->unk_81;
            break;
    }
}

void sub_08087F58(FigurineDeviceEntity* this) {
    switch (super->type) {
        case 0:
        case 1:
            SetTile(0x4022, this->unk_78 - 1, 1);
            SetTile(0x4022, this->unk_78, 1);
            SetTile(0x4022, this->unk_78 + 1, 1);
            break;
    }
}

ASM_FUNC("asm/non_matching/figurineDevice/sub_08087F94.inc", void sub_08087F94(FigurineDeviceEntity* this, s32 param_2))

void sub_08088034(FigurineDeviceEntity* this) {
    if (super->actionDelay == 0) {
        super->actionDelay = 0x14;
        SoundReq(SFX_MENU_ERROR);
    }
}

void sub_0808804C(FigurineDeviceEntity* this) {
    u8 result = 0;
    if (gSave.saw_staffroll) {
        result = 9;
    } else if (CheckGlobalFlag(LV5_CLEAR)) {
        result = 7;
    } else if (CheckLocalFlagByBank(FLAG_BANK_9, LV5_31_CAP_0)) {
        result = 6;
    } else if (CheckLocalFlagByBank(FLAG_BANK_3, OUBO_KAKERA)) {
        result = 5;
    } else if (CheckGlobalFlag(LV4_CLEAR)) {
        result = 4;
    } else if (CheckGlobalFlag(LV3_CLEAR)) {
        result = 3;
    } else if (CheckLocalFlagByBank(FLAG_BANK_1, SOUGEN_08_TORITSUKI)) {
        result = 2;
    } else if (CheckGlobalFlag(LV2_CLEAR)) {
        result = 1;
    }
    this->unk_7c = result;
}

void sub_080880D8(FigurineDeviceEntity* this) {
    static const u8 gUnk_08120AAC[] = {
        1, 37, 68, 100, 137, 0, 0, 0,
    };

    const u8* ptr = &gUnk_08120AAC[this->unk_7b];
    u32 it = ptr[0];
    while (it < ptr[1]) {
        if (sub_08088160(this, it)) {
            this->unk_80++;
        }
        it++;
    }
    if (++this->unk_7b == 4) {
        if (gSave.field_0x9[0] != this->unk_80) {
            if (gSave.field_0x9[0] != 0) {
                SetRoomFlag(6);
            }
            gSave.field_0x9[0] = this->unk_80;
        }
        if (CheckLocalFlag(SHOP07_COMPLETE) && (this->unk_80 != gSave.stats.filler[0])) {
            ClearLocalFlag(SHOP07_COMPLETE);
        }
    }
}

ASM_FUNC("asm/non_matching/figurineDevice/sub_08088160.inc",
         bool32 sub_08088160(FigurineDeviceEntity* this, s32 param_2))

void sub_0808826C(FigurineDeviceEntity* this) {
    s32 tmp = 0x64;
    tmp *= ((this->unk_80 - gSave.stats.filler[0]));
    tmp = tmp / this->unk_80;
    if (tmp == 0 && !CheckLocalFlag(SHOP07_COMPLETE)) {
        tmp = 1;
    }
    this->unk_83 = tmp;
    this->unk_82 = this->unk_83;
}

void sub_080882A8(FigurineDeviceEntity* this) {
#ifdef EU
    static const u8 gUnk_08120AB4[] = {
        206, 79, 3, 2, 0, 208, 0, 6, 0, 13, 0, 2, 0, 0, 0, 0, 128, 240, 104, 56, 2, 0, 1, 0,
    };
    static const u8 gUnk_08120ACC[] = {
        206, 79, 3, 2, 0, 208, 0, 6, 0, 13, 0, 2, 0, 0, 0, 0, 128, 240, 208, 59, 2, 0, 1, 0,
    };
#else
    static const u8 gUnk_08120AB4[] = {
        206, 79, 3, 2, 0, 208, 0, 6, 0, 13, 0, 2, 0, 0, 0, 0, 128, 240, 104, 136, 2, 0, 1, 0,
    };
    static const u8 gUnk_08120ACC[] = {
        206, 79, 3, 2, 0, 208, 0, 6, 0, 13, 0, 2, 0, 0, 0, 0, 128, 240, 208, 139, 2, 0, 1, 0,
    };
#endif
    static const u16 gUnk_08120AE4[] = { 0x4318, 0x4319 };
    u8* ptr;
    sub_08050384();
    sub_08057044(this->unk_81, gUnk_020227E8, 0x202020);
    sub_08057044(this->unk_83, &gUnk_020227E8[1], 0x202020);
    ptr = (u8*)0x02000000;
    if (ptr[7] == 0) {
        sub_0805F46C((u32)gUnk_08120AE4[super->type2], (Font*)&gUnk_08120AB4); // TODO convert data
    } else {
        sub_0805F46C((u32)gUnk_08120AE4[super->type2], (Font*)&gUnk_08120ACC); // TODO convert data
    }
    gScreen.bg0.updated = 1;
}

ASM_FUNC("asm/non_matching/figurineDevice/sub_08088328.inc", void sub_08088328(FigurineDeviceEntity* this))

void sub_08088424(FigurineDeviceEntity* this) {
    if (gSave.stats.filler[0] < 0x32) {
        if (this->unk_83 < 0x0f) {
            this->unk_83 = 0x0f;
        }
    } else if (gSave.stats.filler[0] < 0x50) {
        if (this->unk_83 < 0xc) {
            this->unk_83 = 0xc;
        }
    } else if (gSave.stats.filler[0] < 0x6e) {
        if (this->unk_83 < 9) {
            this->unk_83 = 9;
        }
    } else {
        if (this->unk_83 < 6) {
            this->unk_83 = 6;
        }
    }
}

void sub_08088478(void) {
    u32 messageIndex;
    bool32 set0x10 = FALSE;
    if (!CheckRoomFlag(8)) {
        if (!CheckRoomFlag(7)) {
            messageIndex = 0x4322;
            set0x10 = TRUE;
        } else {
            messageIndex = 0x4325;
        }
    } else {
        switch (gSave.stats.filler[0]) {
            case 0x88:
                gSave.stats.filler[1] = 0xff;
                messageIndex = 0x4329;
                break;
            case 0x82:
                if (gSave.saw_staffroll) {
                    messageIndex = 0x4327;
                } else {
                    messageIndex = 0x4328;
                }
                break;
            default:
                messageIndex = 0x4327;
        }
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 0xc;
    if (set0x10) {
        gMessage.rupees = 5;
    }
#ifndef EU
    gPlayerEntity.animationState = 6;
#endif
}

void sub_08088504(void) {
    u32 index;
    switch (gSave.stats.filler[0]) {
        case 0x88:
            index = 0x432f;
            break;
        case 0x82:
            index = 0x4314;
            break;
        default:
            index = 0x4311;
            break;
    }
    MessageFromTarget(index);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 0xc;
}

void sub_08088544(void) {
    u32 index;
    if (gSave.stats.filler[0] != 0x82) {
        index = 0x430e;
    } else {
        index = 0x4315;
    }
    MessageFromTarget(index);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 0xc;
}

void sub_08088574(void) {
    u32 index;
#ifdef EU
    if (CheckRoomFlag(0xa)) {
#else
    if (CheckRoomFlag(9)) {
#endif
        if (CheckLocalFlag(SHOP07_COMPLETE)) {
            index = 0x4313;
        } else {
            index = 0x430c;
        }
    } else {
        index = 0x430b;
    }
    MessageFromTarget(index);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 0xc;
}

void sub_080885B0(void) {
    if (!CheckRoomFlag(8)) {
        if (!CheckRoomFlag(7)) {
            ModRupees(5);
            MessageFromTarget(0x4326);
            gMessage.textWindowPosX = 1;
            gMessage.textWindowPosY = 0xc;
        }
    } else if (gSave.stats.filler[1] != 0) {
        // GOT ALL THEM FIGURINES (:
        gSave.stats.hasAllFigurines = 1;
        CreateItemEntity(ITEM_QST_CARLOV_MEDAL, 0, 0);
        SetGlobalFlag(FIGURE_ALLCOMP);
    }
    ClearRoomFlag(8);
    ClearRoomFlag(7);
}

#ifndef EU
void sub_0808861C(FigurineDeviceEntity* this, ScriptExecutionContext* context) {
    context->condition = CheckPlayerInRegion(0xa8, 0x54, 0xc, 8);
#ifdef JP
    if ((gPlayerEntity.animationState != 0)) {
#else
    if ((gPlayerEntity.animationState != 0) || (gPlayerEntity.z.HALF.HI != 0)) {
#endif
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

#if !defined(JP)
void sub_08088658(FigurineDeviceEntity* this, ScriptExecutionContext* context) {
    context->condition = CheckPlayerInRegion(0x78, 0x78, 0x10, 8);
    if (gPlayerEntity.z.HALF.HI != 0) {
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}
#endif

#endif
