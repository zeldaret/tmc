/**
 * @file vaatiRebornEnemy.c
 * @ingroup Enemies
 *
 * @brief Vaati Reborn enemy
 */
#include "area.h"
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unk_75;
    /*0x76*/ u8 unk_76;
    /*0x77*/ u8 unk_77;
    /*0x78*/ union SplitWord unk_78;
    /*0x7c*/ union SplitWord unk_7c;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
    /*0x86*/ u8 unk_86;
    /*0x87*/ u8 unk_87;
} VaatiRebornEnemyEntity;

void VaatiRebornEnemyType0PreAction(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType1PreAction(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action0(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action1(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action2(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action3(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action4(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action5(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action6(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType0Action7(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType1Action0(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType1Action1(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType2Action0(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType2Action1(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType3Action0(VaatiRebornEnemyEntity*);
void VaatiRebornEnemyType3Action1(VaatiRebornEnemyEntity*);
void sub_0803DD78(VaatiRebornEnemyEntity*);
u32 sub_0803DEE0(VaatiRebornEnemyEntity*);
u32 sub_0803E028(VaatiRebornEnemyEntity*);
void sub_0803DC0C(VaatiRebornEnemyEntity*);

typedef struct xy {
    s8 x;
    s8 y;
} PACKED xy;

void (*const vaatiRebornEnemyType0Actions[])(VaatiRebornEnemyEntity*) = {
    VaatiRebornEnemyType0Action0, VaatiRebornEnemyType0Action1, VaatiRebornEnemyType0Action2,
    VaatiRebornEnemyType0Action3, VaatiRebornEnemyType0Action4, VaatiRebornEnemyType0Action5,
    VaatiRebornEnemyType0Action6, VaatiRebornEnemyType0Action7,
};
void (*const vaatiRebornEnemyType1Actions[])(VaatiRebornEnemyEntity*) = {
    VaatiRebornEnemyType1Action0,
    VaatiRebornEnemyType1Action1,
};
void (*const vaatiRebornEnemyType2Actions[])(VaatiRebornEnemyEntity*) = {
    VaatiRebornEnemyType2Action0,
    VaatiRebornEnemyType2Action1,
};
void (*const vaatiRebornEnemyType3Actions[])(VaatiRebornEnemyEntity*) = {
    VaatiRebornEnemyType3Action0,
    VaatiRebornEnemyType3Action1,
};

const xy gUnk_080D04A8[] = { { 16, -43 }, { -16, -43 } };
const Coords gUnk_080D04AC[] = { { .HALF = { 0x58, 0x60 } },
                                 { .HALF = { 0x58, 0x90 } },
                                 { .HALF = { 0x98, 0x78 } },
                                 { .HALF = { 0xd8, 0x60 } },
                                 { .HALF = { 0xd8, 0x90 } } };
const u8 gUnk_080D04C0[] = { 2, 0, 0, 2, 2, 2, 4, 4 };
const xy gUnk_080D04C8[] = { { 10, -29 }, { -10, -29 }, { 15, -21 }, { -15, -21 } };
#ifdef EU
const u8 gUnk_080D04D0[] = { -12, -20, -32 };
#else
const u8 gUnk_080D04D0[] = { -24, -40, -48 };
#endif
const u8 gUnk_080D04D3[] = { 0, 1, 0, -1 };

void VaatiRebornEnemy(VaatiRebornEnemyEntity* this) {
    switch (super->type) {
        case 0:
            VaatiRebornEnemyType0PreAction(this);
            vaatiRebornEnemyType0Actions[super->action](this);
            break;
        case 1:
            VaatiRebornEnemyType1PreAction(this);
            vaatiRebornEnemyType1Actions[super->action](this);
            break;
        case 2:
            vaatiRebornEnemyType2Actions[super->action](this);
            break;
        case 3:
            vaatiRebornEnemyType3Actions[super->action](this);
            break;
    }
}

void VaatiRebornEnemyType0Action0(VaatiRebornEnemyEntity* this) {
    s32 i;
    Entity* entity;
    const xy* ptr;

    if (CheckLocalFlag(0x7b) != 0) {
        DeleteThisEntity();
    }
    sub_0804A720(super);
    if (CheckRoomFlag(0) && (gEntCount < 0x42)) {
        ClearRoomFlag(0);
        super->action = 3;
        this->unk_74 = -1;
        super->timer = 0;
        this->unk_76 = 0;
        super->spriteSettings.draw = 1;
        super->direction = DIR_NONE;
        super->spritePriority.b0 = 4;
        super->z.WORD = 0;
        this->unk_80 = 2;
        this->unk_86 = 0;
        this->unk_85 = 0x30;
        this->unk_84 = -1;
        this->unk_87 = 0;
        this->unk_82 = 0;
        this->unk_83 = 0;
        this->unk_78 = super->x;
        this->unk_7c = super->y;
        entity = CreateEnemy(VAATI_REBORN_ENEMY, 1);
        entity->parent = super;
        super->child = entity;
        for (i = 0; i < 6; i++) {
            entity = CreateEnemy(VAATI_BALL, 0);
            entity->parent = super;
            ((VaatiRebornEnemyEntity*)entity)->unk_78.BYTES.byte1 = i;
        }
        for (i = 0; i < 4; i++) {
            entity = CreateEnemy(VAATI_REBORN_ENEMY, 3);
            entity->parent = super;
            entity->timer = i;
        }
        for (i = 0; i < 2; i++) {
            entity = CreateEnemy(VAATI_BALL, 1);
            entity->parent = super;
            entity->spriteSettings.flipX = i;
            ptr = &gUnk_080D04A8[i];
            PositionRelative(super, entity, Q_16_16(ptr->x), Q_16_16(ptr->y));
        }
        InitAnimationForceUpdate(super, 0);
    }
}

void VaatiRebornEnemyType0Action1(VaatiRebornEnemyEntity* this) {
    if (super->timer != 0) {
        if (--super->timer == 0) {
            if ((this->unk_74 & 0x70) == 0) {
                if (super->child->timer == 0) {
                    sub_0803DD78(this);
                    if (this->unk_75 != 0) {
                        super->action = 2;
                        this->unk_74 = 0;
                        super->timer = 16;
                        super->direction = DIR_NONE;
                    } else {
                        if ((this->unk_86 != 0) || (this->unk_80 != 0)) {
                            super->direction = ((Random() & 0x80) >> 3) | DirectionEast;
                        } else {
                            super->direction = DIR_NONE;
                        }
                    }
                } else {
                    super->timer = 2;
                }
            } else {
                super->action = 3;
                this->unk_75 = this->unk_74 & 0x80;
                this->unk_74 = 0;
                super->timer = 192;
                super->direction = DIR_NONE;
                super->spriteSettings.draw = 1;
                InitAnimationForceUpdate(super, 0);
            }
        }
    } else {
        if (--this->unk_77 == 0) {
            switch (sub_0803DEE0(this)) {
                case 0:
                    super->action = 4;
                    super->timer = 160;
                    super->direction = DIR_NONE;
                    this->unk_84 = 0xff;
                    InitAnimationForceUpdate(super, 1);
                    break;
                case 1:
                    super->action = 6;
                    this->unk_74 = 0;
                    super->timer = 0;
                    super->direction = DIR_NONE;
                    break;
                case 3:
                    super->action = 5;
                    this->unk_74 = 0;
                    super->subtimer = 32;
                    super->direction = DIR_NONE;
                    break;
                case 2:
                    this->unk_74 = 0;
                    super->timer = 32;
                    if ((this->unk_86 != 0) || (this->unk_80 != 0)) {
                        super->direction = ((Random() & 0x80) >> 3) | DirectionEast;
                    } else {
                        super->direction = DIR_NONE;
                    }
                    break;
            }
        }
        if (super->child->timer == 0) {
            this->unk_85++;
            if ((this->unk_85 & 3) == 0) {
                switch (this->unk_85 & 0x30) {
                    case 0:
                    case 0x30:
                        super->y.HALF.HI++;
                        break;
                    case 0x10:
                    case 0x20:
                        super->y.HALF.HI--;
                }
            }
            ProcessMovement1(super);
        }
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType0Action2(VaatiRebornEnemyEntity* this) {
    const Coords* ptr;

    switch (this->unk_74) {
        case 0:
            if (--super->timer == 0) {
                this->unk_74++;
                super->timer = 32;
                InitAnimationForceUpdate(super, 3);
                SoundReq(SFX_19B);
            }
            break;
        case 1:
            if ((super->frame & ANIM_DONE) != 0) {
                this->unk_74 = 2;
                super->spriteSettings.draw = 0;
                super->timer = 16;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                this->unk_74++;
                if (sub_0803E028(this) == 0) {
                    s32 tmp;
                    this->unk_81 += 1 + (Random() & 3);
                    tmp = this->unk_81;
                    this->unk_81 = tmp % 5;
                    ptr = &gUnk_080D04AC[this->unk_81];
                    super->x.HALF.HI = gRoomControls.origin_x + ptr->HALF.x + 0x10;
                    super->y.HALF.HI = gRoomControls.origin_y + ptr->HALF.y + 0x10;
                }
                super->spriteSettings.draw = 1;
                super->timer = 32;
                InitAnimationForceUpdate(super, 4);
                SoundReq(SFX_F5);
            }
            break;
        case 3:
            if ((super->frame & ANIM_DONE) != 0) {
                super->spriteSettings.draw = 1;
                if (4 < this->unk_81) {
                    super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI;
                    super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI - 0x18;
                }
                if (--this->unk_77 == 0) {
                    super->action = 1;
                    super->timer = 1;
                } else {
                    this->unk_74 = 0;
                    super->timer = 16;
                }
                InitAnimationForceUpdate(super, 0);
            }
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType0Action3(VaatiRebornEnemyEntity* this) {
    u8 temp;

    switch (this->unk_74) {
        case 0xfe:
            this->unk_74 = 0;
            super->timer = 1;
            break;
        case 0xff:
            if (super->z.HALF.HI != -4) {
                super->z.WORD -= Q_16_16(0.125);
            }
            if (super->timer == 2) {
                this->unk_74 = 0xfe;
            }
            break;
        case 0:
            if (--super->timer == 0) {
                this->unk_74++;
                if ((this->unk_75 & 0x80) != 0) {
                    temp = 0x14;
                } else {
                    temp = 0x20;
                }
                super->timer = temp;
                this->unk_80 = ((this->unk_86 + 1) >> 1) * 2 + 2;
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_74++;
                if ((this->unk_75 & 0x80) == 0) {
                    SoundReq(SFX_1B0);
                }
                InitAnimationForceUpdate(super, 1);
            }
            break;
        case 2:
            if ((super->frame & ANIM_DONE) != 0) {
                this->unk_74 = 3;
                InitAnimationForceUpdate(super, 0);
            }
            break;
        case 3:
            super->action = 1;
            this->unk_74 = 0;
            super->timer = 1;
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType0Action4(VaatiRebornEnemyEntity* this) {
    u32 index;
    Entity* entity;

    if (--super->timer == 0) {
        super->action = 1;
        this->unk_84 = 0xff;
        super->timer = 1;
        super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
        InitAnimationForceUpdate(super, 0);
    } else {
        if ((super->frame & 0x10) != 0) {
            super->frame &= 0xef;
            if (this->unk_84 == 0xff) {
                index = Direction8RoundUp(GetFacingDirection(super, &gPlayerEntity.base));
                this->unk_84 = gUnk_080D04C0[index >> 2];
                super->subtimer = 0;
            }
            if ((super->subtimer < 0x10) &&
                (entity = EnemyCreateProjectile(super, V1_FIRE_PROJECTILE, this->unk_84), entity != NULL)) {
                entity->subtimer = super->subtimer;
                entity->parent = super;
                entity->z.HALF.HI = super->z.HALF.HI;
                super->subtimer = super->subtimer + 1;
            }
        }
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType0Action5(VaatiRebornEnemyEntity* this) {
    u32 uVar3;

    if (this->unk_80 == 0) {
        super->action = 1;
        super->timer = 1;
        super->direction = DIR_NONE;
        InitAnimationForceUpdate(super, 0);
        return;
    }

    switch (this->unk_74) {
        case 0:
            if (--super->subtimer == 0) {
                this->unk_74++;
                InitAnimationForceUpdate(super, 1);
            }
            break;
        case 1:
            if ((super->frame & 0x10) != 0) {
                this->unk_74 = 2;
                super->subtimer = (Random() & 0x3f) + 64;
                SoundReq(SFX_SUMMON);
            }
            break;
        case 2:
            if (--super->subtimer == 0) {
                if (!((this->unk_86 < 2) || (3 < this->unk_87)) && (Random() & 0x10) != 0) {
                    this->unk_87++;
                    super->subtimer = (Random() & 0x3f) + 64;
                    uVar3 = GetFacingDirection(super, &gPlayerEntity.base);
                    super->direction = (uVar3 & 0x10) | DirectionEast;
                } else {
                    this->unk_74++;
                    this->unk_87 = 0;
                    super->subtimer = 48;
                    InitAnimationForceUpdate(super, 0);
                }
            }
            break;
        case 3:
            if (--super->subtimer == 0) {
                super->action = 1;
                this->unk_74 = 0;
                super->timer = 1;
                super->direction = DIR_NONE;
            }
            break;
    }

    if (this->unk_87 != 0) {
        ProcessMovement1(super);
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType0Action6(VaatiRebornEnemyEntity* this) {
    Entity* target;

    if (this->unk_80 == 0) {
        super->action = 1;
        super->timer = 1;
        return;
    }

    switch (this->unk_74) {
        case 0:
            if (super->timer != 0) {
                this->unk_74 = 1;
                super->timer = 112;
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_74++;
                SoundReq(SFX_150);
                target = EnemyCreateProjectile(super, V1_DARK_MAGIC_PROJECTILE, 0);
                if (target != NULL) {
                    PositionRelative(super, target, 0, Q_16_16(-16.0));
                    target->parent = super;
                }
            } else if (super->timer == 0x40) {
                SoundReq(SFX_196);
            }
            break;
        case 2:
            if (super->subtimer != 0) {
                super->subtimer = 0;
            }
            break;
        case 3:
            if (super->subtimer == 0) {
                super->subtimer = 1;
                SoundReq(SFX_14F);
            }
            if (super->timer) {
                super->action = 1;
                this->unk_74 = 0;
                super->timer = 1;
            }
            break;
    }
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType0Action7(VaatiRebornEnemyEntity* this) {
    Entity* fx;
    u32 tmp;

    if (super->timer != 0) {
        if (--super->timer == 0) {
            SetRoomFlag(1);
        } else {
            if ((super->timer & 7) == 0) {
                fx = CreateFx(super, FX_DEATH, 0);
                if (fx != NULL) {
                    tmp = Random() & 0x3f3f;
                    fx->x.HALF.HI = ((tmp & 0xff) - 0x20) + fx->x.HALF.HI;
                    fx->y.HALF.HI = ((tmp >> 8) & 0xff) - 0x20 + fx->y.HALF.HI;
#ifndef EU
                    fx->spritePriority.b0 = 2;
#endif
                }
            }
        }
    }
}

void VaatiRebornEnemyType1Action0(VaatiRebornEnemyEntity* this) {
    Entity* enemy;

    super->action = 1;
    this->unk_74 = 0;
    this->unk_75 = 1;
    super->timer = 0;
    super->spriteOffsetY = -1;
    PositionRelative(super->parent, super, 0, Q_16_16(1.0));
    enemy = CreateEnemy(VAATI_REBORN_ENEMY, 2);
    enemy->parent = super;
    enemy->child = super->parent;
    InitAnimationForceUpdate(super, this->unk_74);
}

void VaatiRebornEnemyType1Action1(VaatiRebornEnemyEntity* this) {
    Entity* parent;

    parent = super->parent;
    if (this->unk_74 == 0) {
        if (((VaatiRebornEnemyEntity*)parent)->unk_80 == 0) {
            this->unk_74 = 1;
            super->hitType = 0x30;
            InitAnimationForceUpdate(super, this->unk_74);
        }
    } else {
        if (((VaatiRebornEnemyEntity*)parent)->unk_80 != 0) {
            this->unk_74 = 0;
            super->hitType = 0x2f;
            InitAnimationForceUpdate(super, this->unk_74);
        } else {
            if (((super->contactFlags & CONTACT_NOW) != 0) && (0 < super->iframes)) {
                parent->iframes = super->iframes;
                parent->contactFlags = super->contactFlags;
            }
            if ((super->frame & 0x40) != 0) {
                InitAnimationForceUpdate(super, 2);
            }
        }
    }

    if (this->unk_75 == 0) {
        if (parent->action != 2) {
            this->unk_75 = 1;
            COLLISION_ON(super);
        }
    } else {
        if (parent->action == 2) {
            this->unk_75 = 0;
            COLLISION_OFF(super);
        }
    }
    super->spriteSettings.draw = parent->spriteSettings.draw;
    super->spriteOffsetX = parent->spriteOffsetX;
    PositionRelative(super->parent, super, 0, Q_16_16(1.0));
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType2Action0(VaatiRebornEnemyEntity* this) {
    Entity* source;

    source = super->parent->parent;
    super->action = 1;
    this->unk_74 = 1;
    this->unk_75 = 0;
    super->spriteOffsetY = -2;
    super->direction = DIR_NONE;
    PositionRelative(source, super, 0, Q_16_16(2.0));
    InitAnimationForceUpdate(super, 2);
}

void VaatiRebornEnemyType2Action1(VaatiRebornEnemyEntity* this) {
    u8 parentDirection;
    Entity* parent;

    parent = super->parent;
    if (((VaatiRebornEnemyEntity*)parent)->unk_74 == 0) {
        if (this->unk_74 != 0) {
            this->unk_74 = 0;
        }
        parentDirection = parent->parent->direction;
        if (parentDirection != 0xff) {
            if (this->unk_75 == 0) {
                this->unk_75 = 1;
            }
            if (parentDirection != super->direction) {
                super->direction = parentDirection;
                InitAnimationForceUpdate(super, parentDirection >> 3);
            }
        } else {
            if (this->unk_75 != 0) {
                this->unk_75 = 0;
                InitAnimationForceUpdate(super, 0);
            }
        }
    } else {
        if (this->unk_74 == 0) {
            this->unk_74 = 1;
            InitAnimationForceUpdate(super, 2);
        }
    }
    super->spriteSettings.draw = parent->spriteSettings.draw;
    super->spriteOffsetX = parent->spriteOffsetX;
    PositionRelative(parent->parent, super, 0, Q_16_16(2.0));
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType3Action0(VaatiRebornEnemyEntity* this) {
    super->action = 1;
    this->unk_74 = 0;
    super->direction = DIR_NONE;
    super->spriteOffsetY = -1;
    InitAnimationForceUpdate(super, this->unk_74);
    sub_0803DC0C(this);
}

void VaatiRebornEnemyType3Action1(VaatiRebornEnemyEntity* this) {
    Entity* parent = super->parent;

    if (super->parent->direction != 0xff) {
        if (this->unk_74 == 0) {
            this->unk_74 = 1;
        }
        if (parent->direction != super->direction) {
            super->direction = parent->direction;
            InitAnimationForceUpdate(super, super->direction >> 3);
        }
    } else {
        if (this->unk_74 != 0) {
            this->unk_74 = 0;
            super->direction = DIR_NONE;
            InitAnimationForceUpdate(super, 2);
        }
    }
    sub_0803DC0C(this);
}

void sub_0803DC0C(VaatiRebornEnemyEntity* this) {
    Entity* parent;
    const xy* tmp;

    parent = super->parent;
    tmp = &gUnk_080D04C8[super->timer];
    super->spriteSettings.draw = parent->spriteSettings.draw;
    super->spriteOffsetX = parent->spriteOffsetX;
    PositionRelative(parent, super, Q_16_16(tmp->x), Q_16_16(tmp->y + 1));
    UpdateAnimationSingleFrame(super);
}

void VaatiRebornEnemyType1PreAction(VaatiRebornEnemyEntity* this) {
    Entity* parent;

    if (super->hitType != 0x30) {
        return;
    }
    parent = super->parent;
    this->unk_77 = 0;
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        if (gUnk_080D04D0[((VaatiRebornEnemyEntity*)parent)->unk_86] > super->health) {
            if (2 < ++((VaatiRebornEnemyEntity*)parent)->unk_86) {
                COLLISION_OFF(super);
                parent->action = 7;
                parent->flags &= ~ENT_COLLIDE;
                parent->timer = 128;
                parent->spriteOffsetX = 0;
                parent->direction = -1;
                super->timer = 0;
                SoundReq(SONG_STOP_BGM);
                gArea.bgm = gArea.queued_bgm;
                return;
            }
            super->timer = 1;
            this->unk_77 = 0xff;
        }
        if (0 < super->iframes) {
            SoundReq(SFX_BOSS_HIT);
            InitScreenShake(12, 1);
            if (super->timer == 0)
                super->timer = 72;
        }
    }
    if (super->timer != 0) {
        if (--super->timer == 0) {
            super->hitType = 0x2f;
            this->unk_74 = 1;
            if (this->unk_77 == 0) {
                ((VaatiRebornEnemyEntity*)parent)->unk_74 = 0xf0;
            } else {
                ((VaatiRebornEnemyEntity*)parent)->unk_74 = 0x70;
                super->health = 0xff;
            }
            parent->action = 1;
            parent->timer = 1;
            InitAnimationForceUpdate(super, 0);
        }
    }
}

void sub_0803DD78(VaatiRebornEnemyEntity* this) {
    u32 random_number;

    random_number = ((u32)Random() & 0x7c) >> 2;

    switch (this->unk_86) {
        case 0:
            if (this->unk_80 == 0) {
                this->unk_75 = 0;
                this->unk_77 = 0x50;
                break;
            }
            switch (this->unk_83) {
                case 0:
                case 2:
                case 4:
                    this->unk_75 = 0;
                    this->unk_77 = 0x50;
                    break;
                case 1:
                case 3:
                case 5:
                    this->unk_75 = 0;
                    this->unk_77 = 1;
                    break;
                default:
                    break;
            }
            break;
        case 1:
            switch (this->unk_83) {
                case 1:
                case 3:
                case 5:
                    this->unk_75 = 0;
                    this->unk_77 = 1;
                    break;
                case 2:
                    if ((random_number & 8) != 0) {
                        this->unk_75 = 0;
                        this->unk_77 = 1;
                    } else {
                        this->unk_75 = 0;
                        this->unk_77 = 0x50;
                    }
                    break;
                case 4:
                    if ((random_number & 8) != 0) {
                        this->unk_75 = 0;
                        this->unk_77 = 0x50;
                        break;
                    }
                case 0:
                    this->unk_75 = 1;
                    this->unk_77 = 1;
                    break;
                default:
                    break;
            }
            break;
        case 2:
            switch (this->unk_83) {
                case 2:
                    if ((random_number & 0xf) < 3) {
                        this->unk_75 = 0;
                        this->unk_77 = 1;
                    } else {
                        this->unk_75 = 1;
                        this->unk_77 = 1;
                    }
                    break;
                case 0:
                    this->unk_75 = 1;
                    this->unk_77 = 1;
                    break;
                case 4:
                    if (9 < random_number) {
                        this->unk_75 = 2;
                        this->unk_77 = (Random() & 1) + 2;
                        break;
                    }
                case 1:
                case 3:
                case 5:
                    this->unk_75 = 0;
                    this->unk_77 = 1;
                    break;
                default:
                    break;
            }
    }

    this->unk_83 = (this->unk_83 + 1) % 6;
}

u32 sub_0803DEE0(VaatiRebornEnemyEntity* this) {
    u32 randomValue;
    u32 ret;

    ret = 2;
    randomValue = (Random() & 0xf8) >> 3;
    if (this->unk_80) {
        switch (this->unk_86) {
            case 0:
                ret = this->unk_82 & 1;
                this->unk_82 = (this->unk_82 + 1) & 3;
                break;
            case 1:
                switch (this->unk_82) {
                    case 0:
                    case 2:
                        ret = 3;
                        break;
                    case 1:
                    case 3:
                        ret = 1;
                        break;
                    case 4:
                        if (randomValue & 8) {
                            ret = 3;
                        } else {
                            ret = 0;
                        }
                        break;
                }
                this->unk_82 = (this->unk_82 + 1) % 5;
                break;
            case 2:
                switch (this->unk_82) {
                    case 0:
                    case 3:
                        ret = 3;
                        break;
                    case 1:
                        ret = 0;
                        if (randomValue > 5) {
                            ret = 3;
                        }
                        break;
                    case 2:
                        ret = 0;
                        if (randomValue < 10) {
                            ret = 3;
                        }
                        break;
                    case 4:
                        ret = 0;
                        break;
                    default:
                        ret = 2;
                }
                this->unk_82 = (this->unk_82 + 1) % 5;
                break;
        }
    }
    return ret;
}

void VaatiRebornEnemyType0PreAction(VaatiRebornEnemyEntity* this) {
    u32 bVar1;

    if (super->action != 0) {
        this->unk_78 = super->x;
        this->unk_7c = super->y;
    }
    if (this->unk_76 == 0) {
        if ((super->direction == DIR_NONE) || sub_08049FA0(super)) {
            if (this->unk_80 == 0) {
                super->animationState = (super->animationState + 1) & 3;
                super->spriteOffsetX = gUnk_080D04D3[super->animationState];
            }
            return;
        }
        bVar1 = sub_08049EE4(super);
        super->direction = (bVar1 & 0x10) | DirectionEast;
        this->unk_76 = 0x10;
    } else {
        this->unk_76--;
    }
    if (this->unk_80 == 0) {
        super->animationState = (super->animationState + 1) & 3;
        super->spriteOffsetX = gUnk_080D04D3[super->animationState];
    }
}

u32 sub_0803E028(VaatiRebornEnemyEntity* this) {
    u32 ret;
    s32 tmp;

    ret = 0;
    if ((this->unk_75 != 2) && ((Random() & 1) != 0)) {
        return 0;
    }
    if (this->unk_77 != 1) {
        return ret;
    }
    tmp = gRoomControls.origin_x + 0x58;
    if (tmp > gPlayerEntity.base.x.HALF.HI) {
        return ret;
    }
    tmp = gRoomControls.origin_y + 0x58;
    if (tmp > gPlayerEntity.base.x.HALF.HI) {
        return ret;
    }
    tmp = gRoomControls.origin_y + 0xf8;
    if (tmp >= gPlayerEntity.base.x.HALF.HI) {
        this->unk_81 += 5;
        ret = 1;
    }
    return ret;
}
