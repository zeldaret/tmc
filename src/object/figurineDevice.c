/**
 * @file figurineDevice.c
 * @ingroup Objects
 *
 * @brief Figurine Device object
 */
#include "figurineMenu.h"
#include "fileselect.h"
#include "functions.h"
#include "item.h"
#include "kinstone.h"
#include "message.h"
#include "object.h"
#include "screen.h"
#include "tiles.h"

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
    /*0x81*/ u8 shells;
#ifdef EU
    /*0x82*/ u8 prevChance;
    /*0x83*/ u8 chance;
#else
    /*0x82*/ s8 prevChance;
    /*0x83*/ s8 chance;
#endif
} FigurineDeviceEntity;

extern void ModShells(s32);
extern u8 gUnk_020227F0;

void sub_0808804C(FigurineDeviceEntity*);
void sub_08087F58(FigurineDeviceEntity*);
void FigurineDevice_Draw(FigurineDeviceEntity*);
void sub_0808826C(FigurineDeviceEntity*);
void sub_080882A8(FigurineDeviceEntity*);
void sub_080880D8(FigurineDeviceEntity*);
void FigurineDevice_ChangeShellAmount(FigurineDeviceEntity*, s32);
void FigurineDevice_PlayErrorSound(FigurineDeviceEntity*);
bool32 sub_08088160(FigurineDeviceEntity*, s32);
void FigurineDevice_GetChanceBasedOffFigurineCount(FigurineDeviceEntity*);
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
                AddInteractableCheckableObject(super);
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
            SetEntityPriority(super, 7);
            InitializeAnimation(super, 1);
            break;
        case 3:
            super->timer = 30;
            super->subtimer = 0;
            this->shells = 1;
            this->unk_7a = 0;
            this->unk_7b = 0;
            this->unk_80 = 0;
            sub_0808804C(this);
            SetEntityPriority(super, 6);
            break;
    }
}

void FigurineDevice_Action1(FigurineDeviceEntity* this) {
    switch (this->unk_7a) {
        case 0:
            this->unk_7a = 1;
            AddInteractableCheckableObject(super);
            break;
        case 1:
            if (super->interactType != INTERACTION_NONE) {
                super->interactType = INTERACTION_NONE;
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
                AddInteractableCheckableObject(super);
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
            FigurineDevice_Draw((FigurineDeviceEntity*)super->child);
            ClearRoomFlag(0);
            entity = CreateObject(FIGURINE_DEVICE, 2, 0);
            if (entity != NULL) {
                entity->parent = super;
                entity->subtimer = this->unk_7d;
                ptr = (u8*)gUnk_080FC3E4; // FIXME use struct
                entity->type2 = ptr[(entity->subtimer << 3) + 7];
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
                super->timer = 40;
                ChangeObjPalette(super, gUnk_08120AA8[super->type2]);
                InitializeAnimation(super, 2);
                SoundReq(SFX_110);
            }
            break;

        case 1:
            if (((super->frame & ANIM_DONE) != 0) && (--super->timer == 0)) {
                this->unk_7a = 2;
                SetRoomFlag(2);
                MenuFadeIn(7, super->subtimer);
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
                this->shells = 1;
                ClearRoomFlag(1);
                sub_0808826C(this);
                sub_080882A8(this);
            } else {
                sub_080880D8(this);
            }
            break;
        case 1:
            if (super->timer != 0) {
                super->timer--;
            }
            if ((gInput.newKeys & A_BUTTON) != 0) {
                SoundReq(SFX_TEXTBOX_SELECT);
                this->unk_7a = 2;
                super->timer = 60;
                sub_08050384();
                return;
            }
            old_81 = this->shells;
#ifndef EU
            if ((gInput.heldKeys & R_BUTTON) != 0) {
                tmp = 10;
            } else {
                tmp = 1;
            }
#ifdef JP
            switch (gInput.menuScrollKeys) {
#else
            switch (gInput.menuScrollKeys & ~R_BUTTON) {
#endif
                case DPAD_UP:
                    FigurineDevice_ChangeShellAmount(this, tmp);
                    break;
                case DPAD_DOWN:
                    FigurineDevice_ChangeShellAmount(this, -tmp);
                    break;
            }
            if (old_81 != this->shells) {
                sub_080882A8(this);
            }
#else
            switch (gInput.menuScrollKeys) {
                case DPAD_UP:
                    FigurineDevice_ChangeShellAmount(this, 1);
                    break;
                case DPAD_DOWN:
                    FigurineDevice_ChangeShellAmount(this, -1);
                    break;
            }
            if (old_81 != this->shells) {
                sub_080882A8(this);
            }
#endif
            break;
        case 2:
            this->unk_7a = 0;
            this->unk_7b = 4;
            SetRoomFlag(3);
            MessageFromTarget(TEXT_INDEX(TEXT_CARLOV, 0x1a));
#ifndef EU
            gMessage.textWindowPosX = 1;
            gMessage.textWindowPosY = 0xc;
#endif
            gMessage.rupees = this->shells;
            break;
    }
}

void sub_08087F58(FigurineDeviceEntity* this) {
    switch (super->type) {
        case 0:
        case 1:
            SetTile(SPECIAL_TILE_34, this->unk_78 - 1, LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, this->unk_78, LAYER_BOTTOM);
            SetTile(SPECIAL_TILE_34, this->unk_78 + 1, LAYER_BOTTOM);
            break;
    }
}

void FigurineDevice_ChangeShellAmount(FigurineDeviceEntity* this, s32 shellDifference) {
#ifdef EU
    u32 newAmount;
    u32 newChance;

    newChance = this->chance + shellDifference;
    if (CheckLocalFlag(SHOP07_COMPLETE)) {
        FigurineDevice_PlayErrorSound(this);
        return;
    }

    if (shellDifference < 0) {
        if (newChance < this->prevChance) {
            if (this->chance != this->prevChance) {
                this->chance = this->prevChance;
                this->shells = 1;
                SoundReq(SFX_TEXTBOX_CHOICE);
            } else {
                FigurineDevice_PlayErrorSound(this);
            }
        } else {
            this->chance = newChance;
            this->shells += shellDifference;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
        return;
    }
    newAmount = this->shells + shellDifference;
    if (newAmount > gSave.stats.shells) {
        if (gSave.stats.shells != this->shells) {
            newAmount = gSave.stats.shells;
            shellDifference = (gSave.stats.shells - this->shells);
            newChance = this->chance + shellDifference;
        } else {
            FigurineDevice_PlayErrorSound(this);
            return;
        }
    } else if (newChance > 100) {
        if (this->chance == 100) {
            FigurineDevice_PlayErrorSound(this);
            return;
        } else {
            newChance = 100;
            shellDifference = (newChance - this->chance);
            newAmount = this->shells + shellDifference;
        }
    }

#else
    s32 newAmount;
    s32 newChance;
    s32 prevChance, prevShells;

    if (CheckLocalFlag(SHOP07_COMPLETE)) {
        FigurineDevice_PlayErrorSound(this);
        return;
    }

    // This could probably be done without prevChance and prevShells
    prevChance = this->chance;
    newChance = prevChance + shellDifference;
    if (shellDifference < 0) {
        if (newChance < this->prevChance) {
            if (this->chance != this->prevChance) {
                this->chance = this->prevChance;
                this->shells = 1;
                SoundReq(SFX_TEXTBOX_CHOICE);
            } else {
                FigurineDevice_PlayErrorSound(this);
            }
        } else {
            this->chance = newChance;
            this->shells += shellDifference;
            SoundReq(SFX_TEXTBOX_CHOICE);
        }
        return;
    }
    prevShells = this->shells;
    newAmount = prevShells + shellDifference;
    if (newAmount > gSave.stats.shells) {
        if (gSave.stats.shells != this->shells) {
            newAmount = gSave.stats.shells;
            shellDifference = (gSave.stats.shells - this->shells);
            newChance = prevChance + shellDifference;
#ifdef JP
            if (newChance > 100) {
                newChance = 100;
                shellDifference = (newChance - prevChance);
                newAmount = prevShells + shellDifference;
            }
#endif
        } else {
            FigurineDevice_PlayErrorSound(this);
            return;
        }
    }
#ifdef JP
    else if (newChance > 100) {
#else
    if (newChance > 100) {
#endif
        if (this->chance == 100) {
            FigurineDevice_PlayErrorSound(this);
            return;
        } else {
            newChance = 100;
            shellDifference = (newChance - prevChance);
            newAmount = prevShells + shellDifference;
        }
    }
#endif

    this->chance = newChance;
    this->shells = newAmount;
    SoundReq(SFX_TEXTBOX_CHOICE);
}

void FigurineDevice_PlayErrorSound(FigurineDeviceEntity* this) {
    if (super->timer == 0) {
        super->timer = 20;
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
        if (gSave.available_figurines != this->unk_80) {
            if (gSave.available_figurines != 0) {
                SetRoomFlag(6);
            }
            gSave.available_figurines = this->unk_80;
        }
        if (CheckLocalFlag(SHOP07_COMPLETE) && (this->unk_80 != gSave.stats.figurineCount)) {
            ClearLocalFlag(SHOP07_COMPLETE);
        }
    }
}

bool32 sub_08088160(FigurineDeviceEntity* this, s32 param_2) {
    bool32 result;
    const struct_080FC3E4* ptr;
#if !defined(JP) && !defined(EU)
    u8 kinstoneId;
#endif

    ptr = &gUnk_080FC3E4[param_2];
    result = FALSE;
    if (this->unk_7c >= ptr->unk_6) {
        result = TRUE;
    } else {
        switch (ptr->unk_6) {
            case 0x8:
            case 0x40:
                if (CheckLocalFlagByBank(ptr->bank, ptr->flag))
                    result = TRUE;
                break;
            case 0x10:
                if (CheckKinstoneFused(ptr->flag))
                    result = TRUE;
                break;
            default:
                break;
            case 0x20:
                switch (ptr->flag) {
#if defined(JP) || defined(EU)
                    case 0:
                        if (CheckKinstoneFused(KINSTONE_20) || CheckKinstoneFused(KINSTONE_10) ||
                            CheckKinstoneFused(KINSTONE_19))
                            result = TRUE;
                        break;
                    case 1:
                        if (this->unk_7c >= 5 && CheckKinstoneFused(KINSTONE_28))
                            result = TRUE;
                        break;
#else
                    case 0:
                        if (CheckKinstoneFused(KINSTONE_20) || CheckKinstoneFused(KINSTONE_10)) {
                            result = TRUE;
                            break;
                        }
                        kinstoneId = KINSTONE_19;
                    backward_tail_merge:
                        if (CheckKinstoneFused(kinstoneId))
                            result = TRUE;
                        break;
                    case 1:
                        if (this->unk_7c >= 5) {
                            kinstoneId = KINSTONE_28;
                            goto backward_tail_merge;
                        }
                        break;
#endif
                    case 2:
                        if (CheckKinstoneFused(KINSTONE_54) || CheckKinstoneFused(KINSTONE_56) ||
                            CheckKinstoneFused(KINSTONE_3D))
                            result = TRUE;
                        break;
                    case 3:
                        if (CheckKinstoneFused(KINSTONE_3B) || CheckKinstoneFused(KINSTONE_4A) ||
                            CheckKinstoneFused(KINSTONE_D))
                            result = TRUE;
                        break;
                    case 4:
                        if (CheckKinstoneFused(KINSTONE_49) || CheckKinstoneFused(KINSTONE_55) ||
                            CheckKinstoneFused(KINSTONE_3C))
                            result = TRUE;
                        break;
#if !defined(JP) && !defined(EU)
                    case 5:
                        if (this->unk_7c >= 2 && CheckGlobalFlag(MACHI_MACHIHOKORI))
                            result = TRUE;
                        break;
#endif
                }
        }
    }
    return result;
}

void sub_0808826C(FigurineDeviceEntity* this) {
    s32 tmp = 100;
    tmp *= this->unk_80 - gSave.stats.figurineCount;
    tmp /= this->unk_80;
    if (tmp == 0 && !CheckLocalFlag(SHOP07_COMPLETE)) {
        tmp = 1;
    }
    this->chance = tmp;
    this->prevChance = this->chance;
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
    static const u16 gUnk_08120AE4[] = { TEXT_INDEX(TEXT_CARLOV, 0x18), TEXT_INDEX(TEXT_CARLOV, 0x19) };
    u8* ptr;
    sub_08050384();
    sub_08057044(this->shells, gUnk_020227E8, 0x202020);
    sub_08057044(this->chance, &gUnk_020227E8[1], 0x202020);
    ptr = (u8*)0x02000000;
    if (ptr[7] == 0) {
        ShowTextBox(gUnk_08120AE4[super->type2], (Font*)&gUnk_08120AB4); // TODO convert data
    } else {
        ShowTextBox(gUnk_08120AE4[super->type2], (Font*)&gUnk_08120ACC); // TODO convert data
    }
    gScreen.bg0.updated = 1;
}

void FigurineDevice_Draw(FigurineDeviceEntity* this) {
    u32 isLucky;
    u32 rand;
    u32 prevFigurineIndex;
    u32 figurineIndex;

    do {
        isLucky = Random();
        isLucky &= 0x7f;
    } while (isLucky >= 100);
    ModShells(-this->shells);
    rand = Random();
    figurineIndex = (rand & 0x7f) + 1;
    prevFigurineIndex = figurineIndex;
    FigurineDevice_GetChanceBasedOffFigurineCount(this);
    if (isLucky < this->chance) {
        isLucky = FALSE;
        do {
            if (isLucky)
                break;
            if (figurineIndex > 136) {
                figurineIndex = 1;
            }
            if (sub_08088160(this, figurineIndex) && ReadBit(gSave.figurines, figurineIndex) == 0) {
                isLucky = TRUE;
            } else {
                figurineIndex++;
            }
        } while (prevFigurineIndex != figurineIndex);
    } else {
        isLucky = TRUE;
        do {
            if (!isLucky)
                break;
            if (figurineIndex > 136) {
                figurineIndex = 1;
            }
            if (sub_08088160(this, figurineIndex) && ReadBit(gSave.figurines, figurineIndex) != 0) {
                isLucky = FALSE;
            } else {
                figurineIndex++;
            }
        } while (prevFigurineIndex != figurineIndex);
    }
    if (isLucky) {
        gSave.stats.figurineCount++;
        if (gSave.stats.figurineCount != this->unk_80) {
            SetRoomFlag(7);
        } else {
            SetLocalFlag(SHOP07_COMPLETE);
            SetRoomFlag(8);
        }
    }
    this->unk_7d = figurineIndex;
    ((FigurineDeviceEntity*)super->parent)->unk_7d = figurineIndex;
}

void FigurineDevice_GetChanceBasedOffFigurineCount(FigurineDeviceEntity* this) {
    if (gSave.stats.figurineCount < 50) {
        if (this->chance < 15) {
            this->chance = 15;
        }
    } else if (gSave.stats.figurineCount < 80) {
        if (this->chance < 12) {
            this->chance = 12;
        }
    } else if (gSave.stats.figurineCount < 110) {
        if (this->chance < 9) {
            this->chance = 9;
        }
    } else {
        if (this->chance < 6) {
            this->chance = 6;
        }
    }
}

void FigurineDevice_NoFigurinesLeftMessage(void) {
    u32 messageIndex;
    bool32 isUnlucky = FALSE;
    if (!CheckRoomFlag(8)) {
        if (!CheckRoomFlag(7)) {
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 34); // Oh! Looks like you've already got that...
            isUnlucky = TRUE;
        } else {
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 37); // Congratulations! I'll keep the figurine...
        }
    } else {
        switch (gSave.stats.figurineCount) {
            case 136:
                gSave.stats._hasAllFigurines = 0xff;
                messageIndex = TEXT_INDEX(TEXT_CARLOV, 41); // No way! Congratulations! You've collected every...
                break;
            case 130:
                if (gSave.saw_staffroll) {
                    messageIndex = TEXT_INDEX(TEXT_CARLOV, 39); // ...just gotten the last ... I'll make some more...
                } else {
                    messageIndex = TEXT_INDEX(TEXT_CARLOV, 40); // ...You've now collected all of the figurines...
                }
                break;
            default:
                messageIndex = TEXT_INDEX(TEXT_CARLOV, 39); // ...you've just gotten the last figurine...
        }
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 12;
    if (isUnlucky) {
        gMessage.rupees = 5;
    }
#ifndef EU
    gPlayerEntity.base.animationState = 6;
#endif
}

void FigurineDevice_NothingNewToDrawMessage(void) {
    u32 messageIndex;
    switch (gSave.stats.figurineCount) {
        case 136:
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 47); // How do you like that Carlov Medal...
            break;
        case 130:
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 20); // ...won all the figurines I made so far. ... draw anyway?
            break;
        default:
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 17); // ...don't have any new figurines yet ... draw anyway?
            break;
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 12;
}

void FigurineDevice_NewFigurinesMessage(void) {
    u32 messageIndex;
    if (gSave.stats.figurineCount != 130) {
        messageIndex = TEXT_INDEX(TEXT_CARLOV, 14); // ...I made a new figurine...
    } else {
        messageIndex = TEXT_INDEX(TEXT_CARLOV, 21); // ...I've got something new ... final series...
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 12;
}

void FigurineDevice_TryAgainMessage(void) {
    u32 messageIndex;
#ifdef EU
    if (CheckRoomFlag(10)) {
#else
    if (CheckRoomFlag(9)) {
#endif
        if (CheckLocalFlag(SHOP07_COMPLETE)) {
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 19); // ...already have all ... still want to have a try?
        } else {
            messageIndex = TEXT_INDEX(TEXT_CARLOV, 12); // Want to try another drawing?
        }
    } else {
        messageIndex = TEXT_INDEX(TEXT_CARLOV, 11); // ...Do you want to try for another one?
    }
    MessageFromTarget(messageIndex);
    gMessage.textWindowPosX = 1;
    gMessage.textWindowPosY = 12;
}

void FigurineDevice_LostOrFinishedMessage(void) {
    if (!CheckRoomFlag(8)) {
        if (!CheckRoomFlag(7)) {
            ModRupees(5);
            MessageFromTarget(TEXT_INDEX(TEXT_CARLOV, 38)); // I hope you keep collecting ... come back again!
            gMessage.textWindowPosX = 1;
            gMessage.textWindowPosY = 12;
        }
    } else if (gSave.stats._hasAllFigurines != 0) {
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
    // If I understand this correctly then it checks if the player is at the lever
    context->condition = CheckPlayerInRegion(168, 84, 12, 8);
#ifdef JP
    if ((gPlayerEntity.base.animationState != 0)) {
#else
    if ((gPlayerEntity.base.animationState != 0) || (gPlayerEntity.base.z.HALF.HI != 0)) {
#endif
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}

#if !defined(JP)
void sub_08088658(FigurineDeviceEntity* this, ScriptExecutionContext* context) {
    context->condition = CheckPlayerInRegion(120, 120, 16, 8); // And this is if the player is at the door
    if (gPlayerEntity.base.z.HALF.HI != 0) {
        context->condition = 0;
    }
    gActiveScriptInfo.flags |= 1;
}
#endif

#endif
