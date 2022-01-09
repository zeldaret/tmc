/**
 * @file vaatiRebornEnemy.c
 * @ingroup Enemies
 *
 * @brief Vaati Reborn enemy
 */

#include "enemy.h"
#include "area.h"
#include "functions.h"

extern void sub_080AEFB4(Entity*);

void VaatiRebornEnemyType0PreAction(Entity*);
void VaatiRebornEnemyType1PreAction(Entity*);
void VaatiRebornEnemyType0Action0(Entity*);
void VaatiRebornEnemyType0Action1(Entity*);
void VaatiRebornEnemyType0Action2(Entity*);
void VaatiRebornEnemyType0Action3(Entity*);
void VaatiRebornEnemyType0Action4(Entity*);
void VaatiRebornEnemyType0Action5(Entity*);
void VaatiRebornEnemyType0Action6(Entity*);
void VaatiRebornEnemyType0Action7(Entity*);
void VaatiRebornEnemyType1Action0(Entity*);
void VaatiRebornEnemyType1Action1(Entity*);
void VaatiRebornEnemyType2Action0(Entity*);
void VaatiRebornEnemyType2Action1(Entity*);
void VaatiRebornEnemyType3Action0(Entity*);
void VaatiRebornEnemyType3Action1(Entity*);
void sub_0803DD78(Entity*);
u32 sub_0803DEE0(Entity*);
u32 sub_0803E028(Entity*);
void sub_0803DC0C(Entity*);

typedef struct xy {
    s8 x;
    s8 y;
} PACKED xy;

void (*const vaatiRebornEnemyType0Actions[])(Entity*) = {
    VaatiRebornEnemyType0Action0, VaatiRebornEnemyType0Action1, VaatiRebornEnemyType0Action2,
    VaatiRebornEnemyType0Action3, VaatiRebornEnemyType0Action4, VaatiRebornEnemyType0Action5,
    VaatiRebornEnemyType0Action6, VaatiRebornEnemyType0Action7,
};
void (*const vaatiRebornEnemyType1Actions[])(Entity*) = {
    VaatiRebornEnemyType1Action0,
    VaatiRebornEnemyType1Action1,
};
void (*const vaatiRebornEnemyType2Actions[])(Entity*) = {
    VaatiRebornEnemyType2Action0,
    VaatiRebornEnemyType2Action1,
};
void (*const vaatiRebornEnemyType3Actions[])(Entity*) = {
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

void VaatiRebornEnemy(Entity* this) {
    switch (this->type) {
        case 0:
            VaatiRebornEnemyType0PreAction(this);
            vaatiRebornEnemyType0Actions[this->action](this);
            break;
        case 1:
            VaatiRebornEnemyType1PreAction(this);
            vaatiRebornEnemyType1Actions[this->action](this);
            break;
        case 2:
            vaatiRebornEnemyType2Actions[this->action](this);
            break;
        case 3:
            vaatiRebornEnemyType3Actions[this->action](this);
            break;
    }
}

void VaatiRebornEnemyType0Action0(Entity* this) {
    s32 i;
    Entity* entity;
    const xy* ptr;

    if (CheckLocalFlag(0x7b) != 0) {
        DeleteThisEntity();
    }
    sub_0804A720(this);
    if (CheckRoomFlag(0) && (gEntCount < 0x42)) {
        ClearRoomFlag(0);
        this->action = 3;
        this->field_0x74.HALF.LO = -1;
        this->actionDelay = 0;
        this->field_0x76.HALF.LO = 0;
        this->spriteSettings.draw = 1;
        this->direction = 0xff;
        this->spritePriority.b0 = 4;
        this->z.WORD = 0;
        this->field_0x80.HALF.LO = 2;
        this->field_0x86.HALF.LO = 0;
        this->cutsceneBeh.HALF.HI = 0x30;
        this->cutsceneBeh.HALF.LO = -1;
        this->field_0x86.HALF.HI = 0;
        this->field_0x82.HALF.LO = 0;
        this->field_0x82.HALF.HI = 0;
        *(u32*)(&this->field_0x78) = this->x.WORD;
        this->field_0x7c = this->y;
        entity = CreateEnemy(VAATI_REBORN_ENEMY, 1);
        entity->parent = this;
        this->child = entity;
        for (i = 0; i < 6; i++) {
            entity = CreateEnemy(VAATI_BALL, 0);
            entity->parent = this;
            entity->field_0x78.HALF.HI = i;
        }
        for (i = 0; i < 4; i++) {
            entity = CreateEnemy(VAATI_REBORN_ENEMY, 3);
            entity->parent = this;
            entity->actionDelay = i;
        }
        for (i = 0; i < 2; i++) {
            entity = CreateEnemy(VAATI_BALL, 1);
            entity->parent = this;
            entity->spriteSettings.flipX = i;
            ptr = &gUnk_080D04A8[i];
            PositionRelative(this, entity, ptr->x << 0x10, ptr->y << 0x10);
        }
        InitAnimationForceUpdate(this, 0);
    }
}

void VaatiRebornEnemyType0Action1(Entity* this) {
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            if ((this->field_0x74.HALF.LO & 0x70) == 0) {
                if (this->child->actionDelay == 0) {
                    sub_0803DD78(this);
                    if (this->field_0x74.HALF.HI != 0) {
                        this->action = 2;
                        this->field_0x74.HALF.LO = 0;
                        this->actionDelay = 0x10;
                        this->direction = 0xff;
                    } else {
                        if ((this->field_0x86.HALF.LO != 0) || (this->field_0x80.HALF.LO != 0)) {
                            this->direction = ((Random() & 0x80) >> 3) | 8;
                        } else {
                            this->direction = 0xff;
                        }
                    }
                } else {
                    this->actionDelay = 2;
                }
            } else {
                this->action = 3;
                this->field_0x74.HALF.HI = this->field_0x74.HALF.LO & 0x80;
                this->field_0x74.HALF.LO = 0;
                this->actionDelay = 0xc0;
                this->direction = 0xff;
                this->spriteSettings.draw = 1;
                InitAnimationForceUpdate(this, 0);
            }
        }
    } else {
        if (--this->field_0x76.HALF.HI == 0) {
            switch (sub_0803DEE0(this)) {
                case 0:
                    this->action = 4;
                    this->actionDelay = 0xa0;
                    this->direction = 0xff;
                    this->cutsceneBeh.HALF.LO = 0xff;
                    InitAnimationForceUpdate(this, 1);
                    break;
                case 1:
                    this->action = 6;
                    this->field_0x74.HALF.LO = 0;
                    this->actionDelay = 0;
                    this->direction = 0xff;
                    break;
                case 3:
                    this->action = 5;
                    this->field_0x74.HALF.LO = 0;
                    this->field_0xf = 0x20;
                    this->direction = 0xff;
                    break;
                case 2:
                    this->field_0x74.HALF.LO = 0;
                    this->actionDelay = 0x20;
                    if ((this->field_0x86.HALF.LO != 0) || (this->field_0x80.HALF.LO != 0)) {
                        this->direction = ((Random() & 0x80) >> 3) | 8;
                    } else {
                        this->direction = 0xff;
                    }
                    break;
            }
        }
        if (this->child->actionDelay == 0) {
            this->cutsceneBeh.HALF.HI++;
            if ((this->cutsceneBeh.HALF.HI & 3) == 0) {
                switch (this->cutsceneBeh.HALF.HI & 0x30) {
                    case 0:
                    case 0x30:
                        this->y.HALF.HI++;
                        break;
                    case 0x10:
                    case 0x20:
                        this->y.HALF.HI--;
                }
            }
            sub_080AEFB4(this);
        }
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType0Action2(Entity* this) {
    const Coords* ptr;

    switch (this->field_0x74.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                this->actionDelay = 0x20;
                InitAnimationForceUpdate(this, 3);
                SoundReq(SFX_19B);
            }
            break;
        case 1:
            if ((this->frame & 0x80) != 0) {
                this->field_0x74.HALF.LO = 2;
                this->spriteSettings.draw = 0;
                this->actionDelay = 0x10;
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                if (sub_0803E028(this) == 0) {
                    s32 tmp;
                    this->field_0x80.HALF.HI += 1 + (Random() & 3);
                    tmp = this->field_0x80.HALF.HI;
                    this->field_0x80.HALF.HI = tmp % 5;
                    ptr = &gUnk_080D04AC[this->field_0x80.HALF.HI];
                    this->x.HALF.HI = gRoomControls.origin_x + ptr->HALF.x + 0x10;
                    this->y.HALF.HI = gRoomControls.origin_y + ptr->HALF.y + 0x10;
                }
                this->spriteSettings.draw = 1;
                this->actionDelay = 0x20;
                InitAnimationForceUpdate(this, 4);
                SoundReq(SFX_F5);
            }
            break;
        case 3:
            if ((this->frame & 0x80) != 0) {
                this->spriteSettings.draw = 1;
                if (4 < this->field_0x80.HALF.HI) {
                    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
                    this->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0x18;
                }
                if (--this->field_0x76.HALF.HI == 0) {
                    this->action = 1;
                    this->actionDelay = 1;
                } else {
                    this->field_0x74.HALF.LO = 0;
                    this->actionDelay = 0x10;
                }
                InitAnimationForceUpdate(this, 0);
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType0Action3(Entity* this) {
    u8 temp;

    switch (this->field_0x74.HALF.LO) {
        case 0xfe:
            this->field_0x74.HALF.LO = 0;
            this->actionDelay = 1;
            break;
        case 0xff:
            if (this->z.HALF.HI != -4) {
                this->z.WORD -= 0x2000;
            }
            if (this->actionDelay == 2) {
                this->field_0x74.HALF.LO = 0xfe;
            }
            break;
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                if ((this->field_0x74.HALF.HI & 0x80) != 0) {
                    temp = 0x14;
                } else {
                    temp = 0x20;
                }
                this->actionDelay = temp;
                this->field_0x80.HALF.LO = ((this->field_0x86.HALF.LO + 1) >> 1) * 2 + 2;
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                if ((this->field_0x74.HALF.HI & 0x80) == 0) {
                    SoundReq(SFX_1B0);
                }
                InitAnimationForceUpdate(this, 1);
            }
            break;
        case 2:
            if ((this->frame & 0x80) != 0) {
                this->field_0x74.HALF.LO = 3;
                InitAnimationForceUpdate(this, 0);
            }
            break;
        case 3:
            this->action = 1;
            this->field_0x74.HALF.LO = 0;
            this->actionDelay = 1;
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType0Action4(Entity* this) {
    u32 index;
    Entity* entity;

    if (--this->actionDelay == 0) {
        this->action = 1;
        this->cutsceneBeh.HALF.LO = 0xff;
        this->actionDelay = 1;
        this->direction = (this->direction + 0x10) & 0x1f;
        InitAnimationForceUpdate(this, 0);
    } else {
        if ((this->frame & 0x10) != 0) {
            this->frame &= 0xef;
            if (this->cutsceneBeh.HALF.LO == 0xff) {
                index = Direction8RoundUp(GetFacingDirection(this, &gPlayerEntity));
                this->cutsceneBeh.HALF.LO = gUnk_080D04C0[index >> 2];
                this->field_0xf = 0;
            }
            if ((this->field_0xf < 0x10) &&
                (entity = CreateProjectileWithParent(this, 0x1a, this->cutsceneBeh.HALF.LO), entity != NULL)) {
                entity->field_0xf = this->field_0xf;
                entity->parent = this;
                entity->z.HALF.HI = this->z.HALF.HI;
                this->field_0xf = this->field_0xf + 1;
            }
        }
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType0Action5(Entity* this) {
    u32 uVar3;

    if (this->field_0x80.HALF.LO == 0) {
        this->action = 1;
        this->actionDelay = 1;
        this->direction = 0xff;
        InitAnimationForceUpdate(this, 0);
        return;
    }

    switch (this->field_0x74.HALF.LO) {
        case 0:
            if (--this->field_0xf == 0) {
                this->field_0x74.HALF.LO++;
                InitAnimationForceUpdate(this, 1);
            }
            break;
        case 1:
            if ((this->frame & 0x10) != 0) {
                this->field_0x74.HALF.LO = 2;
                this->field_0xf = (Random() & 0x3f) + 0x40;
                SoundReq(SFX_SUMMON);
            }
            break;
        case 2:
            if (--this->field_0xf == 0) {
                if (!((this->field_0x86.HALF.LO < 2) || (3 < this->field_0x86.HALF.HI)) && (Random() & 0x10) != 0) {
                    this->field_0x86.HALF.HI++;
                    this->field_0xf = (Random() & 0x3f) + 0x40;
                    uVar3 = GetFacingDirection(this, &gPlayerEntity);
                    this->direction = (uVar3 & 0x10) | 8;
                } else {
                    this->field_0x74.HALF.LO++;
                    this->field_0x86.HALF.HI = 0;
                    this->field_0xf = 0x30;
                    InitAnimationForceUpdate(this, 0);
                }
            }
            break;
        case 3:
            if (--this->field_0xf == 0) {
                this->action = 1;
                this->field_0x74.HALF.LO = 0;
                this->actionDelay = 1;
                this->direction = 0xff;
            }
            break;
    }

    if (this->field_0x86.HALF.HI != 0) {
        sub_080AEFB4(this);
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType0Action6(Entity* this) {
    Entity* target;

    if (this->field_0x80.HALF.LO == 0) {
        this->action = 1;
        this->actionDelay = 1;
        return;
    }

    switch (this->field_0x74.HALF.LO) {
        case 0:
            if (this->actionDelay != 0) {
                this->field_0x74.HALF.LO = 1;
                this->actionDelay = 0x70;
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x74.HALF.LO++;
                SoundReq(SFX_150);
                target = CreateProjectileWithParent(this, 0x18, 0);
                if (target != NULL) {
                    PositionRelative(this, target, 0, -0x100000);
                    target->parent = this;
                }
            } else if (this->actionDelay == 0x40) {
                SoundReq(SFX_196);
            }
            break;
        case 2:
            if (this->field_0xf != 0) {
                this->field_0xf = 0;
            }
            break;
        case 3:
            if (this->field_0xf == 0) {
                this->field_0xf = 1;
                SoundReq(SFX_14F);
            }
            if (this->actionDelay) {
                this->action = 1;
                this->field_0x74.HALF.LO = 0;
                this->actionDelay = 1;
            }
            break;
    }
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType0Action7(Entity* this) {
    Entity* fx;
    u32 tmp;

    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            SetRoomFlag(1);
        } else {
            if ((this->actionDelay & 7) == 0) {
                fx = CreateFx(this, FX_DEATH, 0);
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

void VaatiRebornEnemyType1Action0(Entity* this) {
    Entity* enemy;

    this->action = 1;
    this->field_0x74.HALF.LO = 0;
    this->field_0x74.HALF.HI = 1;
    this->actionDelay = 0;
    this->spriteOffsetY = -1;
    PositionRelative(this->parent, this, 0, 0x10000);
    enemy = CreateEnemy(VAATI_REBORN_ENEMY, 2);
    enemy->parent = this;
    enemy->child = this->parent;
    InitAnimationForceUpdate(this, this->field_0x74.HALF.LO);
}

void VaatiRebornEnemyType1Action1(Entity* this) {
    Entity* parent;

    parent = this->parent;
    if (this->field_0x74.HALF.LO == 0) {
        if (parent->field_0x80.HALF.LO == 0) {
            this->field_0x74.HALF.LO = 1;
            this->hitType = 0x30;
            InitAnimationForceUpdate(this, this->field_0x74.HALF.LO);
        }
    } else {
        if (parent->field_0x80.HALF.LO != 0) {
            this->field_0x74.HALF.LO = 0;
            this->hitType = 0x2f;
            InitAnimationForceUpdate(this, this->field_0x74.HALF.LO);
        } else {
            if (((this->bitfield & 0x80) != 0) && (0 < this->iframes)) {
                parent->iframes = this->iframes;
                parent->bitfield = this->bitfield;
            }
            if ((this->frame & 0x40) != 0) {
                InitAnimationForceUpdate(this, 2);
            }
        }
    }

    if (this->field_0x74.HALF.HI == 0) {
        if (parent->action != 2) {
            this->field_0x74.HALF.HI = 1;
            COLLISION_ON(this);
        }
    } else {
        if (parent->action == 2) {
            this->field_0x74.HALF.HI = 0;
            COLLISION_OFF(this);
        }
    }
    this->spriteSettings.draw = parent->spriteSettings.draw;
    this->spriteOffsetX = parent->spriteOffsetX;
    PositionRelative(this->parent, this, 0, 0x10000);
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType2Action0(Entity* this) {
    Entity* source;

    source = this->parent->parent;
    this->action = 1;
    this->field_0x74.HALF.LO = 1;
    this->field_0x74.HALF.HI = 0;
    this->spriteOffsetY = -2;
    this->direction = 0xff;
    PositionRelative(source, this, 0, 0x20000);
    InitAnimationForceUpdate(this, 2);
}

void VaatiRebornEnemyType2Action1(Entity* this) {
    u8 parentDirection;
    Entity* parent;

    parent = this->parent;
    if (parent->field_0x74.HALF.LO == 0) {
        if (this->field_0x74.HALF.LO != 0) {
            this->field_0x74.HALF.LO = 0;
        }
        parentDirection = parent->parent->direction;
        if (parentDirection != 0xff) {
            if (this->field_0x74.HALF.HI == 0) {
                this->field_0x74.HALF.HI = 1;
            }
            if (parentDirection != this->direction) {
                this->direction = parentDirection;
                InitAnimationForceUpdate(this, parentDirection >> 3);
            }
        } else {
            if (this->field_0x74.HALF.HI != 0) {
                this->field_0x74.HALF.HI = 0;
                InitAnimationForceUpdate(this, 0);
            }
        }
    } else {
        if (this->field_0x74.HALF.LO == 0) {
            this->field_0x74.HALF.LO = 1;
            InitAnimationForceUpdate(this, 2);
        }
    }
    this->spriteSettings.draw = parent->spriteSettings.draw;
    this->spriteOffsetX = parent->spriteOffsetX;
    PositionRelative(parent->parent, this, 0, 0x20000);
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType3Action0(Entity* this) {
    this->action = 1;
    this->field_0x74.HALF.LO = 0;
    this->direction = 0xff;
    this->spriteOffsetY = -1;
    InitAnimationForceUpdate(this, this->field_0x74.HALF.LO);
    sub_0803DC0C(this);
}

void VaatiRebornEnemyType3Action1(Entity* this) {
    Entity* parent = this->parent;

    if (this->parent->direction != 0xff) {
        if (this->field_0x74.HALF.LO == 0) {
            this->field_0x74.HALF.LO = 1;
        }
        if (parent->direction != this->direction) {
            this->direction = parent->direction;
            InitAnimationForceUpdate(this, this->direction >> 3);
        }
    } else {
        if (this->field_0x74.HALF.LO != 0) {
            this->field_0x74.HALF.LO = 0;
            this->direction = 0xff;
            InitAnimationForceUpdate(this, 2);
        }
    }
    sub_0803DC0C(this);
}

void sub_0803DC0C(Entity* this) {
    Entity* parent;
    const xy* tmp;

    parent = this->parent;
    tmp = &gUnk_080D04C8[this->actionDelay];
    this->spriteSettings.draw = parent->spriteSettings.draw;
    this->spriteOffsetX = parent->spriteOffsetX;
    PositionRelative(parent, this, tmp->x << 0x10, (tmp->y + 1) * 0x10000);
    UpdateAnimationSingleFrame(this);
}

void VaatiRebornEnemyType1PreAction(Entity* this) {
    Entity* parent;

    if (this->hitType != 0x30) {
        return;
    }
    parent = this->parent;
    this->field_0x76.HALF.HI = 0;
    if ((this->bitfield & 0x80) != 0) {
        if (gUnk_080D04D0[parent->field_0x86.HALF.LO] > this->health) {
            if (2 < ++parent->field_0x86.HALF.LO) {
                COLLISION_OFF(this);
                parent->action = 7;
                parent->flags &= 0x7f;
                parent->actionDelay = 0x80;
                parent->spriteOffsetX = 0;
                parent->direction = -1;
                this->actionDelay = 0;
                SoundReq(SONG_STOP_BGM);
                gArea.bgm = gArea.queued_bgm;
                return;
            }
            this->actionDelay = 1;
            this->field_0x76.HALF.HI = 0xff;
        }
        if (0 < this->iframes) {
            SoundReq(0x127);
            InitScreenShake(0xc, 1);
            if (this->actionDelay == 0)
                this->actionDelay = 0x48;
        }
    }
    if (this->actionDelay != 0) {
        if (--this->actionDelay == 0) {
            this->hitType = 0x2f;
            this->field_0x74.HALF.LO = 1;
            if (this->field_0x76.HALF.HI == 0) {
                parent->field_0x74.HALF.LO = 0xf0;
            } else {
                parent->field_0x74.HALF.LO = 0x70;
                this->health = 0xff;
            }
            parent->action = 1;
            parent->actionDelay = 1;
            InitAnimationForceUpdate(this, 0);
        }
    }
}

void sub_0803DD78(Entity* this) {
    u32 random_number;

    random_number = ((u32)Random() & 0x7c) >> 2;

    switch (this->field_0x86.HALF.LO) {
        case 0:
            if (this->field_0x80.HALF.LO == 0) {
                this->field_0x74.HALF.HI = 0;
                this->field_0x76.HALF.HI = 0x50;
                break;
            }
            switch (this->field_0x82.HALF.HI) {
                case 0:
                case 2:
                case 4:
                    this->field_0x74.HALF.HI = 0;
                    this->field_0x76.HALF.HI = 0x50;
                    break;
                case 1:
                case 3:
                case 5:
                    this->field_0x74.HALF.HI = 0;
                    this->field_0x76.HALF.HI = 1;
                    break;
                default:
                    break;
            }
            break;
        case 1:
            switch (this->field_0x82.HALF.HI) {
                case 1:
                case 3:
                case 5:
                    this->field_0x74.HALF.HI = 0;
                    this->field_0x76.HALF.HI = 1;
                    break;
                case 2:
                    if ((random_number & 8) != 0) {
                        this->field_0x74.HALF.HI = 0;
                        this->field_0x76.HALF.HI = 1;
                    } else {
                        this->field_0x74.HALF.HI = 0;
                        this->field_0x76.HALF.HI = 0x50;
                    }
                    break;
                case 4:
                    if ((random_number & 8) != 0) {
                        this->field_0x74.HALF.HI = 0;
                        this->field_0x76.HALF.HI = 0x50;
                        break;
                    }
                case 0:
                    this->field_0x74.HALF.HI = 1;
                    this->field_0x76.HALF.HI = 1;
                    break;
                default:
                    break;
            }
            break;
        case 2:
            switch (this->field_0x82.HALF.HI) {
                case 2:
                    if ((random_number & 0xf) < 3) {
                        this->field_0x74.HALF.HI = 0;
                        this->field_0x76.HALF.HI = 1;
                    } else {
                        this->field_0x74.HALF.HI = 1;
                        this->field_0x76.HALF.HI = 1;
                    }
                    break;
                case 0:
                    this->field_0x74.HALF.HI = 1;
                    this->field_0x76.HALF.HI = 1;
                    break;
                case 4:
                    if (9 < random_number) {
                        this->field_0x74.HALF.HI = 2;
                        this->field_0x76.HALF.HI = (Random() & 1) + 2;
                        break;
                    }
                case 1:
                case 3:
                case 5:
                    this->field_0x74.HALF.HI = 0;
                    this->field_0x76.HALF.HI = 1;
                    break;
                default:
                    break;
            }
    }

    this->field_0x82.HALF.HI = (this->field_0x82.HALF.HI + 1) % 6;
}

u32 sub_0803DEE0(Entity* this) {
    u32 randomValue;
    u32 ret;

    ret = 2;
    randomValue = (Random() & 0xf8) >> 3;
    if (this->field_0x80.HALF.LO) {
        switch (this->field_0x86.HALF.LO) {
            case 0:
                ret = this->field_0x82.HALF.LO & 1;
                this->field_0x82.HALF.LO = (this->field_0x82.HALF.LO + 1) & 3;
                break;
            case 1:
                switch (this->field_0x82.HALF.LO) {
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
                this->field_0x82.HALF.LO = (this->field_0x82.HALF.LO + 1) % 5;
                break;
            case 2:
                switch (this->field_0x82.HALF.LO) {
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
                this->field_0x82.HALF.LO = (this->field_0x82.HALF.LO + 1) % 5;
                break;
        }
    }
    return ret;
}

void VaatiRebornEnemyType0PreAction(Entity* this) {
    u32 bVar1;

    if (this->action != 0) {
        *(u32*)&this->field_0x78 = this->x.WORD;
        this->field_0x7c = this->y;
    }
    if (this->field_0x76.HALF.LO == 0) {
        if ((this->direction == 0xff) || sub_08049FA0(this)) {
            if (this->field_0x80.HALF.LO == 0) {
                this->animationState = (this->animationState + 1) & 3;
                this->spriteOffsetX = gUnk_080D04D3[this->animationState];
            }
            return;
        }
        bVar1 = sub_08049EE4(this);
        this->direction = (bVar1 & 0x10) | 8;
        this->field_0x76.HALF.LO = 0x10;
    } else {
        this->field_0x76.HALF.LO--;
    }
    if (this->field_0x80.HALF.LO == 0) {
        this->animationState = (this->animationState + 1) & 3;
        this->spriteOffsetX = gUnk_080D04D3[this->animationState];
    }
}

u32 sub_0803E028(Entity* this) {
    u32 ret;
    s32 tmp;

    ret = 0;
    if ((this->field_0x74.HALF.HI != 2) && ((Random() & 1) != 0)) {
        return 0;
    }
    if (this->field_0x76.HALF.HI != 1) {
        return ret;
    }
    tmp = gRoomControls.origin_x + 0x58;
    if (tmp > gPlayerEntity.x.HALF.HI) {
        return ret;
    }
    tmp = gRoomControls.origin_y + 0x58;
    if (tmp > gPlayerEntity.x.HALF.HI) {
        return ret;
    }
    tmp = gRoomControls.origin_y + 0xf8;
    if (tmp >= gPlayerEntity.x.HALF.HI) {
        this->field_0x80.HALF.HI += 5;
        ret = 1;
    }
    return ret;
}
