/**
 * @file vaatiTransfiguredEye.c
 * @ingroup Enemies
 *
 * @brief Vaati Transfigured Eye enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "message.h"
#include "physics.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[13];
    /*0x75*/ u8 unk_75;
    /*0x76*/ u8 unk_76;
    /*0x77*/ u8 unused2[9];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unused3[1];
    /*0x85*/ u8 unk_85;
} VaatiTransfiguredEyeEntity;

void sub_08045A00(VaatiTransfiguredEyeEntity*);
void sub_08045A28(VaatiTransfiguredEyeEntity*);

void VaatiTransfiguredEye_OnTick(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEye_OnCollision(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEye_OnDragged(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEyeFunction0Action0(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEyeFunction0Action1(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEyeFunction0Action2(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEyeFunction0Action3(VaatiTransfiguredEyeEntity*);
void VaatiTransfiguredEyeFunction0Action4(VaatiTransfiguredEyeEntity*);

void (*const VaatiTransfiguredEye_Functions[])(VaatiTransfiguredEyeEntity*) = {
    VaatiTransfiguredEye_OnTick,
    VaatiTransfiguredEye_OnCollision,
    VaatiTransfiguredEye_OnTick,
    (void (*)(VaatiTransfiguredEyeEntity*))GenericDeath,
    (void (*)(VaatiTransfiguredEyeEntity*))GenericConfused,
    VaatiTransfiguredEye_OnDragged,
};

void (*const vaatiTransfiguredEyeFunction0Actions[])(VaatiTransfiguredEyeEntity*) = {
    VaatiTransfiguredEyeFunction0Action0, VaatiTransfiguredEyeFunction0Action1, VaatiTransfiguredEyeFunction0Action2,
    VaatiTransfiguredEyeFunction0Action3, VaatiTransfiguredEyeFunction0Action4,
};

struct xy {
    s8 x;
    s8 y;
} PACKED;

const struct xy gUnk_080D18B4[] = { { 0xe8, 0xf6 }, { 0xf6, 0xe8 }, { 0x0a, 0xe8 }, { 0x18, 0xf6 },
                                    { 0x18, 0x0a }, { 0x0a, 0x18 }, { 0xf6, 0x18 }, { 0xe8, 0x0a } };

void VaatiTransfiguredEye(VaatiTransfiguredEyeEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)VaatiTransfiguredEye_Functions);
}

void VaatiTransfiguredEye_OnTick(VaatiTransfiguredEyeEntity* this) {
    vaatiTransfiguredEyeFunction0Actions[super->action](this);
}

void VaatiTransfiguredEye_OnCollision(VaatiTransfiguredEyeEntity* this) {
    u8 bVar1;
    Entity* pEVar4;

    if (super->type != 0) {
        pEVar4 = super->parent->parent;
        if ((super->contactFlags & CONTACT_NOW) != 0) {
            bVar1 = super->contactFlags & 0x3f;
            if ((bVar1 == 0xe) || (bVar1 == 0x15)) {

                if (this->unk_81 == 0) {
                    super->action = 3;
                    this->unk_81++;
                    InitializeAnimation(super, (super->type << 3) | (super->timer + 2));
                    InitializeAnimation(super->parent, (super->parent->type << 3) | (super->timer + 2));
                }
                if (super->timer != 0) {
                    SoundReq(SFX_17A);
                } else {
                    SoundReq(SFX_ITEM_GLOVES_KNOCKBACK);
                }
            } else {
                if (super->health != 0xff) {
                    super->health = 0xff;
                    if (super->timer != 0 && (((VaatiTransfiguredEyeEntity*)pEVar4)->unk_81 != 0)) {
                        ((VaatiTransfiguredEyeEntity*)pEVar4)->unk_76 |= (1 << super->type2);
                        if (this->unk_85 == 0) {
                            this->unk_85++;
                            InitializeAnimation(super, super->type << 3 | 6);
                            InitializeAnimation(super->parent, super->parent->type << 3 | 6);
                        }
                    }
                }
            }
        }
    }
    EnemyFunctionHandlerAfterCollision(super, (EntityActionArray)VaatiTransfiguredEye_Functions);
}

void VaatiTransfiguredEye_OnDragged(VaatiTransfiguredEyeEntity* this) {
}

void VaatiTransfiguredEyeFunction0Action0(VaatiTransfiguredEyeEntity* this) {
    Entity* child;
    u8 bVar2;

    bVar2 = gMessage.state & MESSAGE_ACTIVE;
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        super->action = 1;
        super->spriteSettings.draw = 0;
        this->unk_80 = bVar2;
        this->unk_81 = bVar2;
        this->unk_85 = bVar2;
        super->subtimer = bVar2;
        this->unk_82 = 0x30;
        this->unk_83 = bVar2;
        if (super->type == 0) {
            sub_08045A00(this);
            child = CreateEnemy(VAATI_TRANSFIGURED_EYE, 1);
            if (child != NULL) {
                child->parent = super;
                super->child = child;
                child->timer = super->timer;
                child->type2 = super->type2;
                CopyPosition(super, child);
            }
        } else {
            super->spriteOffsetY = 1;
        }
        InitializeAnimation(super, (u32)super->type << 3 | 1);
    }
}

void VaatiTransfiguredEyeFunction0Action1(VaatiTransfiguredEyeEntity* this) {
    sub_08045A28(this);
    if (this->unk_82 == 0) {
        if ((super->frame & ANIM_DONE) != 0) {
            if (super->type != 0) {
                COLLISION_ON(super);
            }
            super->action = 2;
            InitializeAnimation(super, super->type << 3);
        }
    } else {
        if (--this->unk_82 == 0) {
            super->spriteSettings.draw = 1;
        }
    }
}

void VaatiTransfiguredEyeFunction0Action2(VaatiTransfiguredEyeEntity* this) {
    Entity* parent;

    sub_08045A28(this);
    parent = super->parent;
    if (super->type != 0) {
        parent = parent->parent;
    }
    if ((parent->action == 3) && (((VaatiTransfiguredEyeEntity*)parent)->unk_80 == 1)) {
        super->action = 4;
        super->subtimer = 0;
        if (super->type != 0) {
            COLLISION_OFF(super);
            if (super->timer != 0) {
                InitializeAnimation(super, super->type << 3 | 5);
                InitializeAnimation(super->parent, super->parent->type << 3 | 5);
            } else {
                InitializeAnimation(super, super->type << 3 | 4);
                InitializeAnimation(super->parent, super->parent->type << 3 | 4);
            }
        }
    }
}

void VaatiTransfiguredEyeFunction0Action3(VaatiTransfiguredEyeEntity* this) {
    sub_08045A28(this);
    if ((super->frame & ANIM_DONE) != 0) {
        super->action = 2;
        if (super->type != 0) {
            if (super->timer == 0) {
                super->hitType = 0x32;
            } else {
                ((VaatiTransfiguredEyeEntity*)super->parent->parent)->unk_76 |= (1 << super->type2);
                super->hitType = 0x31;
            }
        }
    }
}

void VaatiTransfiguredEyeFunction0Action4(VaatiTransfiguredEyeEntity* this) {
    Entity* parent;

    sub_08045A28(this);
    if (super->subtimer == 0) {
        if ((super->frame & ANIM_DONE) != 0) {
            super->subtimer = 32;
        }
    } else {
        parent = super->parent;
        if (super->type != 0) {
            parent = parent->parent;
        }
        if ((parent->animationState < 3) && (parent->action != 3)) {
            super->action = 1;
            super->subtimer = 0;
            this->unk_81 = 0;
            this->unk_85 = 0;
            if (super->type != 0) {
                super->hitType = 0x33;
            }
            if ((((VaatiTransfiguredEyeEntity*)parent)->unk_75 >> super->type2 & 1U) != 0) {
                super->timer = 1;
            } else {
                super->timer = 0;
            }
            InitializeAnimation(super, super->type << 3 | 1);
        }
    }
}

void sub_08045A00(VaatiTransfiguredEyeEntity* this) {
    const struct xy* t = &gUnk_080D18B4[super->type2];
    PositionRelative(super->parent, super, Q_16_16(t->x), Q_16_16(t->y + 3));
}

void sub_08045A28(VaatiTransfiguredEyeEntity* this) {
    u32 frames;
    u32 type;

    if (this->unk_82 == 0) {
        GetNextFrame(super);
    }
    frames = super->frame & 0x70;
    type = super->type;
    if (type == 0) {
        sub_08045A00(this);
        switch (this->unk_83) {
            case 0:
                switch (frames) {
                    case 0x20:
                        this->unk_83 = 1;
                        ChangeObjPalette(super, 0x13e);
                        break;
                    case 0x00:
                    case 0x40:
                        this->unk_83 = 2;
                        ChangeObjPalette(super, 0x13f);
                        break;
                    default:
                        break;
                }
                break;
            case 1:
                switch (frames) {
                    case 0x10:
                        this->unk_83 = type;
                        ChangeObjPalette(super, 0x13b);
                        break;
                    case 0:
                        this->unk_83 = 2;
                        ChangeObjPalette(super, 0x13f);
                        break;
                    default:
                        break;
                }
                break;
            case 2:
                switch (frames) {
                    case 0x20:
                        this->unk_83 = 1;
                        ChangeObjPalette(super, 0x13e);
                        break;
                    case 0x10:
                        this->unk_83 = 0;
                        ChangeObjPalette(super, 0x13b);
                        break;
                    case 0x40:
                        this->unk_83 = 2;
                        ChangeObjPalette(super, 0x13f);
                        break;
                    default:
                        break;
                }
                break;
            case 3:
                switch (frames) {
                    case 0:
                        this->unk_83 = 2;
                        ChangeObjPalette(super, 0x13f);
                        break;
                    default:
                        break;
                }
                break;
            default:
                break;
        }
    } else {
        PositionRelative(super->parent, super, 0, Q_16_16(-1.0));
        switch (this->unk_83) {
            case 0:
                switch (super->frame & 0x70) {
                    case 0x10:
                        this->unk_83 = 2;
                        ChangeObjPalette(super, 0x13b);
                        break;
                    case 0x20:
                        this->unk_83 = 1;
                        ChangeObjPalette(super, 0x13e);
                        break;
                    default:
                        break;
                }
                break;
            case 1: {
                u32 temp = super->frame & 0x70;
                switch (temp) {
                    case 0:
                        this->unk_83 = temp;
                        ChangeObjPalette(super, 0x13f);
                        break;
                    case 0x10:
                        this->unk_83 = 2;
                        ChangeObjPalette(super, 0x13b);
                        break;
                    default:
                        break;
                }
            } break;
            case 2:
                switch (super->frame & 0x70) {
                    case 0:
                        this->unk_83 = super->frame & 0x70;
                        ChangeObjPalette(super, 0x13f);
                        break;
                    default:
                        break;
                }
                break;
            default:
                break;
        }
    }
}
