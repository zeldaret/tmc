/**
 * @file vaatiWrath.c
 * @ingroup Enemies
 *
 * @brief Vaati Wrath enemy
 */
#include "enemy/vaatiWrath.h"

#include "functions.h"
#include "message.h"
#include "object.h"
#include "save.h"
#include "screen.h"

void VaatiWrathType0PreAction(VaatiWrathEntity*);
u32 sub_08041FCC(VaatiWrathEntity*);
void sub_08042004(VaatiWrathEntity*);
u32 sub_08041ED4(VaatiWrathEntity*);
u32 sub_08041F74(VaatiWrathEntity*, u32);
u32 sub_08041F1C(VaatiWrathEntity*);
void sub_08042028(VaatiWrathEntity*);
u32 sub_0804207C(VaatiWrathEntity*);
void sub_0804212C(VaatiWrathEntity*);
void sub_080421AC(VaatiWrathEntity*);
void sub_08042120(VaatiWrathEntity*);
void sub_0804235C(VaatiWrathEntity*);
void sub_08042214(VaatiWrathEntity*);
void sub_08042050(VaatiWrathEntity*);
void sub_08041E78(VaatiWrathEntity*);
void sub_08042264(VaatiWrathEntity*);
u32 sub_080422C0(VaatiWrathEntity*, u32);
void sub_0804228C(VaatiWrathEntity*);

void VaatiWrathType0(VaatiWrathEntity*);
void VaatiWrathType1(VaatiWrathEntity*);
void VaatiWrathType2(VaatiWrathEntity*);
void VaatiWrathType3(VaatiWrathEntity*);
void VaatiWrathType0Action0(VaatiWrathEntity*);
void VaatiWrathType0Action1(VaatiWrathEntity*);
void VaatiWrathType0Action2(VaatiWrathEntity*);
void VaatiWrathType0Action3(VaatiWrathEntity*);
void VaatiWrathType0Action4(VaatiWrathEntity*);
void VaatiWrathType0Action5(VaatiWrathEntity*);
void VaatiWrathType0Action6(VaatiWrathEntity*);
void VaatiWrathType0Action7(VaatiWrathEntity*);
void VaatiWrathType0Action8(VaatiWrathEntity*);
void VaatiWrathType0Action9(VaatiWrathEntity*);
void VaatiWrathType0ActionA(VaatiWrathEntity*);
void VaatiWrathType0ActionB(VaatiWrathEntity*);
void VaatiWrathType0ActionC(VaatiWrathEntity*);
void VaatiWrathType0ActionD(VaatiWrathEntity*);
void sub_08041BE8(VaatiWrathEntity*);
void sub_08041CD0(VaatiWrathEntity*);
void sub_08041D14(VaatiWrathEntity*);
void sub_08041D84(VaatiWrathEntity*);
void sub_08041E20(VaatiWrathEntity*);
void sub_08041E50(VaatiWrathEntity*);

typedef struct {
    Entity* type0;
    Entity* type1;
    Entity* type2;
    Entity* type3;
    Entity* object5b;
    Entity* arms[2];
    Entity* eyes[4];
} VaatiWrathHeapStruct;

void (*const vaatiWrathTypes[])(VaatiWrathEntity*) = {
    VaatiWrathType0,
    VaatiWrathType1,
    VaatiWrathType2,
    VaatiWrathType3,
};
void (*const vaatiWrathType0Actions[])(VaatiWrathEntity*) = {
    VaatiWrathType0Action0, VaatiWrathType0Action1, VaatiWrathType0Action2, VaatiWrathType0Action3,
    VaatiWrathType0Action4, VaatiWrathType0Action5, VaatiWrathType0Action6, VaatiWrathType0Action7,
    VaatiWrathType0Action8, VaatiWrathType0Action9, VaatiWrathType0ActionA, VaatiWrathType0ActionB,
    VaatiWrathType0ActionC, VaatiWrathType0ActionD,
};

const u8 gUnk_080D0E64[] = { 0, -1, 0, 1 };

void (*const gUnk_080D0E68[])(VaatiWrathEntity*) = {
    sub_08041BE8, sub_08041CD0, sub_08041D14, sub_08041D84, sub_08041E20, sub_08041E50,
};

const u16 gUnk_080D0E80[] = { 0x16c, 0x16d, 0x16e, 0x16f, 0x170, 0x171, 0x172, 0x173 };

const s8 gUnk_080D0E90[] = { 0x00, 0xf0, 0xf8, 0xe6, 0xff, 0x00, 0x0e, 0xe1,
                             0x02, 0xf4, 0xf1, 0x02, 0x04, 0xec, 0xf6, 0xf8 };

const s8 gUnk_080D0EA0[] = { 0xfc, 0xfb, 0xfa, 0xf9, 0xfa, 0xfb, 0xfc, 0xfd };

const u8 gUnk_080D0EA8[] = { 0x78, 0xa0, 0xc8, 0xf0 };

const u8 gUnk_080D0EAC[] = { 0x3c, 0x50, 0x64, 0x78 };

const s8 gUnk_080D0EB0[] = { 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03, 0x03,
                             0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0xff, 0xff, 0xfe, 0xfe,
                             0xfd, 0xfd, 0xfd, 0xfd, 0xfd, 0xfd, 0xfd, 0xfd, 0xfd, 0xfd };

void VaatiWrath(VaatiWrathEntity* this) {
    if (((super->type == 0) && ((super->contactFlags & CONTACT_NOW) != 0)) && (super->health == 0)) {
        COLLISION_ON(super);
        super->health = 0xff;
        if (--this->unk_84 == 0) {
            super->action = 0xd;
            super->subAction = 0;
            SoundReq(SONG_STOP_ALL);
            SoundReq(SFX_BOSS_DIE);
        }
    }
    vaatiWrathTypes[super->type](this);
}

void VaatiWrathType0(VaatiWrathEntity* this) {
#if !(defined EU || defined JP)
    VaatiWrathType0PreAction(this);
#endif
    vaatiWrathType0Actions[super->action](this);
}

void VaatiWrathType0Action0(VaatiWrathEntity* this) {
    u32 bVar1;

    bVar1 = gRoomTransition.field_0x38 & 1;
    if (bVar1 != 0) {
        if (sub_08041FCC(this) == 0) {
            return;
        }
        if ((gRoomTransition.field_0x39 & 0xc) == 0) {
            super->action = 5;
            super->subAction = 1;
        } else {
            super->action = 2;
            super->timer = 60;
        }
        super->x.HALF.HI = gRoomTransition.field_0x40;
        super->y.HALF.HI = gRoomTransition.field_0x42;
        sub_08042004(this);
    } else {
        if (sub_08041ED4(this) == 0) {
            return;
        }
        super->action = 1;
        super->subAction = bVar1;
        super->timer = 120;
        super->spritePriority.b1 = 0;
        super->z.HALF.HI = -80;
        gRoomControls.camera_target = super;
        sub_080809D4();
    }
    super->spriteSettings.draw = 1;
    this->unk_6d |= 1;
    this->unk_79 = 0;
    this->unk_7c = 0x3c;
    this->unk_7e = 0x78;
    this->unk_84 = 3;
    InitAnimationForceUpdate(super, 0);
}

void VaatiWrathType0Action1(VaatiWrathEntity* this) {
    UpdateAnimationSingleFrame(super);
    switch (super->subAction) {
        case 0:
            break;
        case 1:
            super->spritePriority.b1 = 1;
            super->z.WORD += Q_16_16(0.5);
            if ((super->z.HALF.HI & 0x3f) == 0) {
                SoundReq(SFX_1A9);
            }
            if (-6 < super->z.HALF.HI) {
                super->subAction = 2;
                SoundReq(SFX_1A9);
            }
            break;
        case 2:
            sub_08042004(this);
            if (super->timer != 0) {
                super->timer--;
            } else {
                if (sub_08041F74(this, 0) == 0) {
                    return;
                }
                super->subAction = 3;
                super->timer = 60;
            }
            break;
        case 3:
            sub_08042004(this);
            if (super->timer != 0) {
                super->timer--;
            } else {
                if (sub_08041F74(this, 1) != 0) {
                    super->subAction = 4;
                    super->timer = 120;
                    super->subtimer = 0;
                }
            }
            break;
        case 4:
            sub_08042004(this);
            if (--super->timer == 0) {
                super->subAction = 5;
            } else {
                if ((super->timer < 0x3d) && (super->subtimer == 0)) {
                    if (sub_08041F1C(this) != 0) {
                        super->subtimer = 1;
                    }
                }
            }
            break;
        case 5:
            sub_08042004(this);
            super->subAction = 6;
            super->timer = 30;
            gRoomTransition.field_0x38 |= 1;
            gRoomControls.camera_target = &gPlayerEntity.base;
            gPlayerState.controlMode = CONTROL_1;
            break;
        default:
            sub_08042004(this);
            if (--super->timer != 0) {
                return;
            }
            super->action = 2;
            super->timer = 60;
            break;
    }
}

void VaatiWrathType0Action2(VaatiWrathEntity* this) {
    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    if (--super->timer == 0) {
        super->subtimer = (Random() & 1) + 1;
        sub_08042028(this);
    }
}

void VaatiWrathType0Action3(VaatiWrathEntity* this) {
    s32 bound;
    s32 superY;
    u32 roomY;

    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    ProcessMovement0(super);

    roomY = gRoomControls.origin_y;
    bound = roomY + 0x90;
    superY = super->y.HALF.HI;
    if ((bound < superY)) {
        super->y.HALF.HI = bound;
    } else {
        bound = roomY + 0x40;
        if ((bound > superY)) {
            super->y.HALF.HI = bound;
        }
    }

    if (--super->timer == 0) {
        super->action = 4;
        super->timer = 8;
    } else {
        if (super->timer < 0x1e) {
            super->speed -= 8;
        } else {
            if (super->speed < 0x100) {
                super->speed += 6;
            }
        }
        if ((super->timer & 3) == 0) {
            sub_08004596(super, sub_0804207C(this));
        }
    }
    sub_0804212C(this);
    sub_080421AC(this);
}

void VaatiWrathType0Action4(VaatiWrathEntity* this) {
    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    if (--super->timer == 0) {
        if (--super->subtimer == 0) {
            sub_08042120(this);
        } else {
            sub_08042028(this);
        }
    }
}

void VaatiWrathType0Action5(VaatiWrathEntity* this) {
    Entity* object;
    u32 subAction;
    Entity* arm;

    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    sub_0804212C(this);
    sub_080421AC(this);
    subAction = super->subAction;
    if (subAction == 0) {
        super->subAction = 1;
        if ((Random() & 1) != 0) {
            arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[0];
            if (arm == NULL) {
                arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[1];
            }
        } else {
            arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[1];
            if (arm == NULL) {
                arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[0];
            }
        }
        if (arm != NULL && arm->action == 2) {
            arm->action = 4;
            arm->subAction = 0;
        } else {
            super->subtimer = (Random() & 1) + 1;
            sub_08042028(this);
        }
    } else {
        if (this->unk_79 == 0) {
            if (super->subAction == 2) {
                if ((gRoomTransition.field_0x39 & 3) == 0) {
                    object = CreateObject(VAATI3_PLAYER_OBJECT, 0, 0);
                    if (object != NULL) {
                        object->parent = super;
                        ((VaatiWrathHeapStruct*)super->myHeap)->object5b = object;
                        gRoomControls.camera_target = object;
                        super->action = 6;
                        super->timer = 30;
                        ((VaatiWrathHeapStruct*)super->myHeap)->type1->subAction = 1;
                        InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type1, 0xe);
                    }
                } else {
                    super->action = 2;
                    super->timer = 60;
                }
            }
        }
    }
}

void VaatiWrathType0Action6(VaatiWrathEntity* this) {
    Entity* type1;

    if (super->timer == 0) {
        type1 = ((VaatiWrathHeapStruct*)super->myHeap)->type1;
        GetNextFrame(type1);
        if (type1->frame == 1) {
            type1->frame &= 0xfe;
            InitAnimationForceUpdate(super, 4);
        } else {
            if (type1->frame == 2) {
                Entity* type3 = CreateEnemy(VAATI_WRATH, 3);
                if (type3 != NULL) {
                    type3->myHeap = super->myHeap;
                    ((VaatiWrathHeapStruct*)super->myHeap)->type3 = type3;
                    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x14);
                    type1->frame &= 0xfd;
                }
            } else {
                if ((type1->frame & ANIM_DONE) != 0) {
                    sub_0804235C(this);
                }
            }
        }
    } else {
        super->timer--;
    }
    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
}

void VaatiWrathType0Action7(VaatiWrathEntity* this) {
    sub_08042214(this);
    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    if (gRoomControls.origin_y + 0x48 != super->y.HALF.HI) {
        super->speed = 0x100;
        super->direction = ((gRoomControls.origin_y + 0x48) >= super->y.HALF.HI) ? DirectionSouth : DirectionNorth;
        LinearMoveUpdate(super);
    } else {
        if (--super->timer == 0) {
            sub_08042050(this);
        }
    }
}

void VaatiWrathType0Action8(VaatiWrathEntity* this) {
    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    LinearMoveUpdate(super);
    if (((gRoomControls.origin_x + 0x20) > super->x.HALF.HI) || ((gRoomControls.origin_x + 0x140) < super->x.HALF.HI)) {
        if (0x3f < super->speed) {
            super->direction ^= DirectionSouth;
        }
    }
    if (--super->timer == 0) {
        super->action = 9;
        super->timer = 60;
    } else {
        if (super->timer < 0x1e) {
            super->speed -= 0xc;
        } else {
            if (0x1ff >= super->speed)
                super->speed += 0x10;
        }
    }
    sub_08042214(this);
}

void VaatiWrathType0Action9(VaatiWrathEntity* this) {
    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    if (this->unk_79 != 0) {
        sub_08042214(this);
    } else {
        if (--super->timer == 0) {
            if ((gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI) + 0x40u < 0x81) {
                super->action = 10;
                this->unk_7b = 0;
                ((VaatiWrathHeapStruct*)super->myHeap)->eyes[0]->timer = 1;
                ((VaatiWrathHeapStruct*)super->myHeap)->eyes[1]->timer = 1;
                ((VaatiWrathHeapStruct*)super->myHeap)->eyes[2]->timer = 1;
                ((VaatiWrathHeapStruct*)super->myHeap)->eyes[3]->timer = 1;
            } else {
                super->action = 7;
                super->timer = 30;
                this->unk_79 = 0;
            }
        }
    }
}

void VaatiWrathType0ActionA(VaatiWrathEntity* this) {
    Entity* type1;

    sub_08042004(this);
    UpdateAnimationSingleFrame(super);
    if (this->unk_7b == 0x0f) {
        super->action = 7;
        super->timer = 120;
        this->unk_79 = 0;
    } else {
        if (this->unk_7b == 0xf0) {
            super->action = 0xb;
            super->subAction = 0;
            super->direction = DirectionNorth;
            super->speed = 0x100;
            super->zVelocity = Q_16_16(1.125);
            ChangeObjPalette(super, 0x16b);
            InitAnimationForceUpdate(super, 5);
            type1 = ((VaatiWrathHeapStruct*)super->myHeap)->type1;
            type1->subAction = 1;
            InitializeAnimation(type1, 0xf);
            InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x15);
            InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type3, 0x1e);
            SoundReq(SFX_BOSS_HIT);
        }
    }
}

void VaatiWrathType0ActionB(VaatiWrathEntity* this) {
    switch (super->subAction) {
        case 0:
            LinearMoveUpdate(super);
            UpdateAnimationSingleFrame(super);
            GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type1);
            GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
            if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
                super->subAction = 1;
                super->timer = 240;
                super->health = 8;
                super->hitType = 0x38;
                InitScreenShake(20, 0);
                InitAnimationForceUpdate(super, 6);
                InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x16);
            }
            break;
        case 1:
            UpdateAnimationSingleFrame(super);
            GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
            if (--super->timer == 0) {
                super->subAction = 2;
                super->timer = 60;
                super->hitType = 0x39;
                super->health = 0xff;
            }
            break;
        default:
            super->spriteOffsetX = gUnk_080D0E64[--super->timer & 3];
            if (super->timer == 0) {
                super->action = 0xc;
                super->subAction = 0;
                ChangeObjPalette(super, 0x140);
                InitAnimationForceUpdate(super, 8);
                InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type1, 0x10);
                InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x18);
            }
            break;
    }
}

void VaatiWrathType0ActionC(VaatiWrathEntity* this) {
    Entity* entity;

    UpdateAnimationSingleFrame(super);
    GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
    if (super->subAction != 0) {
        GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type1);
    }
    switch (super->subAction) {
        case 0:
            super->z.WORD -= Q_16_16(0.5);
            if (super->z.HALF.HI < -4) {
                super->subAction = 1;
                super->timer = 120;
                super->direction = DirectionSouth;
                super->speed = 0x80;
            }
            break;
        case 1:
            sub_08042004(this);
            if (super->timer) {
                super->timer--;
            } else {
                LinearMoveUpdate(super);
                if (gRoomControls.origin_y + 0x48 == super->y.HALF.HI) {
                    super->subAction = 2;
                    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type1, 0x11);
                    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x19);
                    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type3, 0x1f);
                }
            }
            break;
        default:
            sub_08042004(this);
            entity = ((VaatiWrathHeapStruct*)super->myHeap)->type1;
            if (entity->frame & 1) {
                entity->frame &= 0xfe;
                InitAnimationForceUpdate(super, 9);
            } else {
                if (entity->frame & ANIM_DONE) {
                    sub_0804235C(this);
                }
            }
            break;
    }
}

void VaatiWrathType0ActionD(VaatiWrathEntity* this) {
    gUnk_080D0E68[super->subAction](this);
}

void sub_08041BE8(VaatiWrathEntity* this) {
    Entity* entity;

    if (PlayerCanBeMoved()) {
        super->subAction = 1;
        super->timer = 120;
        super->updatePriority = PRIO_NO_BLOCK;
        InitAnimationForceUpdate(super, 10);

        entity = ((VaatiWrathHeapStruct*)super->myHeap)->type1;
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->type1 = NULL;

        entity = ((VaatiWrathHeapStruct*)super->myHeap)->type2;
        entity->updatePriority = PRIO_NO_BLOCK;
        UnloadGFXSlots(entity);
        LoadFixedGFX(entity, 0x1f5);
        ChangeObjPalette(entity, 0x16b);
        InitializeAnimation(entity, 0x1a);

        entity = ((VaatiWrathHeapStruct*)super->myHeap)->type3;
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->type3 = NULL;
#ifndef EU
        entity = ((VaatiWrathHeapStruct*)super->myHeap)->object5b;
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->object5b = NULL;

        gRoomControls.camera_target = &gPlayerEntity.base;
#endif
        entity = ((VaatiWrathHeapStruct*)super->myHeap)->eyes[0];
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->eyes[0] = NULL;

        entity = ((VaatiWrathHeapStruct*)super->myHeap)->eyes[1];
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->eyes[1] = NULL;

        entity = ((VaatiWrathHeapStruct*)super->myHeap)->eyes[2];
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->eyes[2] = NULL;

        entity = ((VaatiWrathHeapStruct*)super->myHeap)->eyes[3];
        entity->myHeap = NULL;
        DeleteEntity(entity);
        ((VaatiWrathHeapStruct*)super->myHeap)->eyes[3] = NULL;

        SetPlayerControl(2);
    }
}

void sub_08041CD0(VaatiWrathEntity* this) {
    GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
    if (super->frame & ANIM_DONE) {
        if (super->timer != 0) {
            super->timer--;
        } else {
            super->subAction = 2;
            super->timer = 60;
            MessageFromTarget(TEXT_INDEX(TEXT_VAATI2, 0x51));
        }
    } else {
        UpdateAnimationSingleFrame(super);
    }
}

void sub_08041D14(VaatiWrathEntity* this) {
    Entity* pEVar1;

    GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
    if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
        if (super->timer != 0) {
            super->timer--;
        } else {
            if (gEntCount < 0x46) {
                pEVar1 = CreateObject(VAATI3_DEATH, 0, 0);
                pEVar1->parent = super;
                super->child = pEVar1;
                pEVar1 = CreateObject(VAATI3_DEATH, 1, 0);
                pEVar1->parent = super;
                super->subAction = 3;
                super->timer = 150;
                super->subtimer = 0;
                super->spriteSettings.draw = 0;
                SoundReq(SFX_1C4);
            }
        }
    }
}

void sub_08041D84(VaatiWrathEntity* this) {
    GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
    if (super->timer != 0) {
        super->timer--;
    } else {
        if (super->subtimer < 0xf0) {
            if ((0xb7 < super->subtimer) && ((super->subtimer & 7) == 0)) {
                ChangeObjPalette(((VaatiWrathHeapStruct*)super->myHeap)->type2,
                                 gUnk_080D0E80[(super->subtimer - 0xb8) >> 3]);
                ChangeObjPalette(super->child, gUnk_080D0E80[(super->subtimer - 0xb8) >> 3]);
            }
            if (super->subtimer == 0xe6) {
                SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
            }
        } else {
            super->subAction = 4;
            super->spriteSettings.draw = 1;
            ChangeObjPalette(super, 0x173);
            InitAnimationForceUpdate(super, 0xb);
        }
        super->subtimer++;
        sub_08041E78(this);
    }
}

void sub_08041E20(VaatiWrathEntity* this) {
    super->subtimer++;
    sub_08041E78(this);
    GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
    if (gFadeControl.active == 0) {
        super->subAction = 5;
        super->timer = 90;
    }
}

void sub_08041E50(VaatiWrathEntity* this) {
    Entity* type2;

    if (--super->timer == 0) {
        SetGlobalFlag(ENDING);
        type2 = ((VaatiWrathHeapStruct*)super->myHeap)->type2;
        type2->myHeap = NULL;
        DeleteEntity(type2);
        DeleteThisEntity();
    }
}

void sub_08041E78(VaatiWrathEntity* this) {
    Entity* fx;
    const s8* temp;

    if ((super->subtimer & 0xf) == 0) {
        fx = CreateFx(super, FX_GIANT_EXPLOSION4, 0);
        if (fx != NULL) {
            temp = &gUnk_080D0E90[super->subtimer >> 3 & 0xe];
            fx->x.HALF.HI += *temp++;
            fx->y.HALF.HI += *temp;
            fx->spritePriority.b0 = 3;
            InitScreenShake(4, 0);
        }
    }
}

u32 sub_08041ED4(VaatiWrathEntity* this) {
    VaatiWrathHeapStruct* heap;
    Entity* entity;

    if (gEntCount < 0x46) {
        heap = zMalloc(sizeof(VaatiWrathHeapStruct));
        if (heap != NULL) {
            super->myHeap = (void*)heap;
            heap->type0 = super;
            heap->type3 = NULL;
            heap->arms[0] = NULL;
            heap->arms[1] = NULL;
            entity = CreateEnemy(VAATI_WRATH, 1);
            entity->myHeap = (void*)heap;
            heap->type1 = entity;
            entity = CreateEnemy(VAATI_WRATH, 2);
            entity->myHeap = (void*)heap;
            heap->type2 = entity;
            return 1;
        }
    }
    return 0;
}

u32 sub_08041F1C(VaatiWrathEntity* this) {
    Entity* eye;

    if (!(gEntCount < 0x44)) {
        return 0;
    }

    eye = CreateEnemy(VAATI_WRATH_EYE, 0);
    eye->parent = super;
    ((VaatiWrathHeapStruct*)super->myHeap)->eyes[0] = eye;
    eye = CreateEnemy(VAATI_WRATH_EYE, 1);
    eye->parent = super;
    ((VaatiWrathHeapStruct*)super->myHeap)->eyes[1] = eye;
    eye = CreateEnemy(VAATI_WRATH_EYE, 2);
    eye->parent = super;
    ((VaatiWrathHeapStruct*)super->myHeap)->eyes[2] = eye;
    eye = CreateEnemy(VAATI_WRATH_EYE, 3);
    eye->parent = super;
    ((VaatiWrathHeapStruct*)super->myHeap)->eyes[3] = eye;
    return 1;
}

u32 sub_08041F74(VaatiWrathEntity* this, u32 unk1) {
    Entity* arm;
    VaatiWrathHeapStruct* heap;

    if (!(gEntCount < 0x47)) {
        return 0;
    }
    heap = ((VaatiWrathHeapStruct*)super->myHeap);
    arm = NULL;
    if ((gRoomTransition.field_0x39 >> unk1 & 1U) != 0) {
        arm = CreateEnemy(VAATI_ARM, 0);
        arm->type2 = unk1;
        arm->parent = super;
        CopyPosition(super, arm);
    }
    if (unk1 == 0) {
        heap->arms[0] = arm;
    } else {
        heap->arms[1] = arm;
    }
    return 1;
}

u32 sub_08041FCC(VaatiWrathEntity* this) {
    if (gEntCount < 0x4d) {
        if (sub_08041ED4(this)) {
            sub_08041F74(this, 0);
            sub_08041F74(this, 1);
            sub_08041F1C(this);
            return 1;
        }
    }
    return 0;
}

void sub_08042004(VaatiWrathEntity* this) {
    super->z.HALF.HI = gUnk_080D0EA0[(++this->unk_78 >> 4) & 7];
}

void sub_08042028(VaatiWrathEntity* this) {
    super->action = 3;
    super->timer = gUnk_080D0EA8[Random() & 3];
    super->speed = 0x40;
    super->direction = sub_0804207C(this);
}

void sub_08042050(VaatiWrathEntity* this) {
    u32 uVar1;

    super->action = 8;
    uVar1 = Random();
    super->timer = gUnk_080D0EAC[uVar1 & 3];
    super->speed = 0x20;
    super->direction = ((uVar1 >> 8) & 0x10) + 8;
}

u32 sub_0804207C(VaatiWrathEntity* this) {
    Entity* arm;
    u32 x;
    u32 y;
    u32 tmp;

    x = super->x.HALF.HI;
    y = super->y.HALF.HI - 0x10;
    arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[0];
    if ((arm != NULL) && (arm->action >= 5) && EntityWithinDistance(arm, x, y, 0x30)) {
        return CalculateDirectionTo(arm->x.HALF.HI, arm->y.HALF.HI, x, y);
    } else {
        arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[1];
        if (((arm != NULL) && (arm->action >= 5)) && EntityWithinDistance(arm, x, y, 0x30)) {
            return CalculateDirectionTo(arm->x.HALF.HI, arm->y.HALF.HI, x, y);
        } else {
            if (gPlayerEntity.base.y.HALF.HI < 0x40) {
                tmp = gRoomControls.origin_y + 0x18;

            } else {
                tmp = gPlayerEntity.base.y.HALF.HI - 0x28;
            }
            return CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gPlayerEntity.base.x.HALF.HI, tmp);
        }
    }
}

void sub_08042120(VaatiWrathEntity* this) {
    super->action = 5;
    super->subAction = 0;
}

void sub_0804212C(VaatiWrathEntity* this) {
    Entity* arm;
    u32 y, x;

    if (this->unk_7c != 0u) {
        this->unk_7c--;
        return;
    }
    arm = NULL;
    y = super->y.HALF.HI - 0x44;
    if (gPlayerEntity.base.y.HALF.HI - y < 0x61u) {
        x = super->x.HALF.HI - 0x38;
        if (gPlayerEntity.base.x.HALF.HI - x < 0x39u) {
            arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[1];
        } else {
            if ((gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI) < 0x39u) {
                arm = ((VaatiWrathHeapStruct*)super->myHeap)->arms[0];
            }
        }
    }
    if (arm != NULL) {
        if (arm->action != 2) {
            return;
        }
        if ((Random() & 1) == 0) {
            return;
        }
        arm->action = 3;
        arm->subAction = 0;
        this->unk_7c = 0x2d0;
    } else {
        this->unk_7c = 0x3c;
    }
}

void sub_080421AC(VaatiWrathEntity* this) {
    if (this->unk_7e != 0) {
        this->unk_7e--;
    } else {
        if (this->unk_79 == 0) {
            if (((Random() & 1) != 0) && ((gRoomTransition.field_0x39 & 0xc) != 0)) {
                sub_08042264(this);
                this->unk_79 = 1;
                return;
            }
            this->unk_7e = 0x1e;
            return;
        }
        if (sub_080422C0(this, 0) == 0) {
            return;
        }
        this->unk_79 = 0;
        this->unk_7e = 0x168;
    }
}

void sub_08042214(VaatiWrathEntity* this) {
    if (this->unk_7e != 0) {
        this->unk_7e--;
    } else {
        if (this->unk_79 == 0) {
            if ((Random() & 3) != 0) {
                sub_0804228C(this);
                this->unk_79 = 1;
                return;
            }
            this->unk_7e = 0x1e;
        } else {
            if (sub_080422C0(this, 1) == 0) {
                return;
            }
            this->unk_79 = 0;
            this->unk_7e = 0xb4;
        }
    }
}

void sub_08042264(VaatiWrathEntity* this) {
    InitAnimationForceUpdate(super, 1);
    ((VaatiWrathHeapStruct*)super->myHeap)->type1->subAction = 1;
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type1, 0xd);
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x13);
}

void sub_0804228C(VaatiWrathEntity* this) {
    InitAnimationForceUpdate(super, 2);
    ((VaatiWrathHeapStruct*)super->myHeap)->type1->subAction = 1;
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type1, 0xd);
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x13);
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type3, 0x1d);
}

u32 sub_080422C0(VaatiWrathEntity* this, u32 unk1) {
    Entity* type1;
    Entity* child;
    u32 tmp;

    UpdateAnimationSingleFrame(super);
    GetNextFrame(((VaatiWrathHeapStruct*)super->myHeap)->type2);
    type1 = ((VaatiWrathHeapStruct*)super->myHeap)->type1;
    GetNextFrame(type1);
    if (unk1 + 1 == (tmp = type1->frame)) {
        child = CreateProjectile(V3_ELECTRIC_PROJECTILE);
        if (child != NULL) {
            child->type = unk1;
            child->parent = super;
            type1->frame &= ~tmp;
        }
    } else {
        if (type1->frame == 4) {
            type1->frame &= 0xfb;
            InitAnimationForceUpdate(super, 3);
        } else {
            if (type1->frame & ANIM_DONE) {
                InitAnimationForceUpdate(super, 0);
                type1->subAction = 0;
                InitializeAnimation(type1, 0xc);
                InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x12);
                if (unk1 == 1) {
                    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type3, 0x1b);
                }
                return 1;
            }
        }
    }
    return 0;
}

void sub_0804235C(VaatiWrathEntity* this) {
    Entity* type1;

    super->action = 7;
    super->timer = 120;
    this->unk_79 = 0;
    this->unk_7e = 0xf0;
    InitAnimationForceUpdate(super, 0);
    type1 = ((VaatiWrathHeapStruct*)super->myHeap)->type1;
    type1->subAction = 0;
    InitializeAnimation(type1, 0xc);
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type2, 0x12);
    InitializeAnimation(((VaatiWrathHeapStruct*)super->myHeap)->type3, 0x1b);
}

#if defined USA || defined DEMO_USA || defined DEMO_JP
void VaatiWrathType0PreAction(VaatiWrathEntity* this) {
    int temp;
    if ((gRoomTransition.field_0x38 & 2) == 0) {
        if (gSave.vaati_timer != 0) {
            gSave.vaati_timer--;
        } else {
            temp = gPlayerState.framestate_last;
            switch (temp) {
                case PL_STATE_IDLE:
                case PL_STATE_WALK:
                    if (gPlayerState.item == NULL) {
                        if (gPlayerEntity.unk_7a == 0) {
                            if ((gPlayerEntity.base.z.HALF.HI & 0x8000U) == 0 || (gPlayerState.field_0xa != 0)) {
                                CreateEzloHint(TEXT_INDEX(TEXT_EZLO, 0x70), 0);
                                gRoomTransition.field_0x38 |= 2;
                            }
                        }
                    }
                    break;
            }
        }
    }
}
#endif

void VaatiWrathType1(VaatiWrathEntity* this) {
    if (((VaatiWrathHeapStruct*)super->myHeap)->type0->next == NULL) {
        super->myHeap = NULL;
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        super->subAction = 0;
        InitializeAnimation(super, 0xc);
    }
    if (super->subAction == 0) {
        GetNextFrame(super);
    }
    if ((*(u32*)&super->animIndex & 0x8000ff) == 0x80000c) {
        InitializeAnimation(super, 0xc);
        super->frameDuration = (Random() & 0x78) + 0x78;
    }
    sub_0806FA90(((VaatiWrathHeapStruct*)super->myHeap)->type0, super, 0, 1);
    super->spriteOffsetY--;
}

void VaatiWrathType2(VaatiWrathEntity* this) {
    u32 uVar1;

    if (((VaatiWrathHeapStruct*)super->myHeap)->type0->next == NULL) {
        super->myHeap = NULL;
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 0x12);
    }
    sub_0806FA90(((VaatiWrathHeapStruct*)super->myHeap)->type0, super, 0, -1);
    super->spriteOffsetY++;
    if (super->animIndex == 0x12) {
        uVar1 = GetFacingDirection(super, &gPlayerEntity.base);
        super->x.HALF.HI = gUnk_080D0EB0[uVar1] + super->x.HALF.HI;
    }
}

void VaatiWrathType3(VaatiWrathEntity* this) {
    if (((VaatiWrathHeapStruct*)super->myHeap)->type0->next == NULL) {
        super->myHeap = NULL;
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        InitializeAnimation(super, 0x1c);
    }
    sub_0806FA90(((VaatiWrathHeapStruct*)super->myHeap)->type0, super, 0, -1);
    super->spriteOffsetY++;
    GetNextFrame(super);
}
