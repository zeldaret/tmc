#include "entity.h"
#include "asm.h"
#include "physics.h"
#include "sound.h"
#include "functions.h"
#include "projectile.h"
#include "hitbox.h"

bool32 sub_080AC5E4(Entity*);
void sub_080AC388(Entity*);
void sub_080AC6F0(Entity*);
void sub_080AC760(Entity*);
void sub_080AC7C4(Entity*);
void sub_080AC328(Entity*);
void sub_080AC510(Entity*);
void sub_080AC560(Entity*);
void sub_080AC884(Entity*);
void sub_080AC480(Entity*);
void GyorgTail_Init(Entity*);

void GyorgTail(Entity* this) {
    static void (*const gUnk_0812A994[])(Entity*) = {
        sub_080AC328, sub_080AC510, sub_080AC510, sub_080AC510, sub_080AC560,
    };
    Entity* parent;

    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    gUnk_0812A994[this->type2](this);
    if (this->type == 0) {
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 1;
    } else {
        parent = this->parent;
        this->spriteOrientation.flipY = parent->spriteOrientation.flipY;
        this->spriteRendering.b3 = parent->spriteRendering.b3;
        this->spritePriority.b0 = parent->spritePriority.b0 - 2;

        if ((parent->spriteRendering.b3 == 3) && (parent->field_0x7c.BYTES.byte0 == 0)) {
            COLLISION_OFF(this);
        } else {
            COLLISION_ON(this);
        }
    }
}

void sub_080AC328(Entity* this) {
    static void (*const GyorgTail_Actions[])(Entity*) = {
        GyorgTail_Init,
        sub_080AC388,
        sub_080AC480,
    };
    GyorgTail_Actions[this->action](this);
}

void GyorgTail_Init(Entity* this) {
    static const s16 gUnk_0812A9B4[] = { -64, 64 };
    if (sub_080AC5E4(this) != 0) {
        this->action = 1;
        this->frameIndex = 0xc;
        this->spriteSettings.draw = 1;
        this->field_0x7a.HWORD = gUnk_0812A9B4[Random() & 1];
        this->collisionLayer = 2;
        sub_080AC388(this);
    }
}

void sub_080AC388(Entity* this) {
    static const u8 gUnk_0812A9B8[] = { 24, 20 };
    Entity* pEVar2;
    int iVar3;
    u32 uVar5;

    uVar5 = gUnk_0812A9B8[this->type];
    pEVar2 = this->parent;
    iVar3 = (pEVar2->animationState ^ 0x80) - (this->field_0x7c.HALF_U.LO >> 8);
    if ((short)this->field_0x7a.HWORD < 0) {
        if (((iVar3 - uVar5) & 0xff) <= 0x7f) {
            s32 tmp = -(short)this->field_0x7a.HWORD;
            this->field_0x7a.HWORD = tmp;
            this->field_0x7c.HALF_U.LO = (short)((((pEVar2->animationState ^ 0x80) - uVar5) & 0xff) << 8);
            sub_080AC884(this);
        } else {
            this->field_0x7c.HALF_U.LO = this->field_0x7c.HALF_U.LO + this->field_0x7a.HWORD;
            if (((iVar3 + uVar5) & 0xff) >= 0x81) {
                this->field_0x7c.HALF_U.LO = ((((pEVar2->animationState ^ 0x80) + uVar5) & 0xff) << 8) | 0x80;
            }
        }
    } else {
        if (((iVar3 + uVar5) & 0xff) >= 0x81) {
            s32 tmp = -(short)this->field_0x7a.HWORD;
            this->field_0x7a.HWORD = tmp;
            this->field_0x7c.HALF_U.LO = (short)((((pEVar2->animationState ^ 0x80) + uVar5) & 0xff) << 8);
            sub_080AC884(this);
        } else {
            this->field_0x7c.HALF_U.LO = this->field_0x7c.HALF_U.LO + this->field_0x7a.HWORD;
            if (0x7e >= ((iVar3 - uVar5) & 0xff) - 1) {
                this->field_0x7c.HALF_U.LO = ((((pEVar2->animationState ^ 0x80) - uVar5) & 0xff) << 8) | 0x80;
            }
        }
    }

    this->direction = this->field_0x7c.HALF_U.LO >> 8;
    sub_080AC6F0(this);
    sub_080AC760(this);
    sub_080AC7C4(this);
}

void sub_080AC480(Entity* this) {
    if (this->timer != 0) {
        if (this->parent->health == 0) {
            this->action = 1;
            this->hitType = 0x1d;
        } else {
            if (--this->timer == 0) {
                this->hitType = 0x1c;
                SoundReq(SFX_116);
            }
        }
    } else {
        if (--this->subtimer == 0) {
            this->action = 1;
            this->hitType = 0x1d;
        }
        this->field_0x7c.HALF_U.LO += ((s16)this->field_0x7a.HWORD >= 1) ? 0x300 : -0x300;
        this->direction = this->field_0x7c.HALF.LO >> 8;
        sub_080AC6F0(this);
        sub_080AC760(this);
        sub_080AC7C4(this);
    }
}

void sub_080AC510(Entity* this) {
    static const u8 gUnk_0812A9BA[] = { 24, 25, 25, 24, 24, 24 };
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = gUnk_0812A9BA[this->type * 3 + this->type2 - 1];
        this->spriteSettings.draw = 1;
        this->collisionLayer = 2;
        if (*(u16*)&this->type == 0x300) {
            this->hitbox = (Hitbox*)&gHitbox_21;
        }
    }
}

void sub_080AC560(Entity* this) {
    s32 factor;
    Entity* entity;

    entity = this->child;
    if (entity->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->collisionLayer = 2;
        if (this->type == 0) {
            this->hitbox = (Hitbox*)&gHitbox_1;
        } else {
            this->hitbox = (Hitbox*)&gHitbox_20;
        }
        this->frameIndex = 0xff;
        this->spriteSettings.draw = 1;
    }
    factor = this->field_0x78.HALF.HI << 8;
    this->x.WORD = entity->x.WORD + gSineTable[entity->direction] * factor;
    this->y.WORD = entity->y.WORD - gSineTable[entity->direction + 0x40] * factor;
}

bool32 sub_080AC5E4(Entity* this) {
    // TODO regalloc
    Entity* entity;
    Entity* new_var2;
    Entity* entity2;
    Entity* entity3;
    Entity* entity4;

    if (this->type == 0) {
        if (gEntCount > 0x43) {
            return FALSE;
        }
        this->field_0x78.HALF.HI = 0x11;
        entity = CreateProjectile(GYORG_TAIL);
        entity->type = this->type;
        entity->type2 = 1;
        entity->parent = this->parent;
        entity->field_0x78.HALF.HI = 0x12;
        this->child = entity;

        entity2 = CreateProjectile(GYORG_TAIL);
        entity2->type = this->type;
        entity2->type2 = 2;
        entity2->parent = this->parent;
        entity2->field_0x78.HALF.HI = 0x14;
        entity->child = entity2;

        entity3 = CreateProjectile(GYORG_TAIL);
        entity3->type = this->type;
        entity3->type2 = 3;
        entity3->parent = this->parent;
        entity3->child = NULL;
        entity3->field_0x78.HALF.HI = 0;
        entity2->child = entity3;

        entity = CreateProjectile(GYORG_TAIL);
        entity->type = this->type;
        entity->type2 = 4;
        entity->parent = this->parent;
        entity->child = this;
        entity->field_0x78.HALF.HI = 0x14;
    } else {
        if (gEntCount > 0x44) {
            return FALSE;
        }
        this->field_0x78.HALF.HI = 0xf;
        entity = CreateProjectile(GYORG_TAIL);
        entity->type = this->type;
        entity->type2 = 1;
        entity->parent = this->parent;
        entity->field_0x78.HALF.HI = 0x10;
        this->child = entity;

        entity2 = CreateProjectile(GYORG_TAIL);
        entity2->type = this->type;
        entity2->type2 = 2;
        entity2->parent = this->parent;
        entity2->child = NULL;
        entity2->field_0x78.HALF.HI = 0x20;
        entity->child = entity2;

        entity = CreateProjectile(GYORG_TAIL);
        entity->type = this->type;
        entity->type2 = 4;
        entity->parent = this->parent;
        entity->child = this;
        entity->field_0x78.HALF.HI = 0x10;
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

    uVar4 = this->direction & 0x1f;
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

void sub_080AC7C4(Entity* this) {
    Entity* entity1;
    Entity* entity2;
    Entity* entity3;
    s32 tmp;
    s32 tmp2;
    s32 tmp3;
    s32 tmp4;
    s32 tmp5;
    s32 tmp6;
    s32 r6;

    entity1 = this->child;
    entity2 = entity1->child;
    entity3 = entity2->child;
    if (entity3 != NULL) {
        CopyPosition(this->parent, entity3);
    } else {
        entity3 = this->parent;
    }
    tmp = entity2->field_0x78.HALF.HI << 8;
    tmp2 = gSineTable[entity2->direction];
    r6 = tmp2 * tmp;
    tmp2 = gSineTable[entity2->direction + 0x40] * tmp;
    PositionRelative(entity3, entity2, r6, -tmp2);
    tmp3 = entity1->field_0x78.HALF.HI << 8;
    tmp4 = gSineTable[entity1->direction];
    r6 = tmp4 * tmp3;
    tmp4 = gSineTable[entity1->direction + 0x40] * tmp3;
    PositionRelative(entity2, entity1, r6, -tmp4);
    tmp5 = this->field_0x78.HALF.HI << 8;
    tmp6 = gSineTable[this->direction];
    r6 = tmp6 * tmp5;
    tmp6 = gSineTable[this->direction + 0x40] * tmp5;
    PositionRelative(entity1, this, r6, -tmp6);
}

void sub_080AC884(Entity* this) {
    if (this->parent->field_0x70.HALF_U.HI != 0) {
        this->parent->field_0x70.HALF_U.HI = 0;
        this->action = 2;
        this->timer = 60;
        this->subtimer = 86;
    }
}
