/**
 * @file moldworm.c
 * @ingroup Enemies
 *
 * @brief Moldworm enemy
 */

#include "enemy.h"
#include "functions.h"

extern void SoundReqClipped(Entity*, u32);
extern bool32 sub_08023A38(u32);
extern void sub_08023990(Entity*, u32, u32);
extern void sub_08023A88(Entity*, u32);

void sub_080235BC(Entity*);
void sub_08023644(Entity*);
void sub_08023730(Entity*);
void sub_080237D8(Entity*);
void sub_0802390C(Entity*);
void sub_080239F0(Entity*);
bool32 sub_08023B38(Entity*);

extern const u8 gUnk_080B37A0[];

extern void (*const gUnk_080CBC38[])(Entity*);
extern void (*const gUnk_080CBC50[])(Entity*);
extern const s8 gUnk_080CBC70[];
extern const s8 gUnk_080CBC90[];
extern void (*const gUnk_080CBC98[])(Entity*);
extern void (*const gUnk_080CBCA8[])(Entity*);
extern const s8 gUnk_080CBCB8[];

NONMATCH("asm/non_matching/moldworm/Moldworm.inc", void Moldworm(Entity* this)) {
    u16 prevX = this->x.HALF.HI;
    u16 prevY = this->y.HALF.HI;

    if (this->type == 0) {
        if (this->action != 0) {
            sub_0802390C(this);
        }
        this->field_0x7c.BYTES.byte1 = this->field_0x7c.BYTES.byte0;
        EnemyFunctionHandler(this, gUnk_080CBC38);
    } else {
        if (this->parent->next) {
            if (this->type != 8) {
                sub_080235BC(this);
            } else {
                sub_08023730(this);
            }
        } else {
            DeleteEntity(this);
            return;
        }
    }

    if (this->parent->field_0x7c.BYTES.byte0 != this->parent->field_0x7c.BYTES.byte1 && this->child) {
        ((u8*)&this->child->field_0x78)[(this->parent->field_0x7c.BYTES.byte0 - 1) & 0xf] =
            (((this->x.HALF.HI - prevX + 8) & 0xf) << 4) | ((this->y.HALF.HI - prevY + 8U) & 0xf);
    }
}
END_NONMATCH

void sub_080230CC(Entity* this) {
    gUnk_080CBC50[this->action](this);
}

void sub_080230E4(Entity* this) {
    if (this->subAction == 0xff) {
        this->action = 7;
        this->actionDelay = 1;
        this->subAction = 0;
        this->hitType = 0x85;
        this->iframes = -8;
        this->field_0x7c.BYTES.byte3 = 0;
        this->field_0x7a.HALF.HI = 0;
        if (this->bitfield == 0x80 || this->bitfield == 0x9e) {
            this->type2 = 0;
            this->field_0x80.HALF.LO = 0x14;
        } else {
            this->type2 = 1;
            this->field_0x80.HALF.LO = 8;
        }
    }

    if (this->health == 0 && this->field_0x7c.BYTES.byte3 == 0 && this->action == 7) {
        CopyPosition(this, &gPlayerEntity);
        gPlayerEntity.flags = gPlayerEntity.flags | 0x80;
        gPlayerEntity.spriteSettings.draw = 1;
        gPlayerEntity.zVelocity = 0x18000;
        gPlayerEntity.direction = 0xff;
        gPlayerEntity.iframes = -0x14;
        gPlayerState.jump_status = 0x41;
        gPlayerState.flags &= 0xfff7ffff;
    }

    sub_0804AA30(this, gUnk_080CBC38);
}

void sub_080231A4(Entity* this) {
    this->field_0x7c.BYTES.byte0++;
    sub_08001324(this);
}

void nullsub_135(Entity* this) {
}

void sub_080231BC(Entity* this) {
    if (gEntCount < 0x40) {
        Entity* ent;

        ent = this->child = CreateEnemy(MOLDWORM, 1);
        ent->parent = this;

        ent = ent->child = CreateEnemy(MOLDWORM, 2);
        ent->parent = this;

        ent = ent->child = CreateEnemy(MOLDWORM, 3);
        ent->parent = this;

        ent = ent->child = CreateEnemy(MOLDWORM, 4);
        ent->parent = this;

        ent = ent->child = CreateEnemy(MOLDWORM, 5);
        ent->parent = this;

        ent = ent->child = CreateEnemy(MOLDWORM, 6);
        ent->parent = this;

        ent = ent->child = CreateEnemy(MOLDWORM, 7);
        ent->parent = this;

        ent->child = CreateEnemy(MOLDWORM, 8);
        *(Entity**)&ent->child->field_0x74 = ent;
        ent = ent->child;
        ent->parent = this;
        ent->child = NULL;
        sub_0804A720(this);
        this->action = 6;
        this->actionDelay = 0x1e;
        this->parent = this;
        this->field_0x78.HWORD = 0x1e;
        this->palette.b.b0 = 5;
        this->direction = Random() & 0x1f;
        this->animationState = Direction8ToAnimationState(Direction8RoundUp(this->direction));
        InitializeAnimation(this, this->animationState);
    }
}

void nullsub_136(Entity* this) {
}

void sub_08023288(Entity* this) {
    if (sub_08049FDC(this, 1) && (this->actionDelay++ & 0xf) == 0) {
        u32 idx = Random() & 0x1e;
        u32 i;

        for (i = 0; i < 0x10; i++) {
            u32 x = gPlayerEntity.x.HALF.HI + gUnk_080CBC70[idx + 0];
            u32 y = gPlayerEntity.y.HALF.HI + gUnk_080CBC70[idx + 1];
            if (sub_08023A38(GetTileTypeByPos(x, y, gPlayerEntity.collisionLayer))) {
                sub_08023990(this, x, y);
                return;
            }
            idx += 2;
            idx &= 0x1e;
        }
    }
}

void sub_08023330(Entity* this) {
    GetNextFrame(this);
    if (this->frame & 0x80) {
        this->action = 4;
        this->actionDelay = 0x19;
        COLLISION_ON(this);
        this->field_0x78.HWORD = 600;
        this->direction = Random() & 0x1c;
        this->animationState = this->direction >> 2;
        this->field_0x7a.HALF.HI = 0;
        this->field_0x7c.BYTES.byte3 = 0;
        sub_08023A88(this, this->animationState);
        CopyPosition(this, this->child);
        CreateFx(this, FX_ROCK, 0);
    }
}

void sub_08023A68(Entity*);
void sub_08023AB0(Entity*);

void sub_08023398(Entity* this) {
    this->field_0x7c.BYTES.byte0++;

    if (this->field_0x7c.BYTES.byte3 && sub_08049FDC(this, 1) == 0) {
        this->field_0x78.HWORD = 1;
    }

    if (--this->field_0x78.HWORD == 0) {
        if (sub_08023A38(GetTileTypeByEntity(this))) {
            this->action = 5;
            this->field_0x7c.BYTES.byte3 = 0;
            COLLISION_OFF(this);
            this->hitType = 0x85;
            this->child->actionDelay = 1;
            sub_08023A68(this);
            CreateFx(this, FX_ROCK, 0);
            return;
        }
        this->field_0x78.HWORD = 0x28;
    }

    if (this->field_0x7c.BYTES.byte3) {
        sub_08023AB0(this);
    }

    if (--this->actionDelay < 3) {
        if (this->actionDelay == 0)
            this->actionDelay = 25;
    } else {
        int prevX = this->x.WORD;
        int prevY = this->y.WORD;
        ProcessMovement(this);
        if (this->x.WORD == prevX && this->y.WORD == prevY) {
            this->field_0x7c.BYTES.byte0--;
        }

        if ((gRoomTransition.frameCount & 7) == 0) {
            u32 uVar4;

            sub_08004596(this, sub_08049F84(this, 1));
            uVar4 = Direction8ToAnimationState(Direction8RoundUp(this->direction));
            if (uVar4 != this->animationState) {
                this->animationState = uVar4;
                InitializeAnimation(this, uVar4 + this->field_0x7a.HALF.HI);
            }
        }
    }
}

void sub_080234A4(Entity* this) {
    this->field_0x7c.BYTES.byte0++;
    GetNextFrame(this);
    if (this->field_0x7c.BYTES.byte3) {
        this->action = 6;
        this->spriteSettings.draw = 0;
        this->field_0x78.HWORD = 300;
    }
}

void sub_080234D8(Entity* this) {
    if (--this->field_0x78.HWORD == 0) {
        this->action = 2;
        this->palette.b.b0 = 5;
        this->direction = Random() & 0x1f;
        this->animationState = Direction8ToAnimationState(Direction8RoundUp(this->direction));
        sub_08023A88(this, this->animationState);
    }
}

void sub_0802351C(Entity* this) {
    if (this->actionDelay != 0 && (this->type2 == 1 || gPlayerEntity.frameIndex == 0xff)) {
        this->actionDelay = 0;
        this->child->action = 3;
        this->child->field_0xf = this->field_0x80.HALF.LO;
        InitializeAnimation(this->child, this->child->animationState + 1);
        InitializeAnimation(this, this->animationState);
    }

    if (this->field_0x7c.BYTES.byte3 == 0) {
        if (this->type2 == 0) {
            gPlayerEntity.animationState = this->animationState & 7;
            gPlayerState.flags |= PL_MOLDWORM_CAPTURED;
            PositionRelative(this, &gPlayerEntity, 0, gUnk_080CBC90[this->animationState & 7] << 0x10);
            gPlayerEntity.spriteOffsetY = -gUnk_080CBC90[this->animationState & 7];
        }
    } else {
        this->action = 4;
    }
}

void sub_080235BC(Entity* this) {
    gUnk_080CBC98[this->action](this);
}

void sub_080235D4(Entity* this) {
    Entity* parent;

    this->action = 1;
    parent = this->parent;
    this->x.HALF.HI = parent->x.HALF.HI;
    this->y.HALF.HI = parent->y.HALF.HI;
    sub_080239F0(this);
    if (this->type == 1) {
        this->animationState = 0x10;
    } else {
        this->animationState = 0x12;
    }
    InitializeAnimation(this, this->animationState);
}

void sub_08023604(Entity* this) {
    if (((u8*)&this->field_0x78)[this->parent->field_0x7c.BYTES.byte0 & 0xf] != 0x88) {
        this->action = 2;
        this->actionDelay = 0;
        COLLISION_ON(this);
        this->spriteSettings.draw = 1;
        sub_08023644(this);
    }
}

void sub_08023644(Entity* this) {
    Entity* parent = this->parent;

    if (parent->animIndex == 0x17 && this->actionDelay != 0 && this->x.HALF.HI == parent->x.HALF.HI &&
        this->y.HALF.HI == parent->y.HALF.HI) {
        this->action = 1;
        COLLISION_OFF(this);
        this->spriteSettings.draw = 0;
        this->child->actionDelay = 1;
        sub_080239F0(this);
    }

    if (parent->field_0x7c.BYTES.byte0 != parent->field_0x7c.BYTES.byte1) {
        u8* tmp = &((u8*)&this->field_0x78)[parent->field_0x7c.BYTES.byte0 & 0xf];
        this->x.HALF.HI += (*tmp >> 4) - 8;
        this->y.HALF.HI += (*tmp & 0xf) - 8;
        this->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = parent->spriteRendering.b3;
        this->collisionLayer = parent->collisionLayer;
    }
}

void sub_080236F8(Entity* parent) {
    if (--parent->field_0xf == 0) {
        parent->action = 2;
        parent->child->action = 3;
        parent->child->field_0xf = parent->parent->field_0x80.HALF.LO;
        InitializeAnimation(parent->child, parent->child->animationState + 1);
        InitializeAnimation(parent, parent->animationState);
    }
}

void sub_08023730(Entity* this) {
    gUnk_080CBCA8[this->action](this);
}

void sub_08023748(Entity* this) {
    Entity* parent;

    this->action = 1;
    this->animationState = 20;
    parent = this->parent;
    this->x.HALF.HI = parent->x.HALF.HI;
    this->y.HALF.HI = parent->y.HALF.HI;
    sub_080239F0(this);
    sub_08023A68(this);
}

void sub_0802376C(Entity* this) {
    Entity* parent = this->parent;

    if (parent->spriteSettings.draw == 1 && parent->animIndex < 0x10) {
        this->spriteSettings.draw = 1;
        GetNextFrame(this);
    }

    if (((u8*)&this->field_0x78)[parent->field_0x7c.BYTES.byte0 & 0xf] != 0x88) {
        this->action = 2;
        this->actionDelay = 0;
        COLLISION_ON(this);
        this->parent->field_0x7c.BYTES.byte3 = 1;
        sub_08023A88(this, 20);
        sub_080237D8(this);
    }
}

void sub_080237D8(Entity* this) {
    Entity* parent = this->parent;

    if (parent->animIndex == 0x17 && this->actionDelay != 0 && this->x.HALF.HI == parent->x.HALF.HI &&
        this->y.HALF.HI == parent->y.HALF.HI) {
        this->action = 1;
        COLLISION_OFF(this);
        this->spriteSettings.draw = 0;
        parent->field_0x7c.BYTES.byte3 = 1;
        sub_080239F0(this);
        sub_08023A68(this);
    }

    if (parent->field_0x7c.BYTES.byte0 != parent->field_0x7c.BYTES.byte1) {
        u8* tmp = &((u8*)&this->field_0x78)[parent->field_0x7c.BYTES.byte0 & 0xf];
        this->x.HALF.HI += (*tmp >> 4) - 8;
        this->y.HALF.HI += (*tmp & 0xf) - 8;

        this->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = parent->spriteRendering.b3;
        this->collisionLayer = parent->collisionLayer;
    }
}

void sub_08023894(Entity* this) {
    if (--this->field_0xf == 0) {
        this->action = 2;
        this->parent->field_0x7c.BYTES.byte3 = 1;
        InitializeAnimation(this, this->animationState);
        if (this->parent->type2 == 0) {
            gPlayerState.flags |= PL_MOLDWORM_RELEASED;
            gPlayerEntity.x.HALF.HI = this->x.HALF.HI;
            gPlayerEntity.y.HALF.HI = this->y.HALF.HI;
            gPlayerEntity.direction = DirectionRoundUp(GetFacingDirection(*(Entity**)&this->field_0x74, this));
            gPlayerEntity.animationState = gPlayerEntity.direction >> 2;
            gPlayerEntity.iframes = 12;
            ModHealth(-0x10);
            SoundReqClipped(&gPlayerEntity, 0x7a);
        }
    }
}

void sub_0802390C(Entity* this) {
    if (this->bitfield & 0x80) {
        Entity* ent = this->child;
        do {
            ent->iframes = this->iframes;
        } while (ent = ent->child, ent != NULL);
    } else {
        Entity* ent = this->child;
        do {
            if (ent->bitfield & 0x80) {
                u8 bVar2 = 0xff - ent->health;
                if (bVar2 != 0) {
                    u32 tmp;
                    ent->health = 0xff;
                    tmp = (u8)ent->iframes;
                    if (this->health >= bVar2) {
                        this->health -= bVar2;
                    } else {
                        this->health = 0;
                    }

                    ent = this;
                    do {
                        ent->iframes = tmp;
                    } while (ent = ent->child, ent != NULL);
                    break;
                }
            }
        } while (ent = ent->child, ent != NULL);
    }
}

void sub_08023990(Entity* this, u32 param_2, u32 param_3) {
    Entity* ent;

    this->action = 3;
    this->spriteSettings.draw = 1;
    this->palette.b.b0 = 0x5;
    this->palette.b.b4 = 0x5;
    this->spritePriority.b0 = 7;
    this->x.HALF.HI = param_2;
    this->y.HALF.HI = param_3;
    this->collisionLayer = gPlayerEntity.collisionLayer;
    UpdateSpriteForCollisionLayer(this);
    InitializeAnimation(this, 0x16);

    ent = this->child;
    do {
        sub_080239F0(ent);
        CopyPosition(this, ent);
    } while (ent = ent->child, ent != NULL);
}

/* TODO: fix struct */
ASM_FUNC("asm/non_matching/moldworm/sub_080239F0.inc", void sub_080239F0(Entity* this))

bool32 sub_08023A38(u32 unk) {
    if (unk == 0x1a || unk == 0x29) {
        return TRUE;
    } else {
        unk = gUnk_080B37A0[unk];
        if (unk == 9 || unk == 11 || unk == 10 || unk == 12) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

void sub_08023A68(Entity* this) {
    ChangeObjPalette(this, 5);
    this->spritePriority.b0 = 7;
    InitializeAnimation(this, 0x17);
}

void sub_08023A88(Entity* this, u32 unk) {
    ChangeObjPalette(this, 0x22);
    this->spritePriority.b0 = 4;
    InitializeAnimation(this, unk);
}

void sub_08023AB0(Entity* this) {
    if (this->field_0x7a.HALF.HI == 8) {
        if (this->field_0x7c.BYTES.byte2) {
            this->field_0x7c.BYTES.byte2--;
        } else if (!sub_08023B38(this) || 0x1d >= this->field_0x78.HWORD) {
            this->hitType = 0x85;
            this->field_0x7a.HALF.HI = 0;
            this->field_0x7c.BYTES.byte2 = 30;
            InitializeAnimation(this, this->animationState);
        }
    } else if (this->field_0x7c.BYTES.byte2) {
        this->field_0x7c.BYTES.byte2--;
    } else if (this->field_0x78.HWORD >= 90 && sub_08023B38(this)) {
        this->hitType = 0x87;
        this->field_0x7a.HALF.HI = 8;
        this->field_0x7c.BYTES.byte2 = 10;
        InitializeAnimation(this, this->animationState + 8);
    }
}

ASM_FUNC("asm/non_matching/moldworm/sub_08023B38.inc", bool32 sub_08023B38(Entity* this))

// clang-format off
void (*const gUnk_080CBC38[])(Entity*) = {
    sub_080230CC,
    sub_080230E4,
    sub_080231A4,
    sub_0804A7D4,
    sub_08001242,
    nullsub_135,
};

void (*const gUnk_080CBC50[])(Entity*) = {
    sub_080231BC,
    nullsub_136,
    sub_08023288,
    sub_08023330,
    sub_08023398,
    sub_080234A4,
    sub_080234D8,
    sub_0802351C,
};

const s8 gUnk_080CBC70[] = {
    0x00, 0xd0, 0x00, 0x30,
    0xd0, 0x00, 0x30, 0x00,
    0xe0, 0xe0, 0xe0, 0x20,
    0x20, 0xe0, 0x20, 0x20,
    0xf0, 0xe0, 0x10, 0xe0,
    0xf0, 0x20, 0x10, 0x20,
    0xe0, 0xf0, 0x20, 0xf0,
    0xe0, 0x10, 0x20, 0x10,
};

const s8 gUnk_080CBC90[] = {
    0xff, 0xff, 0x01, 0x01, 0x01, 0x01, 0x01, 0xff, 
};

void (*const gUnk_080CBC98[])(Entity*) = {
    sub_080235D4,
    sub_08023604,
    sub_08023644,
    sub_080236F8,
};

void (*const gUnk_080CBCA8[])(Entity*) = {
    sub_08023748,
    sub_0802376C,
    sub_080237D8,
    sub_08023894,
};

const s8 gUnk_080CBCB8[] = {
    0x00, 0xe4, 0x14, 0xec,
    0x1c, 0x00, 0x14, 0x14,
    0x00, 0x1c, 0xec, 0x14,
    0xe4, 0x00, 0xec, 0xec,
};
// clang-format on
