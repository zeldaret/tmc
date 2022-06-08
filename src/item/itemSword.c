#include "item.h"
#include "functions.h"
#include "sound.h"
#include "object.h"
#include "playeritem.h"

void sub_080759B8(ItemBehavior*, u32);
void sub_080754B8(ItemBehavior*, u32);
void sub_08075898(ItemBehavior*, u32);
void sub_08075580(ItemBehavior*, u32);
void sub_08075338(ItemBehavior*, u32);
void sub_080755F0(ItemBehavior*, u32);
void sub_0807564C(ItemBehavior*, u32);
void sub_08075738(ItemBehavior*, u32);
void sub_080758B0(ItemBehavior*, u32);
void sub_08075900(ItemBehavior*, u32);
void sub_08075694(ItemBehavior*, u32);

void ItemSword(ItemBehavior* this, u32 idx) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075338, sub_080754B8, sub_080755F0, sub_0807564C, sub_08075738,
        sub_08075580, sub_08075898, sub_080758B0, sub_08075900,
    };
    gPlayerState.framestate = PL_STATE_SWORD;
    stateFuncs[this->stateID](this, idx);
}

void sub_08075338(ItemBehavior* this, u32 idx) {
    u32 temp, temp2;
    if (gPlayerState.flags & PL_MINISH) {
        this->field_0x5[4] |= 0x80;
        sub_08077D38(this, idx);
        gPlayerState.animation = 0xc00;
        SoundReq(SFX_PLY_VO1);
        return;
    }

    if (gPlayerState.jump_status) {
        if ((gPlayerState.jump_status & 7) != 3) {
            if ((gPlayerState.jump_status & 0x78) == 0 && (u32)gPlayerEntity.zVelocity < Q_16_16(1.5) &&
                (gPlayerState.skills & SKILL_DOWN_THRUST) && gPlayerEntity.z.WORD != 0) {
                gPlayerState.jump_status |= 0x20;
                gPlayerState.field_0xab = 7;
                gPlayerState.field_0x3[1] |= (8 >> idx) | ((8 >> idx) << 4);
                sub_08077B98(this);
                this->stateID = 6;
                sub_08075898(this, idx);
                return;
            }
        }
#ifndef EU
        sub_080759B8(this, idx);
        return;
    } else if (gPlayerEntity.z.WORD) {
#endif
        sub_080759B8(this, idx);
        return;
    }

    if (gPlayerState.flags & PL_ROLLING) {
        if ((gPlayerState.skills & SKILL_ROLL_ATTACK) == 0) {
            if (gPlayerState.item == NULL)
                return;
            DeleteEntity(gPlayerState.item);
            gPlayerState.item = NULL;
            return;
        }
        // Do the roll attack.

        sub_08077D38(this, idx);
        sub_08077B98(this);
        temp = (8 >> idx);
        gPlayerState.field_0x3[1] |= temp | (temp << 4);
        gPlayerState.field_0xa |= temp;
        gPlayerState.keepFacing |= temp;
        this->stateID = 8;
        this->field_0x5[2] = 0x14;
        this->field_0xf = 6;
        this->field_0x5[4] |= 0x80;
        gPlayerState.field_0xab = 2;
        gPlayerState.flags |= PL_SWORD_THRUST;
        sub_08077DF4(this, 0x130);
        SoundReq(SFX_PLY_VO3);
        return;
    }

    if ((gPlayerState.sword_state & 0x80) == 0) {
        gPlayerState.sword_state = 0;
        sub_0806F948(&gPlayerEntity);
    }

    if (gPlayerState.item) {
        if (gPlayerState.item->id != 1) {
            DeleteEntity(gPlayerState.item);
            gPlayerState.item = NULL;
        }
    }

    sub_08077D38(this, idx);
    sub_08077B98(this);
}

void sub_080754B8(ItemBehavior* this, u32 idx) {
    u32 iVar1;

    if ((gPlayerState.sword_state & 0x80) != 0) {
        sub_08075694(this, idx);
    } else if (gPlayerState.field_0x3[1] != 0) {
        UpdateItemAnim(this);
        if (this->field_0x5[9] != 0) {
            this->field_0x5[4] = this->field_0x5[4] & 0x7f;
        }

        if (gPlayerEntity.frameSpriteSettings & 1) {
            iVar1 = sub_0807B014();
            if (iVar1 && FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_SWORD_BEAM1, 2) == 0) {
                CreatePlayerItemWithParent(this, PLAYER_ITEM_SWORD_BEAM1);
                if (iVar1 == 0xf) {
                    gPlayerState.field_0xab = 5;
                } else {
                    gPlayerState.field_0xab = 8;
                }
            }
        }

        if ((this->field_0x5[9] & 0x80) != 0) {
            if (((gPlayerState.flags & 0x80) != 0) || ((gPlayerState.skills & SKILL_SPIN_ATTACK) == 0)) {
                sub_080759B8(this, idx);
            } else {
                sub_08075580(this, idx);
            }
        }
    } else {
        sub_080759B8(this, idx);
    }
}

void sub_08075580(ItemBehavior* this, u32 idx) {
    if ((sub_08077EFC(this) != 0) && (gPlayerState.jump_status == 0)) {
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> idx);
        gPlayerState.sword_state = 1;
        gPlayerState.item->hurtType = 0xd;
        this->field_0xf = 0;
        this->stateID = 2;
        if ((gPlayerState.skills & SKILL_FAST_SPIN) != 0) {
            this->field_0x5[2] = 0x28; // TODO spin speed?
        } else {
            this->field_0x5[2] = 0x50;
        }
        sub_08077DF4(this, 0x168);
        CreateObject(OBJECT_43, 0, 0);
        return;
    }
    sub_080759B8(this, idx);
}

void sub_080755F0(ItemBehavior* this, u32 idx) {
    if (sub_08077EFC(this) != 0) {
        if (sub_08077EC8(this) == 0) {
            if ((gPlayerState.sword_state | gPlayerState.field_0x3[1]) != 0) {
                if (--this->field_0x5[2] == 0) {
                    this->stateID = 3;
                    this->field_0x5[4] |= 0x80;
                    gPlayerState.sword_state = gPlayerState.sword_state | 0x20;
                }
            } else {
                sub_080759B8(this, idx);
            }
        }
    } else {
        sub_080759B8(this, idx);
    }
}

void sub_0807564C(ItemBehavior* this, u32 idx) {
    if ((gPlayerState.sword_state | gPlayerState.field_0x3[1]) == 0) {
        sub_080759B8(this, idx);
    } else {
        if ((sub_08077EC8(this) == 0) && ((sub_08077EFC(this) == 0 || ((gPlayerState.sword_state & 0x80) != 0)))) {
            sub_08075694(this, idx);
        }
    }
}

void sub_08075694(ItemBehavior* this, u32 idx) {
    this->field_0x5[2] = 1;
    if (gPlayerState.flags & PL_SWORD_THRUST) {
        gPlayerState.flags &= ~PL_SWORD_THRUST;
        gPlayerState.flags &= ~PL_ROLLING;
        sub_08077DF4(this, 300);
    } else {
        gPlayerState.field_0xab = 1;
        sub_08077DF4(this, 0x124);
    }
    gPlayerState.field_0xa = (8 >> idx) | gPlayerState.field_0xa;
    this->stateID = 4;
    this->field_0xf = 6;
    gPlayerEntity.hurtType = 0x1e;
    gPlayerState.sword_state |= 0x40;
    gPlayerState.sword_state &= 0xdf;
    if ((gPlayerState.chargeState.action == 4) && ((gPlayerState.flags & PL_CLONING) == 0)) {
        gPlayerState.chargeState.action = 1;
        DeleteClones();
    }
    SoundReq(SFX_PLY_VO2);
}

void sub_08075738(ItemBehavior* this, u32 idx) {
    u32 bVar6;

    if (gPlayerState.field_0x3[1] == 0) {
        sub_080759B8(this, idx);
    } else {
        UpdateItemAnim(this);
        if (sub_08077F10(this)) {
            this->field_0x5[2] = 2;
        }

        if ((gPlayerState.sword_state & 0x10) != 0) {
            if ((gPlayerState.field_0xd & 0x80) == 0) {
                this->field_0x5[6] = gPlayerState.field_0xd;
            }
            gPlayerEntity.direction = this->field_0x5[6];
            gPlayerEntity.speed = 0x180;
            if ((this->field_0x5[9] & 0x80) != 0) {
                bVar6 = 10;
                if ((gPlayerState.skills & SKILL_LONG_SPIN) != 0) {
                    bVar6 = 0xf;
                }

                if ((bVar6 <= ++this->field_0x5[3]) || (--this->field_0x5[2] == 0)) {
                    sub_080759B8(this, idx);
                }
            }
        } else {
            if (((((gPlayerEntity.frameSpriteSettings & 1) != 0) && ((gPlayerState.sword_state & 0x80) == 0)) &&
                 ((gPlayerState.skills & SKILL_FOURSWORD) != 0))) {
                Entity* bombEnt = CreatePlayerItemWithParent(this, PLAYER_ITEM_14);
                if (bombEnt) {
                    bombEnt->animationState = (gPlayerEntity.animationState & 6) | 0x80;
                }
            }

            if ((((gPlayerEntity.frameSpriteSettings & 2) != 0) && ((gPlayerState.sword_state & 0x80) == 0)) &&
                (((gPlayerState.skills & SKILL_GREAT_SPIN) != 0 && (--this->field_0x5[2] != 0)))) {
                gPlayerState.sword_state |= 0x10;
                gPlayerState.field_0xab = 6;
                this->field_0x5[6] = gPlayerEntity.animationState << 2;
                this->field_0x5[2] = 1;
                this->field_0x5[3] = 1;
                gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> idx);
                sub_08077DF4(this, 0x128);
            }

            if ((this->field_0x5[9] & 0x80) != 0) {
                sub_080759B8(this, idx);
            }
        }
    }
}

void sub_08075898(ItemBehavior* this, u32 idx) {
    if (gPlayerState.field_0x3[1] == 0) {
        sub_080759B8(this, idx);
    }
}

void sub_080758B0(ItemBehavior* this, u32 idx) {
    if (gPlayerState.field_0x3[1] == 0) {
        sub_080759B8(this, idx);
    } else {
        UpdateItemAnim(this);
        if ((this->field_0x5[9] & 0x80) != 0) {
            this->field_0xf = 0;
            if ((gPlayerState.sword_state & 0x20) != 0) {
                this->stateID = 3;
            } else {
                this->stateID = 5;
            }
            gPlayerState.sword_state &= 0xf7;
        }
    }
}

void sub_08075900(ItemBehavior* this, u32 idx) {
    if (gPlayerState.floor_type == SURFACE_SWAMP) {
        gPlayerState.flags &= ~PL_ROLLING;
        sub_080759B8(this, idx);
    } else {
        UpdateItemAnim(this);
        if ((gPlayerState.sword_state & 0x80) != 0) {
            gPlayerState.sword_state = 0xa0;
            sub_0807564C(this, idx);

        } else {
            if (this->field_0x5[2] != 0) {
                if (--this->field_0x5[2] == 0) {
                    sub_08077DF4(this, 0x134);
                }
                gPlayerEntity.direction = (gPlayerEntity.animationState >> 1) << 3;
                gPlayerEntity.speed = 0x300;
                UpdatePlayerMovement();
                if ((gRoomTransition.frameCount & 3) == 0) {
                    CreateFx(&gPlayerEntity, FX_DASH, 0x40);
                }
            } else {
                if ((this->field_0x5[9] & 0x80) != 0) {
                    gPlayerState.flags &= ~PL_ROLLING;
                    sub_080759B8(this, idx);
                }
            }
        }
    }
}

void sub_080759B8(ItemBehavior* this, u32 idx) {
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        gPlayerEntity.hurtType = 0;
    }
    gPlayerState.flags &= ~PL_SWORD_THRUST;
    gPlayerState.sword_state = 0;
    gPlayerState.item = NULL;
    DeletePlayerItem(this, idx);
}
