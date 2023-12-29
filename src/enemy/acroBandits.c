/**
 * @file acroBandits.c
 * @ingroup Enemies
 *
 * @brief Acro Bandits enemy
 */

#include "enemy.h"
#include "functions.h"

extern Entity* gUnk_020000B0;

static void sub_08031E48(Entity* this, Entity* child);
static void sub_08032290(Entity* this);
static bool32 sub_080322A4(Entity* this);
static void sub_08032338(Entity* this);
static void sub_080322E8(Entity* this);
static bool32 sub_08031E04(Entity* this);

void AcroBandit_OnTick(Entity* this);
void AcroBandit_OnCollision(Entity* this);
void AcroBandit_OnKnockback(Entity* this);
void GenericDeath(Entity* this);
void GenericConfused(Entity* this);
void AcroBandit_OnGrabbed(Entity* this);
void AcroBandit_Type0(Entity* this);
void AcroBandit_Type1(Entity* this);
void AcroBandit_Type0Action0(Entity* this);
void AcroBandit_Type0Action1(Entity* this);
void AcroBandit_Type0Action2(Entity* this);
void AcroBandit_Type0Action3(Entity* this);
void AcroBandit_Type0Action4(Entity* this);
void AcroBandit_Type0Action5(Entity* this);
void AcroBandit_Type0Action6(Entity* this);
void AcroBandit_Type0Action7(Entity* this);
void AcroBandit_Type0Action8(Entity* this);
void AcroBandit_Type1Init(Entity* this);
void AcroBandit_Type1Action1(Entity* this);
void AcroBandit_Type1Action2(Entity* this);
void AcroBandit_Type1Action3(Entity* this);
void AcroBandit_Type1Action4(Entity* this);
void AcroBandit_Type1Action5(Entity* this);
void AcroBandit_Type1Action6(Entity* this);
void AcroBandit_Type1Action7(Entity* this);
void AcroBandit_Type1Action8(Entity* this);
void AcroBandit_Type1Action9(Entity* this);

static void (*const AcroBandit_Functions[])(Entity*) = {
    AcroBandit_OnTick, AcroBandit_OnCollision, AcroBandit_OnKnockback,
    GenericDeath,      GenericConfused,        AcroBandit_OnGrabbed,
};

void AcroBandit(Entity* this) {
    s32 index;

    index = sub_080012DC(this);

    if (index) {
        if ((this->gustJarState & 1) == 0)
            sub_08032338(this);

        gUnk_080012C8[index](this);
    } else {
        AcroBandit_Functions[GetNextFunction(this)](this);
        SetChildOffset(this, 0, 1, -0x10);
    }
}

void AcroBandit_OnTick(Entity* this) {
    static void (*const typeFuncs[])(Entity*) = {
        AcroBandit_Type0,
        AcroBandit_Type1,
    };
    typeFuncs[this->type](this);
}

void AcroBandit_OnCollision(Entity* this) {
    Entity* brother;

    if (this->contactFlags != 0x80 && this->contactFlags != 0x81) {
        if (this->type == 1) {
            if (this->action < 7 && this->knockbackDuration != 0) {
                brother = this->child;
                if (brother != NULL) {
                    brother->parent = this->parent;
                    do {
                        brother->action = 5;
                        brother->spritePriority.b1 = 1;
                        if (brother->iframes == 0)
                            brother->iframes = -12;
                    } while (brother = brother->child, brother != NULL);
                }
                if (this->parent != NULL) {
                    this->parent->child = this->child;
                } else {
                    if (this->child != NULL)
                        this->parent = this;
                }

                this->action = 9;
                this->spritePriority.b1 = 1;
                if (this->knockbackDirection < 0x10) {
                    this->spriteSettings.flipX = 0;
                } else {
                    this->spriteSettings.flipX = 1;
                }
                InitializeAnimation(this, 14);
            }

            if (this->health == 0) {
                this->knockbackDirection = DirectionNormalize((this->knockbackDirection + (7 & Random())) - 4);
                this->knockbackDuration += this->type2 * 3;
                sub_08032338(this);
            }
        }

        if (this->knockbackDuration != 0 && this->frame & 0x10) {
            if (this->type == 0) {
                this->action = 8;
            } else {
                this->action = 9;
            }
            if (this->knockbackDirection < 0x10) {
                this->spriteSettings.flipX = 0;
            } else {
                this->spriteSettings.flipX = 1;
            }
            this->spritePriority.b1 = 1;
            InitializeAnimation(this, 14);
        }
    }

    if (this->confusedTime)
        Create0x68FX(this, FX_STARS);

    EnemyFunctionHandlerAfterCollision(this, AcroBandit_Functions);
}

void AcroBandit_OnKnockback(Entity* this) {
    if (this->iframes > 0)
        GravityUpdate(this, Q_8_8(24.0));

    GenericKnockback(this);
}

void AcroBandit_OnGrabbed(Entity* this) {
}

void AcroBandit_Type0(Entity* this) {
    static void (*const AcroBandit_Type0_Actions[])(Entity*) = {
        AcroBandit_Type0Action0, AcroBandit_Type0Action1, AcroBandit_Type0Action2,
        AcroBandit_Type0Action3, AcroBandit_Type0Action4, AcroBandit_Type0Action5,
        AcroBandit_Type0Action6, AcroBandit_Type0Action7, AcroBandit_Type0Action8,
    };
    AcroBandit_Type0_Actions[this->action](this);
}

void AcroBandit_Type0Action0(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
    this->field_0x78.HALF.HI = Random();
}

void AcroBandit_Type0Action1(Entity* this) {
    u32 rand;
    s32 x;
    s32 y;

    if (this->timer != 0) {
        this->timer--;
    } else {
        if (sub_08049FDC(this, 1)) {
            rand = Random();
            x = this->field_0x74.HWORD + ((s32)rand % 5) * 0x10 - 0x20;
            y = this->field_0x76.HWORD + ((s32)(rand >> 4) % 5) * 0x10 - 0x20;
            if (sub_080B1B18(x, y, this->collisionLayer) == 0) {
                this->action = 2;
                this->spriteSettings.draw = 1;
                this->x.HALF.HI = x;
                this->y.HALF.HI = y;
                InitializeAnimation(this, 0);
            }
        }
    }
}

void AcroBandit_Type0Action2(Entity* this) {
    static const u8 timers[] = { 2, 2, 2, 3, 3, 3, 3, 4 };

    GetNextFrame(this);
    if (this->frame & 1) {
        this->frame = 0;
        COLLISION_ON(this);
    } else {
        if (this->frame & ANIM_DONE) {
            this->action = 0x3;
            this->timer = timers[Random() & 7];
            InitializeAnimation(this, 1);
        }
    }
}

void AcroBandit_Type0Action3(Entity* this) {
    if (sub_08031E04(this)) {
        this->action = 5;
        if (this->x.HALF.HI > gUnk_020000B0->x.HALF.HI) {
            this->spriteSettings.flipX = 0;
        } else {
            this->spriteSettings.flipX = 1;
        }
        InitializeAnimation(this, 3);
    } else {
        if ((this->frame & 1) && this->timer) {
            this->frame &= 0xfe;
            this->timer--;
        }
        GetNextFrame(this);
        if (this->timer == 0) {
            this->action = 4;
            COLLISION_OFF(this);
            InitializeAnimation(this, 2);
        }
    }
}

void AcroBandit_Type0Action4(Entity* this) {
    static const u8 timers[] = { 60, 60, 90, 120, 120, 120, 120, 150 };
    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->timer = timers[Random() & 7];
        this->spriteSettings.draw = 0;
    }
}

void AcroBandit_Type0Action5(Entity* this) {
    Entity *a, *b;

    GetNextFrame(this);
    if (this->frame & ANIM_DONE) {
        if (gEntCount < MAX_ENTITIES - 5) {
            u32 tmp = Random();
            tmp &= 3;

            a = CreateEnemy(ACRO_BANDIT, 1);
            a->type2 = 0;
            a->parent = NULL;
            a->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, a);
            a->child = CreateEnemy(ACRO_BANDIT, 1);

            b = a->child;
            b->type2 = 1;
            b->parent = a;
            b->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, b);
            b->child = CreateEnemy(ACRO_BANDIT, 1);

            a = b->child;
            a->type2 = 2;
            a->parent = b;
            a->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, a);
            a->child = CreateEnemy(ACRO_BANDIT, 1);

            b = a->child;
            b->type2 = 3;
            b->parent = a;
            b->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, b);
            b->child = CreateEnemy(ACRO_BANDIT, 1);

            a = b->child;
            a->type2 = 4;
            a->parent = b;
            a->child = NULL;
            a->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, a);

            this->action = 6;
            this->timer = 20;
            this->spritePriority.b0 = 7;
            InitializeAnimation(this, 7);
        }
    } else {
        if (this->frame & 1) {
            this->frame = 0;
            COLLISION_OFF(this);
        }
    }
}

void AcroBandit_Type0Action6(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        this->action = 7;
        COLLISION_OFF(this);
        this->timer = 5;
        this->spriteSettings.draw = 0;
    }
}

void AcroBandit_Type0Action7(Entity* this) {
    if ((this->timer & 0xF) == 0) {
        if (this->timer == 80) {
            DeleteEntity(this);
        } else {
            this->action = 1;
            this->timer = 180;
        }
    }
}

void AcroBandit_Type0Action8(Entity* this) {
    if (this->frame & ANIM_DONE) {
        this->action = 1;
        this->timer = 180;
        this->spriteSettings.draw = 0;
    } else {
        GetNextFrame(this);
        if ((this->frame & 0xf) == 2) {
            COLLISION_OFF(this);
        }
    }
}

static bool32 sub_08031E04(Entity* this) {
    static const s8 gUnk_080CE5C0[] = { -32, 0, 0, 32, 32, 0, 0, 0 };
    Entity* ent;
    const s8* tmp;

    ent = sub_08049DF4(1);
    if (ent == NULL)
        return FALSE;

    tmp = &gUnk_080CE5C0[this->frame & 6];
    return EntityWithinDistance(this, ent->x.HALF.HI + tmp[0], ent->y.HALF.HI + tmp[1], 0x50);
}

static void sub_08031E48(Entity* this, Entity* child) {
    CopyPosition(this, child);
    child->field_0x6c.HALF.LO = this->field_0x6c.HALF.LO;
    child->field_0x70.HALF.LO = this->field_0x70.HALF.LO;
    child->field_0x70.HALF.HI = this->field_0x70.HALF.HI;
    child->field_0x6e.HALF.LO = this->field_0x6e.HALF.LO;
    child->field_0x6e.HALF.HI = this->field_0x6e.HALF.HI;
    child->field_0x7c.WORD = (s32)this;
}

void AcroBandit_Type1(Entity* this) {
    static void (*const AcroBandit_Type1_Actions[])(Entity*) = {
        AcroBandit_Type1Init,    AcroBandit_Type1Action1, AcroBandit_Type1Action2, AcroBandit_Type1Action3,
        AcroBandit_Type1Action4, AcroBandit_Type1Action5, AcroBandit_Type1Action6, AcroBandit_Type1Action7,
        AcroBandit_Type1Action8, AcroBandit_Type1Action9,
    };
    AcroBandit_Type1_Actions[this->action](this);
}

void AcroBandit_Type1Init(Entity* this) {
    this->action = 1;
    this->spritePriority.b1 = 1;
    this->zVelocity = Q_16_16(4.0);
    this->z.HALF.HI = (4 - this->type2) * 0xe;
    this->field_0x78.HALF.HI = Random();
    InitializeAnimation(this, 4);
}

void AcroBandit_Type1Action1(Entity* this) {
    int draw;

    this->z.WORD -= this->zVelocity;
    this->zVelocity -= Q_16_16(3.0 / 32.0);

    if (this->z.HALF.HI < 1) {
        draw = this->spriteSettings.draw;
        if (!draw)
            EnqueueSFX(SFX_12B);

        this->spriteSettings.draw = 1;
    }

    draw = this->spriteSettings.draw;
    if (draw == 1)
        GetNextFrame(this);

    if (this->zVelocity <= 0) {
        this->action = 2;
        COLLISION_ON(this);
        InitializeAnimation(this, 5);
    }
}

void AcroBandit_Type1Action2(Entity* this) {
    static const u16 banditGravity[] = { Q_8_8(22.0), Q_8_8(19.0), Q_8_8(16.0), Q_8_8(13.0), Q_8_8(11.0) };

    GravityUpdate(this, banditGravity[this->type2]);
    if (this->type2 * -0xe <= this->z.HALF.HI) {
        this->action = 3;
        this->timer = 20;
        this->z.HALF.HI = this->type2 * -0xe;
        if (this->parent != NULL)
            this->spritePriority.b1 = 0;
        InitializeAnimation(this, 6);
    }
}

void AcroBandit_Type1Action3(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) && ((this->parent != NULL) || (--this->timer == 0))) {
        this->action = 4;
        this->direction = sub_08049F84(this, 1);
        *(u8*)&this->field_0x76 = 0;
        if (this->child != NULL) {
            InitializeAnimation(this, 9);
        } else {
            InitializeAnimation(this, 8);
        }
    }
}

void AcroBandit_Type1Action4(Entity* this) {
    Entity* parent;

    if (!sub_080322A4(this)) {
        parent = this->parent;
        if (parent == NULL) {
            if (sub_08049FDC(this, 1)) {
                if ((++this->field_0x78.HALF.HI & 7) == 0) {
                    sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
                }
                this->field_0x76.HALF.LO = 0;
            } else {
                if (this->field_0x76.HALF.LO) {
                    (this->field_0x76.HALF.LO)--;
                    sub_08004596(this, this->field_0x7a.HALF.LO);
                } else {
                    this->field_0x76.HALF.LO = 0x10;
                    if (sub_08049FA0(this) == 0 && (Random() & 1)) {
                        this->field_0x7a.HALF.LO = sub_08049EE4(this);
                    } else {
                        this->field_0x7a.HALF.LO = Random() & 30;
                    }
                }
            }

            if (this->direction & (0x3 | DirectionEast | DIR_DIAGONAL))
                this->spriteSettings.flipX = (this->direction >> 4 ^ 1);

            ProcessMovement0(this);
        } else {
            if (this->field_0x76.HALF.HI == 0) {
                if (EntityWithinDistance(this, parent->x.HALF.HI, parent->y.HALF.HI, 1) == 0) {
                    this->field_0x76.HALF.HI = 1;
                    this->direction = GetFacingDirection(this, parent);
                    sub_080322E8(this);
                    LinearMoveUpdate(this);
                }
            } else {
                this->direction = GetFacingDirection(this, parent);
                sub_080322E8(this);
                LinearMoveUpdate(this);
                if (this->x.HALF.HI == parent->x.HALF.HI && this->y.HALF.HI == parent->y.HALF.HI)
                    this->field_0x76.HALF.HI = 0;
            }
        }
        GetNextFrame(this);
    }
}

void AcroBandit_Type1Action5(Entity* this) {
    if (GravityUpdate(this, Q_8_8(32.0)))
        return;

    sub_08032290(this);
}

void AcroBandit_Type1Action6(Entity* this) {
    static const u8 fallDirections[] = { 0x8,  0x1c, 0x11, 0x2, 0x15, 0xc,  0x0, 0x15, 0x6, 0x19,
                                         0x10, 0x4,  0x19, 0xa, 0x1d, 0x14, 0x8, 0x1d, 0xe, 0x1 };
    Entity* tmp;
    u32 dir;

    if (this->timer == 0) {
        this->action = 7;
        dir = fallDirections[this->field_0x74.HALF.LO * 5 + this->type2];
        this->direction = dir;
        if (dir >= DirectionSouth) {
            this->spriteSettings.flipX = 1;
        } else {
            this->spriteSettings.flipX = 0;
        }
        this->speed = 0xf0;
        this->zVelocity = Q_16_16(1.125);
        this->spritePriority.b1 = 1;
        InitializeAnimation(this, 12);
    }

    if (this->child == NULL) {
        for (tmp = this->parent; tmp != NULL; tmp = tmp->parent) {
            if (tmp->health != 0)
                tmp->timer = 0;
        }
        this->timer = 0;
    }
}

void AcroBandit_Type1Action7(Entity* this) {
    ProcessMovement2(this);

    if (sub_080044EC(this, 0x2000) == 0)
        this->action = 8;
}

void AcroBandit_Type1Action8(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->frame = 0;
        this->frameDuration = (Random() & 0x30) + 30;
    } else {
        if (this->frame & ANIM_DONE) {
            this->action = 9;
            InitializeAnimation(this, 13);
        }
    }
}

void AcroBandit_Type1Action9(Entity* this) {
    if (GravityUpdate(this, Q_8_8(24.0)) == 0) {
        if (this->frame & ANIM_DONE) {
            ((Entity*)this->field_0x7c.WORD)->timer--;

            DeleteEntity(this);
        } else {
            GetNextFrame(this);

            if ((this->frame & 0xf) == 2)
                COLLISION_OFF(this);
        }
    }
}

static void sub_08032290(Entity* this) {
    this->action = 6;
    this->timer = 12;
    InitializeAnimation(this, 11);
}

static bool32 sub_080322A4(Entity* this) {
    if (this->child != NULL && (this->child->z.HALF.HI + 8) >= this->z.HALF.HI) {
        if (this->z.HALF.HI) {
            this->action = 5;
            this->z.HALF.HI = this->child->z.HALF.HI + 8;
            InitializeAnimation(this, 11);
            return TRUE;
        } else {
            sub_08032290(this);
            return TRUE;
        }
    }
    return FALSE;
}

static void sub_080322E8(Entity* this) {
    if (this->field_0x78.HALF.LO) {
        if (--this->field_0x78.HALF.LO == 0) {
            u32 flipX = this->spriteSettings.flipX;
            this->spriteSettings.flipX = flipX ^ 1;
        }
    } else {
        u8 tmp = this->direction;
        if (tmp & (0x3 | DirectionEast | DIR_DIAGONAL)) {
            tmp >>= 4;
            tmp ^= 1;
            if (tmp != this->spriteSettings.flipX) {
                this->field_0x78.HALF.LO = 6;
            }
        }
    }
}

static void sub_08032338(Entity* this) {
    if ((((Entity*)this->field_0x7c.WORD)->timer += 15) != 80)
        this->field_0x6c.HALF.LO = 0;
}
