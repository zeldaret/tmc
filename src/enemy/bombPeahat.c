/**
 * @file bombPeahat.c
 * @ingroup Enemies
 *
 * @brief Bomb Peahat enemy
 */
#include "asm.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unused2[4];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u16 unk_82;
} BombPeahatEntity;

void sub_0802AD1C(BombPeahatEntity*, u32);
void sub_0802AD54(BombPeahatEntity*);
void sub_0802B048(BombPeahatEntity*);
void sub_0802ACDC(BombPeahatEntity*, u32);
void sub_0802ADDC(BombPeahatEntity*);
void sub_0802AC40(BombPeahatEntity*);
bool32 sub_0802B234(BombPeahatEntity*);
BombPeahatEntity* sub_0802B250(BombPeahatEntity*);
void sub_0802B264(BombPeahatEntity*);

extern void (*const BombPeahat_Functions[])(BombPeahatEntity*);
extern void (*const gUnk_080CD108[])(BombPeahatEntity*);
extern void (*const gUnk_080CD120[])(BombPeahatEntity*);
extern void (*const gUnk_080CD134[])(BombPeahatEntity*);
extern void (*const gUnk_080CD140[])(BombPeahatEntity*);
extern void (*const gUnk_080CD158[])(BombPeahatEntity*);

extern const Hitbox gUnk_080CD16C;
extern const Hitbox gUnk_080CD174;
extern const Hitbox gUnk_080CD17C;

void BombPeahat(BombPeahatEntity* this) {
    s32 iVar1;

    if ((super->type == 2) && (iVar1 = sub_080012DC(super), iVar1)) {
        gUnk_080012C8[iVar1](super);
    } else {
        BombPeahat_Functions[GetNextFunction(super)](this);
    }
}

void BombPeahat_OnTick(BombPeahatEntity* this) {
    switch (super->type) {
        default:
            gUnk_080CD108[super->action](this);
            sub_0802AD54(this);
            break;
        case 2:
            gUnk_080CD120[super->action](this);
            sub_0802B048(this);
            break;
        case 3:
            gUnk_080CD134[super->action](this);
            break;
    }
}

void BombPeahat_OnCollision(BombPeahatEntity* this) {
    this->unk_81 = 0;
    if (super->type < 2) {
        InitializeAnimation(super, 0);
    }
}

void BombPeahat_OnGrabbed(BombPeahatEntity* this) {
    gUnk_080CD140[super->subAction](this);
}

void sub_0802A8E0(BombPeahatEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 60;
}

void sub_0802A8EC(BombPeahatEntity* this) {
    sub_0806F4E8(super);
}

void sub_0802A8F4(BombPeahatEntity* this) {
    sub_0806F3E4(super);
}

void sub_0802A8FC(BombPeahatEntity* this) {
    if ((gPlayerState.gustJarState & 0xf) == 0) {
        super->health = gPlayerState.gustJarState & 0xf;
    }
}

void nullsub_143(BombPeahatEntity* this) {
}

void sub_0802A91C(BombPeahatEntity* this) {
    super->health = 0;
}

void sub_0802A924(BombPeahatEntity* this) {
    super->action = 1;
    super->subAction = 0;
    super->timer = 0;
    super->subtimer = 0;
    super->hitbox = (Hitbox*)&gUnk_080CD16C;
#ifdef EU
    super->collisionFlags |= 0x10;
#endif
    super->z.HALF.HI = -0x30;
    this->unk_80 = Random() & 1;
    this->unk_82 = 0;
    this->unk_7b = 0;
    this->unk_81 = 0;
    this->unk_7a = 0;
#ifndef EU
    this->unk_78 = 0;
    this->unk_79 = 0;
#endif
    super->collisionLayer = 3;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 1;
    super->spritePriority.b0 = 1;
    InitializeAnimation(super, super->type + 1);
}

void sub_0802A9A8(BombPeahatEntity* this) {
    if (super->subtimer) {
        super->subtimer--;
    } else {
        if (super->timer != 0) {
            if (--super->timer == 0) {
                super->action = 2;
                super->subAction = 0;
                super->timer = 64;
                sub_0802ACDC(this, 8);
            }
        } else {
            if (gRoomControls.reload_flags != 0) {
                return;
            }
            super->spriteSettings.draw = 1;
            this->unk_82 = 1;
            if (this->unk_80) {
                super->x.HALF.HI = gRoomControls.scroll_x - 0x10;
                super->direction = DirectionEast;
            } else {
                super->x.HALF.HI = gRoomControls.scroll_x + 0x100;
                super->direction = DirectionWest;
            }
            super->y.HALF.HI = gRoomControls.scroll_y + 0x40;
            super->timer = 128;
            sub_0802ADDC(this);
        }
        sub_0802AC40(this);
    }
}

void sub_0802AA40(BombPeahatEntity* this) {
    sub_0802AC40(this);
    if (--super->subtimer == 0) {
        sub_0802ACDC(this, 8);
        this->unk_7b++;
    }
    if (super->timer != 0) {
        super->timer--;
    } else {
        BombPeahatEntity* entity = (BombPeahatEntity*)super->child;
        if (entity != NULL) {
            if (entity->base.next == NULL) {
                super->child = NULL;
            } else {
                u32 direction = DirectionRound(this->unk_80 * 0x10 + 0x18);

                if (0x20 < this->unk_7b) {
                    super->direction = direction;
                }
                if (super->direction == direction) {
                    super->action = 3;
                    super->speed = 0x180;
                    this->unk_7b = 0;
                    entity->unk_80 = 1;
                    entity->base.timer = 150;
                }
            }
        }
    }
}

void sub_0802AAC0(BombPeahatEntity* this) {
    sub_0802AC40(this);
    if (--super->subtimer == 0) {
        sub_0802AD1C(this, 4);
    }

    if (this->unk_81) {
        Entity* entity = super->child;
        if (entity == NULL) {
            this->unk_81 = 0;
        } else if (entity->next == NULL) {
            this->unk_81 = 0;
            super->child = NULL;
#ifdef EU
        } else if (entity->timer == 0) {
            if (GetCollisionDataAtTilePos(COORD_TO_TILE(super), 1) == 0) {
                if (EntityInRectRadius(super, &gPlayerEntity.base, 0x10, 0x10) && entity->subtimer <= 0x50) {
                    this->unk_81 = 0;
                }
            } else if (entity->subtimer <= 0x13) {
                this->unk_81 = 0;
            }
        }
#else
        } else if ((entity->timer == 0) && (entity->subtimer <= 0x50)) {
            this->unk_81 = 0;
        }
#endif
    } else {
        super->action = 4;
        super->timer = 192;
        super->subtimer = 4;
        this->unk_80 ^= 1;
#ifndef EU
        this->unk_78 = 0;
        this->unk_79 = 4;
        super->direction = DIR_NONE;
#endif
        InitializeAnimation(super, 0);
    }
}

#ifdef EU
void sub_0802AB40(BombPeahatEntity* this) {
    sub_0802AC40(this);
    if (--super->timer == 0) {
        if (this->unk_7a <= 4) {
            super->action = 5;
            super->speed = 0;
            InitializeAnimation(super, super->type + 1);
        } else {
            super->timer = 192;
            super->subtimer = 4;
            this->unk_80 ^= 1;
        }
    } else if (--super->subtimer == 0) {
        sub_0802ACDC(this, 4);
    }
}
#else
void sub_0802AB40(BombPeahatEntity* this) {
    sub_0802AC40(this);
    switch (this->unk_78) {
        case 0:
            if (super->z.HALF.HI) {
                if (--this->unk_79 == 0) {
                    this->unk_79 = 4;
                    super->z.HALF.HI++;
                }
            } else {
                this->unk_78 = 1;
                this->unk_79 = 0x30;
                super->direction = sub_08049F84(super, 0);
            }
            break;
        case 1:
            if (--this->unk_79 == 0) {
                this->unk_78 = 2;
                this->unk_79 = 4;
            } else if ((this->unk_79 & 7) == 0) {
                super->direction = sub_08049F84(super, 0);
            }
            break;
        case 2:
            if (-0x30 < super->z.HALF.HI) {
                if (--this->unk_79 == 0) {
                    this->unk_79 = 4;
                    super->z.HALF.HI--;
                    sub_0802ACDC(this, 4);
                }
            } else {
                super->action = 5;
                super->speed = 0;
                InitializeAnimation(super, super->type + 1);
            }
            break;
    }
}
#endif

void sub_0802AC08(BombPeahatEntity* this) {
    if (super->frame & ANIM_DONE) {
        super->action = 2;
        super->subAction = 0;
        super->timer = 64;
        super->speed = 0xc0;
        sub_0802ACDC(this, 8);
        sub_0802ADDC(this);
    }
    GetNextFrame(super);
}

void sub_0802AC40(BombPeahatEntity* this) {
    GetNextFrame(super);
    LinearMoveUpdate(super);
    if (this->unk_7a) {
        if (!sub_0802B234(this)) {
            this->unk_7a = 0;
            super->spritePriority.b1 = 0;
#ifndef EU
        } else {
            if (super->z.HALF.HI == 0) {
                if (super->spritePriority.b1 != 1) {
                    super->spritePriority.b1 = 1;
                }
            } else {
                if (super->spritePriority.b1 != 3) {
                    super->spritePriority.b1 = 3;
                }
            }
#endif
        }
    } else {
        if (sub_0802B234(this)) {
            this->unk_7a = 1;
#ifndef EU
            if (super->z.HALF.HI == 0) {
                super->spritePriority.b1 = 1;
            } else {
                super->spritePriority.b1 = 3;
            }
#else
            super->spritePriority.b1 = 3;
#endif
        }
    }
}

void sub_0802ACDC(BombPeahatEntity* this, u32 param_2) {
    u32 x;
    if (this->unk_80) {
        x = sub_080045B4(super, gRoomControls.scroll_x + 0x20, gRoomControls.scroll_y + 0x60);
    } else {
        x = sub_080045B4(super, gRoomControls.scroll_x + 0xd0, gRoomControls.scroll_y + 0x60);
    }
    sub_08004596(super, x);
    super->subtimer = param_2;
}

void sub_0802AD1C(BombPeahatEntity* this, u32 param_2) {
    Entity* entity = sub_08049DF4(1);
    if (entity != NULL) {
        u32 y = entity->y.HALF.HI - 0x18;
        u32 x = entity->x.HALF.HI;
        sub_08004596(super, sub_080045B4(super, x, y));
        super->subtimer = param_2;
    } else {
        sub_0802ACDC(this, param_2);
    }
}

void sub_0802AD54(BombPeahatEntity* this) {
    if (this->unk_82 != 0) {
        if (gRoomControls.reload_flags != 0) {
            super->spriteSettings.draw = 0;
            DeleteEntity(super);
            return;
        }
        if (gRoomControls.origin_y > super->y.HALF.HI ||
            (gRoomControls.origin_y + gRoomControls.height + 0x20) < super->y.HALF.HI) {
            super->spriteSettings.draw = 0;
        } else {
            super->spriteSettings.draw = 1;
        }
    }
    if (this->unk_81) {
        if (super->child == NULL || super->child->next == NULL) {
            super->action = 4;
            super->timer = 192;
            super->subtimer = 4;
            this->unk_80 ^= 1;
        }
    }
}

void sub_0802ADDC(BombPeahatEntity* this) {
    Entity* entity = CreateEnemy(BOMB_PEAHAT, super->type + 2);
    if (entity != NULL) {
        entity->type2 = !!sub_0802B234(this);
        entity->parent = super;
        super->child = entity;
        CopyPosition(super, entity);
#ifdef EU
        entity->z.HALF.HI += 8;
#endif
        this->unk_81 = 1;
        if (super->type == 0) {
            this->unk_7a++;
        }
    }
}

void sub_0802AE24(BombPeahatEntity* this) {
    super->action = 1;
    super->timer = 240;
    super->zVelocity = Q_16_16(0.5);
    super->hitbox = (Hitbox*)&gUnk_080CD174;
    super->collisionFlags = 3;
    super->carryFlags = 0;
    super->gustJarFlags = 2;
    this->unk_81 = 0;
    this->unk_7b = 1;
    InitializeAnimation(super, 3);
}

#ifdef EU
void sub_0802AE68(BombPeahatEntity* this) {
    Entity* entity = super->parent;
    if (entity == NULL) {
        super->action = 3;
        super->spriteSettings.draw = 1;
        this->unk_80 = 1;
    }

    if (((BombPeahatEntity*)entity)->unk_81) {
        CopyPosition(entity, super);
        super->z.HALF.HI += 8;
        super->spriteSettings.draw = 0;
    } else {
        super->action = 3;
        this->unk_80 = 1;
        super->spriteSettings.draw = 1;
        if (sub_0802B234(this)) {
            super->spritePriority.b1 = 3;
        } else {
            super->spritePriority.b1 = 0;
        }
        GetNextFrame(super);
    }
}
#else
void sub_0802AE68(BombPeahatEntity* this) {
    BombPeahatEntity* entity = sub_0802B250(this);
    if (entity == NULL) {
        super->action = 3;
        this->unk_80 = 1;
        sub_0802B264(this);
    } else {
        if (entity->unk_81) {
            CopyPosition(&entity->base, super);
            super->spriteSettings.draw = 0;
        } else {
            super->action = 3;
            this->unk_80 = 1;
            sub_0802B264(this);
        }
    }
}
#endif

void sub_0802AEBC(BombPeahatEntity* this) {
    gUnk_080CD158[super->subAction](this);
}

void sub_0802AED4(BombPeahatEntity* this) {
    GetNextFrame(super);
    if (this->unk_81 < 2) {
        if (BounceUpdate(super, Q_8_8(40.0)) == BOUNCE_INIT_NEXT) {
            this->unk_81++;
        }
    } else {
        if (!sub_0800442E(super)) {
            RegisterCarryEntity(super);
        }
    }
    if (super->type2 != 0 && this->unk_81) {
        super->timer = 0;
        super->subtimer = 1;
    }
}

void sub_0802AF28(BombPeahatEntity* this) {
    super->subAction = 1;
    sub_08079BD8(super);
    super->spritePriority.b1 = 2;
    GetNextFrame(super);
}

void sub_0802AF50(BombPeahatEntity* this) {
    GetNextFrame(super);
}

void sub_0802AF58(BombPeahatEntity* this) {
    GetNextFrame(super);
    super->spritePriority.b1 = 3;
}

void sub_0802AF74(BombPeahatEntity* this) {
    super->action = 3;
    super->subAction = 0;
    if (super->timer > 60) {
        super->timer = 60;
    }
    GetNextFrame(super);
}

void sub_0802AF94(BombPeahatEntity* this) {
    DeleteEntity(super);
}

void sub_0802AF9C(BombPeahatEntity* this) {
    GetNextFrame(super);
    if (--super->timer == 0) {
        if (((BombPeahatEntity*)super->parent)->unk_7a) {
            ((BombPeahatEntity*)super->parent)->unk_7a--;
        }
        DeleteEntity(super);
    }
}

void sub_0802AFC8(BombPeahatEntity* this) {
    u32 subtimer = super->subtimer;
    u32 flag = 8;
    if (subtimer < 0x29) {
        u32 tmp, tmp2;
        flag = 4;
        if (this->unk_82 & 0x8000) {
            this->unk_82 -= 0x10;
        } else {
            this->unk_82 += 0x10;
        }
        tmp = this->unk_82 & 0xf0;
        if (tmp == 0 || tmp > 0x80) {
            this->unk_82 ^= 0x8000;
        }
        tmp = this->unk_82 & 0xf0;
        SetAffineInfo(super, 0x130 - tmp, 0x130 - tmp, 0);
    }
    if (super->subtimer & flag) {
        super->palette.b.b0 = super->palette.b.b4;
    } else {
        super->palette.b.b0 = 0;
    }
}

void sub_0802B048(BombPeahatEntity* this) {
    Entity* entity;
    u32 action;

    if (this->unk_7b) {
        if (gRoomControls.origin_y > super->y.HALF.HI ||
            (gRoomControls.origin_y + gRoomControls.height + 0x20) < super->y.HALF.HI) {
            COLLISION_OFF(super);
        } else {
            COLLISION_ON(super);
        }
    }

    entity = super->parent;
    if ((entity != NULL) && super->action == 1) {
        super->spriteRendering.b3 = entity->spriteRendering.b3;
        super->spritePriority.b0 = entity->spritePriority.b0;
        super->spriteOrientation.flipY = entity->spriteOrientation.flipY;
    }

    action = super->action;
    if (action != 4 && this->unk_80) {
        if (super->timer != 0) {
            if (--super->timer == 0) {
                super->subtimer = 80;
                this->unk_82 = 0;
                super->spriteRendering.b0 = 3;
                SetAffineInfo(super, 0x100, 0x100, 0);
            }
        } else {
            if (super->subtimer) {
                if (--super->subtimer == 0) {
                    if (action == 2 && super->subAction == 1) {
                        gPlayerState.heldObject = 0;
                    }
                    sub_0805EC60(super);
                    super->action = 4;
                    super->hitbox = (Hitbox*)&gUnk_080CD17C;
                    super->timer = 15;
                    super->spriteSettings.draw = 0;
                    COLLISION_ON(super);
                    this->unk_7b = 0;
                    FreeCarryEntity(super);
                    if (super->parent->next != NULL) {
                        ((BombPeahatEntity*)super->parent)->unk_81 = 0;
                    }
                    entity = CreateObjectWithParent(super, SMOKE_PARTICLE, 0, 0);
                    if (entity != NULL) {
                        super->collisionLayer = 1;
                    } else {
                        DeleteEntity(super);
                    }
                } else {
                    sub_0802AFC8(this);
                }
            }
        }
    }
}

void sub_0802B1A0(BombPeahatEntity* this) {
    super->action = 1;
    super->timer = 0;
    super->subtimer = 79;
    this->unk_81 = 1;
    InitializeAnimation(super, 0);
}

#ifdef EU
void sub_0802B1BC(BombPeahatEntity* this) {
    Entity* entity;

    if (super->timer != 0) {
        super->timer--;
    }

    entity = super->parent;
    if (entity == NULL) {
        super->action = 2;
        super->spriteSettings.draw = 1;
    }

    if (((BombPeahatEntity*)entity)->unk_81) {
        CopyPosition(entity, super);
        super->z.HALF.HI += 8;
    } else {
        super->action = 2;
        super->spriteSettings.draw = 1;
        if (sub_0802B234(this)) {
            super->spritePriority.b1 = 3;
        } else {
            super->spritePriority.b1 = 0;
        }

        GetNextFrame(super);
    }
}
#else
void sub_0802B1BC(BombPeahatEntity* this) {
    BombPeahatEntity* entity;

    if (super->timer != 0) {
        super->timer--;
    }

    entity = sub_0802B250(this);
    if (entity == NULL) {
        super->action = 2;
        sub_0802B264(this);
    } else {
        if (entity->unk_81) {
            CopyPosition(&entity->base, super);
        } else {
            super->action = 2;
            sub_0802B264(this);
        }
    }
}
#endif

void sub_0802B204(BombPeahatEntity* this) {
    if (BounceUpdate(super, Q_8_8(40.0)) == BOUNCE_INIT_NEXT) {
        Entity* entity = CreateEnemy(BOBOMB, 1);
        if (entity != NULL) {
            CopyPosition(super, entity);
            entity->parent = super->parent;
        }
        DeleteThisEntity();
    }
}

bool32 sub_0802B234(BombPeahatEntity* this) {
    bool32 ret = FALSE;
    if (GetTileTypeAtEntity(super) - 0x1c4 > 1)
        ret = TRUE;
    return ret;
}

#ifndef EU
BombPeahatEntity* sub_0802B250(BombPeahatEntity* this) {
    BombPeahatEntity* parent = (BombPeahatEntity*)super->parent;
    if ((parent != NULL) && (parent->base.next == NULL)) {
        parent = NULL;
    }
    return parent;
}

void sub_0802B264(BombPeahatEntity* this) {
    super->spriteSettings.draw = 1;
    if (sub_0802B234(this)) {
        super->spritePriority.b1 = 3;
    } else {

        super->spritePriority.b1 = 0;
    }
    GetNextFrame(super);
}
#endif

// clang-format off
void (*const BombPeahat_Functions[])(BombPeahatEntity*) = {
    BombPeahat_OnTick,
    BombPeahat_OnCollision,
    (void (*)(BombPeahatEntity*))GenericKnockback,
    (void (*)(BombPeahatEntity*))GenericDeath,
    (void (*)(BombPeahatEntity*))GenericConfused,
    BombPeahat_OnGrabbed,
};

void (*const gUnk_080CD108[])(BombPeahatEntity*) = {
    sub_0802A924,
    sub_0802A9A8,
    sub_0802AA40,
    sub_0802AAC0,
    sub_0802AB40,
    sub_0802AC08,
};

void (*const gUnk_080CD120[])(BombPeahatEntity*) = {
    sub_0802AE24,
    sub_0802AE68,
    sub_0802AEBC,
    sub_0802AED4,
    sub_0802AF9C,
};

void (*const gUnk_080CD134[])(BombPeahatEntity*) = {
    sub_0802B1A0,
    sub_0802B1BC,
    sub_0802B204,
};

void (*const gUnk_080CD140[])(BombPeahatEntity*) = {
    sub_0802A8E0,
    sub_0802A8EC,
    sub_0802A8F4,
    sub_0802A8FC,
    nullsub_143,
    sub_0802A91C,
};

void (*const gUnk_080CD158[])(BombPeahatEntity*) = {
    sub_0802AF28,
    sub_0802AF50,
    sub_0802AF58,
    sub_0802AF74,
    sub_0802AF94,
};

const Hitbox gUnk_080CD16C = {
#ifdef EU
    0x00, 0xFD, 0x05, 0x03, 0x03, 0x05, 0x06, 0x06,
#else
    0x00, 0xFB, 0x05, 0x03, 0x03, 0x05, 0x06, 0x06,
#endif
};

#ifdef EU
const u8 unk_data[] = { // TODO
    0x0c, 0x0, 0x0, 0x0
};
#endif

const Hitbox gUnk_080CD174 = {
    0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x04, 0x04,
};


const Hitbox gUnk_080CD17C = {
    0x00, 0x00, 0x04, 0x00, 0x00, 0x04, 0x16, 0x16,
};

// clang-format on
