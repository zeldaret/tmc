#include "global.h"
#include "entity.h"
#include "functions.h"
#include "player.h"

extern void sub_08078954(Entity*);
extern u32 sub_0800442E(Entity*);
extern void sub_08078930(Entity*);
extern s32 sub_080012DC(Entity*);
extern u32 GetNextFunction(Entity*);
extern void sub_0806F4E8(Entity*);
extern Entity* sub_08049DF4(u32);
extern void sub_08079BD8(Entity*);
extern u32 GetTileTypeByEntity(Entity*);

void sub_0802AD1C(Entity*, u32);
void sub_0802AD54(Entity*);
void sub_0802B048(Entity*);
void sub_0802ACDC(Entity*, u32);
void sub_0802ADDC(Entity*);
void sub_0802AC40(Entity*);
bool32 sub_0802B234(Entity*);
Entity* sub_0802B250(Entity*);
void sub_0802B264(Entity*);

extern void (*const gUnk_080012C8[])(Entity*);

extern void (*const gUnk_080CD0F0[])(Entity*);
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
        gUnk_080CD0F0[GetNextFunction(this)](this);
    }
}

void sub_0802A84C(Entity* this) {
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

void sub_0802A8AC(Entity* this) {
    this->field_0x80.HALF.HI = 0;
    if (this->type < 2) {
        InitializeAnimation(this, 0);
    }
}

void sub_0802A8C8(Entity* this) {
    gUnk_080CD140[this->previousActionFlag](this);
}

void sub_0802A8E0(Entity* this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 60;
}

void sub_0802A8EC(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0802A8F4(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0802A8FC(Entity* this) {
    if ((gPlayerState.field_0x1c & 0xf) == 0) {
        this->currentHealth = gPlayerState.field_0x1c & 0xf;
    }
}

void nullsub_143(Entity* this) {
    /* ... */
}

void sub_0802A91C(Entity* this) {
    this->currentHealth = 0;
}

void sub_0802A924(Entity* this) {
    this->action = 1;
    this->previousActionFlag = 0;
    this->actionDelay = 0;
    this->field_0xf = 0;
    this->hitbox = (Hitbox*)&gUnk_080CD16C;
    this->height.HALF.HI = -0x30;
    this->field_0x80.HALF.LO = Random() & 1;
    this->field_0x82.HWORD = 0;
    this->field_0x7a.HALF.HI = 0;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.LO = 0;
    this->field_0x78.HALF.LO = 0;
    this->field_0x78.HALF.HI = 0;
    this->collisionLayer = 3;
    this->spriteOrientation.flipY = 1;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 1;
    InitializeAnimation(this, this->type + 1);
}

void sub_0802A9A8(Entity* this) {
    if (this->field_0xf) {
        this->field_0xf--;
    } else {
        if (this->actionDelay) {
            if (--this->actionDelay == 0) {
                this->action = 2;
                this->previousActionFlag = 0;
                this->actionDelay = 0x40;
                sub_0802ACDC(this, 8);
            }
        } else {
            if (gRoomControls.unk2 != 0) {
                return;
            }
            this->spriteSettings.b.draw = 1;
            this->field_0x82.HWORD = 1;
            if (this->field_0x80.HALF.LO) {
                this->x.HALF.HI = gRoomControls.roomScrollX - 0x10;
                this->direction = 8;
            } else {
                this->x.HALF.HI = gRoomControls.roomScrollX + 0x100;
                this->direction = 0x18;
            }
            this->y.HALF.HI = gRoomControls.roomScrollY + 0x40;
            this->actionDelay = 0x80;
            sub_0802ADDC(this);
        }
        sub_0802AC40(this);
    }
}

void sub_0802AA40(Entity* this) {
    sub_0802AC40(this);
    if (--this->field_0xf == 0) {
        sub_0802ACDC(this, 8);
        this->field_0x7a.HALF.HI++;
    }
    if (this->actionDelay) {
        this->actionDelay--;
    } else {
        Entity* ent = this->attachedEntity;
        if (ent) {
            if (ent->next == NULL) {
                this->attachedEntity = NULL;
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
                    ent->actionDelay = 0x96;
                }
            }
        }
    }
}

void sub_0802AAC0(Entity* this) {
    sub_0802AC40(this);
    if (--this->field_0xf == 0) {
        sub_0802AD1C(this, 4);
    }

    if (this->field_0x80.HALF.HI) {
        Entity* ent = this->attachedEntity;
        if (ent == NULL) {
            this->field_0x80.HALF.HI = 0;
        } else if (ent->next == NULL) {
            this->field_0x80.HALF.HI = 0;
            this->attachedEntity = NULL;
        } else if (ent->actionDelay == 0 && ent->field_0xf < 0x51) {
            this->field_0x80.HALF.HI = 0;
        }
    } else {
        this->action = 4;
        this->actionDelay = 0xc0;
        this->field_0xf = 4;
        this->field_0x80.HALF.LO ^= 1;
        this->field_0x78.HALF.LO = 0;
        this->field_0x78.HALF.HI = 4;
        this->direction = 0xff;
        InitializeAnimation(this, 0);
    }
}

void sub_0802AB40(Entity* this) {
    sub_0802AC40(this);
    switch (this->field_0x78.HALF.LO) {
        case 0:
            if (this->height.HALF.HI) {
                if (--this->field_0x78.HALF.HI == 0) {
                    this->field_0x78.HALF.HI = 4;
                    this->height.HALF.HI++;
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
            if (-0x30 < this->height.HALF.HI) {
                if (--this->field_0x78.HALF.HI == 0) {
                    this->field_0x78.HALF.HI = 4;
                    this->height.HALF.HI--;
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

void sub_0802AC08(Entity* this) {
    if (this->frames.all & 0x80) {
        this->action = 2;
        this->previousActionFlag = 0;
        this->actionDelay = 0x40;
        this->speed = 0xc0;
        sub_0802ACDC(this, 8);
        sub_0802ADDC(this);
    }
    GetNextFrame(this);
}

void sub_0802AC40(Entity* this) {
    GetNextFrame(this);
    sub_0806F69C(this);
    if (this->field_0x7a.HALF.LO) {
        if (sub_0802B234(this) == 0) {
            this->field_0x7a.HALF.LO = 0;
            this->spritePriority.b1 = 0;
        } else {
            if (this->height.HALF.HI == 0) {
                if (this->spritePriority.b1 != 1) {
                    this->spritePriority.b1 = 1;
                }
            } else {
                if (this->spritePriority.b1 != 3) {
                    this->spritePriority.b1 = 3;
                }
            }
        }
    } else {
        if (sub_0802B234(this)) {
            this->field_0x7a.HALF.LO = 1;
            if (this->height.HALF.HI == 0) {
                this->spritePriority.b1 = 1;
            } else {
                this->spritePriority.b1 = 3;
            }
        }
    }
}

void sub_0802ACDC(Entity* this, u32 param_2) {
    u32 x;
    if (this->field_0x80.HALF.LO) {
        x = sub_080045B4(this, gRoomControls.roomScrollX + 0x20, gRoomControls.roomScrollY + 0x60);
    } else {
        x = sub_080045B4(this, gRoomControls.roomScrollX + 0xd0, gRoomControls.roomScrollY + 0x60);
    }
    sub_08004596(this, x);
    this->field_0xf = param_2;
}

void sub_0802AD1C(Entity* this, u32 param_2) {
    Entity* ent = sub_08049DF4(1);
    if (ent) {
        u32 y = ent->y.HALF.HI - 0x18;
        u32 x = ent->x.HALF.HI;
        sub_08004596(this, sub_080045B4(this, x, y));
        this->field_0xf = param_2;
    } else {
        sub_0802ACDC(this, param_2);
    }
}

void sub_0802AD54(Entity* this) {
    if (this->field_0x82.HWORD != 0) {
        if (gRoomControls.unk2 != 0) {
            this->spriteSettings.b.draw = 0;
            DeleteEntity(this);
            return;
        }
        if (gRoomControls.roomOriginY > this->y.HALF.HI ||
            (gRoomControls.roomOriginY + gRoomControls.height + 0x20) < this->y.HALF.HI) {
            this->spriteSettings.b.draw = 0;
        } else {
            this->spriteSettings.b.draw = 1;
        }
    }
    if (this->field_0x80.HALF.HI) {
        if (this->attachedEntity == NULL || this->attachedEntity->next == NULL) {
            this->action = 4;
            this->actionDelay = 0xc0;
            this->field_0xf = 4;
            this->field_0x80.HALF.LO ^= 1;
        }
    }
}

void sub_0802ADDC(Entity* this) {
    Entity* ent = CreateEnemy(0x1b, this->type + 2);
    if (ent != NULL) {
        ent->type2 = !!sub_0802B234(this);
        ent->parent = this;
        this->attachedEntity = ent;
        CopyPosition(this, ent);
        this->field_0x80.HALF.HI = 1;
        if (this->type == 0) {
            this->field_0x7a.HALF.LO++;
        }
    }
}

void sub_0802AE24(Entity* this) {
    this->action = 1;
    this->actionDelay = 0xf0;
    this->field_0x20 = 0x8000;
    this->hitbox = (Hitbox*)&gUnk_080CD174;
    this->field_0x3c = 3;
    this->field_0x16 = 0;
    this->field_0x1c = 2;
    this->field_0x80.HALF.HI = 0;
    this->field_0x7a.HALF.HI = 1;
    InitializeAnimation(this, 3);
}

void sub_0802AE68(Entity* this) {
    Entity* ent = sub_0802B250(this);
    if (ent == 0) {
        this->action = 3;
        this->field_0x80.HALF.LO = 1;
        sub_0802B264(this);
    } else {
        if (ent->field_0x80.HALF.HI) {
            CopyPosition(ent, this);
            this->spriteSettings.b.draw = 0;
        } else {
            this->action = 3;
            this->field_0x80.HALF.LO = 1;
            sub_0802B264(this);
        }
    }
}

void sub_0802AEBC(Entity* this) {
    gUnk_080CD158[this->previousActionFlag](this);
}

void sub_0802AED4(Entity* this) {
    GetNextFrame(this);
    if (this->field_0x80.HALF.HI < 2) {
        if (sub_080044EC(this, 0x2800) == 1) {
            this->field_0x80.HALF.HI++;
        }
    } else {
        if (!sub_0800442E(this)) {
            sub_08078930(this);
        }
    }
    if (this->type2 != 0 && this->field_0x80.HALF.HI) {
        this->actionDelay = 0;
        this->field_0xf = 1;
    }
}

void sub_0802AF28(Entity* this) {
    this->previousActionFlag = 1;
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
    this->previousActionFlag = 0;
    if (this->actionDelay > 60) {
        this->actionDelay = 60;
    }
    GetNextFrame(this);
}

void sub_0802AF94(Entity* this) {
    DeleteEntity(this);
}

void sub_0802AF9C(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        if (this->parent->field_0x7a.HALF.LO) {
            this->parent->field_0x7a.HALF.LO--;
        }
        DeleteEntity(this);
    }
}

#if NON_MATCHING
void sub_0802AFC8(Entity* this) {
    u32 flag = 8;
    if (this->field_0xf < 0x29) {
        u32 tmp;

        flag = 4;
        if (this->field_0x82.HWORD & 0x8000) {
            this->field_0x82.HWORD -= 0x10;
        } else {
            this->field_0x82.HWORD += 0x10;
        }
        if (0x7f < (this->field_0x82.HWORD & 0xf0) - 1) {
            this->field_0x82.HWORD ^= 0x8000;
        }

        tmp = 0x130 - (this->field_0x82.HWORD & 0xf0);
        sub_0805EC9C(this, tmp, tmp, 0);
    }

    if (this->field_0xf & flag) {
        this->palette.b.b0 = 0;
    } else {
        this->palette.b.b0 = this->palette.b.b4;
    }
}
#else
NAKED
void sub_0802AFC8(Entity* this) {
    asm(".include \"asm/non_matching/bombPeahat/sub_0802AFC8.inc\"");
}
#endif

void sub_0802B048(Entity* this) {
    Entity* ent;
    u32 action;

    if (this->field_0x7a.HALF.HI) {
        if (gRoomControls.roomOriginY > this->y.HALF.HI ||
            (gRoomControls.roomOriginY + gRoomControls.height + 0x20) < this->y.HALF.HI) {
            this->flags &= ~0x80;
        } else {
            this->flags |= 0x80;
        }
    }

    ent = this->parent;
    if (ent && this->action == 1) {
        this->spriteRendering.b3 = ent->spriteRendering.b3;
        this->spritePriority.b0 = ent->spritePriority.b0;
        this->spriteOrientation.flipY = ent->spriteOrientation.flipY;
    }

    action = this->action;
    if (action != 4 && this->field_0x80.HALF.LO) {
        if (this->actionDelay) {
            if (--this->actionDelay == 0) {
                this->field_0xf = 0x50;
                this->field_0x82.HWORD = 0;
                this->spriteRendering.b0 = 3;
                sub_0805EC9C(this, 0x100, 0x100, 0);
            }
        } else {
            if (this->field_0xf) {
                if (--this->field_0xf == 0) {
                    if (action == 2 && this->previousActionFlag == 1) {
                        gPlayerState.heldObject = 0;
                    }
                    sub_0805EC60(this);
                    this->action = 4;
                    this->hitbox = (Hitbox*)&gUnk_080CD17C;
                    this->actionDelay = 0xf;
                    this->spriteSettings.b.draw = 0;
                    this->flags |= 0x80;
                    this->field_0x7a.HALF.HI = 0;
                    sub_08078954(this);
                    if (this->parent->next) {
                        this->parent->field_0x80.HALF.HI = 0;
                    }
                    ent = CreateObjectWithParent(this, 0x20, 0, 0);
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
    this->actionDelay = 0;
    this->field_0xf = 0x4f;
    this->field_0x80.HALF.HI = 1;
    InitializeAnimation(this, 0);
}

void sub_0802B1BC(Entity* this) {
    Entity* ent;

    if (this->actionDelay) {
        this->actionDelay--;
    }

    ent = sub_0802B250(this);
    if (ent == 0) {
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

void sub_0802B204(Entity* this) {
    if (sub_080044EC(this, 0x2800) == 1) {
        Entity* ent = CreateEnemy(0x22, 1);
        if (ent) {
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

Entity* sub_0802B250(Entity* this) {
    Entity* parent = this->parent;
    if (parent && parent->next == NULL) {
        parent = NULL;
    }
    return parent;
}

void sub_0802B264(Entity* this) {
    this->spriteSettings.b.draw = 1;
    if (sub_0802B234(this)) {
        this->spritePriority.b1 = 3;
    } else {

        this->spritePriority.b1 = 0;
    }
    GetNextFrame(this);
}

// clang-format off
void (*const gUnk_080CD0F0[])(Entity*) = {
    sub_0802A84C,
    sub_0802A8AC,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    sub_0802A8C8,
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
    0x00, 0xFB, 0x05, 0x03, 0x03, 0x05, 0x06, 0x06,
};

const Hitbox gUnk_080CD174 = {
    0x00, 0x00, 0x06, 0x00, 0x00, 0x06, 0x04, 0x04,
};

const Hitbox gUnk_080CD17C = {
    0x00, 0x00, 0x04, 0x00, 0x00, 0x04, 0x16, 0x16,
};
// clang-format on
