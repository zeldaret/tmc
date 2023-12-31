/**
 * @file bombPeahat.c
 * @ingroup Enemies
 *
 * @brief Bomb Peahat enemy
 */

#include "asm.h"
#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "object.h"
#include "functions.h"

void sub_0802AD1C(Entity*, u32);
void sub_0802AD54(Entity*);
void sub_0802B048(Entity*);
void sub_0802ACDC(Entity*, u32);
void sub_0802ADDC(Entity*);
void sub_0802AC40(Entity*);
bool32 sub_0802B234(Entity*);
Entity* sub_0802B250(Entity*);
void sub_0802B264(Entity*);

extern void (*const BombPeahat_Functions[])(Entity*);
extern void (*const gUnk_080CD108[])(Entity*);
extern void (*const gUnk_080CD120[])(Entity*);
extern void (*const gUnk_080CD134[])(Entity*);
extern void (*const gUnk_080CD140[])(Entity*);
extern void (*const gUnk_080CD158[])(Entity*);

extern const Hitbox gUnk_080CD16C;
extern const Hitbox gUnk_080CD174;
extern const Hitbox gUnk_080CD17C;

void BombPeahat(Entity* this) {
    s32 iVar1;

    if ((this->type == 2) && (iVar1 = sub_080012DC(this), iVar1)) {
        gUnk_080012C8[iVar1](this);
    } else {
        BombPeahat_Functions[GetNextFunction(this)](this);
    }
}

void BombPeahat_OnTick(Entity* this) {
    switch (this->type) {
        default:
            gUnk_080CD108[this->action](this);
            sub_0802AD54(this);
            break;
        case 2:
            gUnk_080CD120[this->action](this);
            sub_0802B048(this);
            break;
        case 3:
            gUnk_080CD134[this->action](this);
            break;
    }
}

void BombPeahat_OnCollision(Entity* this) {
    this->field_0x80.HALF.HI = 0;
    if (this->type < 2) {
        InitializeAnimation(this, 0);
    }
}

void BombPeahat_OnGrabbed(Entity* this) {
    gUnk_080CD140[this->subAction](this);
}

void sub_0802A8E0(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 60;
}

void sub_0802A8EC(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0802A8F4(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0802A8FC(Entity* this) {
    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        this->health = gPlayerState.field_0x1c & 0xf;
    }
}

void nullsub_143(Entity* this) {
}

void sub_0802A91C(Entity* this) {
    this->health = 0;
}

void sub_0802A924(Entity* this) {
    this->action = 1;
    this->subAction = 0;
    this->timer = 0;
    this->subtimer = 0;
    this->hitbox = (Hitbox*)&gUnk_080CD16C;
#ifdef EU
    this->collisionFlags |= 0x10;
#endif
    this->z.HALF.HI = -0x30;
    this->field_0x80.HALF.LO = Random() & 1;
    this->field_0x82.HWORD = 0;
    this->field_0x7a.HALF.HI = 0;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.LO = 0;
#ifndef EU
    this->field_0x78.HALF.LO = 0;
    this->field_0x78.HALF.HI = 0;
#endif
    this->collisionLayer = 3;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 1;
    InitializeAnimation(this, this->type + 1);
}

void sub_0802A9A8(Entity* this) {
    if (this->subtimer) {
        this->subtimer--;
    } else {
        if (this->timer != 0) {
            if (--this->timer == 0) {
                this->action = 2;
                this->subAction = 0;
                this->timer = 64;
                sub_0802ACDC(this, 8);
            }
        } else {
            if (gRoomControls.reload_flags != 0) {
                return;
            }
            this->spriteSettings.draw = 1;
            this->field_0x82.HWORD = 1;
            if (this->field_0x80.HALF.LO) {
                this->x.HALF.HI = gRoomControls.scroll_x - 0x10;
                this->direction = DirectionEast;
            } else {
                this->x.HALF.HI = gRoomControls.scroll_x + 0x100;
                this->direction = DirectionWest;
            }
            this->y.HALF.HI = gRoomControls.scroll_y + 0x40;
            this->timer = 128;
            sub_0802ADDC(this);
        }
        sub_0802AC40(this);
    }
}

void sub_0802AA40(Entity* this) {
    sub_0802AC40(this);
    if (--this->subtimer == 0) {
        sub_0802ACDC(this, 8);
        this->field_0x7a.HALF.HI++;
    }
    if (this->timer != 0) {
        this->timer--;
    } else {
        Entity* ent = this->child;
        if (ent != NULL) {
            if (ent->next == NULL) {
                this->child = NULL;
            } else {
                u32 direction = DirectionRound(this->field_0x80.HALF.LO * 0x10 + 0x18);

                if (0x20 < this->field_0x7a.HALF.HI) {
                    this->direction = direction;
                }
                if (this->direction == direction) {
                    this->action = 3;
                    this->speed = 0x180;
                    this->field_0x7a.HALF.HI = 0;
                    ent->field_0x80.HALF.LO = 1;
                    ent->timer = 150;
                }
            }
        }
    }
}

void sub_0802AAC0(Entity* this) {
    sub_0802AC40(this);
    if (--this->subtimer == 0) {
        sub_0802AD1C(this, 4);
    }

    if (this->field_0x80.HALF.HI) {
        Entity* ent = this->child;
        if (ent == NULL) {
            this->field_0x80.HALF.HI = 0;
        } else if (ent->next == NULL) {
            this->field_0x80.HALF.HI = 0;
            this->child = NULL;
#ifdef EU
        } else if (ent->timer == 0) {
            if (sub_080B1B44(COORD_TO_TILE(this), 1) == 0) {
                if (EntityInRectRadius(this, &gPlayerEntity, 0x10, 0x10) && ent->subtimer <= 0x50) {
                    this->field_0x80.HALF.HI = 0;
                }
            } else if (ent->subtimer <= 0x13) {
                this->field_0x80.HALF.HI = 0;
            }
        }
#else
        } else if ((ent->timer == 0) && (ent->subtimer <= 0x50)) {
            this->field_0x80.HALF.HI = 0;
        }
#endif
    } else {
        this->action = 4;
        this->timer = 192;
        this->subtimer = 4;
        this->field_0x80.HALF.LO ^= 1;
#ifndef EU
        this->field_0x78.HALF.LO = 0;
        this->field_0x78.HALF.HI = 4;
        this->direction = DIR_NONE;
#endif
        InitializeAnimation(this, 0);
    }
}

#ifdef EU
void sub_0802AB40(Entity* this) {
    sub_0802AC40(this);
    if (--this->timer == 0) {
        if (this->field_0x7a.HALF.LO <= 4) {
            this->action = 5;
            this->speed = 0;
            InitializeAnimation(this, this->type + 1);
        } else {
            this->timer = 192;
            this->subtimer = 4;
            this->field_0x80.HALF.LO ^= 1;
        }
    } else if (--this->subtimer == 0) {
        sub_0802ACDC(this, 4);
    }
}
#else
void sub_0802AB40(Entity* this) {
    sub_0802AC40(this);
    switch (this->field_0x78.HALF.LO) {
        case 0:
            if (this->z.HALF.HI) {
                if (--this->field_0x78.HALF.HI == 0) {
                    this->field_0x78.HALF.HI = 4;
                    this->z.HALF.HI++;
                }
            } else {
                this->field_0x78.HALF.LO = 1;
                this->field_0x78.HALF.HI = 0x30;
                this->direction = sub_08049F84(this, 0);
            }
            break;
        case 1:
            if (--this->field_0x78.HALF.HI == 0) {
                this->field_0x78.HALF.LO = 2;
                this->field_0x78.HALF.HI = 4;
            } else if ((this->field_0x78.HALF.HI & 7) == 0) {
                this->direction = sub_08049F84(this, 0);
            }
            break;
        case 2:
            if (-0x30 < this->z.HALF.HI) {
                if (--this->field_0x78.HALF.HI == 0) {
                    this->field_0x78.HALF.HI = 4;
                    this->z.HALF.HI--;
                    sub_0802ACDC(this, 4);
                }
            } else {
                this->action = 5;
                this->speed = 0;
                InitializeAnimation(this, this->type + 1);
            }
            break;
    }
}
#endif

void sub_0802AC08(Entity* this) {
    if (this->frame & ANIM_DONE) {
        this->action = 2;
        this->subAction = 0;
        this->timer = 64;
        this->speed = 0xc0;
        sub_0802ACDC(this, 8);
        sub_0802ADDC(this);
    }
    GetNextFrame(this);
}

void sub_0802AC40(Entity* this) {
    GetNextFrame(this);
    LinearMoveUpdate(this);
    if (this->field_0x7a.HALF.LO) {
        if (!sub_0802B234(this)) {
            this->field_0x7a.HALF.LO = 0;
            this->spritePriority.b1 = 0;
#ifndef EU
        } else {
            if (this->z.HALF.HI == 0) {
                if (this->spritePriority.b1 != 1) {
                    this->spritePriority.b1 = 1;
                }
            } else {
                if (this->spritePriority.b1 != 3) {
                    this->spritePriority.b1 = 3;
                }
            }
#endif
        }
    } else {
        if (sub_0802B234(this)) {
            this->field_0x7a.HALF.LO = 1;
#ifndef EU
            if (this->z.HALF.HI == 0) {
                this->spritePriority.b1 = 1;
            } else {
                this->spritePriority.b1 = 3;
            }
#else
            this->spritePriority.b1 = 3;
#endif
        }
    }
}

void sub_0802ACDC(Entity* this, u32 param_2) {
    u32 x;
    if (this->field_0x80.HALF.LO) {
        x = sub_080045B4(this, gRoomControls.scroll_x + 0x20, gRoomControls.scroll_y + 0x60);
    } else {
        x = sub_080045B4(this, gRoomControls.scroll_x + 0xd0, gRoomControls.scroll_y + 0x60);
    }
    sub_08004596(this, x);
    this->subtimer = param_2;
}

void sub_0802AD1C(Entity* this, u32 param_2) {
    Entity* ent = sub_08049DF4(1);
    if (ent != NULL) {
        u32 y = ent->y.HALF.HI - 0x18;
        u32 x = ent->x.HALF.HI;
        sub_08004596(this, sub_080045B4(this, x, y));
        this->subtimer = param_2;
    } else {
        sub_0802ACDC(this, param_2);
    }
}

void sub_0802AD54(Entity* this) {
    if (this->field_0x82.HWORD != 0) {
        if (gRoomControls.reload_flags != 0) {
            this->spriteSettings.draw = 0;
            DeleteEntity(this);
            return;
        }
        if (gRoomControls.origin_y > this->y.HALF.HI ||
            (gRoomControls.origin_y + gRoomControls.height + 0x20) < this->y.HALF.HI) {
            this->spriteSettings.draw = 0;
        } else {
            this->spriteSettings.draw = 1;
        }
    }
    if (this->field_0x80.HALF.HI) {
        if (this->child == NULL || this->child->next == NULL) {
            this->action = 4;
            this->timer = 192;
            this->subtimer = 4;
            this->field_0x80.HALF.LO ^= 1;
        }
    }
}

void sub_0802ADDC(Entity* this) {
    Entity* ent = CreateEnemy(BOMB_PEAHAT, this->type + 2);
    if (ent != NULL) {
        ent->type2 = !!sub_0802B234(this);
        ent->parent = this;
        this->child = ent;
        CopyPosition(this, ent);
#ifdef EU
        ent->z.HALF.HI += 8;
#endif
        this->field_0x80.HALF.HI = 1;
        if (this->type == 0) {
            this->field_0x7a.HALF.LO++;
        }
    }
}

void sub_0802AE24(Entity* this) {
    this->action = 1;
    this->timer = 240;
    this->zVelocity = Q_16_16(0.5);
    this->hitbox = (Hitbox*)&gUnk_080CD174;
    this->collisionFlags = 3;
    this->carryFlags = 0;
    this->gustJarFlags = 2;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.HI = 1;
    InitializeAnimation(this, 3);
}

#ifdef EU
void sub_0802AE68(Entity* this) {
    Entity* ent = this->parent;
    if (ent == NULL) {
        this->action = 3;
        this->spriteSettings.draw = 1;
        this->field_0x80.HALF.LO = 1;
    }

    if (ent->field_0x80.HALF.HI) {
        CopyPosition(ent, this);
        this->z.HALF.HI += 8;
        this->spriteSettings.draw = 0;
    } else {
        this->action = 3;
        this->field_0x80.HALF.LO = 1;
        this->spriteSettings.draw = 1;
        if (sub_0802B234(this)) {
            this->spritePriority.b1 = 3;
        } else {
            this->spritePriority.b1 = 0;
        }
        GetNextFrame(this);
    }
}
#else
void sub_0802AE68(Entity* this) {
    Entity* ent = sub_0802B250(this);
    if (ent == NULL) {
        this->action = 3;
        this->field_0x80.HALF.LO = 1;
        sub_0802B264(this);
    } else {
        if (ent->field_0x80.HALF.HI) {
            CopyPosition(ent, this);
            this->spriteSettings.draw = 0;
        } else {
            this->action = 3;
            this->field_0x80.HALF.LO = 1;
            sub_0802B264(this);
        }
    }
}
#endif

void sub_0802AEBC(Entity* this) {
    gUnk_080CD158[this->subAction](this);
}

void sub_0802AED4(Entity* this) {
    GetNextFrame(this);
    if (this->field_0x80.HALF.HI < 2) {
        if (BounceUpdate(this, Q_8_8(40.0)) == BOUNCE_INIT_NEXT) {
            this->field_0x80.HALF.HI++;
        }
    } else {
        if (!sub_0800442E(this)) {
            RegisterCarryEntity(this);
        }
    }
    if (this->type2 != 0 && this->field_0x80.HALF.HI) {
        this->timer = 0;
        this->subtimer = 1;
    }
}

void sub_0802AF28(Entity* this) {
    this->subAction = 1;
    sub_08079BD8(this);
    this->spritePriority.b1 = 2;
    GetNextFrame(this);
}

void sub_0802AF50(Entity* this) {
    GetNextFrame(this);
}

void sub_0802AF58(Entity* this) {
    GetNextFrame(this);
    this->spritePriority.b1 = 3;
}

void sub_0802AF74(Entity* this) {
    this->action = 3;
    this->subAction = 0;
    if (this->timer > 60) {
        this->timer = 60;
    }
    GetNextFrame(this);
}

void sub_0802AF94(Entity* this) {
    DeleteEntity(this);
}

void sub_0802AF9C(Entity* this) {
    GetNextFrame(this);
    if (--this->timer == 0) {
        if (this->parent->field_0x7a.HALF.LO) {
            this->parent->field_0x7a.HALF.LO--;
        }
        DeleteEntity(this);
    }
}

void sub_0802AFC8(Entity* this) {
    u32 subtimer = this->subtimer;
    u32 flag = 8;
    if (subtimer < 0x29) {
        u32 tmp, tmp2;
        flag = 4;
        if (this->field_0x82.HWORD & 0x8000) {
            this->field_0x82.HWORD -= 0x10;
        } else {
            this->field_0x82.HWORD += 0x10;
        }
        tmp = this->field_0x82.HWORD & 0xf0;
        if (tmp == 0 || tmp > 0x80) {
            this->field_0x82.HWORD ^= 0x8000;
        }
        tmp = this->field_0x82.HWORD & 0xf0;
        SetAffineInfo(this, 0x130 - tmp, 0x130 - tmp, 0);
    }
    if (this->subtimer & flag) {
        this->palette.b.b0 = this->palette.b.b4;
    } else {
        this->palette.b.b0 = 0;
    }
}

void sub_0802B048(Entity* this) {
    Entity* ent;
    u32 action;

    if (this->field_0x7a.HALF.HI) {
        if (gRoomControls.origin_y > this->y.HALF.HI ||
            (gRoomControls.origin_y + gRoomControls.height + 0x20) < this->y.HALF.HI) {
            COLLISION_OFF(this);
        } else {
            COLLISION_ON(this);
        }
    }

    ent = this->parent;
    if ((ent != NULL) && this->action == 1) {
        this->spriteRendering.b3 = ent->spriteRendering.b3;
        this->spritePriority.b0 = ent->spritePriority.b0;
        this->spriteOrientation.flipY = ent->spriteOrientation.flipY;
    }

    action = this->action;
    if (action != 4 && this->field_0x80.HALF.LO) {
        if (this->timer != 0) {
            if (--this->timer == 0) {
                this->subtimer = 80;
                this->field_0x82.HWORD = 0;
                this->spriteRendering.b0 = 3;
                SetAffineInfo(this, 0x100, 0x100, 0);
            }
        } else {
            if (this->subtimer) {
                if (--this->subtimer == 0) {
                    if (action == 2 && this->subAction == 1) {
                        gPlayerState.heldObject = 0;
                    }
                    sub_0805EC60(this);
                    this->action = 4;
                    this->hitbox = (Hitbox*)&gUnk_080CD17C;
                    this->timer = 15;
                    this->spriteSettings.draw = 0;
                    COLLISION_ON(this);
                    this->field_0x7a.HALF.HI = 0;
                    FreeCarryEntity(this);
                    if (this->parent->next != NULL) {
                        this->parent->field_0x80.HALF.HI = 0;
                    }
                    ent = CreateObjectWithParent(this, SMOKE_PARTICLE, 0, 0);
                    if (ent != NULL) {
                        this->collisionLayer = 1;
                    } else {
                        DeleteEntity(this);
                    }
                } else {
                    sub_0802AFC8(this);
                }
            }
        }
    }
}

void sub_0802B1A0(Entity* this) {
    this->action = 1;
    this->timer = 0;
    this->subtimer = 79;
    this->field_0x80.HALF.HI = 1;
    InitializeAnimation(this, 0);
}

#ifdef EU
void sub_0802B1BC(Entity* this) {
    Entity* ent;

    if (this->timer != 0) {
        this->timer--;
    }

    ent = this->parent;
    if (ent == NULL) {
        this->action = 2;
        this->spriteSettings.draw = 1;
    }

    if (ent->field_0x80.HALF.HI) {
        CopyPosition(ent, this);
        this->z.HALF.HI += 8;
    } else {
        this->action = 2;
        this->spriteSettings.draw = 1;
        if (sub_0802B234(this)) {
            this->spritePriority.b1 = 3;
        } else {
            this->spritePriority.b1 = 0;
        }

        GetNextFrame(this);
    }
}
#else
void sub_0802B1BC(Entity* this) {
    Entity* ent;

    if (this->timer != 0) {
        this->timer--;
    }

    ent = sub_0802B250(this);
    if (ent == NULL) {
        this->action = 2;
        sub_0802B264(this);
    } else {
        if (ent->field_0x80.HALF.HI) {
            CopyPosition(ent, this);
        } else {
            this->action = 2;
            sub_0802B264(this);
        }
    }
}
#endif

void sub_0802B204(Entity* this) {
    if (BounceUpdate(this, Q_8_8(40.0)) == BOUNCE_INIT_NEXT) {
        Entity* ent = CreateEnemy(BOBOMB, 1);
        if (ent != NULL) {
            CopyPosition(this, ent);
            ent->parent = this->parent;
        }
        DeleteThisEntity();
    }
}

bool32 sub_0802B234(Entity* this) {
    bool32 ret = FALSE;
    if (GetTileTypeByEntity(this) - 0x1c4 > 1)
        ret = TRUE;
    return ret;
}

#ifndef EU
Entity* sub_0802B250(Entity* this) {
    Entity* parent = this->parent;
    if ((parent != NULL) && (parent->next == NULL)) {
        parent = NULL;
    }
    return parent;
}

void sub_0802B264(Entity* this) {
    this->spriteSettings.draw = 1;
    if (sub_0802B234(this)) {
        this->spritePriority.b1 = 3;
    } else {

        this->spritePriority.b1 = 0;
    }
    GetNextFrame(this);
}
#endif

// clang-format off
void (*const BombPeahat_Functions[])(Entity*) = {
    BombPeahat_OnTick,
    BombPeahat_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    BombPeahat_OnGrabbed,
};

void (*const gUnk_080CD108[])(Entity*) = {
    sub_0802A924,
    sub_0802A9A8,
    sub_0802AA40,
    sub_0802AAC0,
    sub_0802AB40,
    sub_0802AC08,
};

void (*const gUnk_080CD120[])(Entity*) = {
    sub_0802AE24,
    sub_0802AE68,
    sub_0802AEBC,
    sub_0802AED4,
    sub_0802AF9C,
};

void (*const gUnk_080CD134[])(Entity*) = {
    sub_0802B1A0,
    sub_0802B1BC,
    sub_0802B204,
};

void (*const gUnk_080CD140[])(Entity*) = {
    sub_0802A8E0,
    sub_0802A8EC,
    sub_0802A8F4,
    sub_0802A8FC,
    nullsub_143,
    sub_0802A91C,
};

void (*const gUnk_080CD158[])(Entity*) = {
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
