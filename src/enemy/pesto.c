/**
 * @file pesto.c
 * @ingroup Enemies
 *
 * @brief Pesto enemy
 */

#include "enemy.h"
#include "object.h"
#include "game.h"
#include "functions.h"
#include "save.h"

void sub_080249F4(Entity*);
void sub_08024940(Entity*);
void sub_080249DC(Entity*);
void sub_08024A14(Entity*, u32, u32);
bool32 sub_08024AD8(Entity*);
bool32 sub_08024B38(Entity*);
bool32 sub_08024C48(Entity*, bool32);
void sub_08024C7C(Entity*);
void sub_08024C94(Entity*);
bool32 sub_08024CC0(Entity*);
void sub_08024D00(Entity*);
void sub_08024E00(Entity*, u32);
void sub_08024E1C(Entity*);
u32 sub_08024E34(void);
void sub_08024E4C(Entity*);
void sub_08024F50(Entity*);

extern Entity* gUnk_020000B0;

extern void (*const Pesto_Functions[])(Entity*);
extern void (*const gUnk_080CBEDC[])(Entity*);
extern void (*const gUnk_080CBEF8[])(Entity*);

extern const u8 gUnk_080CBF10[];
extern const u16 gUnk_080CBF18[];
extern const u8 gUnk_080CBF20[];

void Pesto(Entity* this) {
    Pesto_Functions[GetNextFunction(this)](this);
}

void Pesto_OnTick(Entity* this) {
    gUnk_080CBEDC[this->action](this);
}

void Pesto_OnCollision(Entity* this) {
    if (this->hitType != 0x6e) {
        if (this->bitfield == 0x80) {
            this->field_0x86.HALF.LO = 0x30;

            if ((this->field_0x82.HALF.HI & 0xf) == 3 && this->action == 6) {
                switch (this->field_0x80.HALF.LO) {
                    case 1:
                        this->z.HALF.HI = -0x10;
                        this->field_0x82.HALF.LO = 0;
                        this->field_0x78.HWORD = -0x10;
                        this->field_0x80.HALF.LO += 1;
                        /* fallthrough */
                    case 2:
                        this->field_0x82.HALF.HI &= ~0x80;
                        break;
                }
            }
        }
    } else {
        this->health = 0;
    }

    EnemyFunctionHandlerAfterCollision(this, Pesto_Functions);
}

void Pesto_OnKnockback(Entity* this) {
    GenericKnockback(this);
    GetNextFrame(this);
}

void Pesto_OnGrabbed(Entity* this) {
    if (this->subAction < 3 && !sub_0806F520(this)) {
        this->action = 1;
        this->subAction = 0;
        COLLISION_ON(this);
        this->hitType = 0x77;
        this->actionDelay = 1;
        this->speed = 0x40;
    } else {
        gUnk_080CBEF8[this->subAction](this);
    }
}

void sub_08024038(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 60;
    GetNextFrame(this);
}

void sub_08024048(Entity* this) {
    sub_0806F4E8(this);
    GetNextFrame(this);
}

void sub_08024058(Entity* this) {
    sub_0806F3E4(this);
}

void sub_08024060(Entity* this) {
    if (this->hitType != 0x6e) {
        COLLISION_OFF(this);
        this->hitType = 0x6e;
        this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    }

    GetNextFrame(this);
}

void nullsub_138(Entity* this) {
    /* ... */
}

void sub_0802409C(Entity* this) {
    this->health = 0;
    InitializeAnimation(this, this->animationState);
    CreateDust(this);
}

void sub_080240B8(Entity* this) {
    u32 direction = (Random() & 0xc0) >> 3;
    sub_0804A720(this);
    this->action = 1;
    this->subAction = 0;
    this->field_0x80.HALF.LO = 0;
    if (direction & 8) {
        this->y.HALF.HI += (direction & 0x10) ? -0x20 : 0x20;
    } else {
        this->x.HALF.HI += (direction & 0x10) ? -0x20 : 0x20;
    }

    switch (this->type) {
        case 0:
            this->field_0x78.HWORD = -0x10;
            this->z.HALF.HI = -0x10;
            break;
        case 1:
            this->field_0x78.HWORD = -0x30;
            this->z.HALF.HI = -0x30;
            break;
    }

    UpdateSpriteForCollisionLayer(this);
    if (AreaIsDungeon())
        this->spriteOrientation.flipY = 1;

    this->field_0x80.HALF.HI = Random() & 0x40;
    this->field_0x82.HALF.LO = 0;
    this->field_0x82.HALF.HI = 0x80;
    this->field_0x86.HALF.LO = 0;
    this->field_0x86.HALF.HI = 0;
    this->actionDelay = 0;
    this->field_0xf = 0x20;
    this->field_0x3c |= 0x10;
    this->field_0x1c = 2;
    this->direction = direction;
    sub_080249DC(this);

    if (this->type == 1) {
        Entity* ent;

        this->field_0x82.HALF.HI = 0;
        ent = CreateProjectileWithParent(this, DIRT_BALL_PROJECTILE, this->field_0x82.HALF.HI);
        if (ent) {
            this->child = ent;
            ent->parent = this;
            ent->y.HALF.HI += 0x10;
        }
    }
}

void sub_080241C0(Entity* this) {
    sub_08024940(this);
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (PlayerInRange(this, 3, (gPlayerState.hurtBlinkSpeed != 0) ? 0xa0 : 0x40) && sub_08049FDC(this, 3) &&
                gPlayerEntity.action != PLAYER_USEENTRANCE) {
                this->field_0x80.HALF.LO++;
                this->speed = 0;
                sub_08024A14(this, 3, 10);
            } else if (--this->field_0xf == 0) {
                sub_08024A14(this, 0, 0x20);
            }
            break;
        case 1:
            if (--this->field_0xf == 0) {
                if (this->type != 0) {
                    u8 tmp = this->field_0x82.HALF.HI & 0x80;
                    if (tmp) {
                        sub_08024C94(this);
                        this->field_0x82.HALF.HI |= 0x40;
                    } else {
                        this->action = 3;
                        this->field_0x80.HALF.LO = tmp;
                        this->field_0xf = 10;
                        sub_08024E00(this, 0);
                        sub_08024E1C(this);
                        sub_08024A14(this, 3, this->field_0xf);
                    }
                } else {
                    sub_08024C94(this);
                }
            }
            break;
    }
}

void sub_08024298(Entity* this) {
    sub_08024D00(this);
}

void sub_080242A0(Entity* this) {
    sub_08024940(this);
    if (sub_08024CC0(this)) {
        if (--this->actionDelay == 0) {
            this->direction = GetFacingDirection(this, gUnk_020000B0);
            sub_08024E00(this, 1);
            if (this->speed != 0) {
                this->speed = 0;
            } else {
                sub_08024E1C(this);
            }
        } else if (--this->field_0xf == 0) {
            sub_08024A14(this, 3, 10);
        }

        if (sub_08049F1C(this, gUnk_020000B0, 0x20) && sub_08049FDC(this, 3)) {
            this->action = 4;
            this->field_0x80.HALF.LO = 0;
            this->actionDelay = 0x10;
            this->speed = 0;
        }
    }
}

void sub_0802433C(Entity* this) {
    sub_08024940(this);
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO++;
                this->speed = 0x100;
                this->field_0xf = 8;
                sub_08024E00(this, 1);
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->action = 5;
                this->field_0x80.HALF.LO = 0;
                this->speed = 0x140;
                this->actionDelay = 0xc0;
                this->field_0xf = 8;
            } else {
                if (--this->field_0xf == 0)
                    sub_08024A14(this, 2, 4);
            }
            break;
    }
}

void sub_080243B8(Entity* this) {
    sub_08024940(this);
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (sub_08024C48(this, TRUE)) {
                if (this->child == NULL || this->child->next == NULL) {
                    this->field_0x80.HALF.LO = 2;
                    this->actionDelay = 0x20;
                    this->speed = 0x80;
                    this->field_0x82.HALF.HI = 0x80;
                } else if (sub_08049F1C(this, gUnk_020000B0, 0xe)) {
                    this->field_0x80.HALF.LO++;
                    this->actionDelay = 0x1e;
                    this->speed = 0x100;
                    this->field_0x82.HALF.HI = 0x80;
                    this->child->action = 2;
                } else if (--this->actionDelay) {
                    if (--this->field_0xf == 0) {
                        sub_08024A14(this, 2, (this->actionDelay >> 6) + 1);
                    }
                } else {
                    sub_08024C7C(this);
                }
            } else {
                sub_08024C7C(this);
            }
            break;
        case 1:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO++;
                this->actionDelay = 0x20;
                this->speed = 0x80;
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->action = 6;
                this->field_0x80.HALF.LO = 0;
                this->speed = 0x80;
                sub_08024B38(this);

                if ((this->field_0x82.HALF.HI & 0x40) == 0) {
                    switch (this->field_0x82.HALF.HI & 0x3f) {
                        case 3:
                            this->actionDelay = 4;
                            break;
                        case 1:
                            this->actionDelay = 0x14;
                            break;
                        default:
                            this->actionDelay = 0x30;
                            break;
                    }
                    sub_08024A14(this, 2, 8);
                } else {
                    this->actionDelay = 0x40;
                    sub_08024A14(this, 0, 8);
                }
            }
            break;
    }
}

void sub_080244E8(Entity* this) {
    sub_08024940(this);
    switch (this->field_0x80.HALF.LO) {
        case 0:
            if (--this->actionDelay == 0) {
                if (sub_080002E0(COORD_TO_TILE(this), 1) == 0) {
                    this->field_0x80.HALF.LO += 1;
                    this->field_0x82.HALF.LO += 1;
                    this->field_0xf = 0;
                    this->speed = 0;
                } else {
                    this->actionDelay = 0x30;
                    this->field_0xf = 4;
                }
                break;
            } else {
                if (--this->field_0xf == 0) {
                    sub_08024A14(this, 1, 8);
                }
            }
            break;
        case 1:
            if (++this->z.HALF.HI >= -0x10) {
                this->field_0x82.HALF.LO = 0;
                this->field_0x78.HWORD = 0xfff0;
                if (sub_08024AD8(this)) {
                    this->field_0x80.HALF.LO++;
                } else {
                    sub_08024C94(this);
                    this->field_0x82.HALF.HI |= 0x40;
                }
            }
            break;
        case 2:
            if (sub_08024AD8(this)) {
                u32 tmp;

                if (--this->actionDelay == 0) {
                    if (this->speed) {
                        this->speed = 0;
                    } else {
                        sub_08024E1C(this);
                    }
                    this->direction = GetFacingDirection(this, this->child);
                    sub_08024E00(this, 0);
                    sub_080249DC(this);
                } else if (--this->field_0xf == 0) {
                    sub_08024A14(this, 1, 8);
                }

                switch (this->field_0x82.HALF.HI & 0x3f) {
                    case 3:
                        tmp = this->field_0x82.HALF.HI & 0x80;
                        if (tmp == 0) {
                            this->field_0x80.HALF.LO++;
                            this->actionDelay = 0xc;
                            this->direction = 0x10;
                            this->speed = tmp;
                            this->cutsceneBeh.HALF.LO = 0;
                            this->flags2 &= 0xfc;
                            sub_080249DC(this);
                            this->cutsceneBeh.HALF.HI = gPlayerEntity.spritePriority.b1;
                            gPlayerEntity.flags &= ~ENT_COLLIDE;
                            gPlayerState.flags |= PL_DISABLE_ITEMS;
                            gPlayerState.field_0xa |= 0x80;
                            if (gPlayerState.swim_state != 0) {
                                gPlayerState.swim_state = 0;
                            }
                        }
                        break;
                    case 1:
                        if (EntityInRectRadius(this, this->child, 6, 6)) {
                            Entity* ent;

                            this->field_0x80.HALF.LO += 1;
                            this->actionDelay = 0xc;
                            this->field_0x82.HALF.HI &= ~0x80;
                            CopyPosition(this->child, this);
                            this->z.HALF.HI -= 0xe;
                            this->field_0x78.HWORD -= 0xe;

                            ent = CreateProjectileWithParent(this, DIRT_BALL_PROJECTILE, this->field_0x82.HALF.HI);
                            if (ent) {
                                ent->parent = this;
                                ent->z.HALF.HI += 0xe;
                                ent->child = this->child;
                                CopyPosition(ent, ent->child);
                                this->child = ent;
                            }
                        }
                        break;
                    case 2:
                        if (EntityInRectRadius(this, this->child, 6, 6)) {
                            Entity* ent;

                            this->field_0x80.HALF.LO += 1;
                            this->actionDelay = 0xc;
                            this->field_0x82.HALF.HI &= ~0x80;
                            ent = this->child;
                            SetTile((u16)ent->field_0x70.HALF.LO, COORD_TO_TILE(ent), ent->collisionLayer);
                            DeleteEntity(ent);
                            this->z.HALF.HI -= 0xe;
                            this->field_0x78.HWORD -= 0xe;

                            ent = CreateProjectileWithParent(this, DIRT_BALL_PROJECTILE, this->field_0x82.HALF.HI);
                            if (ent) {
                                ent->parent = this;
                                ent->z.HALF.HI += 0xe;
                                this->child = ent;
                            }
                        }
                        break;
                }
                break;
            } else {
                sub_08024C94(this);
                this->field_0x82.HALF.HI |= 0x40;
            }
            break;
        case 3:
            if (--this->actionDelay == 0) {
                this->field_0x80.HALF.LO++;
                this->field_0xf = 0;
                this->speed = 0;
                this->field_0x82.HALF.LO++;
            }
            break;
        case 4:
            this->z.HALF.HI -= 2;
            if (-60 > this->z.HALF.HI) {
                this->field_0x80.HALF.LO++;
            }
            break;
        case 5:
            if (this->z.HALF.HI < -0x30) {
                this->z.HALF.HI++;
            } else {
                if (this->field_0x82.HALF.LO != 0) {
                    this->field_0x82.HALF.LO = 0;
                    this->field_0x78.HWORD = -0x30;
                }

                switch (this->field_0x82.HALF.HI) {
                    case 3:
                        if (0x2f < this->cutsceneBeh.HALF.LO) {
                            sub_08024F50(this);
                        }
                        break;
                    case 1 ... 2:
                        this->field_0x80.HALF.LO += 1;
                        this->actionDelay = 0xc0;
                        this->field_0xf = 8;
                        this->speed = 0x80;
                        sub_080249DC(this);
                        break;
                    default:
                        sub_08024C7C(this);
                        break;
                }
            }
            break;
        case 6:
            if (--this->actionDelay == 0) {
                if (this->field_0x82.HALF.HI & 0x80) {
                    this->field_0x82.HALF.HI = 0xc0;
                    this->field_0x80.HALF.LO = 0;
                    this->speed = 0x40;
                    this->actionDelay = 0x40;
                    this->field_0xf = 8;
                    sub_08024A14(this, 0, 8);
                } else {
                    this->actionDelay = 0x40;
                    this->field_0xf = 8;
                }
            } else if (--this->field_0xf == 0) {
                sub_08024A14(this, 2, 8);
            }
            break;
        case 7:
            if (gPlayerEntity.z.HALF.HI == 0) {
                this->field_0x80.HALF.LO = 0;
                this->speed = 0x80;
                sub_08024B38(this);
            }
    }

    if (this->field_0x82.HALF.HI == 3) {
        sub_08024E4C(this);
    }
}

void sub_08024940(Entity* this) {
    u32 random = Random() & 0x70;

    if (this->collisions != 0) {
        sub_0800417E(this, this->collisions);
        sub_080249F4(this);
    }

    if (this->field_0x82.HALF.LO == 0) {
        this->z.HALF.HI = this->field_0x78.HWORD;
        if (random)
            this->z.HALF.HI += 2;
    }

    if (this->type2 != 0 || AreaIsDungeon()) {
        if (!sub_08049FA0(this)) {
            this->direction = sub_08049EE4(this);
            sub_080249F4(this);
        }

        if (this->z.HALF.HI < -0x20) {
            this->spritePriority.b0 = 0;
        } else {
            this->spritePriority.b0 = 1;
        }
    }

    sub_080AEFB4(this);
    GetNextFrame(this);
}

void sub_080249DC(Entity* this) {
    u8 direction = ((this->direction + 2) & 0x1c) >> 2;
    this->animationState = direction;
    InitializeAnimation(this, this->animationState);
}

void sub_080249F4(Entity* this) {
    u32 direction = ((this->direction + 2) & 0x1f);
    direction >>= 2;
    if (direction != this->animationState) {
        this->animationState = direction;
        InitializeAnimation(this, this->animationState);
    }
}

void sub_08024A14(Entity* this, u32 param_2, u32 param_3) {
    u8 unk = FALSE;

    switch (param_2) {
        case 0:
            sub_08004596(this, sub_08049EE4(this));
            unk = TRUE;
            break;
        case 1:
            if (sub_08024C48(this, FALSE)) {
                sub_08004596(this, GetFacingDirection(this, this->child));
                unk = TRUE;
            }
            break;
        case 2:
            if (sub_08024C48(this, TRUE)) {
                sub_08004596(this, GetFacingDirection(this, gUnk_020000B0));
                unk = TRUE;
            }
            break;
        case 3:
            if (sub_08024C48(this, TRUE)) {
                this->direction = GetFacingDirection(this, gUnk_020000B0);
                unk = TRUE;
            }
            break;
    }

    if (param_2 != 0 && !sub_08049FA0(this) && (Random() & 3)) {
        unk = FALSE;
    }

    if (!unk) {
        sub_08024A14(this, 0, param_3);
    }

    sub_080249DC(this);
    this->field_0xf = param_3;
}

bool32 sub_08024AD8(Entity* this) {
    if ((this->field_0x82.HALF.HI & 0x40) == 0) {
        u8 unk = FALSE;
        if ((this->field_0x82.HALF.HI & 0x3f) == 3) {
            if (gPlayerState.hurtBlinkSpeed == 0) {
                this->child->parent = NULL;
                this->child = NULL;
                this->field_0x82.HALF.HI = 0xc0;
                return FALSE;
            }
            unk = TRUE;
        }

        if (sub_08024C48(this, unk) == 0) {
            this->child = NULL;
            this->field_0x82.HALF.HI = 0xc0;
            return FALSE;
        }
    } else {
        return sub_08024B38(this);
    }

    return TRUE;
}

bool32 sub_08024B38(Entity* this) {
    int iVar4 = 0;
    Entity* ent;

    if (gPlayerState.hurtBlinkSpeed != 0) {
        if (gPlayerState.swim_state == 1) {
            if (gPlayerState.hurtBlinkSpeed > 3) {
                gPlayerState.hurtBlinkSpeed -= 3;
            } else {
                gPlayerState.hurtBlinkSpeed = 0;
            }
        }
        if (gPlayerState.hurtBlinkSpeed != 0) {
            if (sub_08024C48(this, 1) && sub_08049F1C(this, gUnk_020000B0, 0xa0)) {
                iVar4 = 1;
                this->child = gUnk_020000B0;
                this->field_0x82.HALF.HI |= 3;
                this->field_0x82.HALF.HI &= ~0x40;
            }

            if (iVar4 == 0) {
                this->child = NULL;
            }
            return iVar4;
        }
    }

    ent = FindEntityByID(8, 2, 2);
    if (ent) {
        do {
            if (ent->action != 2 && ent->z.HALF.HI == 0 && sub_08049F1C(this, ent, 0xa0)) {
                iVar4 = 1;
                this->child = ent;
                this->field_0x82.HALF.HI |= 1;
                this->field_0x82.HALF.HI &= ~0x40;
                break;
            }
        } while (ent = FindNextDuplicateID(ent, 2), ent != NULL);
    }

    if (iVar4 != 0) {
        return iVar4;
    }

    ent = FindEntityByID(6, 5, 6);
    if (ent) {
        do {
            if (ent->action == 1 && sub_08049F1C(this, ent, 0xa0)) {
                iVar4 = 1;
                this->child = ent;
                this->field_0x82.HALF.HI |= 2;
                this->field_0x82.HALF.HI &= ~0x40;
                break;
            }
        } while (ent = FindNextDuplicateID(ent, 6), ent != NULL);
    }

    if (iVar4 == 0) {
        this->child = NULL;
    }

    return iVar4;
}

ASM_FUNC("asm/non_matching/pesto/sub_08024C48.inc", bool32 sub_08024C48(Entity* this, bool32 unk))

void sub_08024C7C(Entity* this) {
    this->action = 1;
    this->speed = 0x40;
    this->actionDelay = 0;
    sub_08024A14(this, 0, 0x20);
}

void sub_08024C94(Entity* this) {
    this->action = 2;
    this->field_0x80.HALF.LO = 0;
    this->actionDelay = 0x40;
    this->field_0xf = 0;
    this->speed = 0xc0;
    this->field_0x82.HALF.HI = 0x80;
    sub_08024A14(this, 3, this->field_0xf);
}

bool32 sub_08024CC0(Entity* this) {
    bool32 uVar2;

    uVar2 = TRUE;
    if (!sub_08024C48(this, 1)) {
        uVar2 = FALSE;
    } else if (!sub_08049F1C(this, gUnk_020000B0, 0x50) || !sub_08049FDC(this, 3)) {
        uVar2 = FALSE;
        sub_08024C7C(this);
    }
    return uVar2;
}

void sub_08024D00(Entity* this) {
    if (this->field_0x86.HALF.LO) {
        this->field_0x86.HALF.LO--;
        GetNextFrame(this);
    } else {
        sub_08024940(this);
    }

    if ((this->field_0x82.HALF.HI & 0x40) && sub_08024B38(this)) {
        this->action = 6;
        this->field_0x80.HALF.LO = 2;
    } else if (sub_08024CC0(this)) {
        switch (this->field_0x80.HALF.LO) {
            case 0:
                if (--this->actionDelay == 0) {
                    this->field_0x80.HALF.LO++;
                    this->actionDelay = (Random() & 0xf) + 0x20;

                    this->direction += this->field_0x80.HALF.HI ? 4 : 0x1c;
                    this->direction &= 0x1f;

                    this->field_0x80.HALF.HI ^= 0x40;
                    sub_08024A14(this, 3, 0x10);
                }
                break;
            case 1:
                if (--this->actionDelay == 0) {
                    this->field_0x80.HALF.LO = 0;
                    this->actionDelay = (Random() & 0x1f) + 0x20;
                } else {
                    if (--this->field_0xf == 0) {
                        this->direction += this->field_0x80.HALF.HI ? 1 : 0x1f;
                        this->direction &= 0x1f;

                        this->field_0xf = 0x10;
                        sub_080249DC(this);
                    }
                }
                break;
        }
    }
}

void sub_08024E00(Entity* this, u32 unk) {
    this->actionDelay = gUnk_080CBF10[sub_08024E34() * 2 | unk];
}

void sub_08024E1C(Entity* this) {
    this->speed = gUnk_080CBF18[sub_08024E34()];
}

u32 sub_08024E34(void) {
    u32 idx = (Random() & 0x3c) >> 2;
    return gUnk_080CBF20[idx];
}

void sub_08024E4C(Entity* this) {
    if (this->field_0x82.HALF.HI == 3) {
        this->field_0xf = ++this->field_0xf & 0x1f;
        if (sub_0807953C()) {
            u32 r = Random();
            this->cutsceneBeh.HALF.LO++;
            r &= 1;
            this->cutsceneBeh.HALF.LO += r;
        }
        if (gSave.stats.health == 0 || this->field_0x86.HALF.HI == 4) {
            this->cutsceneBeh.HALF.LO = 0x30;
            this->field_0x86.HALF.HI = 0;
            sub_08024F50(this);
            this->field_0x80.HALF.LO = 0;
            this->speed = 0x40;
            this->actionDelay = 0x40;
            this->field_0xf = 8;
            sub_08024A14(this, 0, 8);
        } else {
            Entity* player = &gPlayerEntity;
            ResetPlayer();
            gPlayerState.flags |= PL_DISABLE_ITEMS;
            gPlayerState.field_0xa |= 0x80;
            gPlayerState.queued_action = PLAYER_0807204C;
            gPlayerState.field_0x38 = 0x14;
            gPlayerState.field_0x39 = 1;
            *(u8*)&gPlayerState.field_0x3a = 0;
            PositionRelative(this, player, 0, Q_16_16(1.0));
            player->spriteOffsetY = 0x1a;
            player->animationState = 4;
            player->spritePriority.b1 = 0;
            if (this->field_0xf == 0) {
                this->field_0x86.HALF.HI++;
                player->iframes = 8;
                ModHealth(-2);
                SoundReqClipped(player, SFX_PLY_VO6);
            }
        }
    }
}

void sub_08024F50(Entity* this) {
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &= ~PL_DISABLE_ITEMS;
    CopyPosition(this, &gPlayerEntity);
    gPlayerEntity.action = PLAYER_NORMAL;
    COLLISION_ON(&gPlayerEntity);
    gPlayerEntity.iframes = -0x3c;
    gPlayerEntity.direction = gPlayerEntity.animationState << 2;
    gPlayerEntity.speed = 0;
    gPlayerEntity.spritePriority.b1 = this->cutsceneBeh.HALF.HI;
    gPlayerEntity.z.HALF.HI = gPlayerEntity.spriteOffsetY;
    gPlayerEntity.spriteOffsetY = 0;
    this->flags2 |= 3;
    this->field_0x82.HALF.HI = 0xc0;
    this->field_0x80.HALF.LO += 2;
    this->cutsceneBeh.HALF.LO = 0;
    this->speed = 0x80;
}

// clang-format off
void (*const Pesto_Functions[])(Entity*) = {
    Pesto_OnTick,
    Pesto_OnCollision,
    Pesto_OnKnockback,
    GenericDeath,
    GenericConfused,
    Pesto_OnGrabbed,
};

void (*const gUnk_080CBEDC[])(Entity*) = {
    sub_080240B8,
    sub_080241C0,
    sub_08024298,
    sub_080242A0,
    sub_0802433C,
    sub_080243B8,
    sub_080244E8,
};

void (*const gUnk_080CBEF8[])(Entity*) = {
    sub_08024038,
    sub_08024048,
    sub_08024058,
    sub_08024060,
    nullsub_138,
    sub_0802409C,
};

const u8 gUnk_080CBF10[] = {
    30, 60, 50, 90, 70, 100, 90, 120,
};

const u16 gUnk_080CBF18[] = {
    0x80, 0xC0, 0x100, 0x140,
};

const u8 gUnk_080CBF20[] = {
    0, 2, 1, 1, 3, 1, 2, 0,
    1, 1, 2, 3, 2, 2, 1, 2,
};
// clang-format on
