#include "global.h"
#include "entity.h"
#include "functions.h"

extern u32 sub_080002D4(s32, s32, u32);
extern s32 sub_080012DC(Entity*);
extern void sub_08001324(Entity*);
extern u32 sub_080044EC(Entity*, u32);
extern u32 sub_08031E04(Entity*);
extern void sub_08031E48(Entity*, Entity*);
extern void sub_08032290(Entity*);
extern u32 sub_080322A4(Entity*);
void sub_080322E8(Entity*);
extern void sub_08032338(Entity*);
extern Entity* sub_08049DF4(u32);
extern u8 sub_08049F84(Entity*, u32);
extern void sub_0804A9FC(Entity*, u32);
extern void sub_0804AA30(Entity*, void (*const funcs[])(Entity*));
extern u32 sub_0806FCB8(Entity*, u32, u32, u32);
extern u32 GetNextFunction(Entity*);
extern void SetChildOffset(Entity*, s32, s32, s32);
extern u32 Random(void);

extern Entity* gUnk_020000B0;
extern u8 gUnk_03003DBC;
extern void (*const gUnk_080012C8[])(Entity*);
extern void (*const gUnk_080CE56C[])(Entity*);
extern void (*const gUnk_080CE584[])(Entity*);
extern void (*const gUnk_080CE58C[])(Entity*);
extern void (*const gUnk_080CE5C8[])(Entity*);
extern u8 gUnk_080CE5B0[8];
extern u8 gUnk_080CE5B8[8];
extern union SplitHWord gUnk_080CE5C0[4];
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
    gUnk_080CE584[this->entityType.form](this);
}

void sub_080318DC(Entity* this) {
    Entity* brother;

    if (this->bitfield != 0x80 && this->bitfield != 0x81) {
        if (this->entityType.form == 1) {
            if (this->action < 7 && this->field_0x42) {
                brother = this->attachedEntity;
                if (brother) {
                    brother->parent = this->parent;
                    do {
                        brother->action = 5;
                        brother->spritePriority.b1 = 1;
                        if (brother->hurtBlinkTime == 0)
                            brother->hurtBlinkTime = -12;
                    } while (brother = brother->attachedEntity, brother != NULL);
                }
                if (this->parent) {
                    this->parent->attachedEntity = this->attachedEntity;
                } else {
                    if (this->attachedEntity)
                        this->parent = this;
                }

                this->action = 9;
                this->spritePriority.b1 = 1;
                if (this->field_0x3e < 0x10) {
                    this->spriteSettings.b.flipX = 0;
                } else {
                    this->spriteSettings.b.flipX = 1;
                }
                InitializeAnimation(this, 14);
            }

            if (this->currentHealth == 0) {
                this->field_0x3e = ((this->field_0x3e + (7 & Random())) - 4) & 0x1f;
                this->field_0x42 += this->entityType.parameter * 3;
                sub_08032338(this);
            }
        }

        if (this->field_0x42 && this->frames.all & 0x10) {
            if (this->entityType.form == 0) {
                this->action = 8;
            } else {
                this->action = 9;
            }
            if (this->field_0x3e < 0x10) {
                this->spriteSettings.b.flipX = 0;
            } else {
                this->spriteSettings.b.flipX = 1;
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
    if (this->hurtBlinkTime > 0)
        sub_08003FC4(this, 0x1800);

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
                this->spriteSettings.b.draw = 1;
                this->x.HALF.HI = x;
                this->y.HALF.HI = y;
                InitializeAnimation(this, 0);
            }
        }
    }
}

void sub_08031B48(Entity* this) {
    GetNextFrame(this);
    if (this->frames.b.f0) {
        this->frames.all = 0;
        this->flags |= 0x80;
    } else {
        if (this->frames.b.f3) {
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
            this->spriteSettings.b.flipX = 0;
        } else {
            this->spriteSettings.b.flipX = 1;
        }
        InitializeAnimation(this, 3);
    } else {
        if (this->frames.b.f0 && this->actionDelay) {
            // this->frames.b.f0 = 0;
            this->frames.all &= 0xfe;
            this->actionDelay--;
        }
        GetNextFrame(this);
        if (this->actionDelay == 0) {
            this->action = 4;
            this->flags &= 0x7f;
            InitializeAnimation(this, 2);
        }
    }
}

void sub_08031C1C(Entity* this) {
    GetNextFrame(this);
    if (this->frames.b.f3) {
        this->action = '\x01';
        this->actionDelay = gUnk_080CE5B8[Random() & 7];
        this->spriteSettings.b.draw = 0;
    }
}

#if NON_MATCHING
void sub_08031C58(Entity* this) {
    u8 tmp;
    Entity *a, *b;

    GetNextFrame(this);
    if (this->frames.b.f3) {
        if (gUnk_03003DBC < 0x43) {
            tmp = Random();
            tmp &= 3;

            a = CreateEnemy(0x2e, 1);
            a->entityType.parameter = 0;
            a->parent = NULL;
            a->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, a);

            b = CreateEnemy(0x2e, 1);
            a->attachedEntity = b;
            b->entityType.parameter = 1;
            b->parent = a;
            b->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, b);

            a = CreateEnemy(0x2e, 1);
            b->attachedEntity = a;
            a->entityType.parameter = 2;
            a->parent = b;
            a->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, a);

            b = CreateEnemy(0x2e, 1);
            a->attachedEntity = b;
            b->entityType.parameter = 3;
            b->parent = a;
            b->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, b);

            a = CreateEnemy(0x2e, 1);
            b->attachedEntity = a;
            a->entityType.parameter = 4;
            a->parent = b;
            a->attachedEntity = NULL;
            a->field_0x74.HALF.LO = tmp;
            sub_08031E48(this, a);

            this->action = 6;
            this->actionDelay = 20;
            this->spritePriority.b0 = 7;
            InitializeAnimation(this, 7);
        }
    } else {
        if (this->frames.b.f0) {
            this->frames.all = 0;
            this->flags &= 0x7f;
        }
    }
}
#else
NAKED
void sub_08031C58(Entity* this) {
    asm(".include \"asm/non_matching/acroBandits/sub_08031C58.inc\"");
}
#endif

void sub_08031D70(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == '\0') {
        this->action = 7;
        this->flags &= 0x7f;
        this->actionDelay = 5;
        this->spriteSettings.b.draw = 0;
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
    if (this->frames.b.f3) {
        this->action = 1;
        this->actionDelay = 0xb4;
        this->spriteSettings.b.draw = 0;
    } else {
        GetNextFrame(this);
        if ((this->frames.all & 0xf) == 2) {
            this->flags &= 0x7f;
        }
    }
}

#if NON_MATCHING
u32 sub_08031E04(Entity* this) {
    Entity* ent;
    union SplitHWord* tmp;
    int x, y;

    ent = sub_08049DF4(1);
    if (ent == NULL)
        return 0;

    tmp = &gUnk_080CE5C0[this->frames.all & 6];
    x = ent->x.HALF.HI + tmp->HALF.LO;
    y = ent->y.HALF.HI + tmp->HALF.HI;
    return sub_0806FCB8(this, x, y, 0x50);
}
#else
NAKED
u32 sub_08031E04(Entity* this) {
    asm(".include \"asm/non_matching/acroBandits/sub_08031E04.inc\"");
}
#endif

void sub_08031E48(Entity* this, Entity* child) {
    CopyPosition(this, child);
    child->field_0x6c.HALF.LO = this->field_0x6c.HALF.LO;
    child->field_0x70.HALF.LO = this->field_0x70.HALF.LO;
    child->field_0x70.HALF.HI = this->field_0x70.HALF.HI;
    child->filler4[0] = this->filler4[0];
    child->filler4[1] = this->filler4[1];
    child->field_0x7c.WORD = (s32)this;
}

void sub_08031E90(Entity* this) {
    gUnk_080CE5C8[this->action](this);
}

void sub_08031EA8(Entity* this) {
    this->action = 1;
    this->spritePriority.b1 = 1;
    this->field_0x20 = 0x40000;
    this->height.HALF.HI = (4 - this->entityType.parameter) * 0xe;
    this->field_0x78.HALF.HI = Random();
    InitializeAnimation(this, 4);
}

void sub_08031EE8(Entity* this) {
    int draw;

    this->height.WORD -= this->field_0x20;
    this->field_0x20 -= 0x1800;

    if (this->height.HALF.HI < 1) {
        draw = this->spriteSettings.b.draw;
        if (!draw)
            sub_08004488(299);

        this->spriteSettings.b.draw = 1;
    }

    draw = this->spriteSettings.b.draw;
    if (draw == 1)
        GetNextFrame(this);

    if (this->field_0x20 < 1) {
        this->action = 2;
        this->flags |= 0x80;
        InitializeAnimation(this, 5);
    }
}

void sub_08031F54(Entity* this) {
    sub_08003FC4(this, gUnk_080CE5F0[this->entityType.parameter]);
    if (this->entityType.parameter * -0xe <= this->height.HALF.HI) {
        this->action = 3;
        this->actionDelay = 20;
        this->height.HALF.HI = this->entityType.parameter * -0xe;
        if (this->parent != NULL)
            this->spritePriority.b1 = 0;
        InitializeAnimation(this, 6);
    }
}

void sub_08031FB0(Entity* this) {
    GetNextFrame(this);
    if (this->frames.b.f3 && (this->parent || --this->actionDelay == 0)) {
        this->action = 4;
        this->direction = sub_08049F84(this, 1);
        *(u8*)&this->field_0x76 = 0;
        if (this->attachedEntity) {
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

            if (this->direction & 0xf) {
                this->spriteSettings.b.flipX = !(!(this->direction & 0x10) ^ 1);
            }

            sub_080AEF88(this);
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
    if (sub_08003FC4(this, 0x2000))
        return;

    sub_08032290(this);
}

void sub_08032160(Entity* this) {
    Entity* tmp;
    u32 dir;

    if (this->actionDelay == 0) {
        this->action = 7;
        dir = gUnk_080CE5FA[this->field_0x74.HALF.LO * 5 + this->entityType.parameter];
        this->direction = dir;
        if (dir >= 0x10) {
            this->spriteSettings.b.flipX = 1;
        } else {
            this->spriteSettings.b.flipX = 0;
        }
        this->nonPlanarMovement = 0xf0;
        this->field_0x20 = 0x12000;
        this->spritePriority.b1 = 1;
        InitializeAnimation(this, 12);
    }

    if (this->attachedEntity == NULL) {
        for (tmp = this->parent; tmp != NULL; tmp = tmp->parent) {
            if (tmp->currentHealth != 0)
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
    if (this->frames.all & 1) {
        this->frames.all = 0;
        this->frameDuration = (Random() & 0x30) + 30;
    } else {
        if (this->frames.all & 0x80) {
            this->action = 9;
            InitializeAnimation(this, 13);
        }
    }
}

void sub_08032248(Entity* this) {
    if (sub_08003FC4(this, 0x1800) == 0) {
        if (this->frames.all & 0x80) {
            ((Entity*)this->field_0x7c.WORD)->actionDelay--;

            DeleteEntity(this);
        } else {
            GetNextFrame(this);

            if ((this->frames.all & 0xf) == 2)
                this->flags &= 0x7f;
        }
    }
}

void sub_08032290(Entity* this) {
    this->action = 6;
    this->actionDelay = 12;
    InitializeAnimation(this, 11);
}

u32 sub_080322A4(Entity* this) {
    if (this->attachedEntity != NULL && (this->attachedEntity->height.HALF.HI + 8) >= this->height.HALF.HI) {
        if (this->height.HALF.HI) {
            this->action = 5;
            this->height.HALF.HI = this->attachedEntity->height.HALF.HI + 8;
            InitializeAnimation(this, 11);
            return 1;
        } else {
            sub_08032290(this);
            return 1;
        }
    }
    return 0;
}

#if NON_MATCHING
void sub_080322E8(Entity* this) {
    if (this->field_0x78.HALF.LO) {
        if (--this->field_0x78.HALF.LO == 0) {
            this->spriteSettings.b.flipX = this->spriteOrientation.flipX;
        }
    } else {
        if ((this->direction & 0xf) &&
            ((this->direction >> 4 ^ 1) != -((int)((u32)this->spriteSettings.raw << 0x19) >> 0x1f))) {
            this->field_0x78.HALF.LO = 6;
        }
    }
}
#else
NAKED
void sub_080322E8(Entity* this) {
    asm(".include \"asm/non_matching/acroBandits/sub_080322E8.inc\"");
}
#endif

void sub_08032338(Entity *this) {
    if ((((Entity*)this->field_0x7c.WORD)->actionDelay += 15) != 80)
        this->field_0x6c.HALF.LO = 0;
}
