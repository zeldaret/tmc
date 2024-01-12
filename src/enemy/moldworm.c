/**
 * @file moldworm.c
 * @ingroup Enemies
 *
 * @brief Moldworm enemy
 */
#include "collision.h"
#include "enemy.h"
#include "functions.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ Entity* unk_74;
    union {
        /*0x78*/ u16 HWORD;
        struct {
            /*0x78*/ u8 unk_78;
            /*0x79*/ u8 unk_79;
        } PACKED split;
    } PACKED unk_78;
    /*0x7a*/ u8 unk_7a;
    /*0x7b*/ u8 unk_7b;
    /*0x7c*/ u8 unk_7c;
    /*0x7d*/ u8 unk_7d;
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unk_7f;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unk_81;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unk_85;
    /*0x86*/ u8 unk_86;
    /*0x87*/ u8 unk_87;
} MoldwormEntity;

extern void SoundReqClipped(Entity*, u32);
extern bool32 sub_08023A38(u32 tileType);

void sub_08023990(MoldwormEntity*, u32, u32);
void sub_08023A88(MoldwormEntity*, u32);
void sub_080235BC(MoldwormEntity*);
void sub_08023644(MoldwormEntity*);
void sub_08023730(MoldwormEntity*);
void sub_080237D8(MoldwormEntity*);
void sub_0802390C(MoldwormEntity*);
void sub_080239F0(MoldwormEntity*);
bool32 sub_08023B38(MoldwormEntity*);
void sub_08023A68(MoldwormEntity*);
void sub_08023AB0(MoldwormEntity*);

extern void (*const Moldworm_Functions[])(MoldwormEntity*);
extern void (*const gUnk_080CBC50[])(MoldwormEntity*);
extern const s8 gUnk_080CBC70[];
extern const s8 gUnk_080CBC90[];
extern void (*const gUnk_080CBC98[])(MoldwormEntity*);
extern void (*const gUnk_080CBCA8[])(MoldwormEntity*);
extern const s8 gUnk_080CBCB8[];

void Moldworm(MoldwormEntity* this) {
    u16 prevX = super->x.HALF.HI;
    u16 prevY = super->y.HALF.HI;

    if (super->type == 0) {
        if (super->action != 0) {
            sub_0802390C(this);
        }
        this->unk_7d = this->unk_7c;
        EnemyFunctionHandler(super, (EntityActionArray)Moldworm_Functions);
    } else {
        if (super->parent->next != NULL) {
            if (super->type != 8) {
                sub_080235BC(this);
            } else {
                sub_08023730(this);
            }
        } else {
            DeleteEntity(super);
            return;
        }
    }

    if (((MoldwormEntity*)super->parent)->unk_7c != ((MoldwormEntity*)super->parent)->unk_7d && super->child) {
        u32 temp = (((MoldwormEntity*)super->parent)->unk_7c - 1) & 0xf;
        u8* ptr = (u8*)&((MoldwormEntity*)super->child)->unk_78.split.unk_78 + temp;
        *ptr = (((super->x.HALF.HI - prevX + 8) & 0xf) << 4) | ((super->y.HALF.HI - prevY + 8U) & 0xf);
    }
}

void Moldworm_OnTick(MoldwormEntity* this) {
    gUnk_080CBC50[super->action](this);
}

void Moldworm_OnCollision(MoldwormEntity* this) {
    if (super->subAction == 0xff) {
        super->action = 7;
        super->timer = 1;
        super->subAction = 0;
        super->hitType = 0x85;
        super->iframes = -8;
        this->unk_7f = 0;
        this->unk_7b = 0;
        if (super->contactFlags == CONTACT_NOW || super->contactFlags == (CONTACT_NOW | 0x1e)) {
            super->type2 = 0;
            this->unk_80 = 0x14;
        } else {
            super->type2 = 1;
            this->unk_80 = 8;
        }
    }

    if (super->health == 0 && this->unk_7f == 0 && super->action == 7) {
        CopyPosition(super, &gPlayerEntity.base);
        gPlayerEntity.base.flags |= ENT_COLLIDE;
        gPlayerEntity.base.spriteSettings.draw = 1;
        gPlayerEntity.base.zVelocity = Q_16_16(1.5);
        gPlayerEntity.base.direction = 0xff;
        gPlayerEntity.base.iframes = -0x14;
        gPlayerState.jump_status = 0x41;
        gPlayerState.flags &= ~PL_MOLDWORM_CAPTURED;
    }

    EnemyFunctionHandlerAfterCollision(super, Moldworm_Functions);
}

void Moldworm_OnKnockback(MoldwormEntity* this) {
    this->unk_7c++;
    GenericKnockback(super);
}

void Moldworm_OnGrabbed(MoldwormEntity* this) {
}

void sub_080231BC(MoldwormEntity* this) {
    if (gEntCount < 0x40) {
        Entity* ent;

        ent = super->child = CreateEnemy(MOLDWORM, 1);
        ent->parent = super;

        ent = ent->child = CreateEnemy(MOLDWORM, 2);
        ent->parent = super;

        ent = ent->child = CreateEnemy(MOLDWORM, 3);
        ent->parent = super;

        ent = ent->child = CreateEnemy(MOLDWORM, 4);
        ent->parent = super;

        ent = ent->child = CreateEnemy(MOLDWORM, 5);
        ent->parent = super;

        ent = ent->child = CreateEnemy(MOLDWORM, 6);
        ent->parent = super;

        ent = ent->child = CreateEnemy(MOLDWORM, 7);
        ent->parent = super;

        ent->child = CreateEnemy(MOLDWORM, 8);
        ((MoldwormEntity*)ent->child)->unk_74 = ent;
        ent = ent->child;
        ent->parent = super;
        ent->child = NULL;
        sub_0804A720(super);
        super->action = 6;
        super->timer = 30;
        super->parent = super;
        this->unk_78.HWORD = 0x1e;
        super->palette.b.b0 = 5;
        super->direction = Random() & 0x1f;
        super->animationState = Direction8ToAnimationState(Direction8RoundUp(super->direction));
        InitializeAnimation(super, super->animationState);
    }
}

void nullsub_136(MoldwormEntity* this) {
}

void sub_08023288(MoldwormEntity* this) {
    if (sub_08049FDC(super, 1) && (super->timer++ & 0xf) == 0) {
        u32 idx = Random() & 0x1e;
        u32 i;

        for (i = 0; i < 0x10; i++) {
            u32 x = gPlayerEntity.base.x.HALF.HI + gUnk_080CBC70[idx + 0];
            u32 y = gPlayerEntity.base.y.HALF.HI + gUnk_080CBC70[idx + 1];
            if (sub_08023A38(GetTileTypeAtWorldCoords(x, y, gPlayerEntity.base.collisionLayer))) {
                sub_08023990(this, x, y);
                return;
            }
            idx += 2;
            idx &= 0x1e;
        }
    }
}

void sub_08023330(MoldwormEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 4;
        super->timer = 25;
        COLLISION_ON(super);
        this->unk_78.HWORD = 600;
        super->direction = Random() & 0x1c;
        super->animationState = super->direction >> 2;
        this->unk_7b = 0;
        this->unk_7f = 0;
        sub_08023A88(this, super->animationState);
        CopyPosition(super, super->child);
        CreateFx(super, FX_ROCK, 0);
    }
}

void sub_08023398(MoldwormEntity* this) {
    this->unk_7c++;

    if (this->unk_7f && !sub_08049FDC(super, 1)) {
        this->unk_78.HWORD = 1;
    }

    if (--this->unk_78.HWORD == 0) {
        if (sub_08023A38(GetTileTypeAtEntity(super))) {
            super->action = 5;
            this->unk_7f = 0;
            COLLISION_OFF(super);
            super->hitType = 0x85;
            super->child->timer = 1;
            sub_08023A68(this);
            CreateFx(super, FX_ROCK, 0);
            return;
        }
        this->unk_78.HWORD = 0x28;
    }

    if (this->unk_7f) {
        sub_08023AB0(this);
    }

    if (--super->timer < 3) {
        if (super->timer == 0)
            super->timer = 25;
    } else {
        int prevX = super->x.WORD;
        int prevY = super->y.WORD;
        ProcessMovement0(super);
        if (super->x.WORD == prevX && super->y.WORD == prevY) {
            this->unk_7c--;
        }

        if ((gRoomTransition.frameCount & 7) == 0) {
            u32 uVar4;

            sub_08004596(super, sub_08049F84(super, 1));
            uVar4 = Direction8ToAnimationState(Direction8RoundUp(super->direction));
            if (uVar4 != super->animationState) {
                super->animationState = uVar4;
                InitializeAnimation(super, uVar4 + this->unk_7b);
            }
        }
    }
}

void sub_080234A4(MoldwormEntity* this) {
    this->unk_7c++;
    GetNextFrame(super);
    if (this->unk_7f) {
        super->action = 6;
        super->spriteSettings.draw = 0;
        this->unk_78.HWORD = 300;
    }
}

void sub_080234D8(MoldwormEntity* this) {
    if (--this->unk_78.HWORD == 0) {
        super->action = 2;
        super->palette.b.b0 = 5;
        super->direction = Random() & 0x1f;
        super->animationState = Direction8ToAnimationState(Direction8RoundUp(super->direction));
        sub_08023A88(this, super->animationState);
    }
}

void sub_0802351C(MoldwormEntity* this) {
    if ((super->timer != 0) && ((super->type2 == 1) || (gPlayerEntity.base.frameIndex == 0xff))) {
        super->timer = 0;
        super->child->action = 3;
        super->child->subtimer = this->unk_80;
        InitializeAnimation(super->child, super->child->animationState + 1);
        InitializeAnimation(super, super->animationState);
    }

    if (this->unk_7f == 0) {
        if (super->type2 == 0) {
            gPlayerEntity.base.animationState = super->animationState & 7;
            gPlayerState.flags |= PL_MOLDWORM_CAPTURED;
            PositionRelative(super, &gPlayerEntity.base, 0, Q_16_16(gUnk_080CBC90[super->animationState & 7]));
            gPlayerEntity.base.spriteOffsetY = -gUnk_080CBC90[super->animationState & 7];
        }
    } else {
        super->action = 4;
    }
}

void sub_080235BC(MoldwormEntity* this) {
    gUnk_080CBC98[super->action](this);
}

void sub_080235D4(MoldwormEntity* this) {
    Entity* parent;

    super->action = 1;
    parent = super->parent;
    super->x.HALF.HI = parent->x.HALF.HI;
    super->y.HALF.HI = parent->y.HALF.HI;
    sub_080239F0(this);
    if (super->type == 1) {
        super->animationState = 0x10;
    } else {
        super->animationState = 0x12;
    }
    InitializeAnimation(super, super->animationState);
}

void sub_08023604(MoldwormEntity* this) {
    if (((u8*)&this->unk_78.split.unk_78)[((MoldwormEntity*)super->parent)->unk_7c & 0xf] != 0x88) {
        super->action = 2;
        super->timer = 0;
        COLLISION_ON(super);
        super->spriteSettings.draw = 1;
        sub_08023644(this);
    }
}

void sub_08023644(MoldwormEntity* this) {
    Entity* parent = super->parent;

    if (parent->animIndex == 0x17 && super->timer != 0 && super->x.HALF.HI == parent->x.HALF.HI &&
        super->y.HALF.HI == parent->y.HALF.HI) {
        super->action = 1;
        COLLISION_OFF(super);
        super->spriteSettings.draw = 0;
        super->child->timer = 1;
        sub_080239F0(this);
    }

    if (((MoldwormEntity*)parent)->unk_7c != ((MoldwormEntity*)parent)->unk_7d) {
        u8* tmp = &((u8*)&this->unk_78.split.unk_78)[((MoldwormEntity*)parent)->unk_7c & 0xf];
        super->x.HALF.HI += (*tmp >> 4) - 8;
        super->y.HALF.HI += (*tmp & 0xf) - 8;
        super->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        super->spriteRendering.b3 = parent->spriteRendering.b3;
        super->collisionLayer = parent->collisionLayer;
    }
}

void sub_080236F8(MoldwormEntity* this) {
    if (--super->subtimer == 0) {
        super->action = 2;
        super->child->action = 3;
        super->child->subtimer = ((MoldwormEntity*)super->parent)->unk_80;
        InitializeAnimation(super->child, super->child->animationState + 1);
        InitializeAnimation(super, super->animationState);
    }
}

void sub_08023730(MoldwormEntity* this) {
    gUnk_080CBCA8[super->action](this);
}

void sub_08023748(MoldwormEntity* this) {
    Entity* parent;

    super->action = 1;
    super->animationState = 20;
    parent = super->parent;
    super->x.HALF.HI = parent->x.HALF.HI;
    super->y.HALF.HI = parent->y.HALF.HI;
    sub_080239F0(this);
    sub_08023A68(this);
}

void sub_0802376C(MoldwormEntity* this) {
    Entity* parent = super->parent;

    if (parent->spriteSettings.draw == 1 && parent->animIndex < 0x10) {
        super->spriteSettings.draw = 1;
        GetNextFrame(super);
    }

    if (((u8*)&this->unk_78.split.unk_78)[((MoldwormEntity*)parent)->unk_7c & 0xf] != 0x88) {
        super->action = 2;
        super->timer = 0;
        COLLISION_ON(super);
        ((MoldwormEntity*)super->parent)->unk_7f = 1;
        sub_08023A88(this, 20);
        sub_080237D8(this);
    }
}

void sub_080237D8(MoldwormEntity* this) {
    Entity* parent = super->parent;

    if ((parent->animIndex == 0x17) && (super->timer != 0) && (super->x.HALF.HI == parent->x.HALF.HI) &&
        (super->y.HALF.HI == parent->y.HALF.HI)) {
        super->action = 1;
        COLLISION_OFF(super);
        super->spriteSettings.draw = 0;
        ((MoldwormEntity*)parent)->unk_7f = 1;
        sub_080239F0(this);
        sub_08023A68(this);
    }

    if (((MoldwormEntity*)parent)->unk_7c != ((MoldwormEntity*)parent)->unk_7d) {
        u8* tmp = &((u8*)&this->unk_78.split.unk_78)[((MoldwormEntity*)parent)->unk_7c & 0xf];
        super->x.HALF.HI += (*tmp >> 4) - 8;
        super->y.HALF.HI += (*tmp & 0xf) - 8;

        super->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        super->spriteRendering.b3 = parent->spriteRendering.b3;
        super->collisionLayer = parent->collisionLayer;
    }
}

void sub_08023894(MoldwormEntity* this) {
    if (--super->subtimer == 0) {
        super->action = 2;
        ((MoldwormEntity*)super->parent)->unk_7f = 1;
        InitializeAnimation(super, super->animationState);
        if (super->parent->type2 == 0) {
            gPlayerState.flags |= PL_MOLDWORM_RELEASED;
            gPlayerEntity.base.x.HALF.HI = super->x.HALF.HI;
            gPlayerEntity.base.y.HALF.HI = super->y.HALF.HI;
            gPlayerEntity.base.direction = DirectionRoundUp(GetFacingDirection(this->unk_74, super));
            gPlayerEntity.base.animationState = gPlayerEntity.base.direction >> 2;
            gPlayerEntity.base.iframes = 12;
            ModHealth(-0x10);
            SoundReqClipped(&gPlayerEntity.base, SFX_PLY_VO6);
        }
    }
}

void sub_0802390C(MoldwormEntity* this) {
    if (super->contactFlags & CONTACT_NOW) {
        Entity* ent = super->child;
        do {
            ent->iframes = super->iframes;
        } while (ent = ent->child, ent != NULL);
    } else {
        Entity* ent = super->child;
        do {
            if (ent->contactFlags & CONTACT_NOW) {
                u8 bVar2 = 0xff - ent->health;
                if (bVar2 != 0) {
                    u32 tmp;
                    ent->health = 0xff;
                    tmp = (u8)ent->iframes;
                    if (super->health >= bVar2) {
                        super->health -= bVar2;
                    } else {
                        super->health = 0;
                    }

                    ent = super;
                    do {
                        ent->iframes = tmp;
                    } while (ent = ent->child, ent != NULL);
                    break;
                }
            }
        } while (ent = ent->child, ent != NULL);
    }
}

void sub_08023990(MoldwormEntity* this, u32 param_2, u32 param_3) {
    Entity* ent;

    super->action = 3;
    super->spriteSettings.draw = 1;
    super->palette.b.b0 = 0x5;
    super->palette.b.b4 = 0x5;
    super->spritePriority.b0 = 7;
    super->x.HALF.HI = param_2;
    super->y.HALF.HI = param_3;
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    UpdateSpriteForCollisionLayer(super);
    InitializeAnimation(super, 0x16);

    ent = super->child;
    do {
        sub_080239F0((MoldwormEntity*)ent);
        CopyPosition(super, ent);
    } while (ent = ent->child, ent != NULL);
}

void sub_080239F0(MoldwormEntity* this) {
    this->unk_78.split.unk_78 = 0x88;
    this->unk_78.split.unk_79 = 0x88;
    this->unk_7a = 0x88;
    this->unk_7b = 0x88;
    this->unk_7c = 0x88;
    this->unk_7d = 0x88;
    this->unk_7e = 0x88;
    this->unk_7f = 0x88;
    this->unk_80 = 0x88;
    this->unk_81 = 0x88;
    this->unk_82 = 0x88;
    this->unk_83 = 0x88;
    this->unk_84 = 0x88;
    this->unk_85 = 0x88;
    this->unk_86 = 0x88;
    this->unk_87 = 0x88;
}

bool32 sub_08023A38(u32 tileType) {
    if (tileType == TILE_TYPE_26 || tileType == TILE_TYPE_41) {
        return TRUE;
    } else {
        tileType = gMapTileTypeToActTile[tileType];
        if (tileType == ACT_TILE_9 || tileType == ACT_TILE_11 || tileType == ACT_TILE_10 || tileType == ACT_TILE_12) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
}

void sub_08023A68(MoldwormEntity* this) {
    ChangeObjPalette(super, 5);
    super->spritePriority.b0 = 7;
    InitializeAnimation(super, 0x17);
}

void sub_08023A88(MoldwormEntity* this, u32 unk) {
    ChangeObjPalette(super, 0x22);
    super->spritePriority.b0 = 4;
    InitializeAnimation(super, unk);
}

void sub_08023AB0(MoldwormEntity* this) {
    if (this->unk_7b == 8) {
        if (this->unk_7e) {
            this->unk_7e--;
        } else if (!sub_08023B38(this) || (this->unk_78.HWORD <= 0x1d)) {
            super->hitType = 0x85;
            this->unk_7b = 0;
            this->unk_7e = 30;
            InitializeAnimation(super, super->animationState);
        }
    } else if (this->unk_7e) {
        this->unk_7e--;
    } else if (this->unk_78.HWORD >= 90 && sub_08023B38(this)) {
        super->hitType = 0x87;
        this->unk_7b = 8;
        this->unk_7e = 10;
        InitializeAnimation(super, super->animationState + 8);
    }
}

bool32 sub_08023B38(MoldwormEntity* this) {
    Entity* entity;
    bool32 result;
    s32 iVar2;
    const s8* ptr;
    u32 tmp1;
    u32 tmp2;

    entity = sub_08049DF4(1);
    if (entity == NULL) {
        return FALSE;
    } else {
        tmp1 = (super->x.HALF.HI + (gUnk_080CBCB8[super->animationState * 2 + 0]));
        tmp2 = (super->y.HALF.HI + (gUnk_080CBCB8[super->animationState * 2 + 1]));
        result = FALSE;
        if ((entity->x.HALF.HI - tmp1 + 0x14U < 0x29) && (entity->y.HALF.HI - tmp2 + 0x14U < 0x29)) {
            result = TRUE;
        }
        return result;
    }
}

// clang-format off
void (*const Moldworm_Functions[])(MoldwormEntity*) = {
    Moldworm_OnTick,
    Moldworm_OnCollision,
    Moldworm_OnKnockback,
    (void (*)(MoldwormEntity*))GenericDeath,
    (void (*)(MoldwormEntity*))GenericConfused,
    Moldworm_OnGrabbed,
};

void (*const gUnk_080CBC50[])(MoldwormEntity*) = {
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

void (*const gUnk_080CBC98[])(MoldwormEntity*) = {
    sub_080235D4,
    sub_08023604,
    sub_08023644,
    sub_080236F8,
};

void (*const gUnk_080CBCA8[])(MoldwormEntity*) = {
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
