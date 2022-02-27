/**
 * @file eyegore.c
 * @ingroup Enemies
 *
 * @brief Eyegore enemy
 */

#define NENT_DEPRECATED
#include "global.h"
#include "enemy.h"
#include "functions.h"
#include "fade.h"
#include "object.h"
#include "hitbox.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x5];
    /*0x6d*/ u8 unk_6d;
    /*0x6e*/ u8 unk_6e[0x6];
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
    /*0x80*/ u16 unk_80;
    /*0x82*/ u16 unk_82;
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} EyegoreEntity;

extern Entity* sub_08017A90(Entity*, Entity*);

extern Entity* gUnk_020000B0;
extern const u8 gUnk_080B3E80[];

void sub_08031344(EyegoreEntity*);
void sub_08031344(EyegoreEntity*);
void sub_08031320(EyegoreEntity*);
void sub_08030F00(EyegoreEntity*);
void sub_08030E58(EyegoreEntity*);
void sub_08030FB4(EyegoreEntity*);
void sub_08031024(EyegoreEntity*);
void sub_08030E3C(EyegoreEntity*);
void sub_08031250(EyegoreEntity*);
void sub_08030E70(EyegoreEntity*);
void sub_08030E80(EyegoreEntity*);
void Eyegore_OnTick(EyegoreEntity*);
void Eyegore_OnCollision(EyegoreEntity*);
void Eyegore_OnDeath(EyegoreEntity*);
void Eyegore_OnGrabbed(EyegoreEntity*);
void Eyegore_Init(EyegoreEntity*);
void Eyegore_Action1(EyegoreEntity*);
void Eyegore_Action2(EyegoreEntity*);
void Eyegore_Action3(EyegoreEntity*);
void Eyegore_Action4(EyegoreEntity*);
void Eyegore_Action5(EyegoreEntity*);
void Eyegore_Action6(EyegoreEntity*);

void (*const Eyegore_Functions[])(EyegoreEntity*) = {
    Eyegore_OnTick,
    Eyegore_OnCollision,
    (void (*)(EyegoreEntity*))GenericKnockback,
    Eyegore_OnDeath,
    (void (*)(EyegoreEntity*))GenericConfused,
    Eyegore_OnGrabbed,
};

void Eyegore(EyegoreEntity* this) {
    EnemyFunctionHandler(super, (EntityActionArray)&Eyegore_Functions);
}

void Eyegore_OnTick(EyegoreEntity* this) {
    static void (*const Eyegore_Actions[])(EyegoreEntity*) = {
        Eyegore_Init,    Eyegore_Action1, Eyegore_Action2, Eyegore_Action3,
        Eyegore_Action4, Eyegore_Action5, Eyegore_Action6,
    };
    Eyegore_Actions[super->action](this);
}

void Eyegore_OnCollision(EyegoreEntity* this) {
    u32 tmp;

    if ((super->bitfield == 0x95) || (super->bitfield == 0x8e)) {
        Entity* entity = super->field_0x4c;
        tmp = (((entity->direction + 4) & 0x18) ^ 0x10) >> 3;
        if (tmp == super->animationState) {
            if ((tmp & 1) != 0) {
                if (0x10 < ((entity->y.HALF.HI + entity->z.HALF.HI) - (super->y.HALF.HI + super->z.HALF.HI)) + 0x14U) {
                } else {
                    if (super->bitfield == 0x8e) {
                        super->health = 0;
                    } else {
                        super->health--;
                    }
                    super->iframes = 0x10;
                    EnqueueSFX(SFX_HIT);
                    sub_08031344(this);
                }
            } else {
                if ((entity->x.HALF.HI - super->x.HALF.HI) + 8U <= 0x10) {
                    if (super->action == 1) {
                        sub_08031320(this);
                        EnqueueSFX(SFX_BUTTON_PRESS);
                        sub_08031344(this);
                    } else {
                        if (super->bitfield == 0x8e) {
                            super->health = 0;
                        } else {
                            super->health--;
                        }
                        super->iframes = 0x0f;
                        EnqueueSFX(SFX_HIT);
                        sub_08031344(this);
                    }
                }
            }
        }
    }
    if (super->health == 0) {
        super->flags &= ~ENT_COLLIDE;
        super->iframes = 0x78;
    }
    EnemyFunctionHandlerAfterCollision(super, Eyegore_Functions);
}

void Eyegore_OnDeath(EyegoreEntity* this) {
    if (this->unk_7e != 0) {
        this->unk_7e--;
        GravityUpdate(super, 0x1c00);
    } else {
        if ((super->field_0x3a & 2) == 0) {
            CreateFx(super, FX_GIANT_EXPLOSION4, 0);
        }
        GenericDeath(super);
    }
}

void Eyegore_OnGrabbed(EyegoreEntity* this) {
}

void Eyegore_Init(EyegoreEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    super->animationState = 2;
    super->x.HALF.HI &= 0xfff0;
    super->y.HALF.HI = (super->y.HALF.HI & 0xfff0) + 0xc;
    this->unk_6d |= 8;
    this->unk_74 = super->x.HALF.HI;
    this->unk_76 = super->y.HALF.HI;
    this->unk_7e = 0x3c;
    sub_08030F00(this);
    if (this->unk_7c != 0) {
        super->flags &= ~ENT_COLLIDE;
        InitializeAnimation(super, 10);
    } else {
        InitializeAnimation(super, 0xe);
    }
}

void Eyegore_Action1(EyegoreEntity* this) {
    if ((this->unk_7c != 0) && CheckFlags(this->unk_7c)) {
        sub_08031320(this);
    }
}

void Eyegore_Action2(EyegoreEntity* this) {
    if (super->actionDelay != 0) {
        super->actionDelay--;
    } else {
        if (sub_08049FDC(super, 1)) {
            super->action = 3;
            super->actionDelay = 0x3c;
            super->direction = (CalculateDirectionTo(super->x.HALF.HI + super->hitbox->offset_x,
                                                     super->y.HALF.HI + super->hitbox->offset_y,
                                                     gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI) +
                                4) &
                               0x18;
            InitializeAnimation(super, 10);
        }
    }
}

void Eyegore_Action3(EyegoreEntity* this) {
    static const u8 gUnk_080CE2BC[] = {
        0,
        255,
        0,
        1,
    };
    if (super->actionDelay != 0) {
        super->spriteOffsetX = gUnk_080CE2BC[--super->actionDelay & 3];
    } else {
        GetNextFrame(super);
        if ((super->frame & 0x80) != 0) {
            super->flags |= ENT_COLLIDE;
            super->animationState = 2;
            sub_08030E58(this);
            InitializeAnimation(super, 2);
            sub_08030FB4(this);
        }
    }
}

void Eyegore_Action4(EyegoreEntity* this) {
    GetNextFrame(super);
    switch (super->frame & 7) {
        case 1:
            sub_08031024(this);
            sub_08030E3C(this);
            break;
        case 2:
            if ((super->frame & 0x80) != 0) {
                super->animationState = this->unk_7f;
                InitializeAnimation(super, super->animationState + 4);
            }
            if (this->unk_7a != 0) {
                sub_08031250(this);
            }
            if (GravityUpdate(super, 0x1c00) == 0) {
                sub_08030E70(this);
            }

            break;
        default:
            if ((super->frame & 0x80) != 0) {
                InitializeAnimation(super, super->animationState);
                if ((this->unk_79 & 0x80) != 0) {
                    super->action = 5;
                    this->unk_7a = 0;
                }
            }
            break;
    }
}

void Eyegore_Action5(EyegoreEntity* this) {
    GetNextFrame(super);
    switch (super->frame & 7) {
        case 1:
            if (super->animationState != 2) {
                if (super->animationState >= 3) {
                    this->unk_7f = (super->animationState - 1) & 3;
                } else {
                    this->unk_7f = (super->animationState + 1) & 3;
                }
            }
            sub_08030E3C(this);
            break;
        case 2:
            if ((super->frame & 0x80) != 0) {
                super->animationState = this->unk_7f;
                InitializeAnimation(super, super->animationState + 4);
            }
            if (GravityUpdate(super, 0x1c00) == 0) {
                sub_08030E70(this);
            }
            break;
        default:
            if ((super->frame & 0x80) != 0) {
                InitializeAnimation(super, super->animationState);
                if (sub_08049FDC(super, 1)) {
                    sub_08030E58(this);
                } else {
                    if (super->animationState == 2) {
                        super->action = 6;
                        super->flags &= ~ENT_COLLIDE;
                        InitializeAnimation(super, 0xe);
                        sub_08030F00(this);
                    }
                }
                break;
            }
    }
}

void Eyegore_Action6(EyegoreEntity* this) {
    GetNextFrame(super);
    if ((super->frame & 0x80) != 0) {
        super->action = 2;
    }
}

void sub_08030E3C(EyegoreEntity* this) {
    super->frame = 0;
    super->zVelocity = 0x11800;
    EnqueueSFX(SFX_157);
}

void sub_08030E58(EyegoreEntity* this) {
    super->action = 4;
    this->unk_7a = 0;
    this->unk_79 = 0;
    this->unk_78 = 0;
}

void sub_08030E70(EyegoreEntity* this) {
    sub_08030E80(this);
    EnqueueSFX(SFX_158);
}

const s8 gUnk_080CE2C0[] = {
    // This has to be before gUnk_080CE2F4.
    -8, -10, 8,  -10, 16, -4, 16, 4, -8, 10, 8,  10, -16, -4, -16, 4, 9,  0, 10, 0, 11, 0, 12, 0, 13, 0,
    14, 0,   15, 0,   16, 0,  17, 0, 18, 0,  19, 0,  20,  0,  21,  0, 22, 0, 23, 0, 24, 0, 25, 0, 0,  64,
};

void sub_08030E80(EyegoreEntity* this) {
    static const s8 gUnk_080CE2F4[] = {
        -11, 9, 11, 9, -9, -2, -8, 10, -11, -1, 11, -1, 9, -2, 8, 10,
    };
    u32 tmp = super->animationState << 2;
    Entity* effect = CreateObject(SPECIAL_FX, 2, 0);
    if (effect != NULL) {
        CopyPosition(super, effect);
        effect->x.HALF.HI += gUnk_080CE2F4[tmp + 0];
        effect->y.HALF.HI += gUnk_080CE2F4[tmp + 1];
    }
    effect = CreateObject(SPECIAL_FX, 2, 0);
    if (effect != NULL) {
        CopyPosition(super, effect);
        effect->x.HALF.HI += gUnk_080CE2F4[tmp + 2];
        effect->y.HALF.HI += gUnk_080CE2F4[tmp + 3];
    }
}

void sub_08030F00(EyegoreEntity* this) {
    u32 position = COORD_TO_TILE_OFFSET(super, 8, 0x14);
    u16 tileIndex = GetTileIndex(position, super->collisionLayer);
    this->unk_80 = tileIndex;
    tileIndex = GetTileIndex(position + 1, super->collisionLayer);
    this->unk_82 = tileIndex;
    tileIndex = GetTileIndex(position + 0x40, super->collisionLayer);
    this->unk_84 = tileIndex;
    tileIndex = GetTileIndex(position + 0x41, super->collisionLayer);
    this->unk_86 = tileIndex;
    SetTile(0x4022, position, super->collisionLayer);
    SetTile(0x4022, position + 1, super->collisionLayer);
    SetTile(0x4022, position + 0x40, super->collisionLayer);
    SetTile(0x4022, position + 0x41, super->collisionLayer);
}

void sub_08030FB4(EyegoreEntity* this) {
    u32 position = COORD_TO_TILE_OFFSET(super, 8, 0x14);
    SetTile(this->unk_80, position, super->collisionLayer);
    SetTile(this->unk_82, position + 1, super->collisionLayer);
    SetTile(this->unk_84, position + 0x40, super->collisionLayer);
    SetTile(this->unk_86, position + 0x41, super->collisionLayer);
}

void sub_08031024(EyegoreEntity* this) {
    u32 uVar5;
    bool32 boolresult;
    u32 uVar8;
    u32 tmp, tmp2;

    if (sub_08049FDC(super, 1)) {
        boolresult = 1;
    } else {
        boolresult = 0;
    }
    if (this->unk_79 == 0) {
        if (boolresult != 0) {
            super->direction = CalculateDirectionTo(super->x.HALF.HI + super->hitbox->offset_x,
                                                    super->y.HALF.HI + super->hitbox->offset_y,
                                                    gUnk_020000B0->x.HALF.HI, gUnk_020000B0->y.HALF.HI);
        } else {
            this->unk_79 = 1;
            this->unk_78 = (boolresult >> 0x1f);
            super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_74, this->unk_76);
        }
    } else {
        if (boolresult != 0) {
            this->unk_79 = 0;
        } else {
            if (this->unk_78 != 0) {
                if (this->unk_78 == 1) {
                    this->unk_78 |= 0x80;
                    super->direction =
                        CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_74, this->unk_76);

                    this->unk_7b = (super->direction + 4) & 0x18;
                    if (this->unk_7b < super->direction) {
                        super->direction = (this->unk_7b + 8) & 0x18;
                    } else {
                        super->direction = (this->unk_7b - 8) & 0x18;
                    }
                } else if ((this->unk_78 & 2) != 0) {
                    super->direction ^= 0x10;
                }
                tmp = (this->unk_78 & 0x70) * 0x1000000;
                if (tmp != 0) {
                    tmp >>= 0x19;
                    this->unk_78 = tmp | (this->unk_78 & 0x8f);
                    if (((this->unk_78) & 0x10) != 0) {
                        super->direction = this->unk_7b;
                        this->unk_78 = 0;
                    }
                } else {
                    tmp2 = this->unk_7b >> 1;
                    uVar5 = GetTileTypeByPos(super->x.HALF.HI + gUnk_080CE2C0[tmp2],
                                             super->y.HALF.HI + gUnk_080CE2C0[tmp2 + 1], super->collisionLayer);
                    uVar8 = GetTileTypeByPos(super->x.HALF.HI + gUnk_080CE2C0[tmp2 + 2],
                                             super->y.HALF.HI + gUnk_080CE2C0[tmp2 + 3], super->collisionLayer);
                    if (!(((gUnk_080B3E80[uVar5] == 0) && (gUnk_080B3E80[uVar8] == 0)) ||
                          ((this->unk_7b | 1) & 1) == 0)) {
                        if (super->direction >> 3 == super->animationState) {
                            this->unk_78 |= 0x20;
                        } else {
                            this->unk_78 |= 0x40;
                        }
                    } else {
                        super->direction = this->unk_7b;
                        this->unk_78 = 0;
                    }
                }
            } else {
                super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, this->unk_74, this->unk_76);
            }
        }
    }
    if (((super->direction + 4) & 0x18) >> 3 == super->animationState) {
        this->unk_7a = 1;
        this->unk_7f = super->animationState;
    } else {
        this->unk_7a = 0;
        if (((super->direction + super->animationState * -8) & 0x1f) >= 0x11U) {
            this->unk_7f = (super->animationState - 1) & 3;
        } else {
            this->unk_7f = (super->animationState + 1) & 3;
        }
    }
    super->direction = (super->direction + 4) & 0x18;
    super->x.HALF.LO = 0;
    super->y.HALF.LO = 0;
}

void sub_08031250(EyegoreEntity* this) {
    u32 tmp2;
    u32 tmp = (u32)super->animationState * 4;
    sub_08008796(super, 9, super->x.HALF.HI + gUnk_080CE2C0[tmp], super->y.HALF.HI + gUnk_080CE2C0[tmp + 1]);
    sub_08008796(super, 9, super->x.HALF.HI + gUnk_080CE2C0[tmp + 2], super->y.HALF.HI + gUnk_080CE2C0[tmp + 3]);
    if (this->unk_79 != 0) {
        tmp2 = 0;
        if ((super->x.HALF.HI - (u32)this->unk_74) + 2 < 5) {
            super->x.HALF.HI = this->unk_74;
            tmp2 = 0x80;
        }
        if ((super->y.HALF.HI - (u32)this->unk_76) + 2 < 5) {
            super->y.HALF.HI = this->unk_76;
            this->unk_79 = tmp2 | this->unk_79;
        }
        if (((this->unk_79 & 0x80) == 0) && (ProcessMovement0(super) == 0)) {
            if ((this->unk_78 & 0x80) != 0) {
                this->unk_78 = 0x82;
            } else {
                this->unk_78 = 1;
            }
        }
    } else {
        ProcessMovement0(super);
    }
}

void sub_08031320(EyegoreEntity* this) {
    super->action = 2;
    super->flags &= ~ENT_COLLIDE;
    super->actionDelay = 0x1e;
    super->hitbox = (Hitbox*)&gUnk_080FD308;
    InitializeAnimation(super, 10);
}

void sub_08031344(EyegoreEntity* this) {
    static const s8 gUnk_080CE304[] = {
        0, -6, -14, -14, 0, -28, 14, -14,
    };
    Entity* entity = sub_08017A90(super->field_0x4c, super);
    if (entity != NULL) {
        const s8* ptr = &gUnk_080CE304[entity->animationState * 2];
        entity->spriteOffsetX = ptr[0];
        entity->spriteOffsetY = ptr[1];
    }
}
