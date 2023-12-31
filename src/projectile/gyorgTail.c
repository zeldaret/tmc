/**
 * @file gyorgTail.c
 * @ingroup Projectiles
 *
 * @brief Gyorg Tail Projectile
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "hitbox.h"
#include "physics.h"
#include "projectile.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[10];
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unused2[5];
    /*0x79*/ u8 unk_79;
    /*0x7a*/ s16 unk_7a;
    /*0x7c*/ u16 unk_7c;
} GyorgTailEntity;

bool32 sub_080AC5E4(GyorgTailEntity*);
void GyorgTail_Action1(GyorgTailEntity*);
void sub_080AC6F0(Entity*);
void sub_080AC760(Entity*);
void sub_080AC7C4(GyorgTailEntity*);
void sub_080AC328(GyorgTailEntity*);
void sub_080AC510(GyorgTailEntity*);
void sub_080AC560(GyorgTailEntity*);
void sub_080AC884(GyorgTailEntity*);
void GyorgTail_Action2(GyorgTailEntity*);
void GyorgTail_Init(GyorgTailEntity*);

void GyorgTail(GyorgTailEntity* this) {
    static void (*const gUnk_0812A994[])(GyorgTailEntity*) = {
        sub_080AC328, sub_080AC510, sub_080AC510, sub_080AC510, sub_080AC560,
    };
    GyorgTailEntity* parent;

    if (super->parent->next == NULL) {
        DeleteThisEntity();
    }
    gUnk_0812A994[super->type2](this);
    if (super->type == 0) {
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 1;
    } else {
        parent = (GyorgTailEntity*)super->parent;
        super->spriteOrientation.flipY = parent->base.spriteOrientation.flipY;
        super->spriteRendering.b3 = parent->base.spriteRendering.b3;
        super->spritePriority.b0 = parent->base.spritePriority.b0 - 2;

        if ((parent->base.spriteRendering.b3 == 3) && (*(u8*)&parent->unk_7c == 0)) {
            COLLISION_OFF(super);
        } else {
            COLLISION_ON(super);
        }
    }
}

void sub_080AC328(GyorgTailEntity* this) {
    static void (*const GyorgTail_Actions[])(GyorgTailEntity*) = {
        GyorgTail_Init,
        GyorgTail_Action1,
        GyorgTail_Action2,
    };
    GyorgTail_Actions[super->action](this);
}

void GyorgTail_Init(GyorgTailEntity* this) {
    static const s16 gUnk_0812A9B4[] = { -64, 64 };
    if (sub_080AC5E4(this) != 0) {
        super->action = 1;
        super->frameIndex = 0xc;
        super->spriteSettings.draw = 1;
        this->unk_7a = gUnk_0812A9B4[Random() & 1];
        super->collisionLayer = 2;
        GyorgTail_Action1(this);
    }
}

void GyorgTail_Action1(GyorgTailEntity* this) {
    static const u8 gUnk_0812A9B8[] = { 24, 20 };
    Entity* pEVar2;
    int iVar3;
    u32 uVar5;

    uVar5 = gUnk_0812A9B8[super->type];
    pEVar2 = super->parent;
    iVar3 = (pEVar2->animationState ^ 0x80) - (this->unk_7c >> 8);
    if ((short)this->unk_7a < 0) {
        if (((iVar3 - uVar5) & 0xff) <= 0x7f) {
            s32 tmp = -(short)this->unk_7a;
            this->unk_7a = tmp;
            this->unk_7c = (short)((((pEVar2->animationState ^ 0x80) - uVar5) & 0xff) << 8);
            sub_080AC884(this);
        } else {
            this->unk_7c = this->unk_7c + this->unk_7a;
            if (((iVar3 + uVar5) & 0xff) >= 0x81) {
                this->unk_7c = ((((pEVar2->animationState ^ 0x80) + uVar5) & 0xff) << 8) | 0x80;
            }
        }
    } else {
        if (((iVar3 + uVar5) & 0xff) >= 0x81) {
            s32 tmp = -(short)this->unk_7a;
            this->unk_7a = tmp;
            this->unk_7c = (short)((((pEVar2->animationState ^ 0x80) + uVar5) & 0xff) << 8);
            sub_080AC884(this);
        } else {
            this->unk_7c = this->unk_7c + this->unk_7a;
            if (0x7e >= ((iVar3 - uVar5) & 0xff) - 1) {
                this->unk_7c = ((((pEVar2->animationState ^ 0x80) - uVar5) & 0xff) << 8) | 0x80;
            }
        }
    }

    super->direction = this->unk_7c >> 8;
    sub_080AC6F0(super);
    sub_080AC760(super);
    sub_080AC7C4(this);
}

void GyorgTail_Action2(GyorgTailEntity* this) {
    if (super->timer != 0) {
        if (super->parent->health == 0) {
            super->action = 1;
            super->hitType = 0x1d;
        } else {
            if (--super->timer == 0) {
                super->hitType = 0x1c;
                SoundReq(SFX_116);
            }
        }
    } else {
        if (--super->subtimer == 0) {
            super->action = 1;
            super->hitType = 0x1d;
        }
        this->unk_7c += ((s16)this->unk_7a >= 1) ? 0x300 : -0x300;
        super->direction = this->unk_7c >> 8;
        sub_080AC6F0(super);
        sub_080AC760(super);
        sub_080AC7C4(this);
    }
}

void sub_080AC510(GyorgTailEntity* this) {
    static const u8 gUnk_0812A9BA[] = { 24, 25, 25, 24, 24, 24 };
    if (super->action == 0) {
        super->action = 1;
        super->frameIndex = gUnk_0812A9BA[super->type * 3 + super->type2 - 1];
        super->spriteSettings.draw = 1;
        super->collisionLayer = 2;
        if (*(u16*)&super->type == 0x300) {
            super->hitbox = (Hitbox*)&gHitbox_21;
        }
    }
}

void sub_080AC560(GyorgTailEntity* this) {
    s32 factor;
    Entity* entity;

    entity = super->child;
    if (entity->next == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action = 1;
        super->collisionLayer = 2;
        if (super->type == 0) {
            super->hitbox = (Hitbox*)&gHitbox_1;
        } else {
            super->hitbox = (Hitbox*)&gHitbox_20;
        }
        super->frameIndex = 0xff;
        super->spriteSettings.draw = 1;
    }
    factor = this->unk_79 << 8;
    super->x.WORD = entity->x.WORD + gSineTable[entity->direction] * factor;
    super->y.WORD = entity->y.WORD - gSineTable[entity->direction + 0x40] * factor;
}

bool32 sub_080AC5E4(GyorgTailEntity* this) {
    GyorgTailEntity* entity;
    GyorgTailEntity* entity2;
    GyorgTailEntity* entity3;

    if (super->type == 0) {
        if (gEntCount > 0x43) {
            return FALSE;
        }
        this->unk_79 = 0x11;
        entity = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity->base.type = super->type;
        entity->base.type2 = 1;
        entity->base.parent = super->parent;
        entity->unk_79 = 0x12;
        super->child = &entity->base;

        entity2 = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity2->base.type = super->type;
        entity2->base.type2 = 2;
        entity2->base.parent = super->parent;
        entity2->unk_79 = 0x14;
        entity->base.child = &entity2->base;

        entity3 = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity3->base.type = super->type;
        entity3->base.type2 = 3;
        entity3->base.parent = super->parent;
        entity3->base.child = NULL;
        entity3->unk_79 = 0;
        entity2->base.child = &entity3->base;

        entity = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity->base.type = super->type;
        entity->base.type2 = 4;
        entity->base.parent = super->parent;
        entity->base.child = super;
        entity->unk_79 = 0x14;
    } else {
        if (gEntCount > 0x44) {
            return FALSE;
        }
        this->unk_79 = 0xf;
        entity = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity->base.type = super->type;
        entity->base.type2 = 1;
        entity->base.parent = super->parent;
        entity->unk_79 = 0x10;
        super->child = &entity->base;

        entity2 = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity2->base.type = super->type;
        entity2->base.type2 = 2;
        entity2->base.parent = super->parent;
        entity2->base.child = NULL;
        entity2->unk_79 = 0x20;
        entity->base.child = &entity2->base;

        entity = (GyorgTailEntity*)CreateProjectile(GYORG_TAIL);
        entity->base.type = super->type;
        entity->base.type2 = 4;
        entity->base.parent = super->parent;
        entity->base.child = super;
        entity->unk_79 = 0x10;
    }
    return TRUE;
}

void sub_080AC6F0(Entity* this) {
    static const u8 gUnk_0812A9C0[] = { 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
                                        0,  1,  2,  3,  4,  5,  6,  7,  8,  9,  10, 11 };

    u32 uVar1;
    s32 iVar2;
    s32 iVar3;
    u32 uVar4;
    u32 tmp;

    uVar4 = this->direction & (0x3 | DirectionNorthWest);
    uVar1 = this->direction >> 5;
    iVar3 = uVar1 * 3;
    tmp = gUnk_0812A9C0[this->animationState] - uVar1 * 3;
    if (tmp <= 3) {
        switch (tmp) {
            default:
                if (uVar4 > 0x19) {
                    return;
                }
                break;
            case 0:
                if (uVar4 < 7) {
                    return;
                }
                break;
            case 1:
                if (uVar4 - 5 < 0xd) {
                    return;
                }
                break;
            case 2:
                if (uVar4 - 0xf < 0xd) {
                    return;
                }
                break;
        }
    }
    iVar2 = iVar3 + 3;
    if (uVar4 < 0x1b) {
        iVar2 = iVar3 + 2;
        if (uVar4 < 0x11) {
            iVar2 = iVar3;
            if (5 < uVar4) {
                iVar2 = iVar3 + 1;
            }
        }
    }
    this->animationState = iVar2 % 0x18;
    this->frameIndex = gUnk_0812A9C0[iVar2 % 0x18];
}

void sub_080AC760(Entity* param_1) {
    s32 tmp;
    Entity* entity1;
    Entity* entity2;

    entity1 = param_1->child;
    tmp = (entity1->direction - param_1->direction) & 0xff;
    if (((tmp + 8) & 0xff) > 0x10) {
        if (tmp > 0x80) {
            entity1->direction = param_1->direction - 8;
        } else {
            entity1->direction = param_1->direction + 8;
        }
    }
    entity2 = entity1->child;
    if (entity2->child == NULL) {
        entity2->direction = param_1->parent->animationState ^ 0x80;
    } else {
        tmp = (entity2->direction - entity1->direction) & 0xff;
        if (((tmp + 8) & 0xff) <= 0x10) {
            return;
        }
        if (tmp > 0x80) {
            entity2->direction = entity1->direction - 8;
        } else {
            entity2->direction = entity1->direction + 8;
        }
    }
}

void sub_080AC7C4(GyorgTailEntity* this) {
    GyorgTailEntity* entity1;
    GyorgTailEntity* entity2;
    GyorgTailEntity* entity3;
    s32 tmp;
    s32 tmp2;
    s32 tmp3;
    s32 tmp4;
    s32 tmp5;
    s32 tmp6;
    s32 r6;

    entity1 = (GyorgTailEntity*)super->child;
    entity2 = (GyorgTailEntity*)entity1->base.child;
    entity3 = (GyorgTailEntity*)entity2->base.child;
    if (entity3 != NULL) {
        CopyPosition(super->parent, &entity3->base);
    } else {
        entity3 = (GyorgTailEntity*)super->parent;
    }
    tmp = entity2->unk_79 << 8;
    tmp2 = gSineTable[entity2->base.direction];
    r6 = tmp2 * tmp;
    tmp2 = gSineTable[entity2->base.direction + 0x40] * tmp;
    PositionRelative(&entity3->base, &entity2->base, r6, -tmp2);
    tmp3 = entity1->unk_79 << 8;
    tmp4 = gSineTable[entity1->base.direction];
    r6 = tmp4 * tmp3;
    tmp4 = gSineTable[entity1->base.direction + 0x40] * tmp3;
    PositionRelative(&entity2->base, &entity1->base, r6, -tmp4);
    tmp5 = this->unk_79 << 8;
    tmp6 = gSineTable[super->direction];
    r6 = tmp6 * tmp5;
    tmp6 = gSineTable[super->direction + 0x40] * tmp5;
    PositionRelative(&entity1->base, super, r6, -tmp6);
}

void sub_080AC884(GyorgTailEntity* this) {
    if (((GyorgTailEntity*)super->parent)->unk_72 != 0) {
        ((GyorgTailEntity*)super->parent)->unk_72 = 0;
        super->action = 2;
        super->timer = 60;
        super->subtimer = 86;
    }
}
