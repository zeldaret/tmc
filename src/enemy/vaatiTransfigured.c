/**
 * @file vaatiTransfigured.c
 * @ingroup Enemies
 *
 * @brief Vaati Transfigured enemy
 */
#include "enemy.h"
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[5];
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unused2[6];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unk_75;
    /*0x76*/ u8 unk_76;
    /*0x77*/ u8 unk_77;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unused3[1];
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unused4[1];
    /*0x86*/ u8 unk_86;
    /*0x87*/ u8 unk_87;
} VaatiTransfiguredEntity;

extern void Knockback1(Entity*);

void sub_080409B0(VaatiTransfiguredEntity*);
void sub_080408EC(VaatiTransfiguredEntity*);
void sub_08040AD4(VaatiTransfiguredEntity*);
void sub_08040670(VaatiTransfiguredEntity*);
void sub_080406A0(VaatiTransfiguredEntity*);
void sub_08040770(VaatiTransfiguredEntity*);
u32 sub_08040934(VaatiTransfiguredEntity*);
void sub_08040648(VaatiTransfiguredEntity*, u32, u32);

void VaatiTransfiguredType0Action0(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action1(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action2(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action3(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action4(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action5(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action6(VaatiTransfiguredEntity*);
void VaatiTransfiguredType0Action7(VaatiTransfiguredEntity*);
void VaatiTransfiguredType1Action0(VaatiTransfiguredEntity*);
void VaatiTransfiguredType1Action1(VaatiTransfiguredEntity*);
void VaatiTransfiguredType2Action0(VaatiTransfiguredEntity*);
void VaatiTransfiguredType2Action1(VaatiTransfiguredEntity*);
void VaatiTransfiguredType2Action2(VaatiTransfiguredEntity*);
void VaatiTransfiguredType3Action0(VaatiTransfiguredEntity*);
void VaatiTransfiguredType3Action1(VaatiTransfiguredEntity*);
void VaatiTransfiguredType4Action0(VaatiTransfiguredEntity*);
void VaatiTransfiguredType4Action1(VaatiTransfiguredEntity*);
void VaatiTransfiguredType5Action0(VaatiTransfiguredEntity*);
void VaatiTransfiguredType5Action1(VaatiTransfiguredEntity*);
void VaatiTransfiguredType5Action2(VaatiTransfiguredEntity*);

typedef struct {
    s8 x;
    s8 y;
} PACKED xy;

#ifdef EU
const u8 gUnk_080D0ABC[] = { 0xf0, 0xd0, 0xb0 };
#else
const u8 gUnk_080D0ABC[] = { 0xf0, 0xd0, 0xc0 };
#endif
const u8 gUnk_080D0ABF[] = { 0x3c, 0x3c, 0x1e, 0x14, 0x14, 0x14, 0, 0, 0 };
void (*const vaatiTransfiguredType0Actions[])(VaatiTransfiguredEntity*) = {
    VaatiTransfiguredType0Action0, VaatiTransfiguredType0Action1, VaatiTransfiguredType0Action2,
    VaatiTransfiguredType0Action3, VaatiTransfiguredType0Action4, VaatiTransfiguredType0Action5,
    VaatiTransfiguredType0Action6, VaatiTransfiguredType0Action7,
};
void (*const vaatiTransfiguredType1Actions[])(VaatiTransfiguredEntity*) = {
    VaatiTransfiguredType1Action0,
    VaatiTransfiguredType1Action1,
};
void (*const vaatiTransfiguredType2Actions[])(VaatiTransfiguredEntity*) = {
    VaatiTransfiguredType2Action0,
    VaatiTransfiguredType2Action1,
    VaatiTransfiguredType2Action2,
};
void (*const vaatiTransfiguredType3Actions[])(VaatiTransfiguredEntity*) = {
    VaatiTransfiguredType3Action0,
    VaatiTransfiguredType3Action1,
};
void (*const vaatiTransfiguredType4Actions[])(VaatiTransfiguredEntity*) = {
    VaatiTransfiguredType4Action0,
    VaatiTransfiguredType4Action1,
};
void (*const vaatiTransfiguredType5Actions[])(VaatiTransfiguredEntity*) = {
    VaatiTransfiguredType5Action0,
    VaatiTransfiguredType5Action1,
    VaatiTransfiguredType5Action2,
};

const xy gUnk_080D0B18[] = { { 0x00, 0xfe }, { 0x01, 0xfe }, { 0x01, 0xfe }, { 0x02, 0xfe }, { 0x02, 0xfe },
                             { 0x03, 0xfe }, { 0x03, 0xfe }, { 0x04, 0xfe }, { 0x04, 0xff }, { 0x03, 0xff },
                             { 0x03, 0x00 }, { 0x02, 0x00 }, { 0x02, 0x00 }, { 0x01, 0x00 }, { 0x01, 0x00 },
                             { 0x00, 0x00 }, { 0x00, 0x00 }, { 0x00, 0x00 }, { 0xff, 0x00 }, { 0xff, 0x00 },
                             { 0xfe, 0x00 }, { 0xfe, 0x00 }, { 0xfd, 0x00 }, { 0xfd, 0xff }, { 0xfc, 0xff },
                             { 0xfc, 0xfe }, { 0xfd, 0xfe }, { 0xfd, 0xfe }, { 0xfe, 0xfe }, { 0xfe, 0xfe },
                             { 0xff, 0xfe }, { 0xff, 0xfe } };

const u16 gUnk_080D0B58[] = { 0x00b0, 0x0070, 0x0110, 0x0040, 0x0050, 0x0040 };

const u16 gUnk_080D0B64[] = { 0x00b0, 0x0040, 0x0110, 0x00a0, 0x00b0, 0x00c0, 0x0050, 0x00a0 };

const u8 gUnk_080D0B74[] = { 0xf0, 0xc3, 0xf0, 0x3c, 0xc3, 0x3c, 0x3c, 0xf0,
                             0x0f, 0x3c, 0xc3, 0xf0, 0xf0, 0xc3, 0x3c, 0xc3 };

const u8 gUnk_080D0B84[] = { 0x01, 0x00, 0x01, 0x02, 0x00, 0x01, 0x02, 0x00, 0x01, 0x00, 0x02,
                             0x01, 0x02, 0x01, 0x00, 0x02, 0x01, 0x02, 0x00, 0x01, 0x02, 0x01,
                             0x02, 0x00, 0x02, 0x01, 0x00, 0x01, 0x01, 0x00, 0x02, 0x00 };

void VaatiTransfigured(VaatiTransfiguredEntity* this) {
    switch (super->type) {
        case 0:
            if (super->action != 0) {
                this->unk_7a = this->unk_78;
                this->unk_78 = super->x.HALF.HI;
                this->unk_7e = this->unk_7c;
                this->unk_7c = super->y.HALF.HI;
                sub_080409B0(this);
            }
            vaatiTransfiguredType0Actions[super->action](this);
            break;
        case 1:
            vaatiTransfiguredType1Actions[super->action](this);
            break;
        case 2:
            vaatiTransfiguredType2Actions[super->action](this);
            break;
        case 3:
            vaatiTransfiguredType3Actions[super->action](this);
            break;
        case 4:
            vaatiTransfiguredType4Actions[super->action](this);
            break;
        case 5:
            vaatiTransfiguredType5Actions[super->action](this);
            return;
        default:
            break;
    }
}

void VaatiTransfiguredType0Action0(VaatiTransfiguredEntity* this) {
    Entity* enemy;
    u32 i;

    sub_0804A720(super);
    if ((CheckRoomFlag(0) != 0) && (gEntCount < 0x51)) {
        super->action = 1;
        super->spriteSettings.draw = 1;
        super->spritePriority.b0 = 5;
        this->unk_6d |= 1;
        super->direction = (Random() & 0x17) + 4;
        super->timer = 48;
        super->subtimer = 12;
        this->unk_82 = 4;
        this->unk_80 = 0xff;
        this->unk_74 = 0;
        this->unk_77 = 0;
        this->unk_84 = 9;
        super->animationState = 0;
        this->unk_86 = 0;
        this->unk_87 = 0;
        this->unk_78 = super->x.HALF.HI;
        this->unk_7a = super->x.HALF.HI;
        this->unk_7c = super->y.HALF.HI;
        this->unk_7e = super->y.HALF.HI;
        for (i = 1; i < 6; i++) {
            sub_08040648(this, i, 0);
        }
        Random();
        sub_080408EC(this);
        for (i = 0; i < 8; ++i) {
            enemy = CreateEnemy(VAATI_TRANSFIGURED_EYE, 0);
            enemy->parent = super;
            enemy->type2 = i;
            if ((this->unk_75 >> (i)&1) != 0) {
                enemy->timer = 1;
            } else {
                enemy->timer = 0;
            }
        }
        InitAnimationForceUpdate(super, 0);
    }
}

void VaatiTransfiguredType0Action1(VaatiTransfiguredEntity* this) {
    Entity* object;

    switch (this->unk_80) {
        case 0xff:
            if (--super->timer == 0) {
                this->unk_80 = 0;
                super->timer = 11;
            }
            break;
        case 0:
            if (--super->timer == 0) {
                this->unk_80++;
                super->speed = 0x180;
                super->timer = 20;
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_80++;
                super->speed = 0xc0;
                super->timer = 12;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                this->unk_80++;
                super->speed = 0;
                if (super->animationState < 2) {
                    super->timer = (Random() & 0x7f) + 64;
                } else {
                    super->timer = 8;
                }
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->z.HALF.HI = 0;
                this->unk_80 = 0;
                super->timer = gUnk_080D0ABF[(u32)super->animationState * 2];
                switch (sub_08040934(this)) {
                    case 1:
                        super->action = 4;
                        this->unk_74 = 1;
                        break;
                    case 2:
                        super->action = 5;
                        break;
                    case 3:
                        super->action = 6;
                        break;
                    default:
                        this->unk_80 = 4;
                        break;
                }
            } else {
                sub_08040AD4(this);
            }
            break;
        case 4:
            sub_08040670(this);
            break;
    }

    if (--this->unk_82 == 0) {
        this->unk_82 = 4;
        object = CreateObject(VAATI2_PARTICLE, 0, ((super->direction + 0x12) & 0x1c) >> 2);
        if (object != NULL) {
            object->parent = super;
            object->x.HALF.HI += (Random() & 0xf) - 7;
            object->y.HALF.HI += (Random() & 0xf) - 7;
            object->spritePriority.b0 = 6;
        }
    }
    if (this->unk_80 != 0xff) {
        ProcessMovement0(super);
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType0Action2(VaatiTransfiguredEntity* this) {
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType0Action3(VaatiTransfiguredEntity* this) {
    Entity* pEVar3;
    u32 uVar4;
    u32 tmp;

    switch (this->unk_80) {
        case 0:
            uVar4 = BounceUpdate(super, Q_8_8(40.0));
            if (uVar4 != 1)
                break;
            this->unk_80 = 1;
            super->timer = 192;
            COLLISION_ON(super);
            SoundReq(SFX_14C);
            InitScreenShake(20, 4);
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_80 = 2;
                super->hitType = 0x35;
                super->spriteOffsetX = 0;
            }
            if (super->health < gUnk_080D0ABC[super->animationState]) {
                tmp = 1;
                super->timer = 1;
            } else {
                tmp = 0;
            }
            if (tmp) {
                this->unk_80 = 2;
                super->hitType = 0x35;
                super->spriteOffsetX = 0;
                super->animationState++;
                if (super->animationState > 2) {
                    super->action = 7;
                    super->timer = 224;
                    DeleteClones();
                    SoundReq(SFX_BOSS_HIT);
                    return;
                }
            }
            break;
        case 2:
            ((VaatiTransfiguredEntity*)super->child)->unk_74 = 0x10;
            if (super->timer) {
                this->unk_80 = 3;
                super->timer = 64;
            } else {
                this->unk_80 = 4;
                super->timer = 80;
            }
            break;
        case 3:
            if (super->timer != 0) {
                if (--super->timer == 0) {
                    COLLISION_OFF(super);
                    super->zVelocity = Q_16_16(3.5);
                    super->subtimer = 16;
                }
                break;
            }
            if (GravityUpdate(super, Q_8_8(40.0)) == 0) {
                this->unk_80 = 5;
                super->timer = 16;
                COLLISION_ON(super);
                super->health = 0xff;
                this->unk_86 = 0;
                sub_080408EC(this);
                SoundReq(SFX_14C);
                InitScreenShake(30, 4);
            } else {
                if (super->subtimer != 0) {
                    if (--super->subtimer == 0) {
                        SoundReq(SFX_1B0);
                    } else {
                        if ((super->subtimer & 7) == 0) {
                            SoundReq(SFX_149);
                        }
                    }
                }
            }
            break;
        case 4:
            if (--super->timer == 0) {
                this->unk_80 = 5;
                super->timer = 16;
                this->unk_86 = 0;
                sub_080408EC(this);
            } else {
                if (((super->timer & 1) != 0) && (pEVar3 = CreateObject(VAATI2_PARTICLE, 1, 0xff), pEVar3 != NULL)) {
                    pEVar3->parent = super;
                    CopyPosition(super, pEVar3);
                    pEVar3->x.HALF.HI += (Random() & 0xf) - 7;
                    pEVar3->y.HALF.HI += (Random() & 0xf) - 7;
                    pEVar3->spritePriority.b0 = 4;
                    SoundReq(SFX_124);
                }
            }
            break;
        case 5:
            if (--super->timer == 0) {
                super->action = 1;
                this->unk_80 = 0;
                this->unk_81 = 0;
                this->unk_76 = 0;
                sub_08040670(this);
            }
    }
    if (this->unk_80 > 2) {
        super->spriteOffsetX = super->timer & 1;
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType0Action4(VaatiTransfiguredEntity* this) {
    switch (this->unk_80) {
        case 0:
            if (--super->timer == 0) {
                this->unk_80++;
                this->unk_74 = 0;
                super->timer = 128;
                super->subtimer = 0;
                super->zVelocity = Q_16_16(2.25);
                SoundReq(SFX_12B);
            }
            break;
        case 1:
            if (GravityUpdate(super, Q_8_8(40)) != 0)
                break;
            this->unk_80++;
            switch (this->unk_84) {
                case 1:
                case 3:
                    super->subtimer = 1;
                    break;
                case 0:
                case 2:
                    super->subtimer = 0;
                    break;
                default:
                    super->subtimer = (Random() & 0x20) >> 5;
                    break;
            }
            if (1 < super->animationState) {
                super->subtimer = 1;
            }
            SoundReq(SFX_14C);
            InitScreenShake(30, 4);
            break;
        case 2:
            if (--super->timer == 0) {
                this->unk_80++;
                super->timer = gUnk_080D0ABF[((u32)super->animationState << 1 | 1)];
            } else {
                if ((super->timer & 7) == 0) {
                    EnemyCreateProjectile(super, V2_PROJECTILE, super->subtimer);
                }
                if (((super->subtimer != 0) && (1 < super->animationState)) && (super->timer < 6)) {
                    super->timer = 128;
                    super->subtimer = 0;
                }
            }
            break;
        case 3:
            if (--super->timer == 0) {
                super->action = 1;
                this->unk_80 = 0;
                super->z.HALF.HI = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
            break;
        default:
            break;
    }

    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType0Action5(VaatiTransfiguredEntity* this) {
    Entity* entity;

    switch (this->unk_80) {
        case 0:
            if (--super->timer == 0) {
                this->unk_80++;
                super->timer = 64;
                if (1 < super->animationState) {
                    super->timer = 128;
                    super->subtimer = 1;
                }
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_80++;
                super->timer = gUnk_080D0ABF[(super->animationState << 1 | 1)];
            } else {
                if (super->subtimer) {
                    if ((super->timer & 7) == 0) {
                        EnemyCreateProjectile(super, V2_PROJECTILE, super->subtimer);
                    }
                    if (super->timer < 6) {
                        super->timer = 64;
                        super->subtimer = 0;
                    }
                } else {
                    if ((super->timer & 0xf) == 0) {
                        entity = EnemyCreateProjectile(super, V2_PROJECTILE, 2);
                        if (entity != NULL) {
                            entity->type2 = 0;
                            if (this->unk_81 != 0) {
                                entity->speed = entity->speed >> 1;
                            }
                        }
                    }
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                super->action = 1;
                this->unk_80 = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType0Action6(VaatiTransfiguredEntity* this) {
    Entity* pEVar2;

    switch (this->unk_80) {
        case 0:
            if (--super->timer == 0) {
                this->unk_80++;
                super->timer = 128;
                if (1 < super->animationState) {
                    super->subtimer = 1;
                }
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_80++;
                super->timer = gUnk_080D0ABF[(super->animationState << 1) | 1];
            } else {
                if (super->subtimer) {
                    if ((super->timer & 7) == 0) {
                        EnemyCreateProjectile(super, V2_PROJECTILE, super->subtimer);
                    }
                    if (super->timer < 6) {
                        super->timer = 128;
                        super->subtimer = 0;
                    }
                } else {
                    if ((super->timer & 0x1f) == 0) {
                        pEVar2 = EnemyCreateProjectile(super, V2_PROJECTILE, 2);
                        if (pEVar2 != NULL) {
                            pEVar2->type2 = 1;
                            pEVar2->y.HALF.HI += -0x20;
                            if (this->unk_81 != 0) {
                                pEVar2->speed = pEVar2->speed >> 1;
                            }
                        }
                    }
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                super->action = 1;
                this->unk_80 = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType0Action7(VaatiTransfiguredEntity* this) {
    Entity* pEVar3;
    u32 uVar4;

    PausePlayer();
    if (super->timer) {
        if (--super->timer == 0) {
            SetRoomFlag(2);
            super->subtimer = 8;
            UpdateAnimationSingleFrame(super);
            return;
        }
    } else {
        if (super->subtimer != 0) {
            if (--super->subtimer == 0) {
                super->health = 0;
                super->spriteSettings.draw = 0;
            }
        } else {
            GenericDeath(super);
        }
        UpdateAnimationSingleFrame(super);
        return;
    }
    super->subtimer = (super->subtimer + 1) & 7;
    if (super->subtimer == 0) {
        pEVar3 = CreateFx(super, FX_AURA_BASE, 0);
        if (pEVar3 != NULL) {
            uVar4 = Random() & 0x3f3f;
            pEVar3->x.HALF.HI += (uVar4 & 0xff) - 0x20;
            pEVar3->y.HALF.HI += ((uVar4 >> 8) & 0xff) - 0x20;
#ifndef EU
            pEVar3->spritePriority.b0 = 2;
#endif
            SoundReq(SFX_16E);
        }
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType1Action0(VaatiTransfiguredEntity* this) {
    super->action = 1;
    super->timer = 0;
    this->unk_80 = 0;
    super->spritePriority.b0 = 6;
    InitAnimationForceUpdate(super, (u32)super->timer);
}

void VaatiTransfiguredType1Action1(VaatiTransfiguredEntity* this) {
    Entity* parent;

    parent = super->parent;
    if (parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    super->x.HALF.HI = ((VaatiTransfiguredEntity*)parent)->unk_7a;
    super->y.HALF.HI = ((VaatiTransfiguredEntity*)parent)->unk_7e;
    if (((VaatiTransfiguredEntity*)parent)->unk_74 == 0) {
        UpdateAnimationSingleFrame(super);
    } else {
        sub_080042BA(super, 2);
    }
    if (parent->action >= 5) {
        if (super->timer == 0) {
            super->timer = 1;
            InitAnimationForceUpdate(super, 1);
        }
    } else {
        if (super->timer != 0) {
            super->timer = 0;
            InitAnimationForceUpdate(super, 0);
        }
    }
    if (parent->action != 3) {
        super->z.HALF.HI = parent->z.HALF.HI;
    }
}

void VaatiTransfiguredType2Action0(VaatiTransfiguredEntity* this) {
    if (super->type2 != 0) {
        super->action = 1;
        super->spritePriority.b0 = super->type2 + 1;
        InitAnimationForceUpdate(super, super->type2 + 4);
    } else {
        super->spritePriority.b0 = 4;
        if (gEntCount < 0x46) {
            sub_08040648(this, 2, 1);
            sub_08040648(this, 2, 2);
            super->action = 1;
            super->timer = 0;
            super->subtimer = (Random() & 0x7f) + 23;
            this->unk_74 = 0;
            InitAnimationForceUpdate(super, 0);
        }
    }
}

void VaatiTransfiguredType2Action1(VaatiTransfiguredEntity* this) {
    u32 uVar3;

    const xy* t;

    if (super->parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    CopyPosition(super->parent, super);
    switch (super->type2) {
        case 2:
            uVar3 = GetFacingDirection(super, &gPlayerEntity.base);
            t = &gUnk_080D0B18[uVar3];
            super->x.HALF.HI += t->x;
            super->y.HALF.HI += t->y;
        case 1:
            if (super->parent->frameIndex != 2) {
                super->action = 2;
                super->spriteSettings.draw = 0;
            }
            break;
        case 0:
            switch (this->unk_74) {
                case 0:
                    if (--super->subtimer == 0) {
                        super->subtimer = (Random() & 0x7f) + 39;
                        if ((super->subtimer & 1) != 0) {
                            this->unk_74 = 1;
                            InitAnimationForceUpdate(super, 8);
                        }
                    }
                    break;
                case 1:
                    if ((super->frame & ANIM_DONE) != 0) {
                        this->unk_74 = 0;
                        super->subtimer = (Random() & 0x7f) + 23;
                        InitAnimationForceUpdate(super, 0);
                    }
                    break;
                case 0x10:
                    InitAnimationForceUpdate(super, 7);
                    this->unk_74 = 0x11;
                    super->subtimer = 80;
                    break;
                case 0x11:
                    if (--super->subtimer == 0) {
                        this->unk_74 = 1;
                        super->subtimer = 48;
                        InitAnimationForceUpdate(super, 8);
                    }
            }
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType2Action2(VaatiTransfiguredEntity* this) {
    if (super->parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    CopyPosition(super->parent, super);
    if (super->parent->frameIndex == 2) {
        super->action = 1;
        super->spriteSettings.draw = 1;
    }
}

void VaatiTransfiguredType3Action0(VaatiTransfiguredEntity* this) {
    super->action = 1;
    super->spritePriority.b0 = 4;
    InitAnimationForceUpdate(super, 0);
}

void VaatiTransfiguredType3Action1(VaatiTransfiguredEntity* this) {
    if (super->parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    CopyPosition(super->parent, super);
    UpdateAnimationSingleFrame(super);
}

void VaatiTransfiguredType4Action0(VaatiTransfiguredEntity* this) {
    super->action = 1;
    this->unk_80 = 0;
    super->timer = 10;
    super->spriteSettings.draw = 0;
    super->spritePriority.b0 = 7;
    InitializeAnimation(super, 0);
}

void VaatiTransfiguredType4Action1(VaatiTransfiguredEntity* this) {
    if (super->parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    if (super->parent->action != 5) {
        if (this->unk_80 != 0) {
            this->unk_80 = 0;
            super->spriteSettings.draw = 0;
        }
    } else {
        if (this->unk_80 == 0) {
            this->unk_80++;
            super->spriteSettings.draw = 1;
        }
        if (--super->timer == 0) {
            super->timer = 10;
            SoundReq(SFX_149);
        }
    }
    CopyPosition(super->parent, super);
    GetNextFrame(super);
}

void VaatiTransfiguredType5Action0(VaatiTransfiguredEntity* this) {
    if (super->type2 != 0) {
        super->action = 2;
        super->timer = 10;
        super->spritePriority.b0 = 3;
        InitializeAnimation(super, 2);
    } else {
        super->action = 1;
        super->spriteSettings.draw = 0;
        super->spritePriority.b0 = 4;
    }
}

void VaatiTransfiguredType5Action1(VaatiTransfiguredEntity* this) {
    if (super->parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    switch (this->unk_80) {
        case 0:
            if (super->parent->action != 6) {
                return;
            }
            this->unk_80++;
            super->spriteSettings.draw = 1;
            InitializeAnimation(super, 1);
            break;
        case 1:
            if (super->parent->action != 6) {
                this->unk_80 = 0;
                super->spriteSettings.draw = 0;
            } else {
                if (super->frame & ANIM_DONE) {
                    super->frame &= ~0x80;
                    if (gEntCount < 0x47) {
                        sub_08040648(this, super->type, 1);
                    }
                }
                if (--super->timer == 0) {
                    super->timer = 10;
                    SoundReq(SFX_149);
                }
                GetNextFrame(super);
            }
            break;
    }
    CopyPosition(super->parent, super);
}

void VaatiTransfiguredType5Action2(VaatiTransfiguredEntity* this) {
    if (super->parent->health == 0) {
        this->unk_6d |= 2;
        DeleteThisEntity();
    }
    if (this->unk_80 == 0) {
        if (super->parent->parent->action != 6) {
            if ((super->frame & ANIM_DONE) != 0) {
                this->unk_80++;
                InitializeAnimation(super, 3);
            }
        }
    } else {
        if ((super->frame & ANIM_DONE) != 0) {
            DeleteThisEntity();
        }
    }
    CopyPosition(super->parent, super);
    GetNextFrame(super);
}

void sub_08040648(VaatiTransfiguredEntity* this, u32 type, u32 type2) {
    Entity* enemy;

    enemy = CreateEnemy(VAATI_TRANSFIGURED, type);
    enemy->type2 = type2;
    enemy->parent = super;
    CopyPosition(super, enemy);
    if ((type == 2) && (type2 == 0)) {
        super->child = enemy;
    }
}

void sub_08040670(VaatiTransfiguredEntity* this) {
    super->action = 1;
    this->unk_80 = 0;
    super->speed = 0x100;
    super->timer = 12;
    if (super->animationState == 0) {
        sub_080406A0(this);
    } else {
        sub_08040770(this);
    }
}

void sub_080406A0(VaatiTransfiguredEntity* this) {
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;

    uVar2 = Random() & 0x30;
    uVar5 = this->unk_86;
    {
        u32 tmp;
        uVar6 = gRoomControls.origin_x + gUnk_080D0B58[tmp = uVar5 * 2];
        uVar4 = gRoomControls.origin_y + gUnk_080D0B58[tmp + 1];
    }
    if (EntityWithinDistance(super, uVar6, uVar4, 0x1c)) {
        if (uVar5 != 0) {
            uVar5 = 0;
        } else {
            uVar5 = (Random() & 1) + 1;
        }
        {
            u32 tmp;
            uVar6 = gRoomControls.origin_x + gUnk_080D0B58[tmp = uVar5 * 2];
            uVar4 = gRoomControls.origin_y + gUnk_080D0B58[tmp + 1];
        }
    }
    uVar3 = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, uVar6, uVar4);
    super->direction = uVar3;
    if (uVar2 & 0x20) {
        u32 tmp = super->direction;
        if (uVar2 & 0x10) {
            super->direction = tmp + 1;
        } else {
            super->direction = tmp + 0x1f;
        }
    }
    super->direction &= 0x3 | DirectionNorthWest;
    this->unk_86 = uVar5;
}

void sub_08040770(VaatiTransfiguredEntity* this) {
    u32 tmp = Random() & 0x38;
    u32 tmp2 = this->unk_86;
    u32 tmp5, tmp6;
    {
        u32 index;
        tmp5 = gRoomControls.origin_x + gUnk_080D0B64[index = tmp2 * 2];
        tmp6 = gRoomControls.origin_y + gUnk_080D0B64[index + 1];
    }
    if (EntityWithinDistance(super, tmp5, tmp6, 0x1c)) {
        if (super->animationState != 2) {
            if (tmp & 8) {
                tmp2++;
            } else {
                tmp2 += 3;
            }
            tmp2 &= 3;
            if (this->unk_81) {
                switch (this->unk_75) {
                    case 0xf:
                        if (tmp2 == 0) {
                            tmp2 = 2;
                        }
                        break;
                    case 0x3c:
                        if (tmp2 == 1) {
                            tmp2 = 3;
                        }
                        break;
                    case 0xf0:
                        if (tmp2 == 2) {
                            tmp2 = 0;
                        }
                        break;
                    case 0xc3:
                        if (tmp2 == 3) {
                            tmp2 = 1;
                        }
                        break;
                }
            }
        } else {
            if (this->unk_87 & 0x7f) {
                if (this->unk_87 & 0x80) {
                    tmp2++;
                } else {
                    tmp2 += 3;
                }
                this->unk_87--;
            } else {
                u32 tmp3;
                this->unk_87 = (Random() & 7) + 4;
                tmp5 = this->unk_87;
                if (!(Random() & 0x20)) {
                    tmp3 = tmp5 | 0x80;
                } else {
                    tmp3 = tmp5;
                }
                this->unk_87 = tmp3;
                if (tmp3 & 0x80) {
                    tmp2++;
                } else {
                    tmp2 += 3;
                }
            }
            tmp2 &= 3;
        }
        {
            u32 tmp3;
            tmp5 = gRoomControls.origin_x + gUnk_080D0B64[tmp3 = tmp2 * 2],
            tmp6 = gRoomControls.origin_y + gUnk_080D0B64[tmp3 + 1];
        }
    }
    super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, tmp5, tmp6);
    if (tmp & 0x20) {
        u32 tmp3 = super->direction;
        if (tmp & 0x10) {
            super->direction = tmp3 + 1;
        } else {
            super->direction = tmp3 + 0x1F;
        }
    }
    super->direction &= 0x3 | DirectionNorthWest;
    this->unk_86 = tmp2;
}

void sub_080408EC(VaatiTransfiguredEntity* this) {
    u32 tmp;

    if (super->animationState == 0) {
        tmp = 0xf0;
    } else {
        do {
            tmp = gUnk_080D0B74[(Random() & 0x3c) >> 2];
            if (tmp == this->unk_75) {
                tmp = 0xff;
            }
        } while (tmp == 0xff);
    }
    this->unk_75 = tmp;
    this->unk_76 = 0;
}

u32 sub_08040934(VaatiTransfiguredEntity* this) {
    u32 t;
    u32 r2;

    t = Random() & 0x3e;
    if (t < 0x2f) {
        r2 = 1;
    } else {
        r2 = 0;
    }
    if ((this->unk_87 & 0x7f) != 0) {
        r2 = 0;
    }
    if (this->unk_84 != 9) {
        if (r2 != 0) {
            this->unk_84 = (this->unk_84 + 1) % 5;
            t = (Random() & 0xf8) >> 3;
            r2 = gUnk_080D0B84[t];
            switch (this->unk_84) {
                case 3:
                case 4:
                    if (r2 == 0) {
                        r2 = 1;
                    }
                    break;
                case 1:
                    if (r2 != 0) {
                        r2 = 3;
                    } else {
                        r2 = 1;
                    }
                    break;
            }
        }
    } else {
        this->unk_84 = 0;
        r2 = 1;
    }
    return r2;
}

void sub_080409B0(VaatiTransfiguredEntity* this) {
    switch (this->unk_81) {
        case 0:
            if (this->unk_75 == this->unk_76) {
                this->unk_81 = 1;
                this->unk_76 = 0;
            }
            break;
        case 1:
            if (this->unk_76 != 0) {
                this->unk_81 = 2;
                this->unk_77 = 0x10;
            }
            break;
        case 2:
            if (--this->unk_77 == 0) {
                if (this->unk_75 != (this->unk_75 & this->unk_76)) {
                    this->unk_81 = 1;
                    this->unk_76 = 0;
                    SoundReq(SFX_155);
                } else {
                    super->action = 3;
                    this->unk_80 = 0;
                    this->unk_81 = 3;
                    COLLISION_OFF(super);
                    super->hitType = 0x36;
                    super->zVelocity = Q_16_16(1.5);
                    SoundReq(SFX_164);
                }
            }
            break;
    }

    if (this->unk_81 < 3) {
        if (super->knockbackDuration != 0) {
            Knockback1(super);
        }
    } else {
        if (((super->contactFlags & CONTACT_NOW) != 0) && (0 < super->iframes)) {
            InitScreenShake(12, 1);
            SoundReq(SFX_BOSS_HIT);
        }
        if ((super->contactFlags == (CONTACT_NOW | 0xa)) && (gPlayerState.chargeState.action == 5)) {
            super->health = 0xc0;
        }
    }
}

void sub_08040AD4(VaatiTransfiguredEntity* this) {
    u32 timer;

    timer = super->timer & 0x3f;
    if ((timer & 0x1f) == 0) {
        SoundReq(SFX_1A9);
    }
    if ((timer & 3) == 0) {
        timer >>= 2;
        super->x.HALF.HI += ((timer + 4) & 8) ? -1 : 1;
        super->y.HALF.HI += ((timer + 2) & 4) ? -1 : 1;
    }
}
