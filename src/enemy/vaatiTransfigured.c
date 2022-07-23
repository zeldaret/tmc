/**
 * @file vaatiTransfigured.c
 * @ingroup Enemies
 *
 * @brief Vaati Transfigured enemy
 */

#include "enemy.h"
#include "object.h"
#include "functions.h"

void sub_080409B0(Entity*);
void sub_080408EC(Entity*);
void sub_08040AD4(Entity*);
void sub_08040670(Entity*);
void sub_080406A0(Entity*);
void sub_08040770(Entity*);
extern void Knockback1(Entity*);
u32 sub_08040934(Entity*);
void sub_08040648(Entity*, u32, u32);

void VaatiTransfiguredType0Action0(Entity*);
void VaatiTransfiguredType0Action1(Entity*);
void VaatiTransfiguredType0Action2(Entity*);
void VaatiTransfiguredType0Action3(Entity*);
void VaatiTransfiguredType0Action4(Entity*);
void VaatiTransfiguredType0Action5(Entity*);
void VaatiTransfiguredType0Action6(Entity*);
void VaatiTransfiguredType0Action7(Entity*);
void VaatiTransfiguredType1Action0(Entity*);
void VaatiTransfiguredType1Action1(Entity*);
void VaatiTransfiguredType2Action0(Entity*);
void VaatiTransfiguredType2Action1(Entity*);
void VaatiTransfiguredType2Action2(Entity*);
void VaatiTransfiguredType3Action0(Entity*);
void VaatiTransfiguredType3Action1(Entity*);
void VaatiTransfiguredType4Action0(Entity*);
void VaatiTransfiguredType4Action1(Entity*);
void VaatiTransfiguredType5Action0(Entity*);
void VaatiTransfiguredType5Action1(Entity*);
void VaatiTransfiguredType5Action2(Entity*);

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
void (*const vaatiTransfiguredType0Actions[])(Entity*) = {
    VaatiTransfiguredType0Action0, VaatiTransfiguredType0Action1, VaatiTransfiguredType0Action2,
    VaatiTransfiguredType0Action3, VaatiTransfiguredType0Action4, VaatiTransfiguredType0Action5,
    VaatiTransfiguredType0Action6, VaatiTransfiguredType0Action7,
};
void (*const vaatiTransfiguredType1Actions[])(Entity*) = {
    VaatiTransfiguredType1Action0,
    VaatiTransfiguredType1Action1,
};
void (*const vaatiTransfiguredType2Actions[])(Entity*) = {
    VaatiTransfiguredType2Action0,
    VaatiTransfiguredType2Action1,
    VaatiTransfiguredType2Action2,
};
void (*const vaatiTransfiguredType3Actions[])(Entity*) = {
    VaatiTransfiguredType3Action0,
    VaatiTransfiguredType3Action1,
};
void (*const vaatiTransfiguredType4Actions[])(Entity*) = {
    VaatiTransfiguredType4Action0,
    VaatiTransfiguredType4Action1,
};
void (*const vaatiTransfiguredType5Actions[])(Entity*) = {
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

void VaatiTransfigured(Entity* this) {
    switch (this->type) {
        case 0:
            if (this->action != 0) {
                this->field_0x7a.HWORD = this->field_0x78.HWORD;
                this->field_0x78.HWORD = this->x.HALF.HI;
                this->field_0x7c.HALF.HI = this->field_0x7c.HALF.LO;
                this->field_0x7c.HALF.LO = this->y.HALF.HI;
                sub_080409B0(this);
            }
            vaatiTransfiguredType0Actions[this->action](this);
            break;
        case 1:
            vaatiTransfiguredType1Actions[this->action](this);
            break;
        case 2:
            vaatiTransfiguredType2Actions[this->action](this);
            break;
        case 3:
            vaatiTransfiguredType3Actions[this->action](this);
            break;
        case 4:
            vaatiTransfiguredType4Actions[this->action](this);
            break;
        case 5:
            vaatiTransfiguredType5Actions[this->action](this);
            return;
        default:
            break;
    }
}

void VaatiTransfiguredType0Action0(Entity* this) {
    Entity* enemy;
    u32 i;

    sub_0804A720(this);
    if ((CheckRoomFlag(0) != 0) && (gEntCount < 0x51)) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->spritePriority.b0 = 5;
        this->field_0x6c.HALF.HI |= 1;
        this->direction = (Random() & 0x17) + 4;
        this->timer = 48;
        this->subtimer = 12;
        this->field_0x82.HALF.LO = 4;
        this->field_0x80.HALF.LO = 0xff;
        this->field_0x74.HALF.LO = 0;
        this->field_0x76.HALF.HI = 0;
        this->cutsceneBeh.HALF.LO = 9;
        this->animationState = 0;
        this->field_0x86.HALF.LO = 0;
        this->field_0x86.HALF.HI = 0;
        this->field_0x78.HWORD = this->x.HALF.HI;
        this->field_0x7a.HWORD = this->x.HALF.HI;
        this->field_0x7c.HALF.LO = this->y.HALF.HI;
        this->field_0x7c.HALF.HI = this->y.HALF.HI;
        for (i = 1; i < 6; i++) {
            sub_08040648(this, i, 0);
        }
        Random();
        sub_080408EC(this);
        for (i = 0; i < 8; ++i) {
            enemy = CreateEnemy(VAATI_TRANSFIGURED_EYE, 0);
            enemy->parent = this;
            enemy->type2 = i;
            if ((this->field_0x74.HALF.HI >> (i)&1) != 0) {
                enemy->timer = 1;
            } else {
                enemy->timer = 0;
            }
        }
        InitAnimationForceUpdate(this, 0);
    }
}

void VaatiTransfiguredType0Action1(Entity* this) {
    Entity* object;

    switch (this->field_0x80.HALF.LO) {
        case 0xff:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO = 0;
                this->timer = 11;
            }
            break;
        case 0:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->speed = 0x180;
                this->timer = 20;
            }
            break;
        case 1:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->speed = 0xc0;
                this->timer = 12;
            }
            break;
        case 2:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->speed = 0;
                if (this->animationState < 2) {
                    this->timer = (Random() & 0x7f) + 64;
                } else {
                    this->timer = 8;
                }
            }
            break;
        case 3:
            if (--this->timer == 0) {
                this->z.HALF.HI = 0;
                this->field_0x80.HALF.LO = 0;
                this->timer = gUnk_080D0ABF[(u32)this->animationState * 2];
                switch (sub_08040934(this)) {
                    case 1:
                        this->action = 4;
                        this->field_0x74.HALF.LO = 1;
                        break;
                    case 2:
                        this->action = 5;
                        break;
                    case 3:
                        this->action = 6;
                        break;
                    default:
                        this->field_0x80.HALF.LO = 4;
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

    if (--this->field_0x82.HALF.LO == 0) {
        this->field_0x82.HALF.LO = 4;
        object = CreateObject(VAATI2_PARTICLE, 0, ((this->direction + 0x12) & 0x1c) >> 2);
        if (object != NULL) {
            object->parent = this;
            object->x.HALF.HI += (Random() & 0xf) - 7;
            object->y.HALF.HI += (Random() & 0xf) - 7;
            object->spritePriority.b0 = 6;
        }
    }
    if (this->field_0x80.HALF.LO != 0xff) {
        ProcessMovement0(this);
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType0Action2(Entity* this) {
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType0Action3(Entity* this) {
    Entity* pEVar3;
    u32 uVar4;
    u32 tmp;

    switch (this->field_0x80.HALF.LO) {
        case 0:
            uVar4 = sub_080044EC(this, 0x2800);
            if (uVar4 != 1)
                break;
            this->field_0x80.HALF.LO = 1;
            this->timer = 192;
            COLLISION_ON(this);
            SoundReq(SFX_14C);
            InitScreenShake(20, 4);
            break;
        case 1:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO = 2;
                this->hitType = 0x35;
                this->spriteOffsetX = 0;
            }
            if (this->health < gUnk_080D0ABC[this->animationState]) {
                tmp = 1;
                this->timer = 1;
            } else {
                tmp = 0;
            }
            if (tmp) {
                this->field_0x80.HALF.LO = 2;
                this->hitType = 0x35;
                this->spriteOffsetX = 0;
                this->animationState++;
                if (this->animationState > 2) {
                    this->action = 7;
                    this->timer = 224;
                    DeleteClones();
                    SoundReq(SFX_BOSS_HIT);
                    return;
                }
            }
            break;
        case 2:
            this->child->field_0x74.HALF.LO = 0x10;
            if (this->timer) {
                this->field_0x80.HALF.LO = 3;
                this->timer = 64;
            } else {
                this->field_0x80.HALF.LO = 4;
                this->timer = 80;
            }
            break;
        case 3:
            if (this->timer != 0) {
                if (--this->timer == 0) {
                    COLLISION_OFF(this);
                    this->zVelocity = Q_16_16(3.5);
                    this->subtimer = 16;
                }
                break;
            }
            if (GravityUpdate(this, Q_8_8(40.0)) == 0) {
                this->field_0x80.HALF.LO = 5;
                this->timer = 16;
                COLLISION_ON(this);
                this->health = 0xff;
                this->field_0x86.HALF.LO = 0;
                sub_080408EC(this);
                SoundReq(SFX_14C);
                InitScreenShake(30, 4);
            } else {
                if (this->subtimer != 0) {
                    if (--this->subtimer == 0) {
                        SoundReq(SFX_1B0);
                    } else {
                        if ((this->subtimer & 7) == 0) {
                            SoundReq(SFX_149);
                        }
                    }
                }
            }
            break;
        case 4:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO = 5;
                this->timer = 16;
                this->field_0x86.HALF.LO = 0;
                sub_080408EC(this);
            } else {
                if (((this->timer & 1) != 0) && (pEVar3 = CreateObject(VAATI2_PARTICLE, 1, 0xff), pEVar3 != NULL)) {
                    pEVar3->parent = this;
                    CopyPosition(this, pEVar3);
                    pEVar3->x.HALF.HI += (Random() & 0xf) - 7;
                    pEVar3->y.HALF.HI += (Random() & 0xf) - 7;
                    pEVar3->spritePriority.b0 = 4;
                    SoundReq(SFX_124);
                }
            }
            break;
        case 5:
            if (--this->timer == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                this->field_0x80.HALF.HI = 0;
                this->field_0x76.HALF.LO = 0;
                sub_08040670(this);
            }
    }
    if (this->field_0x80.HALF.LO > 2) {
        this->spriteOffsetX = this->timer & 1;
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType0Action4(Entity* this) {
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->field_0x74.HALF.LO = 0;
                this->timer = 128;
                this->subtimer = 0;
                this->zVelocity = Q_16_16(2.25);
                SoundReq(SFX_12B);
            }
            break;
        case 1:
            if (GravityUpdate(this, Q_8_8(40)) != 0)
                break;
            this->field_0x80.HALF.LO++;
            switch (this->cutsceneBeh.HALF.LO) {
                case 1:
                case 3:
                    this->subtimer = 1;
                    break;
                case 0:
                case 2:
                    this->subtimer = 0;
                    break;
                default:
                    this->subtimer = (Random() & 0x20) >> 5;
                    break;
            }
            if (1 < this->animationState) {
                this->subtimer = 1;
            }
            SoundReq(SFX_14C);
            InitScreenShake(30, 4);
            break;
        case 2:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->timer = gUnk_080D0ABF[((u32)this->animationState << 1 | 1)];
            } else {
                if ((this->timer & 7) == 0) {
                    CreateProjectileWithParent(this, V2_PROJECTILE, this->subtimer);
                }
                if (((this->subtimer != 0) && (1 < this->animationState)) && (this->timer < 6)) {
                    this->timer = 128;
                    this->subtimer = 0;
                }
            }
            break;
        case 3:
            if (--this->timer == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                this->z.HALF.HI = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
            break;
        default:
            break;
    }

    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType0Action5(Entity* this) {
    Entity* entity;

    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->timer = 64;
                if (1 < this->animationState) {
                    this->timer = 128;
                    this->subtimer = 1;
                }
            }
            break;
        case 1:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->timer = gUnk_080D0ABF[(this->animationState << 1 | 1)];
            } else {
                if (this->subtimer) {
                    if ((this->timer & 7) == 0) {
                        CreateProjectileWithParent(this, V2_PROJECTILE, this->subtimer);
                    }
                    if (this->timer < 6) {
                        this->timer = 64;
                        this->subtimer = 0;
                    }
                } else {
                    if ((this->timer & 0xf) == 0) {
                        entity = CreateProjectileWithParent(this, V2_PROJECTILE, 2);
                        if (entity != NULL) {
                            entity->type2 = 0;
                            if (this->field_0x80.HALF.HI != 0) {
                                entity->speed = entity->speed >> 1;
                            }
                        }
                    }
                }
            }
            break;
        case 2:
            if (--this->timer == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType0Action6(Entity* this) {
    Entity* pEVar2;

    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->timer = 128;
                if (1 < this->animationState) {
                    this->subtimer = 1;
                }
            }
            break;
        case 1:
            if (--this->timer == 0) {
                this->field_0x80.HALF.LO++;
                this->timer = gUnk_080D0ABF[(this->animationState << 1) | 1];
            } else {
                if (this->subtimer) {
                    if ((this->timer & 7) == 0) {
                        CreateProjectileWithParent(this, V2_PROJECTILE, this->subtimer);
                    }
                    if (this->timer < 6) {
                        this->timer = 128;
                        this->subtimer = 0;
                    }
                } else {
                    if ((this->timer & 0x1f) == 0) {
                        pEVar2 = CreateProjectileWithParent(this, V2_PROJECTILE, 2);
                        if (pEVar2 != NULL) {
                            pEVar2->type2 = 1;
                            pEVar2->y.HALF.HI += -0x20;
                            if (this->field_0x80.HALF.HI != 0) {
                                pEVar2->speed = pEVar2->speed >> 1;
                            }
                        }
                    }
                }
            }
            break;
        case 2:
            if (--this->timer == 0) {
                this->action = 1;
                this->field_0x80.HALF.LO = 0;
                sub_08040670(this);
            } else {
                sub_08040AD4(this);
            }
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType0Action7(Entity* this) {
    Entity* pEVar3;
    u32 uVar4;

    sub_08078B48();
    if (this->timer) {
        if (--this->timer == 0) {
            SetRoomFlag(2);
            this->subtimer = 8;
            UpdateAnimationSingleFrame(this);
            return;
        }
    } else {
        if (this->subtimer != 0) {
            if (--this->subtimer == 0) {
                this->health = 0;
                this->spriteSettings.draw = 0;
            }
        } else {
            GenericDeath(this);
        }
        UpdateAnimationSingleFrame(this);
        return;
    }
    this->subtimer = (this->subtimer + 1) & 7;
    if (this->subtimer == 0) {
        pEVar3 = CreateFx(this, FX_AURA_BASE, 0);
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
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType1Action0(Entity* this) {
    this->action = 1;
    this->timer = 0;
    this->field_0x80.HALF.LO = 0;
    this->spritePriority.b0 = 6;
    InitAnimationForceUpdate(this, (u32)this->timer);
}

void VaatiTransfiguredType1Action1(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if (parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    this->x.HALF.HI = parent->field_0x7a.HWORD;
    this->y.HALF.HI = parent->field_0x7c.HALF.HI;
    if (parent->field_0x74.HALF.LO == 0) {
        UpdateAnimationSingleFrame(this);
    } else {
        sub_080042BA(this, 2);
    }
    if (parent->action >= 5) {
        if (this->timer == 0) {
            this->timer = 1;
            InitAnimationForceUpdate(this, 1);
        }
    } else {
        if (this->timer != 0) {
            this->timer = 0;
            InitAnimationForceUpdate(this, 0);
        }
    }
    if (parent->action != 3) {
        this->z.HALF.HI = parent->z.HALF.HI;
    }
}

void VaatiTransfiguredType2Action0(Entity* this) {
    if (this->type2 != 0) {
        this->action = 1;
        this->spritePriority.b0 = this->type2 + 1;
        InitAnimationForceUpdate(this, this->type2 + 4);
    } else {
        this->spritePriority.b0 = 4;
        if (gEntCount < 0x46) {
            sub_08040648(this, 2, 1);
            sub_08040648(this, 2, 2);
            this->action = 1;
            this->timer = 0;
            this->subtimer = (Random() & 0x7f) + 23;
            this->field_0x74.HALF.LO = 0;
            InitAnimationForceUpdate(this, 0);
        }
    }
}

void VaatiTransfiguredType2Action1(Entity* this) {
    u32 uVar3;

    const xy* t;

    if (this->parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    CopyPosition(this->parent, this);
    switch (this->type2) {
        case 2:
            uVar3 = GetFacingDirection(this, &gPlayerEntity);
            t = &gUnk_080D0B18[uVar3];
            this->x.HALF.HI += t->x;
            this->y.HALF.HI += t->y;
        case 1:
            if (this->parent->frameIndex != 2) {
                this->action = 2;
                this->spriteSettings.draw = 0;
            }
            break;
        case 0:
            switch (this->field_0x74.HALF.LO) {
                case 0:
                    if (--this->subtimer == 0) {
                        this->subtimer = (Random() & 0x7f) + 39;
                        if ((this->subtimer & 1) != 0) {
                            this->field_0x74.HALF.LO = 1;
                            InitAnimationForceUpdate(this, 8);
                        }
                    }
                    break;
                case 1:
                    if ((this->frame & ANIM_DONE) != 0) {
                        this->field_0x74.HALF.LO = 0;
                        this->subtimer = (Random() & 0x7f) + 23;
                        InitAnimationForceUpdate(this, 0);
                    }
                    break;
                case 0x10:
                    InitAnimationForceUpdate(this, 7);
                    this->field_0x74.HALF.LO = 0x11;
                    this->subtimer = 80;
                    break;
                case 0x11:
                    if (--this->subtimer == 0) {
                        this->field_0x74.HALF.LO = 1;
                        this->subtimer = 48;
                        InitAnimationForceUpdate(this, 8);
                    }
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType2Action2(Entity* this) {
    if (this->parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    CopyPosition(this->parent, this);
    if (this->parent->frameIndex == 2) {
        this->action = 1;
        this->spriteSettings.draw = 1;
    }
}

void VaatiTransfiguredType3Action0(Entity* this) {
    this->action = 1;
    this->spritePriority.b0 = 4;
    InitAnimationForceUpdate(this, 0);
}

void VaatiTransfiguredType3Action1(Entity* this) {
    if (this->parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    CopyPosition(this->parent, this);
    UpdateAnimationSingleFrame(this);
}

void VaatiTransfiguredType4Action0(Entity* this) {
    this->action = 1;
    this->field_0x80.HALF.LO = 0;
    this->timer = 10;
    this->spriteSettings.draw = 0;
    this->spritePriority.b0 = 7;
    InitializeAnimation(this, 0);
}

void VaatiTransfiguredType4Action1(Entity* this) {
    if (this->parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    if (this->parent->action != 5) {
        if (this->field_0x80.HALF.LO != 0) {
            this->field_0x80.HALF.LO = 0;
            this->spriteSettings.draw = 0;
        }
    } else {
        if (this->field_0x80.HALF.LO == 0) {
            this->field_0x80.HALF.LO++;
            this->spriteSettings.draw = 1;
        }
        if (--this->timer == 0) {
            this->timer = 10;
            SoundReq(SFX_149);
        }
    }
    CopyPosition(this->parent, this);
    GetNextFrame(this);
}

void VaatiTransfiguredType5Action0(Entity* this) {
    if (this->type2 != 0) {
        this->action = 2;
        this->timer = 10;
        this->spritePriority.b0 = 3;
        InitializeAnimation(this, 2);
    } else {
        this->action = 1;
        this->spriteSettings.draw = 0;
        this->spritePriority.b0 = 4;
    }
}

void VaatiTransfiguredType5Action1(Entity* this) {
    if (this->parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (this->parent->action != 6) {
                return;
            }
            this->field_0x80.HALF.LO++;
            this->spriteSettings.draw = 1;
            InitializeAnimation(this, 1);
            break;
        case 1:
            if (this->parent->action != 6) {
                this->field_0x80.HALF.LO = 0;
                this->spriteSettings.draw = 0;
            } else {
                if (this->frame & ANIM_DONE) {
                    this->frame &= ~0x80;
                    if (gEntCount < 0x47) {
                        sub_08040648(this, this->type, 1);
                    }
                }
                if (--this->timer == 0) {
                    this->timer = 10;
                    SoundReq(SFX_149);
                }
                GetNextFrame(this);
            }
            break;
    }
    CopyPosition(this->parent, this);
}

void VaatiTransfiguredType5Action2(Entity* this) {
    if (this->parent->health == 0) {
        this->field_0x6c.HALF.HI |= 2;
        DeleteThisEntity();
    }
    if (this->field_0x80.HALF.LO == 0) {
        if (this->parent->parent->action != 6) {
            if ((this->frame & ANIM_DONE) != 0) {
                this->field_0x80.HALF.LO++;
                InitializeAnimation(this, 3);
            }
        }
    } else {
        if ((this->frame & ANIM_DONE) != 0) {
            DeleteThisEntity();
        }
    }
    CopyPosition(this->parent, this);
    GetNextFrame(this);
}

void sub_08040648(Entity* this, u32 type, u32 type2) {
    Entity* enemy;

    enemy = CreateEnemy(VAATI_TRANSFIGURED, type);
    enemy->type2 = type2;
    enemy->parent = this;
    CopyPosition(this, enemy);
    if ((type == 2) && (type2 == 0)) {
        this->child = enemy;
    }
}

void sub_08040670(Entity* this) {
    this->action = 1;
    this->field_0x80.HALF.LO = 0;
    this->speed = 0x100;
    this->timer = 12;
    if (this->animationState == 0) {
        sub_080406A0(this);
    } else {
        sub_08040770(this);
    }
}

void sub_080406A0(Entity* this) {
    u32 uVar2;
    u32 uVar3;
    u32 uVar4;
    u32 uVar5;
    u32 uVar6;

    uVar2 = Random() & 0x30;
    uVar5 = this->field_0x86.HALF.LO;
    {
        u32 tmp;
        uVar6 = gRoomControls.origin_x + gUnk_080D0B58[tmp = uVar5 * 2];
        uVar4 = gRoomControls.origin_y + gUnk_080D0B58[tmp + 1];
    }
    if (EntityWithinDistance(this, uVar6, uVar4, 0x1c)) {
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
    uVar3 = CalculateDirectionTo(this->x.HALF.HI, this->y.HALF.HI, uVar6, uVar4);
    this->direction = uVar3;
    if (uVar2 & 0x20) {
        u32 tmp = this->direction;
        if (uVar2 & 0x10) {
            this->direction = tmp + 1;
        } else {
            this->direction = tmp + 0x1f;
        }
    }
    this->direction &= 0x1f;
    this->field_0x86.HALF.LO = uVar5;
}

void sub_08040770(Entity* this) {
    u32 tmp = Random() & 0x38;
    u32 tmp2 = this->field_0x86.HALF.LO;
    u32 tmp5, tmp6;
    {
        u32 index;
        tmp5 = gRoomControls.origin_x + gUnk_080D0B64[index = tmp2 * 2];
        tmp6 = gRoomControls.origin_y + gUnk_080D0B64[index + 1];
    }
    if (EntityWithinDistance(this, tmp5, tmp6, 0x1c)) {
        if (this->animationState != 2) {
            if (tmp & 8) {
                tmp2++;
            } else {
                tmp2 += 3;
            }
            tmp2 &= 3;
            if (this->field_0x80.HALF.HI) {
                switch (this->field_0x74.HALF.HI) {
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
            if (this->field_0x86.HALF.HI & 0x7f) {
                if (this->field_0x86.HALF.HI & 0x80) {
                    tmp2++;
                } else {
                    tmp2 += 3;
                }
                this->field_0x86.HALF.HI--;
            } else {
                u32 tmp3;
                this->field_0x86.HALF.HI = (Random() & 7) + 4;
                tmp5 = this->field_0x86.HALF.HI;
                if (!(Random() & 0x20)) {
                    tmp3 = tmp5 | 0x80;
                } else {
                    tmp3 = tmp5;
                }
                this->field_0x86.HALF.HI = tmp3;
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
    this->direction = CalculateDirectionTo(this->x.HALF.HI, this->y.HALF.HI, tmp5, tmp6);
    if (tmp & 0x20) {
        u32 tmp3 = this->direction;
        if (tmp & 0x10) {
            this->direction = tmp3 + 1;
        } else {
            this->direction = tmp3 + 0x1F;
        }
    }
    this->direction &= 0x1F;
    this->field_0x86.HALF.LO = tmp2;
}

void sub_080408EC(Entity* this) {
    u32 tmp;

    if (this->animationState == 0) {
        tmp = 0xf0;
    } else {
        do {
            tmp = gUnk_080D0B74[(Random() & 0x3c) >> 2];
            if (tmp == this->field_0x74.HALF.HI) {
                tmp = 0xff;
            }
        } while (tmp == 0xff);
    }
    this->field_0x74.HALF.HI = tmp;
    this->field_0x76.HALF.LO = 0;
}

u32 sub_08040934(Entity* this) {
    u32 t;
    u32 r2;

    t = Random() & 0x3e;
    if (t < 0x2f) {
        r2 = 1;
    } else {
        r2 = 0;
    }
    if ((this->field_0x86.HALF.HI & 0x7f) != 0) {
        r2 = 0;
    }
    if (this->cutsceneBeh.HALF.LO != 9) {
        if (r2 != 0) {
            this->cutsceneBeh.HALF.LO = (this->cutsceneBeh.HALF.LO + 1) % 5;
            t = (Random() & 0xf8) >> 3;
            r2 = gUnk_080D0B84[t];
            switch (this->cutsceneBeh.HALF.LO) {
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
        this->cutsceneBeh.HALF.LO = 0;
        r2 = 1;
    }
    return r2;
}

void sub_080409B0(Entity* this) {
    switch (this->field_0x80.HALF.HI) {
        case 0:
            if (this->field_0x74.HALF.HI == this->field_0x76.HALF.LO) {
                this->field_0x80.HALF.HI = 1;
                this->field_0x76.HALF.LO = 0;
            }
            break;
        case 1:
            if (this->field_0x76.HALF.LO != 0) {
                this->field_0x80.HALF.HI = 2;
                this->field_0x76.HALF.HI = 0x10;
            }
            break;
        case 2:
            if (--this->field_0x76.HALF.HI == 0) {
                if (this->field_0x74.HALF.HI != (this->field_0x74.HALF.HI & this->field_0x76.HALF.LO)) {
                    this->field_0x80.HALF.HI = 1;
                    this->field_0x76.HALF.LO = 0;
                    SoundReq(SFX_155);
                } else {
                    this->action = 3;
                    this->field_0x80.HALF.LO = 0;
                    this->field_0x80.HALF.HI = 3;
                    COLLISION_OFF(this);
                    this->hitType = 0x36;
                    this->zVelocity = Q_16_16(1.5);
                    SoundReq(SFX_164);
                }
            }
            break;
    }

    if (this->field_0x80.HALF.HI < 3) {
        if (this->knockbackDuration != 0) {
            Knockback1(this);
        }
    } else {
        if (((this->contactFlags & 0x80) != 0) && (0 < this->iframes)) {
            InitScreenShake(12, 1);
            SoundReq(SFX_BOSS_HIT);
        }
        if ((this->contactFlags == 0x8a) && (gPlayerState.chargeState.action == 5)) {
            this->health = 0xc0;
        }
    }
}

void sub_08040AD4(Entity* this) {
    u32 timer;

    timer = this->timer & 0x3f;
    if ((timer & 0x1f) == 0) {
        SoundReq(SFX_1A9);
    }
    if ((timer & 3) == 0) {
        timer >>= 2;
        this->x.HALF.HI += ((timer + 4) & 8) ? -1 : 1;
        this->y.HALF.HI += ((timer + 2) & 4) ? -1 : 1;
    }
}
