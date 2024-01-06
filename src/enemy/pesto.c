/**
 * @file pesto.c
 * @ingroup Enemies
 *
 * @brief Pesto enemy
 */
#include "collision.h"
#include "enemy.h"
#include "game.h"
#include "object.h"
#include "playeritem.h"
#include "save.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u8 unused2[6];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u8 unused3[6];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
    /*0x86*/ u8 unk_86;
    /*0x87*/ u8 unk_87;
} PestoEntity;

void sub_080249F4(PestoEntity*);
void sub_08024940(PestoEntity*);
void sub_080249DC(PestoEntity*);
void sub_08024A14(PestoEntity*, u32, u32);
bool32 sub_08024AD8(PestoEntity*);
bool32 sub_08024B38(PestoEntity*);
bool32 sub_08024C48(PestoEntity*, bool32);
void sub_08024C7C(PestoEntity*);
void sub_08024C94(PestoEntity*);
bool32 sub_08024CC0(PestoEntity*);
void sub_08024D00(PestoEntity*);
void sub_08024E00(PestoEntity*, u32);
void sub_08024E1C(PestoEntity*);
u32 sub_08024E34(void);
void sub_08024E4C(PestoEntity*);
void sub_08024F50(PestoEntity*);

extern Entity* gUnk_020000B0;

extern void (*const Pesto_Functions[])(PestoEntity*);
extern void (*const gUnk_080CBEDC[])(PestoEntity*);
extern void (*const gUnk_080CBEF8[])(PestoEntity*);

extern const u8 gUnk_080CBF10[];
extern const u16 gUnk_080CBF18[];
extern const u8 gUnk_080CBF20[];

void Pesto(PestoEntity* this) {
    Pesto_Functions[GetNextFunction(super)](this);
}

void Pesto_OnTick(PestoEntity* this) {
    gUnk_080CBEDC[super->action](this);
}

void Pesto_OnCollision(PestoEntity* this) {
    if (super->hitType != 0x6e) {
        if (super->contactFlags == CONTACT_NOW) {
            this->unk_86 = 0x30;

            if ((this->unk_83 & 0xf) == 3 && super->action == 6) {
                switch (this->unk_80) {
                    case 1:
                        super->z.HALF.HI = -0x10;
                        this->unk_82 = 0;
                        this->unk_78 = -0x10;
                        this->unk_80++;
                        /* fallthrough */
                    case 2:
                        this->unk_83 &= ~0x80;
                        break;
                }
            }
        }
    } else {
        super->health = 0;
    }

    EnemyFunctionHandlerAfterCollision(super, Pesto_Functions);
}

void Pesto_OnKnockback(PestoEntity* this) {
    GenericKnockback(super);
    GetNextFrame(super);
}

void Pesto_OnGrabbed(PestoEntity* this) {
    if (super->subAction < 3 && !sub_0806F520(super)) {
        super->action = 1;
        super->subAction = 0;
        COLLISION_ON(super);
        super->hitType = 0x77;
        super->timer = 1;
        super->speed = 0x40;
    } else {
        gUnk_080CBEF8[super->subAction](this);
    }
}

void sub_08024038(PestoEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 60;
    GetNextFrame(super);
}

void sub_08024048(PestoEntity* this) {
    sub_0806F4E8(super);
    GetNextFrame(super);
}

void sub_08024058(PestoEntity* this) {
    sub_0806F3E4(super);
}

void sub_08024060(PestoEntity* this) {
    if (super->hitType != 0x6e) {
        COLLISION_OFF(super);
        super->hitType = 0x6e;
        super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    }

    GetNextFrame(super);
}

void nullsub_138(PestoEntity* this) {
    /* ... */
}

void sub_0802409C(PestoEntity* this) {
    super->health = 0;
    InitializeAnimation(super, super->animationState);
    CreateDust(super);
}

void sub_080240B8(PestoEntity* this) {
    u32 direction = (Random() & 0xc0) >> 3;
    sub_0804A720(super);
    super->action = 1;
    super->subAction = 0;
    this->unk_80 = 0;
    if (direction & 8) {
        super->y.HALF.HI += (direction & 0x10) ? -0x20 : 0x20;
    } else {
        super->x.HALF.HI += (direction & 0x10) ? -0x20 : 0x20;
    }

    switch (super->type) {
        case 0:
            this->unk_78 = -0x10;
            super->z.HALF.HI = -0x10;
            break;
        case 1:
            this->unk_78 = -0x30;
            super->z.HALF.HI = -0x30;
            break;
    }

    UpdateSpriteForCollisionLayer(super);
    if (AreaIsDungeon())
        super->spriteOrientation.flipY = 1;

    this->unk_81 = Random() & 0x40;
    this->unk_82 = 0;
    this->unk_83 = 0x80;
    this->unk_86 = 0;
    this->unk_87 = 0;
    super->timer = 0;
    super->subtimer = 32;
    super->collisionFlags |= 0x10;
    super->gustJarFlags = 2;
    super->direction = direction;
    sub_080249DC(this);

    if (super->type == 1) {
        Entity* entity;

        this->unk_83 = 0;
        entity = EnemyCreateProjectile(super, DIRT_BALL_PROJECTILE, this->unk_83);
        if (entity != NULL) {
            super->child = entity;
            entity->parent = super;
            entity->y.HALF.HI += 0x10;
        }
    }
}

void sub_080241C0(PestoEntity* this) {
    sub_08024940(this);
    switch (this->unk_80) {
        case 0:
            if (PlayerInRange(super, 3, (gPlayerState.hurtBlinkSpeed != 0) ? 0xa0 : 0x40) && sub_08049FDC(super, 3) &&
                gPlayerEntity.base.action != PLAYER_USEENTRANCE) {
                this->unk_80++;
                super->speed = 0;
                sub_08024A14(this, 3, 10);
            } else if (--super->subtimer == 0) {
                sub_08024A14(this, 0, 0x20);
            }
            break;
        case 1:
            if (--super->subtimer == 0) {
                if (super->type != 0) {
                    u8 tmp = this->unk_83 & 0x80;
                    if (tmp) {
                        sub_08024C94(this);
                        this->unk_83 |= 0x40;
                    } else {
                        super->action = 3;
                        this->unk_80 = tmp;
                        super->subtimer = 10;
                        sub_08024E00(this, 0);
                        sub_08024E1C(this);
                        sub_08024A14(this, 3, super->subtimer);
                    }
                } else {
                    sub_08024C94(this);
                }
            }
            break;
    }
}

void sub_08024298(PestoEntity* this) {
    sub_08024D00(this);
}

void sub_080242A0(PestoEntity* this) {
    sub_08024940(this);
    if (sub_08024CC0(this)) {
        if (--super->timer == 0) {
            super->direction = GetFacingDirection(super, gUnk_020000B0);
            sub_08024E00(this, 1);
            if (super->speed != 0) {
                super->speed = 0;
            } else {
                sub_08024E1C(this);
            }
        } else if (--super->subtimer == 0) {
            sub_08024A14(this, 3, 10);
        }

        if (sub_08049F1C(super, gUnk_020000B0, 0x20) && sub_08049FDC(super, 3)) {
            super->action = 4;
            this->unk_80 = 0;
            super->timer = 16;
            super->speed = 0;
        }
    }
}

void sub_0802433C(PestoEntity* this) {
    sub_08024940(this);
    switch (this->unk_80) {
        case 0:
            if (--super->timer == 0) {
                this->unk_80++;
                super->speed = 0x100;
                super->subtimer = 8;
                sub_08024E00(this, 1);
            }
            break;
        case 1:
            if (--super->timer == 0) {
                super->action = 5;
                this->unk_80 = 0;
                super->speed = 0x140;
                super->timer = 192;
                super->subtimer = 8;
            } else {
                if (--super->subtimer == 0)
                    sub_08024A14(this, 2, 4);
            }
            break;
    }
}

void sub_080243B8(PestoEntity* this) {
    sub_08024940(this);
    switch (this->unk_80) {
        case 0:
            if (sub_08024C48(this, TRUE)) {
                if (super->child == NULL || super->child->next == NULL) {
                    this->unk_80 = 2;
                    super->timer = 32;
                    super->speed = 0x80;
                    this->unk_83 = 0x80;
                } else if (sub_08049F1C(super, gUnk_020000B0, 0xe)) {
                    this->unk_80++;
                    super->timer = 30;
                    super->speed = 0x100;
                    this->unk_83 = 0x80;
                    super->child->action = 2;
                } else if (--super->timer != 0) {
                    if (--super->subtimer == 0) {
                        sub_08024A14(this, 2, (super->timer >> 6) + 1);
                    }
                } else {
                    sub_08024C7C(this);
                }
            } else {
                sub_08024C7C(this);
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_80++;
                super->timer = 32;
                super->speed = 0x80;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                super->action = 6;
                this->unk_80 = 0;
                super->speed = 0x80;
                sub_08024B38(this);

                if ((this->unk_83 & 0x40) == 0) {
                    switch (this->unk_83 & 0x3f) {
                        case 3:
                            super->timer = 4;
                            break;
                        case 1:
                            super->timer = 20;
                            break;
                        default:
                            super->timer = 48;
                            break;
                    }
                    sub_08024A14(this, 2, 8);
                } else {
                    super->timer = 64;
                    sub_08024A14(this, 0, 8);
                }
            }
            break;
    }
}

void sub_080244E8(PestoEntity* this) {
    sub_08024940(this);
    switch (this->unk_80) {
        case 0:
            if (--super->timer == 0) {
                if (GetCollisionDataAtTilePos(COORD_TO_TILE(super), 1) == 0) {
                    this->unk_80++;
                    this->unk_82++;
                    super->subtimer = 0;
                    super->speed = 0;
                } else {
                    super->timer = 48;
                    super->subtimer = 4;
                }
                break;
            } else {
                if (--super->subtimer == 0) {
                    sub_08024A14(this, 1, 8);
                }
            }
            break;
        case 1:
            if (++super->z.HALF.HI >= -0x10) {
                this->unk_82 = 0;
                this->unk_78 = -16;
                if (sub_08024AD8(this)) {
                    this->unk_80++;
                } else {
                    sub_08024C94(this);
                    this->unk_83 |= 0x40;
                }
            }
            break;
        case 2:
            if (sub_08024AD8(this)) {
                u32 tmp;

                if (--super->timer == 0) {
                    if (super->speed) {
                        super->speed = 0;
                    } else {
                        sub_08024E1C(this);
                    }
                    super->direction = GetFacingDirection(super, super->child);
                    sub_08024E00(this, 0);
                    sub_080249DC(this);
                } else if (--super->subtimer == 0) {
                    sub_08024A14(this, 1, 8);
                }

                switch (this->unk_83 & 0x3f) {
                    case 3:
                        tmp = this->unk_83 & 0x80;
                        if (tmp == 0) {
                            this->unk_80++;
                            super->timer = 12;
                            super->direction = DirectionSouth;
                            super->speed = tmp;
                            this->unk_84 = 0;
                            super->collisionMask &= 0xfc;
                            sub_080249DC(this);
                            this->unk_85 = gPlayerEntity.base.spritePriority.b1;
                            gPlayerEntity.base.flags &= ~ENT_COLLIDE;
                            gPlayerState.flags |= PL_DISABLE_ITEMS;
                            gPlayerState.field_0xa |= 0x80;
                            if (gPlayerState.swim_state != 0) {
                                gPlayerState.swim_state = 0;
                            }
                        }
                        break;
                    case 1:
                        if (EntityInRectRadius(super, super->child, 6, 6)) {
                            Entity* entity;

                            this->unk_80++;
                            super->timer = 12;
                            this->unk_83 &= ~0x80;
                            CopyPosition(super->child, super);
                            super->z.HALF.HI -= 0xe;
                            this->unk_78 -= 0xe;

                            entity = EnemyCreateProjectile(super, DIRT_BALL_PROJECTILE, this->unk_83);
                            if (entity != NULL) {
                                entity->parent = super;
                                entity->z.HALF.HI += 0xe;
                                entity->child = super->child;
                                CopyPosition(entity, entity->child);
                                super->child = entity;
                            }
                        }
                        break;
                    case 2:
                        if (EntityInRectRadius(super, super->child, 6, 6)) {
                            Entity* entity;

                            this->unk_80++;
                            super->timer = 12;
                            this->unk_83 &= ~0x80;
                            entity = super->child;
                            SetTile(((PestoEntity*)entity)->unk_70, COORD_TO_TILE(entity), entity->collisionLayer);
                            DeleteEntity(entity);
                            super->z.HALF.HI -= 0xe;
                            this->unk_78 -= 0xe;

                            entity = EnemyCreateProjectile(super, DIRT_BALL_PROJECTILE, this->unk_83);
                            if (entity != NULL) {
                                entity->parent = super;
                                entity->z.HALF.HI += 0xe;
                                super->child = entity;
                            }
                        }
                        break;
                }
                break;
            } else {
                sub_08024C94(this);
                this->unk_83 |= 0x40;
            }
            break;
        case 3:
            if (--super->timer == 0) {
                this->unk_80++;
                super->subtimer = 0;
                super->speed = 0;
                this->unk_82++;
            }
            break;
        case 4:
            super->z.HALF.HI -= 2;
            if (-60 > super->z.HALF.HI) {
                this->unk_80++;
            }
            break;
        case 5:
            if (super->z.HALF.HI < -0x30) {
                super->z.HALF.HI++;
            } else {
                if (this->unk_82 != 0) {
                    this->unk_82 = 0;
                    this->unk_78 = -0x30;
                }

                switch (this->unk_83) {
                    case 3:
                        if (0x2f < this->unk_84) {
                            sub_08024F50(this);
                        }
                        break;
                    case 1 ... 2:
                        this->unk_80++;
                        super->timer = 192;
                        super->subtimer = 8;
                        super->speed = 0x80;
                        sub_080249DC(this);
                        break;
                    default:
                        sub_08024C7C(this);
                        break;
                }
            }
            break;
        case 6:
            if (--super->timer == 0) {
                if (this->unk_83 & 0x80) {
                    this->unk_83 = 0xc0;
                    this->unk_80 = 0;
                    super->speed = 0x40;
                    super->timer = 64;
                    super->subtimer = 8;
                    sub_08024A14(this, 0, 8);
                } else {
                    super->timer = 64;
                    super->subtimer = 8;
                }
            } else if (--super->subtimer == 0) {
                sub_08024A14(this, 2, 8);
            }
            break;
        case 7:
            if (gPlayerEntity.base.z.HALF.HI == 0) {
                this->unk_80 = 0;
                super->speed = 0x80;
                sub_08024B38(this);
            }
    }

    if (this->unk_83 == 3) {
        sub_08024E4C(this);
    }
}

void sub_08024940(PestoEntity* this) {
    u32 random = Random() & 0x70;

    if (super->collisions != COL_NONE) {
        sub_0800417E(super, super->collisions);
        sub_080249F4(this);
    }

    if (this->unk_82 == 0) {
        super->z.HALF.HI = this->unk_78;
        if (random)
            super->z.HALF.HI += 2;
    }

    if (super->type2 != 0 || AreaIsDungeon()) {
        if (!sub_08049FA0(super)) {
            super->direction = sub_08049EE4(super);
            sub_080249F4(this);
        }

        if (super->z.HALF.HI < -0x20) {
            super->spritePriority.b0 = 0;
        } else {
            super->spritePriority.b0 = 1;
        }
    }

    ProcessMovement1(super);
    GetNextFrame(super);
}

void sub_080249DC(PestoEntity* this) {
    u8 direction = ((super->direction + 2) & DirectionNorthWest) >> 2;
    super->animationState = direction;
    InitializeAnimation(super, super->animationState);
}

void sub_080249F4(PestoEntity* this) {
    u32 direction = ((super->direction + 2) & (0x3 | DirectionNorthWest));
    direction >>= 2;
    if (direction != super->animationState) {
        super->animationState = direction;
        InitializeAnimation(super, super->animationState);
    }
}

void sub_08024A14(PestoEntity* this, u32 param_2, u32 param_3) {
    u8 unk = FALSE;

    switch (param_2) {
        case 0:
            sub_08004596(super, sub_08049EE4(super));
            unk = TRUE;
            break;
        case 1:
            if (sub_08024C48(this, FALSE)) {
                sub_08004596(super, GetFacingDirection(super, super->child));
                unk = TRUE;
            }
            break;
        case 2:
            if (sub_08024C48(this, TRUE)) {
                sub_08004596(super, GetFacingDirection(super, gUnk_020000B0));
                unk = TRUE;
            }
            break;
        case 3:
            if (sub_08024C48(this, TRUE)) {
                super->direction = GetFacingDirection(super, gUnk_020000B0);
                unk = TRUE;
            }
            break;
    }

    if (param_2 != 0 && !sub_08049FA0(super) && (Random() & 3)) {
        unk = FALSE;
    }

    if (!unk) {
        sub_08024A14(this, 0, param_3);
    }

    sub_080249DC(this);
    super->subtimer = param_3;
}

bool32 sub_08024AD8(PestoEntity* this) {
    if ((this->unk_83 & 0x40) == 0) {
        u8 unk = FALSE;
        if ((this->unk_83 & 0x3f) == 3) {
            if (gPlayerState.hurtBlinkSpeed == 0) {
                super->child->parent = NULL;
                super->child = NULL;
                this->unk_83 = 0xc0;
                return FALSE;
            }
            unk = TRUE;
        }

        if (sub_08024C48(this, unk) == 0) {
            super->child = NULL;
            this->unk_83 = 0xc0;
            return FALSE;
        }
    } else {
        return sub_08024B38(this);
    }

    return TRUE;
}

bool32 sub_08024B38(PestoEntity* this) {
    int iVar4 = 0;
    Entity* entity;

    if (gPlayerState.hurtBlinkSpeed != 0) {
        if (gPlayerState.swim_state == 1) {
            if (gPlayerState.hurtBlinkSpeed > 3) {
                gPlayerState.hurtBlinkSpeed -= 3;
            } else {
                gPlayerState.hurtBlinkSpeed = 0;
            }
        }
        if (gPlayerState.hurtBlinkSpeed != 0) {
            if (sub_08024C48(this, 1) && sub_08049F1C(super, gUnk_020000B0, 0xa0)) {
                iVar4 = 1;
                super->child = gUnk_020000B0;
                this->unk_83 |= 3;
                this->unk_83 &= ~0x40;
            }

            if (iVar4 == 0) {
                super->child = NULL;
            }
            return iVar4;
        }
    }

    entity = FindEntityByID(PLAYER_ITEM, PLAYER_ITEM_BOMB, 2);
    if (entity != NULL) {
        do {
            if (entity->action != 2 && entity->z.HALF.HI == 0 && sub_08049F1C(super, entity, 0xa0)) {
                iVar4 = 1;
                super->child = entity;
                this->unk_83 |= 1;
                this->unk_83 &= ~0x40;
                break;
            }
        } while (entity = FindNextDuplicateID(entity, 2), entity != NULL);
    }

    if (iVar4 != 0) {
        return iVar4;
    }

    entity = FindEntityByID(OBJECT, POT, 6);
    if (entity != NULL) {
        do {
            if (entity->action == 1 && sub_08049F1C(super, entity, 0xa0)) {
                iVar4 = 1;
                super->child = entity;
                this->unk_83 |= 2;
                this->unk_83 &= ~0x40;
                break;
            }
        } while (entity = FindNextDuplicateID(entity, 6), entity != NULL);
    }

    if (iVar4 == 0) {
        super->child = NULL;
    }

    return iVar4;
}

bool32 sub_08024C48(PestoEntity* this, bool32 unk) {
    bool32 rv = TRUE;
    u32 val;

    if (unk) {
        if (sub_08049DF4(3)) {
            rv = TRUE;
        } else {
            rv = FALSE;
        }
    } else {
        if (super->child == NULL) {
            super->child = NULL;
            rv = FALSE;
        } else if (super->child->next == NULL) {
            super->child = NULL;
            rv = FALSE;
        } else if (super->child->z.HALF.HI < 0) {
            super->child = NULL;
            rv = FALSE;
        }
    }
    return rv;
}

void sub_08024C7C(PestoEntity* this) {
    super->action = 1;
    super->speed = 0x40;
    super->timer = 0;
    sub_08024A14(this, 0, 0x20);
}

void sub_08024C94(PestoEntity* this) {
    super->action = 2;
    this->unk_80 = 0;
    super->timer = 64;
    super->subtimer = 0;
    super->speed = 0xc0;
    this->unk_83 = 0x80;
    sub_08024A14(this, 3, super->subtimer);
}

bool32 sub_08024CC0(PestoEntity* this) {
    bool32 uVar2;

    uVar2 = TRUE;
    if (!sub_08024C48(this, 1)) {
        uVar2 = FALSE;
    } else if (!sub_08049F1C(super, gUnk_020000B0, 0x50) || !sub_08049FDC(super, 3)) {
        uVar2 = FALSE;
        sub_08024C7C(this);
    }
    return uVar2;
}

void sub_08024D00(PestoEntity* this) {
    if (this->unk_86) {
        this->unk_86--;
        GetNextFrame(super);
    } else {
        sub_08024940(this);
    }

    if ((this->unk_83 & 0x40) && sub_08024B38(this)) {
        super->action = 6;
        this->unk_80 = 2;
    } else if (sub_08024CC0(this)) {
        switch (this->unk_80) {
            case 0:
                if (--super->timer == 0) {
                    this->unk_80++;
                    super->timer = (Random() & 0xf) + 32;

                    super->direction += this->unk_81 ? DirectionNorthEast : DirectionNorthWest;
                    super->direction &= 0x3 | DirectionNorthWest;

                    this->unk_81 ^= 0x40;
                    sub_08024A14(this, 3, 0x10);
                }
                break;
            case 1:
                if (--super->timer == 0) {
                    this->unk_80 = 0;
                    super->timer = (Random() & 0x1f) + 32;
                } else {
                    if (--super->subtimer == 0) {
                        super->direction += this->unk_81 ? 1 : (0x3 | DirectionNorthWest);
                        super->direction &= 0x3 | DirectionNorthWest;

                        super->subtimer = 16;
                        sub_080249DC(this);
                    }
                }
                break;
        }
    }
}

void sub_08024E00(PestoEntity* this, u32 unk) {
    super->timer = gUnk_080CBF10[sub_08024E34() * 2 | unk];
}

void sub_08024E1C(PestoEntity* this) {
    super->speed = gUnk_080CBF18[sub_08024E34()];
}

u32 sub_08024E34(void) {
    u32 idx = (Random() & 0x3c) >> 2;
    return gUnk_080CBF20[idx];
}

void sub_08024E4C(PestoEntity* this) {
    if (this->unk_83 == 3) {
        super->subtimer = ++super->subtimer & 0x1f;
        if (sub_0807953C()) {
            u32 r = Random();
            this->unk_84++;
            r &= 1;
            this->unk_84 += r;
        }
        if (gSave.stats.health == 0 || this->unk_87 == 4) {
            this->unk_84 = 0x30;
            this->unk_87 = 0;
            sub_08024F50(this);
            this->unk_80 = 0;
            super->speed = 0x40;
            super->timer = 64;
            super->subtimer = 8;
            sub_08024A14(this, 0, 8);
        } else {
            Entity* player = &gPlayerEntity.base;
            ResetActiveItems();
            gPlayerState.flags |= PL_DISABLE_ITEMS;
            gPlayerState.field_0xa |= 0x80;
            gPlayerState.queued_action = PLAYER_0807204C;
            gPlayerState.field_0x38 = 0x14;
            gPlayerState.field_0x39 = 1;
            *(u8*)&gPlayerState.field_0x3a = 0;
            PositionRelative(super, player, 0, Q_16_16(1.0));
            player->spriteOffsetY = 0x1a;
            player->animationState = 4;
            player->spritePriority.b1 = 0;
            if (super->subtimer == 0) {
                this->unk_87++;
                player->iframes = 8;
                ModHealth(-2);
                SoundReqClipped(player, SFX_PLY_VO6);
            }
        }
    }
}

void sub_08024F50(PestoEntity* this) {
    gPlayerState.field_0xa = 0;
    gPlayerState.flags &= ~PL_DISABLE_ITEMS;
    CopyPosition(super, &gPlayerEntity.base);
    gPlayerEntity.base.action = PLAYER_NORMAL;
    COLLISION_ON(&gPlayerEntity.base);
    gPlayerEntity.base.iframes = -0x3c;
    gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2;
    gPlayerEntity.base.speed = 0;
    gPlayerEntity.base.spritePriority.b1 = this->unk_85;
    gPlayerEntity.base.z.HALF.HI = gPlayerEntity.base.spriteOffsetY;
    gPlayerEntity.base.spriteOffsetY = 0;
    super->collisionMask |= 3;
    this->unk_83 = 0xc0;
    this->unk_80 += 2;
    this->unk_84 = 0;
    super->speed = 0x80;
}

// clang-format off
void (*const Pesto_Functions[])(PestoEntity*) = {
    Pesto_OnTick,
    Pesto_OnCollision,
    Pesto_OnKnockback,
    (void (*)(PestoEntity*))GenericDeath,
    (void (*)(PestoEntity*))GenericConfused,
    Pesto_OnGrabbed,
};

void (*const gUnk_080CBEDC[])(PestoEntity*) = {
    sub_080240B8,
    sub_080241C0,
    sub_08024298,
    sub_080242A0,
    sub_0802433C,
    sub_080243B8,
    sub_080244E8,
};

void (*const gUnk_080CBEF8[])(PestoEntity*) = {
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
