#include "entity.h"
#include "asm.h"
#include "physics.h"
#include "sound.h"
#include "functions.h"
#include "projectile.h"
#include "hitbox.h"

extern u8 gEntCount;

extern void (*const gUnk_0812A994[])(Entity*);
extern void (*const GyorgTail_Actions[])(Entity*);
extern const s16 gUnk_0812A9B4[];
extern const u8 gUnk_0812A9B8[];
extern const u8 gUnk_0812A9BA[];
extern const u8 gUnk_0812A9C0[];

bool32 sub_080AC5E4(Entity*);
void sub_080AC388(Entity*);
void sub_080AC6F0(Entity*);
void sub_080AC760(Entity*);
void sub_080AC7C4(Entity*);

void GyorgTail(Entity* this) {
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
    GyorgTail_Actions[this->action](this);
}

void GyorgTail_Init(Entity* this) {
    if (sub_080AC5E4(this) != 0) {
        this->action = 1;
        this->frameIndex = 0xc;
        this->spriteSettings.draw = 1;
        this->field_0x7a.HWORD = gUnk_0812A9B4[Random() & 1];
        this->collisionLayer = 2;
        sub_080AC388(this);
    }
}

ASM_FUNC("asm/non_matching/gyorgTail/sub_080AC388.inc", void sub_080AC388(Entity* this))

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

NONMATCH("asm/non_matching/gyorgTail/sub_080AC5E4.inc", bool32 sub_080AC5E4(Entity* this)) {
    // TODO regalloc
    Entity* entity;
    Entity* entity2;
    Entity* entity3;
    Entity* entity4;
    u8 uVar3;

    if (this->type == 0) {
        if (0x43 < gEntCount) {
            return 0;
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
        uVar3 = entity2->field_0x78.HALF.HI;
        entity->child = entity2;
        entity3 = CreateProjectile(GYORG_TAIL);
        entity3->type = this->type;
        entity3->type2 = 3;
        entity3->parent = this->parent;
        entity3->child = NULL;
        entity3->field_0x78.HALF.HI = 0;
        entity2->child = entity3;
    } else {
        if (0x44 < gEntCount) {
            return 0;
        }
        this->field_0x78.HALF.HI = 0xf;
        entity = CreateProjectile(GYORG_TAIL);
        entity->type = this->type;
        entity->type2 = 1;
        entity->parent = this->parent;
        entity->field_0x78.HALF.HI = 0x10;
        uVar3 = entity->field_0x78.HALF.HI;
        this->child = entity;
        entity2 = CreateProjectile(GYORG_TAIL);
        entity2->type = this->type;
        entity2->type2 = 2;
        entity2->parent = this->parent;
        entity2->child = NULL;
        entity2->field_0x78.HALF.HI = 0x20;
        entity->child = entity2;
    }
    entity4 = CreateProjectile(GYORG_TAIL);
    entity4->type = this->type;
    entity4->type2 = 4;
    entity4->parent = this->parent;
    entity4->child = this;
    entity4->field_0x78.HALF.HI = uVar3;
    return 1;
}
END_NONMATCH

ASM_FUNC("asm/non_matching/gyorgTail/sub_080AC6F0.inc", void sub_080AC6F0(Entity* this))

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

NONMATCH("asm/non_matching/gyorgTail/sub_080AC7C4.inc", void sub_080AC7C4(Entity* this)) {
    // TODO regalloc
    Entity* entity1;
    Entity* entity2;
    Entity* entity3;
    s32 iVar1;
    s32 iVar2;
    s32 iVar3;

    entity1 = this->child;
    entity2 = entity1->child;
    entity3 = entity2->child;
    if (entity3 != NULL) {
        CopyPosition(this->parent, entity3);
    } else {
        entity3 = this->parent;
    }
    PositionRelative(entity3, entity2, (entity2->field_0x78.HALF.HI << 8) * gSineTable[entity2->direction],
                     -((entity2->field_0x78.HALF.HI << 8) * gSineTable[entity2->direction + 0x40]));
    PositionRelative(entity2, entity1, (entity1->field_0x78.HALF.HI << 8) * gSineTable[entity1->direction],
                     -((entity1->field_0x78.HALF.HI << 8) * gSineTable[entity1->direction + 0x40]));
    PositionRelative(entity1, this, (this->field_0x78.HALF.HI << 8) * gSineTable[this->direction],
                     -((this->field_0x78.HALF.HI << 8) * gSineTable[this->direction + 0x40]));
}
END_NONMATCH

void sub_080AC884(Entity* this) {
    if (this->parent->field_0x70.HALF_U.HI != 0) {
        this->parent->field_0x70.HALF_U.HI = 0;
        this->action = 2;
        this->timer = 0x3c;
        this->subtimer = 0x56;
    }
}

void (*const gUnk_0812A994[])(Entity*) = {
    sub_080AC328, sub_080AC510, sub_080AC510, sub_080AC510, sub_080AC560,
};
void (*const GyorgTail_Actions[])(Entity*) = {
    GyorgTail_Init,
    sub_080AC388,
    sub_080AC480,
};
const s16 gUnk_0812A9B4[] = { -64, 64 };
const u8 gUnk_0812A9B8[] = { 24, 20 };
const u8 gUnk_0812A9BA[] = { 24, 25, 25, 24, 24, 24 };
const u8 gUnk_0812A9C0[] = { 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 };
