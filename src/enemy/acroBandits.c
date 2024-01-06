/**
 * @file acroBandits.c
 * @ingroup Enemies
 *
 * @brief Acro Bandits enemy
 */
#include "enemy.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[4];
    /*0x6c*/ u8 unk_6c;
    /*0x6d*/ u8 unused2[1];
    /*0x6e*/ u8 unk_6e;
    /*0x6f*/ u8 unk_6f;
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ union SplitHWord unk_74;
    /*0x76*/ union SplitHWord unk_76;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unused6[1];
    /*0x7c*/ Entity* unk_7c;
} AcroBanditEntity;

extern Entity* gUnk_020000B0;

static void sub_08031E48(AcroBanditEntity* this, AcroBanditEntity* child);
static void sub_08032290(AcroBanditEntity* this);
static bool32 sub_080322A4(AcroBanditEntity* this);
static void sub_08032338(AcroBanditEntity* this);
static void sub_080322E8(AcroBanditEntity* this);
static bool32 sub_08031E04(AcroBanditEntity* this);

void AcroBandit_OnTick(AcroBanditEntity* this);
void AcroBandit_OnCollision(AcroBanditEntity* this);
void AcroBandit_OnKnockback(AcroBanditEntity* this);
void AcroBandit_OnGrabbed(AcroBanditEntity* this);
void AcroBandit_Type0(AcroBanditEntity* this);
void AcroBandit_Type1(AcroBanditEntity* this);
void AcroBandit_Type0Action0(AcroBanditEntity* this);
void AcroBandit_Type0Action1(AcroBanditEntity* this);
void AcroBandit_Type0Action2(AcroBanditEntity* this);
void AcroBandit_Type0Action3(AcroBanditEntity* this);
void AcroBandit_Type0Action4(AcroBanditEntity* this);
void AcroBandit_Type0Action5(AcroBanditEntity* this);
void AcroBandit_Type0Action6(AcroBanditEntity* this);
void AcroBandit_Type0Action7(AcroBanditEntity* this);
void AcroBandit_Type0Action8(AcroBanditEntity* this);
void AcroBandit_Type1Init(AcroBanditEntity* this);
void AcroBandit_Type1Action1(AcroBanditEntity* this);
void AcroBandit_Type1Action2(AcroBanditEntity* this);
void AcroBandit_Type1Action3(AcroBanditEntity* this);
void AcroBandit_Type1Action4(AcroBanditEntity* this);
void AcroBandit_Type1Action5(AcroBanditEntity* this);
void AcroBandit_Type1Action6(AcroBanditEntity* this);
void AcroBandit_Type1Action7(AcroBanditEntity* this);
void AcroBandit_Type1Action8(AcroBanditEntity* this);
void AcroBandit_Type1Action9(AcroBanditEntity* this);

static void (*const AcroBandit_Functions[])(AcroBanditEntity*) = {
    AcroBandit_OnTick,
    AcroBandit_OnCollision,
    AcroBandit_OnKnockback,
    (void (*)(AcroBanditEntity*))GenericDeath,
    (void (*)(AcroBanditEntity*))GenericConfused,
    AcroBandit_OnGrabbed,
};

void AcroBandit(AcroBanditEntity* this) {
    s32 index;

    index = sub_080012DC(super);

    if (index) {
        if ((super->gustJarState & 1) == 0)
            sub_08032338(this);

        gUnk_080012C8[index](super);
    } else {
        AcroBandit_Functions[GetNextFunction(super)](this);
        EnemySetFXOffset(super, 0, 1, -0x10);
    }
}

void AcroBandit_OnTick(AcroBanditEntity* this) {
    static void (*const typeFuncs[])(AcroBanditEntity*) = {
        AcroBandit_Type0,
        AcroBandit_Type1,
    };
    typeFuncs[super->type](this);
}

void AcroBandit_OnCollision(AcroBanditEntity* this) {
    Entity* brother;

    if (super->contactFlags != CONTACT_NOW && super->contactFlags != (CONTACT_NOW | 0x1)) {
        if (super->type == 1) {
            if (super->action < 7 && super->knockbackDuration != 0) {
                brother = super->child;
                if (brother != NULL) {
                    brother->parent = super->parent;
                    do {
                        brother->action = 5;
                        brother->spritePriority.b1 = 1;
                        if (brother->iframes == 0)
                            brother->iframes = -12;
                    } while (brother = brother->child, brother != NULL);
                }
                if (super->parent != NULL) {
                    super->parent->child = super->child;
                } else {
                    if (super->child != NULL)
                        super->parent = super;
                }

                super->action = 9;
                super->spritePriority.b1 = 1;
                if (super->knockbackDirection < 0x10) {
                    super->spriteSettings.flipX = 0;
                } else {
                    super->spriteSettings.flipX = 1;
                }
                InitializeAnimation(super, 14);
            }

            if (super->health == 0) {
                super->knockbackDirection = DirectionNormalize((super->knockbackDirection + (7 & Random())) - 4);
                super->knockbackDuration += super->type2 * 3;
                sub_08032338(this);
            }
        }

        if (super->knockbackDuration != 0 && super->frame & 0x10) {
            if (super->type == 0) {
                super->action = 8;
            } else {
                super->action = 9;
            }
            if (super->knockbackDirection < 0x10) {
                super->spriteSettings.flipX = 0;
            } else {
                super->spriteSettings.flipX = 1;
            }
            super->spritePriority.b1 = 1;
            InitializeAnimation(super, 14);
        }
    }

    if (super->confusedTime)
        EnemyCreateFX(super, FX_STARS);

    EnemyFunctionHandlerAfterCollision(super, AcroBandit_Functions);
}

void AcroBandit_OnKnockback(AcroBanditEntity* this) {
    if (super->iframes > 0)
        GravityUpdate(super, Q_8_8(24.0));

    GenericKnockback(super);
}

void AcroBandit_OnGrabbed(AcroBanditEntity* this) {
}

void AcroBandit_Type0(AcroBanditEntity* this) {
    static void (*const AcroBandit_Type0_Actions[])(AcroBanditEntity*) = {
        AcroBandit_Type0Action0, AcroBandit_Type0Action1, AcroBandit_Type0Action2,
        AcroBandit_Type0Action3, AcroBandit_Type0Action4, AcroBandit_Type0Action5,
        AcroBandit_Type0Action6, AcroBandit_Type0Action7, AcroBandit_Type0Action8,
    };
    AcroBandit_Type0_Actions[super->action](this);
}

void AcroBandit_Type0Action0(AcroBanditEntity* this) {
    sub_0804A720(super);
    super->action = 1;
    this->unk_74.HWORD = super->x.HALF.HI;
    this->unk_76.HWORD = super->y.HALF.HI;
    this->unk_79 = Random();
}

void AcroBandit_Type0Action1(AcroBanditEntity* this) {
    u32 rand;
    s32 x;
    s32 y;

    if (super->timer != 0) {
        super->timer--;
    } else {
        if (sub_08049FDC(super, 1) != 0) {
            rand = Random();
            x = this->unk_74.HWORD + ((s32)rand % 5) * 0x10 - 0x20;
            y = this->unk_76.HWORD + ((s32)(rand >> 4) % 5) * 0x10 - 0x20;
            if (GetCollisionDataAtWorldCoords(x, y, super->collisionLayer) == 0) {
                super->action = 2;
                super->spriteSettings.draw = 1;
                super->x.HALF.HI = x;
                super->y.HALF.HI = y;
                InitializeAnimation(super, 0);
            }
        }
    }
}

void AcroBandit_Type0Action2(AcroBanditEntity* this) {
    static const u8 timers[] = { 2, 2, 2, 3, 3, 3, 3, 4 };

    GetNextFrame(super);
    if (super->frame & 1) {
        super->frame = 0;
        COLLISION_ON(super);
    } else {
        if (super->frame & ANIM_DONE) {
            super->action = 0x3;
            super->timer = timers[Random() & 7];
            InitializeAnimation(super, 1);
        }
    }
}

void AcroBandit_Type0Action3(AcroBanditEntity* this) {
    if (sub_08031E04(this)) {
        super->action = 5;
        if (super->x.HALF.HI > gUnk_020000B0->x.HALF.HI) {
            super->spriteSettings.flipX = 0;
        } else {
            super->spriteSettings.flipX = 1;
        }
        InitializeAnimation(super, 3);
    } else {
        if ((super->frame & 1) && super->timer) {
            super->frame &= 0xfe;
            super->timer--;
        }
        GetNextFrame(super);
        if (super->timer == 0) {
            super->action = 4;
            COLLISION_OFF(super);
            InitializeAnimation(super, 2);
        }
    }
}

void AcroBandit_Type0Action4(AcroBanditEntity* this) {
    static const u8 timers[] = { 60, 60, 90, 120, 120, 120, 120, 150 };
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->timer = timers[Random() & 7];
        super->spriteSettings.draw = 0;
    }
}

void AcroBandit_Type0Action5(AcroBanditEntity* this) {
    AcroBanditEntity *a, *b;

    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        if (gEntCount < MAX_ENTITIES - 5) {
            u32 tmp = Random();
            tmp &= 3;

            a = (AcroBanditEntity*)CreateEnemy(ACRO_BANDIT, 1);
            a->base.type2 = 0;
            a->base.parent = NULL;
            a->unk_74.HALF.LO = tmp;
            sub_08031E48(this, a);
            a->base.child = CreateEnemy(ACRO_BANDIT, 1);

            b = (AcroBanditEntity*)a->base.child;
            b->base.type2 = 1;
            b->base.parent = &a->base;
            b->unk_74.HALF.LO = tmp;
            sub_08031E48(this, b);
            b->base.child = CreateEnemy(ACRO_BANDIT, 1);

            a = (AcroBanditEntity*)b->base.child;
            a->base.type2 = 2;
            a->base.parent = &b->base;
            a->unk_74.HALF.LO = tmp;
            sub_08031E48(this, a);
            a->base.child = CreateEnemy(ACRO_BANDIT, 1);

            b = (AcroBanditEntity*)a->base.child;
            b->base.type2 = 3;
            b->base.parent = &a->base;
            b->unk_74.HALF.LO = tmp;
            sub_08031E48(this, b);
            b->base.child = CreateEnemy(ACRO_BANDIT, 1);

            a = (AcroBanditEntity*)b->base.child;
            a->base.type2 = 4;
            a->base.parent = &b->base;
            a->base.child = NULL;
            a->unk_74.HALF.LO = tmp;
            sub_08031E48(this, a);

            super->action = 6;
            super->timer = 20;
            super->spritePriority.b0 = 7;
            InitializeAnimation(super, 7);
        }
    } else {
        if (super->frame & 1) {
            super->frame = 0;
            COLLISION_OFF(super);
        }
    }
}

void AcroBandit_Type0Action6(AcroBanditEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        super->action = 7;
        COLLISION_OFF(super);
        super->timer = 5;
        super->spriteSettings.draw = 0;
    }
}

void AcroBandit_Type0Action7(AcroBanditEntity* this) {
    if ((super->timer & 0xF) == 0) {
        if (super->timer == 80) {
            DeleteEntity(super);
        } else {
            super->action = 1;
            super->timer = 180;
        }
    }
}

void AcroBandit_Type0Action8(AcroBanditEntity* this) {
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->timer = 180;
        super->spriteSettings.draw = 0;
    } else {
        GetNextFrame(super);
        if ((super->frame & 0xf) == 2) {
            COLLISION_OFF(super);
        }
    }
}

static bool32 sub_08031E04(AcroBanditEntity* this) {
    static const s8 gUnk_080CE5C0[] = { -32, 0, 0, 32, 32, 0, 0, 0 };
    Entity* entity;
    const s8* tmp;

    entity = sub_08049DF4(1);
    if (entity == NULL)
        return FALSE;

    tmp = &gUnk_080CE5C0[super->frame & 6];
    return EntityWithinDistance(super, entity->x.HALF.HI + tmp[0], entity->y.HALF.HI + tmp[1], 0x50);
}

static void sub_08031E48(AcroBanditEntity* this, AcroBanditEntity* child) {
    CopyPosition(super, &child->base);
    child->unk_6c = this->unk_6c;
    child->unk_70 = this->unk_70;
    child->unk_72 = this->unk_72;
    child->unk_6e = this->unk_6e;
    child->unk_6f = this->unk_6f;
    child->unk_7c = super;
}

void AcroBandit_Type1(AcroBanditEntity* this) {
    static void (*const AcroBandit_Type1_Actions[])(AcroBanditEntity*) = {
        AcroBandit_Type1Init,    AcroBandit_Type1Action1, AcroBandit_Type1Action2, AcroBandit_Type1Action3,
        AcroBandit_Type1Action4, AcroBandit_Type1Action5, AcroBandit_Type1Action6, AcroBandit_Type1Action7,
        AcroBandit_Type1Action8, AcroBandit_Type1Action9,
    };
    AcroBandit_Type1_Actions[super->action](this);
}

void AcroBandit_Type1Init(AcroBanditEntity* this) {
    super->action = 1;
    super->spritePriority.b1 = 1;
    super->zVelocity = Q_16_16(4.0);
    super->z.HALF.HI = (4 - super->type2) * 0xe;
    this->unk_79 = Random();
    InitializeAnimation(super, 4);
}

void AcroBandit_Type1Action1(AcroBanditEntity* this) {
    int draw;

    super->z.WORD -= super->zVelocity;
    super->zVelocity -= Q_16_16(3.0 / 32.0);

    if (super->z.HALF.HI < 1) {
        draw = super->spriteSettings.draw;
        if (!draw)
            EnqueueSFX(SFX_12B);

        super->spriteSettings.draw = 1;
    }

    draw = super->spriteSettings.draw;
    if (draw == 1)
        GetNextFrame(super);

    if (super->zVelocity <= 0) {
        super->action = 2;
        COLLISION_ON(super);
        InitializeAnimation(super, 5);
    }
}

void AcroBandit_Type1Action2(AcroBanditEntity* this) {
    static const u16 banditGravity[] = { Q_8_8(22.0), Q_8_8(19.0), Q_8_8(16.0), Q_8_8(13.0), Q_8_8(11.0) };

    GravityUpdate(super, banditGravity[super->type2]);
    if (super->type2 * -0xe <= super->z.HALF.HI) {
        super->action = 3;
        super->timer = 20;
        super->z.HALF.HI = super->type2 * -0xe;
        if (super->parent != NULL)
            super->spritePriority.b1 = 0;
        InitializeAnimation(super, 6);
    }
}

void AcroBandit_Type1Action3(AcroBanditEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) && ((super->parent != NULL) || (--super->timer == 0))) {
        super->action = 4;
        super->direction = sub_08049F84(super, 1);
        this->unk_76.HALF.LO = 0;
        if (super->child != NULL) {
            InitializeAnimation(super, 9);
        } else {
            InitializeAnimation(super, 8);
        }
    }
}

void AcroBandit_Type1Action4(AcroBanditEntity* this) {
    Entity* parent;

    if (!sub_080322A4(this)) {
        parent = super->parent;
        if (parent == NULL) {
            if (sub_08049FDC(super, 1)) {
                if ((++this->unk_79 & 7) == 0) {
                    sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
                }
                this->unk_76.HALF.LO = 0;
            } else {
                if (this->unk_76.HALF.LO) {
                    (this->unk_76.HALF.LO)--;
                    sub_08004596(super, this->unk_7a);
                } else {
                    this->unk_76.HALF.LO = 0x10;
                    if (sub_08049FA0(super) == 0 && (Random() & 1)) {
                        this->unk_7a = sub_08049EE4(super);
                    } else {
                        this->unk_7a = Random() & 30;
                    }
                }
            }

            if (super->direction & (0x3 | DirectionEast | DIR_DIAGONAL))
                super->spriteSettings.flipX = (super->direction >> 4 ^ 1);

            ProcessMovement0(super);
        } else {
            if (this->unk_76.HALF.HI == 0) {
                if (EntityWithinDistance(super, parent->x.HALF.HI, parent->y.HALF.HI, 1) == 0) {
                    this->unk_76.HALF.HI = 1;
                    super->direction = GetFacingDirection(super, parent);
                    sub_080322E8(this);
                    LinearMoveUpdate(super);
                }
            } else {
                super->direction = GetFacingDirection(super, parent);
                sub_080322E8(this);
                LinearMoveUpdate(super);
                if (super->x.HALF.HI == parent->x.HALF.HI && super->y.HALF.HI == parent->y.HALF.HI)
                    this->unk_76.HALF.HI = 0;
            }
        }
        GetNextFrame(super);
    }
}

void AcroBandit_Type1Action5(AcroBanditEntity* this) {
    if (GravityUpdate(super, Q_8_8(32.0)))
        return;

    sub_08032290(this);
}

void AcroBandit_Type1Action6(AcroBanditEntity* this) {
    static const u8 fallDirections[] = { 0x8,  0x1c, 0x11, 0x2, 0x15, 0xc,  0x0, 0x15, 0x6, 0x19,
                                         0x10, 0x4,  0x19, 0xa, 0x1d, 0x14, 0x8, 0x1d, 0xe, 0x1 };
    Entity* tmp;
    u32 dir;

    if (super->timer == 0) {
        super->action = 7;
        dir = fallDirections[this->unk_74.HALF.LO * 5 + super->type2];
        super->direction = dir;
        if (dir >= DirectionSouth) {
            super->spriteSettings.flipX = 1;
        } else {
            super->spriteSettings.flipX = 0;
        }
        super->speed = 0xf0;
        super->zVelocity = Q_16_16(1.125);
        super->spritePriority.b1 = 1;
        InitializeAnimation(super, 12);
    }

    if (super->child == NULL) {
        for (tmp = super->parent; tmp != NULL; tmp = tmp->parent) {
            if (tmp->health != 0)
                tmp->timer = 0;
        }
        super->timer = 0;
    }
}

void AcroBandit_Type1Action7(AcroBanditEntity* this) {
    ProcessMovement2(super);

    if (BounceUpdate(super, Q_8_8(32.0)) == BOUNCE_DONE_ALL)
        super->action = 8;
}

void AcroBandit_Type1Action8(AcroBanditEntity* this) {
    GetNextFrame(super);
    if (super->frame & 1) {
        super->frame = 0;
        super->frameDuration = (Random() & 0x30) + 30;
    } else {
        if (super->frame & ANIM_DONE) {
            super->action = 9;
            InitializeAnimation(super, 13);
        }
    }
}

void AcroBandit_Type1Action9(AcroBanditEntity* this) {
    if (GravityUpdate(super, Q_8_8(24.0)) == 0) {
        if (super->frame & ANIM_DONE) {
            this->unk_7c->timer--;

            DeleteEntity(super);
        } else {
            GetNextFrame(super);

            if ((super->frame & 0xf) == 2)
                COLLISION_OFF(super);
        }
    }
}

static void sub_08032290(AcroBanditEntity* this) {
    super->action = 6;
    super->timer = 12;
    InitializeAnimation(super, 11);
}

static bool32 sub_080322A4(AcroBanditEntity* this) {
    if (super->child != NULL && (super->child->z.HALF.HI + 8) >= super->z.HALF.HI) {
        if (super->z.HALF.HI) {
            super->action = 5;
            super->z.HALF.HI = super->child->z.HALF.HI + 8;
            InitializeAnimation(super, 11);
            return TRUE;
        } else {
            sub_08032290(this);
            return TRUE;
        }
    }
    return FALSE;
}

static void sub_080322E8(AcroBanditEntity* this) {
    if (this->unk_78) {
        if (--this->unk_78 == 0) {
            u32 flipX = super->spriteSettings.flipX;
            super->spriteSettings.flipX = flipX ^ 1;
        }
    } else {
        u8 tmp = super->direction;
        if (tmp & (0x3 | DirectionEast | DIR_DIAGONAL)) {
            tmp >>= 4;
            tmp ^= 1;
            if (tmp != super->spriteSettings.flipX) {
                this->unk_78 = 6;
            }
        }
    }
}

static void sub_08032338(AcroBanditEntity* this) {
    if ((this->unk_7c->timer += 15) != 80)
        this->unk_6c = 0;
}
