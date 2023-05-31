#include "functions.h"
#include "item.h"
#include "object.h"
#include "player.h"
#include "playeritem.h"
#include "sound.h"

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

void ItemSword(ItemBehavior* this, u32 index) {
    static void (*const stateFuncs[])(ItemBehavior*, u32) = {
        sub_08075338, sub_080754B8, sub_080755F0, sub_0807564C, sub_08075738,
        sub_08075580, sub_08075898, sub_080758B0, sub_08075900,
    };
    gPlayerState.framestate = PL_STATE_SWORD;
    stateFuncs[this->stateID](this, index);
}

void sub_08075338(ItemBehavior* this, u32 index) {
    u32 temp, temp2;
    if (gPlayerState.flags & PL_MINISH) {
        this->priority |= 0x80;
        sub_08077D38(this, index);
        gPlayerState.animation = 0xc00;
        SoundReq(SFX_PLY_VO1);
        return;
    }

    if (gPlayerState.jump_status) {
        if ((gPlayerState.jump_status & 7) != 3) {
            if ((gPlayerState.jump_status & 0x78) == 0 && (u32)gPlayerEntity.zVelocity < Q_16_16(1.5) &&
                (gPlayerState.skills & SKILL_DOWN_THRUST) && gPlayerEntity.z.WORD != 0) {
                gPlayerState.jump_status |= 0x20;
                gPlayerState.lastSwordMove = SWORD_MOVE_DOWN_THRUST;
                gPlayerState.attack_status |= (8 >> index) | ((8 >> index) << 4);
                sub_08077B98(this);
                this->stateID = 6;
                sub_08075898(this, index);
                return;
            }
        }
#ifndef EU
        sub_080759B8(this, index);
        return;
    } else if (gPlayerEntity.z.WORD) {
#endif
        sub_080759B8(this, index);
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

        sub_08077D38(this, index);
        sub_08077B98(this);
        temp = (8 >> index);
        gPlayerState.attack_status |= temp | (temp << 4);
        gPlayerState.field_0xa |= temp;
        gPlayerState.keepFacing |= temp;
        this->stateID = 8;
        this->timer = 0x14;
        this->animPriority = 6;
        this->priority |= 0x80;
        gPlayerState.lastSwordMove = SWORD_MOVE_ROLL;
        gPlayerState.flags |= PL_SWORD_THRUST;
        SetItemAnim(this, 0x130);
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

    sub_08077D38(this, index);
    sub_08077B98(this);
}

void sub_080754B8(ItemBehavior* this, u32 index) {
    u32 swordBeam;

    if ((gPlayerState.sword_state & 0x80) != 0) {
        sub_08075694(this, index);
    } else if (gPlayerState.attack_status != 0) {
        UpdateItemAnim(this);
        if (this->playerFrame != 0) {
            this->priority &= ~0x80;
        }

        if (gPlayerEntity.frameSpriteSettings & 1) {
            swordBeam = GetSwordBeam();
            if (swordBeam && FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_SWORD_BEAM1, 2) == 0) {
                CreatePlayerItemWithParent(this, PLAYER_ITEM_SWORD_BEAM1);
                if (swordBeam == 0xf) {
                    // SKILL_SWORD_BEAM (full health)
                    gPlayerState.lastSwordMove = SWORD_MOVE_FULL_BEAM;
                } else {
                    // SKILL_PERIL_BEAM (low health)
                    gPlayerState.lastSwordMove = SWORD_MOVE_LOW_BEAM;
                }
            }
        }

        if ((this->playerFrame & 0x80) != 0) {
            if (((gPlayerState.flags & PL_MINISH) != 0) || ((gPlayerState.skills & SKILL_SPIN_ATTACK) == 0)) {
                sub_080759B8(this, index);
            } else {
                sub_08075580(this, index);
            }
        }
    } else {
        sub_080759B8(this, index);
    }
}

void sub_08075580(ItemBehavior* this, u32 index) {
    if ((IsItemActive(this) != 0) && (gPlayerState.jump_status == 0)) {
        gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> index);
        gPlayerState.sword_state = 1;
        gPlayerState.item->hurtType = 0xd;
        this->animPriority = 0;
        this->stateID = 2;
        if ((gPlayerState.skills & SKILL_FAST_SPIN) != 0) {
            this->timer = 0x28; // TODO spin speed?
        } else {
            this->timer = 0x50;
        }
        SetItemAnim(this, 0x168);
        CreateObject(SWORD_PARTICLE, 0, 0);
        return;
    }
    sub_080759B8(this, index);
}

void sub_080755F0(ItemBehavior* this, u32 index) {
    if (IsItemActive(this) != 0) {
        if (sub_08077EC8(this) == 0) {
            if ((gPlayerState.sword_state | gPlayerState.attack_status) != 0) {
                if (--this->timer == 0) {
                    this->stateID = 3;
                    this->priority |= 0x80;
                    gPlayerState.sword_state = gPlayerState.sword_state | 0x20;
                }
            } else {
                sub_080759B8(this, index);
            }
        }
    } else {
        sub_080759B8(this, index);
    }
}

void sub_0807564C(ItemBehavior* this, u32 index) {
    if ((gPlayerState.sword_state | gPlayerState.attack_status) == 0) {
        sub_080759B8(this, index);
    } else {
        if ((sub_08077EC8(this) == 0) && ((IsItemActive(this) == 0 || ((gPlayerState.sword_state & 0x80) != 0)))) {
            sub_08075694(this, index);
        }
    }
}

void sub_08075694(ItemBehavior* this, u32 index) {
    this->timer = 1;
    if (gPlayerState.flags & PL_SWORD_THRUST) {
        gPlayerState.flags &= ~PL_SWORD_THRUST;
        gPlayerState.flags &= ~PL_ROLLING;
        SetItemAnim(this, 300);
    } else {
        gPlayerState.lastSwordMove = SWORD_MOVE_SPIN;
        SetItemAnim(this, 0x124);
    }
    gPlayerState.field_0xa = (8 >> index) | gPlayerState.field_0xa;
    this->stateID = 4;
    this->animPriority = 6;
    gPlayerEntity.hurtType = 0x1e;
    gPlayerState.sword_state |= 0x40;
    gPlayerState.sword_state &= 0xdf;
    if ((gPlayerState.chargeState.action == 4) && ((gPlayerState.flags & PL_CLONING) == 0)) {
        gPlayerState.chargeState.action = 1;
        DeleteClones();
    }
    SoundReq(SFX_PLY_VO2);
}

void sub_08075738(ItemBehavior* this, u32 index) {
    u32 bVar6;

    if (gPlayerState.attack_status == 0) {
        sub_080759B8(this, index);
    } else {
        UpdateItemAnim(this);
        if (IsItemActivatedThisFrame(this)) {
            this->timer = 2;
        }

        if ((gPlayerState.sword_state & 0x10) != 0) {
            if ((gPlayerState.direction & 0x80) == 0) {
                this->direction = gPlayerState.direction;
            }
            gPlayerEntity.direction = this->direction;
            gPlayerEntity.speed = 0x180;
            if ((this->playerFrame & 0x80) != 0) {
                bVar6 = 10;
                if ((gPlayerState.skills & SKILL_LONG_SPIN) != 0) {
                    bVar6 = 0xf;
                }

                if ((bVar6 <= ++this->subtimer) || (--this->timer == 0)) {
                    sub_080759B8(this, index);
                }
            }
        } else {
            if (((((gPlayerEntity.frameSpriteSettings & 1) != 0) && ((gPlayerState.sword_state & 0x80) == 0)) &&
                 ((gPlayerState.skills & SKILL_FOURSWORD) != 0))) {
                Entity* bombEnt = CreatePlayerItemWithParent(this, PLAYER_ITEM_SPIRAL_BEAM);
                if (bombEnt) {
                    bombEnt->animationState = (gPlayerEntity.animationState & 6) | 0x80;
                }
            }

            if ((((gPlayerEntity.frameSpriteSettings & 2) != 0) && ((gPlayerState.sword_state & 0x80) == 0)) &&
                (((gPlayerState.skills & SKILL_GREAT_SPIN) != 0 && (--this->timer != 0)))) {
                gPlayerState.sword_state |= 0x10;
                gPlayerState.lastSwordMove = SWORD_MOVE_GREAT_SPIN;
                this->direction = gPlayerEntity.animationState << 2;
                this->timer = 1;
                this->subtimer = 1;
                gPlayerState.field_0xa = gPlayerState.field_0xa & ~(8 >> index);
                SetItemAnim(this, 0x128);
            }

            if ((this->playerFrame & 0x80) != 0) {
                sub_080759B8(this, index);
            }
        }
    }
}

void sub_08075898(ItemBehavior* this, u32 index) {
    if (gPlayerState.attack_status == 0) {
        sub_080759B8(this, index);
    }
}

void sub_080758B0(ItemBehavior* this, u32 index) {
    if (gPlayerState.attack_status == 0) {
        sub_080759B8(this, index);
    } else {
        UpdateItemAnim(this);
        if ((this->playerFrame & 0x80) != 0) {
            this->animPriority = 0;
            if ((gPlayerState.sword_state & 0x20) != 0) {
                this->stateID = 3;
            } else {
                this->stateID = 5;
            }
            gPlayerState.sword_state &= 0xf7;
        }
    }
}

void sub_08075900(ItemBehavior* this, u32 index) {
    if (gPlayerState.floor_type == SURFACE_SWAMP) {
        gPlayerState.flags &= ~PL_ROLLING;
        sub_080759B8(this, index);
    } else {
        UpdateItemAnim(this);
        if ((gPlayerState.sword_state & 0x80) != 0) {
            gPlayerState.sword_state = 0xa0;
            sub_0807564C(this, index);

        } else {
            if (this->timer != 0) {
                if (--this->timer == 0) {
                    SetItemAnim(this, 0x134);
                }
                gPlayerEntity.direction = (gPlayerEntity.animationState >> 1) << 3;
                gPlayerEntity.speed = 0x300;
                UpdatePlayerMovement();
                if ((gRoomTransition.frameCount & 3) == 0) {
                    CreateFx(&gPlayerEntity, FX_DASH, 0x40);
                }
            } else {
                if ((this->playerFrame & 0x80) != 0) {
                    gPlayerState.flags &= ~PL_ROLLING;
                    sub_080759B8(this, index);
                }
            }
        }
    }
}

void sub_080759B8(ItemBehavior* this, u32 index) {
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        gPlayerEntity.hurtType = 0;
    }
    gPlayerState.flags &= ~PL_SWORD_THRUST;
    gPlayerState.sword_state = 0;
    gPlayerState.item = NULL;
    DeleteItemBehavior(this, index);
}
