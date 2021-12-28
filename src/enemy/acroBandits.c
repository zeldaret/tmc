#include "enemy.h"
#include "functions.h"

extern u32 sub_080002D4(s32, s32, u32);
extern s32 sub_080012DC(Entity*);
extern u32 sub_08031E04(Entity*);
extern void sub_08031E48(Entity*, Entity*);
extern void sub_08032290(Entity*);
extern u32 sub_080322A4(Entity*);
void sub_080322E8(Entity*);
extern void sub_08032338(Entity*);
extern Entity* sub_08049DF4(u32);

extern Entity* gUnk_020000B0;
extern u8 gEntCount;
extern void (*const gUnk_080012C8[])(Entity*);
extern void (*const gUnk_080CE56C[])(Entity*);
extern void (*const gUnk_080CE584[])(Entity*);
extern void (*const gUnk_080CE58C[])(Entity*);
extern void (*const gUnk_080CE5C8[])(Entity*);
extern u8 gUnk_080CE5B0[8];
extern u8 gUnk_080CE5B8[8];
extern s8 gUnk_080CE5C0[8];
extern u16 gUnk_080CE5F0[5];
extern u8 gUnk_080CE5FA[20]; // Directions

void AcroBandit(Entity* this) {
    s32 index;

    index = sub_080012DC(this);

    if (index) {
        if ((this->field_0x3a & 1) == 0)
            sub_08032338(this);

        gUnk_080012C8[index](this);
    } else {
        gUnk_080CE56C[GetNextFunction(this)](this);
        SetChildOffset(this, 0, 1, -0x10);
    }
}

void sub_080318C4(Entity* this) {
    gUnk_080CE584[this->type](this);
}

void sub_080318DC(Entity* this) {
    Entity* brother;

    if (this->bitfield != 0x80 && this->bitfield != 0x81) {
        if (this->type == 1) {
            if (this->action < 7 && this->knockbackDuration != 0) {
                brother = this->child;
                if (brother) {
                    brother->parent = this->parent;
                    do {
                        brother->action = 5;
                        brother->spritePriority.b1 = 1;
                        if (brother->iframes == 0)
                            brother->iframes = -12;
                    } while (brother = brother->child, brother != NULL);
                }
                if (this->parent) {
                    this->parent->child = this->child;
                } else {
                    if (this->child)
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

    if (this->field_0x43)
        sub_0804A9FC(this, 0x1c);

    sub_0804AA30(this, gUnk_080CE56C);
}

void sub_08031A60(Entity* this) {
    if (this->iframes > 0)
        GravityUpdate(this, 0x1800);

    sub_08001324(this);
}

void nullsub_154(void) {
    /* ... */
}

void sub_08031A88(Entity* this) {
    gUnk_080CE58C[this->action](this);
}

void sub_08031AA0(Entity* this) {
    sub_0804A720(this);
    this->action = '\x01';
    this->field_0x74.HWORD = this->x.HALF.HI;
    this->field_0x76.HWORD = this->y.HALF.HI;
    this->field_0x78.HALF.HI = Random();
}

void sub_08031AC8(Entity* this)

{
    u32 rand;
    s32 x, y;

    if (this->actionDelay) {
        this->actionDelay--;
    } else {
        if (sub_08049FDC(this, 1)) {
            rand = Random();
            x = this->field_0x74.HWORD + ((s32)rand % 5) * 0x10 - 0x20;
            y = this->field_0x76.HWORD + ((s32)(rand >> 4) % 5) * 0x10 - 0x20;
            if (sub_080002D4(x, y, this->collisionLayer) == 0) {
                this->action = 2;
                this->spriteSettings.draw = 1;
                this->x.HALF.HI = x;
                this->y.HALF.HI = y;
                InitializeAnimation(this, 0);
            }
        }
    }
}

void sub_08031B48(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->frame = 0;
        COLLISION_ON(this);
    } else {
        if (this->frame & 0x80) {
            this->action = 0x3;
            this->actionDelay = gUnk_080CE5B0[Random() & 7];
            InitializeAnimation(this, 1);
        }
    }
}

void sub_08031B98(Entity* this) {
    if (sub_08031E04(this)) {
        this->action = 5;
        if (this->x.HALF.HI > gUnk_020000B0->x.HALF.HI) {
            this->spriteSettings.flipX = 0;
        } else {
            this->spriteSettings.flipX = 1;
        }
        InitializeAnimation(this, 3);
    } else {
        if ((this->frame & 1) && this->actionDelay) {
            this->frame &= 0xfe;
            this->actionDelay--;
        }
        GetNextFrame(this);
        if (this->actionDelay == 0) {
            this->action = 4;
            COLLISION_OFF(this);
            InitializeAnimation(this, 2);
        }
    }
}

void sub_08031C1C(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 0x80) {
        this->action = '\x01';
        this->actionDelay = gUnk_080CE5B8[Random() & 7];
        this->spriteSettings.draw = 0;
    }
}

void sub_08031C58(Entity* this) {
    Entity *a, *b;

    GetNextFrame(this);
    if (this->frame & 0x80) {
        if (gEntCount < 0x43) {
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
            this->actionDelay = 20;
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

void sub_08031D70(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == '\0') {
        this->action = 7;
        COLLISION_OFF(this);
        this->actionDelay = 5;
        this->spriteSettings.draw = 0;
    }
}

void sub_08031DA0(Entity* this) {
    if ((this->actionDelay & 0xf) == 0) {
        if (this->actionDelay == 0x50) {
            DeleteEntity(this);
        } else {
            this->action = 1;
            this->actionDelay = 0xb4;
        }
    }
}

void sub_08031DC4(Entity* this) {
    if (this->frame & 0x80) {
        this->action = 1;
        this->actionDelay = 0xb4;
        this->spriteSettings.draw = 0;
    } else {
        GetNextFrame(this);
        if ((this->frame & 0xf) == 2) {
            COLLISION_OFF(this);
        }
    }
}

u32 sub_08031E04(Entity* this) {
    Entity* ent;
    s8* tmp;

    ent = sub_08049DF4(1);
    if (ent == NULL)
        return 0;

    tmp = &gUnk_080CE5C0[this->frame & 6];
    return sub_0806FCB8(this, ent->x.HALF.HI + tmp[0], ent->y.HALF.HI + tmp[1], 0x50);
}

void sub_08031E48(Entity* this, Entity* child) {
    CopyPosition(this, child);
    child->field_0x6c.HALF.LO = this->field_0x6c.HALF.LO;
    child->field_0x70.HALF.LO = this->field_0x70.HALF.LO;
    child->field_0x70.HALF.HI = this->field_0x70.HALF.HI;
    child->field_0x6e.HALF.LO = this->field_0x6e.HALF.LO;
    child->field_0x6e.HALF.HI = this->field_0x6e.HALF.HI;
    child->field_0x7c.WORD = (s32)this;
}

void sub_08031E90(Entity* this) {
    gUnk_080CE5C8[this->action](this);
}

void sub_08031EA8(Entity* this) {
    this->action = 1;
    this->spritePriority.b1 = 1;
    this->zVelocity = 0x40000;
    this->z.HALF.HI = (4 - this->type2) * 0xe;
    this->field_0x78.HALF.HI = Random();
    InitializeAnimation(this, 4);
}

void sub_08031EE8(Entity* this) {
    int draw;

    this->z.WORD -= this->zVelocity;
    this->zVelocity -= 0x1800;

    if (this->z.HALF.HI < 1) {
        draw = this->spriteSettings.draw;
        if (!draw)
            EnqueueSFX(299);

        this->spriteSettings.draw = 1;
    }

    draw = this->spriteSettings.draw;
    if (draw == 1)
        GetNextFrame(this);

    if (this->zVelocity < 1) {
        this->action = 2;
        COLLISION_ON(this);
        InitializeAnimation(this, 5);
    }
}

void sub_08031F54(Entity* this) {
    GravityUpdate(this, gUnk_080CE5F0[this->type2]);
    if (this->type2 * -0xe <= this->z.HALF.HI) {
        this->action = 3;
        this->actionDelay = 20;
        this->z.HALF.HI = this->type2 * -0xe;
        if (this->parent != NULL)
            this->spritePriority.b1 = 0;
        InitializeAnimation(this, 6);
    }
}

void sub_08031FB0(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & 0x80) && (this->parent || --this->actionDelay == 0)) {
        this->action = 4;
        this->direction = sub_08049F84(this, 1);
        *(u8*)&this->field_0x76 = 0;
        if (this->child) {
            InitializeAnimation(this, 9);
        } else {
            InitializeAnimation(this, 8);
        }
    }
}

void sub_08032008(Entity* this) {
    Entity* parent;

    if (sub_080322A4(this) == 0) {
        parent = this->parent;
        if (parent == 0) {
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

            if (this->direction & 0xf)
                this->spriteSettings.flipX = (this->direction >> 4 ^ 1);

            ProcessMovement(this);
        } else {
            if (this->field_0x76.HALF.HI == 0) {
                if (sub_0806FCB8(this, parent->x.HALF.HI, parent->y.HALF.HI, 1) == 0) {
                    this->field_0x76.HALF.HI = 1;
                    this->direction = GetFacingDirection(this, parent);
                    sub_080322E8(this);
                    sub_0806F69C(this);
                }
            } else {
                this->direction = GetFacingDirection(this, parent);
                sub_080322E8(this);
                sub_0806F69C(this);
                if (this->x.HALF.HI == parent->x.HALF.HI && this->y.HALF.HI == parent->y.HALF.HI)
                    this->field_0x76.HALF.HI = 0;
            }
        }
        GetNextFrame(this);
    }
}

void sub_08032148(Entity* this) {
    if (GravityUpdate(this, 0x2000))
        return;

    sub_08032290(this);
}

void sub_08032160(Entity* this) {
    Entity* tmp;
    u32 dir;

    if (this->actionDelay == 0) {
        this->action = 7;
        dir = gUnk_080CE5FA[this->field_0x74.HALF.LO * 5 + this->type2];
        this->direction = dir;
        if (dir >= 0x10) {
            this->spriteSettings.flipX = 1;
        } else {
            this->spriteSettings.flipX = 0;
        }
        this->speed = 0xf0;
        this->zVelocity = 0x12000;
        this->spritePriority.b1 = 1;
        InitializeAnimation(this, 12);
    }

    if (this->child == NULL) {
        for (tmp = this->parent; tmp != NULL; tmp = tmp->parent) {
            if (tmp->health != 0)
                tmp->actionDelay = 0;
        }
        this->actionDelay = 0;
    }
}

void sub_080321E8(Entity* this) {
    sub_080AEFE0(this);

    if (sub_080044EC(this, 0x2000) == 0)
        this->action = 8;
}

void sub_08032204(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 1) {
        this->frame = 0;
        this->frameDuration = (Random() & 0x30) + 30;
    } else {
        if (this->frame & 0x80) {
            this->action = 9;
            InitializeAnimation(this, 13);
        }
    }
}

void sub_08032248(Entity* this) {
    if (GravityUpdate(this, 0x1800) == 0) {
        if (this->frame & 0x80) {
            ((Entity*)this->field_0x7c.WORD)->actionDelay--;

            DeleteEntity(this);
        } else {
            GetNextFrame(this);

            if ((this->frame & 0xf) == 2)
                COLLISION_OFF(this);
        }
    }
}

void sub_08032290(Entity* this) {
    this->action = 6;
    this->actionDelay = 12;
    InitializeAnimation(this, 11);
}

u32 sub_080322A4(Entity* this) {
    if (this->child != NULL && (this->child->z.HALF.HI + 8) >= this->z.HALF.HI) {
        if (this->z.HALF.HI) {
            this->action = 5;
            this->z.HALF.HI = this->child->z.HALF.HI + 8;
            InitializeAnimation(this, 11);
            return 1;
        } else {
            sub_08032290(this);
            return 1;
        }
    }
    return 0;
}

void sub_080322E8(Entity* this) {
    u8 tmp;
    if (this->field_0x78.HALF.LO) {
        if (--this->field_0x78.HALF.LO == 0) {
            u32 flipX = this->spriteSettings.flipX;
            this->spriteSettings.flipX = flipX ^ 1;
        }
    } else {
        tmp = this->direction;
        if (tmp & 0xF) {
            tmp >>= 4;
            tmp ^= 1;
            if (tmp != this->spriteSettings.flipX) {
                this->field_0x78.HALF.LO = 6;
            }
        }
    }
}

void sub_08032338(Entity* this) {
    if ((((Entity*)this->field_0x7c.WORD)->actionDelay += 15) != 80)
        this->field_0x6c.HALF.LO = 0;
}
