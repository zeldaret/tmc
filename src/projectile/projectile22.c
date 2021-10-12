#include "entity.h"
#include "random.h"
#include "coord.h"
#include "audio.h"
#include "functions.h"

extern void (*const gUnk_0812A9A8[])(Entity*);

extern u16 gUnk_0812A9B4[];
bool32 sub_080AC5E4(Entity*);
void sub_080AC388(Entity*);

extern u8 gUnk_0812A9BA[];
extern Hitbox gUnk_080FD458;

extern Hitbox gUnk_080FD168;
extern Hitbox gUnk_080FD448;

extern void (*const gUnk_0812A994[])(Entity*);

void sub_080AC6F0(Entity*);
void sub_080AC760(Entity*);
void sub_080AC7C4(Entity*);

extern u8 gEntCount;

void Projectile22(Entity* this) {
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
            this->flags &= 0x7f;
        } else {
            this->flags |= 0x80;
        }
    }
}

void sub_080AC328(Entity* this) {
    gUnk_0812A9A8[this->action](this);
}

void sub_080AC340(Entity* this) {
    if (sub_080AC5E4(this) != 0) {
        this->action = 1;
        this->frameIndex = 0xc;
        this->spriteSettings.b.draw = 1;
        this->field_0x7a.HWORD = gUnk_0812A9B4[Random() & 1];
        this->collisionLayer = 2;
        sub_080AC388(this);
    }
}

ASM_FUNC("asm/non_matching/projectile22/sub_080AC388.inc", void sub_080AC388(Entity* this))

void sub_080AC480(Entity* this) {
    if (this->actionDelay != 0) {
        if (this->parent->currentHealth == 0) {
            this->action = 1;
            this->damageType = 0x1d;
        } else {
            if (--this->actionDelay == 0) {
                this->damageType = 0x1c;
                SoundReq(SFX_116);
            }
        }
    } else {
        if (--this->field_0xf == 0) {
            this->action = 1;
            this->damageType = 0x1d;
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
        this->spriteSettings.b.draw = 1;
        this->collisionLayer = 2;
        if (*(u16*)&this->type == 0x300) {
            this->hitbox = &gUnk_080FD458;
        }
    }
}

void sub_080AC560(Entity* this) {
    s32 factor;
    Entity* entity;

    entity = this->attachedEntity;
    if (entity->next == NULL) {
        DeleteThisEntity();
    }
    if (this->action == 0) {
        this->action = 1;
        this->collisionLayer = 2;
        if (this->type == 0) {
            this->hitbox = &gUnk_080FD168;
        } else {
            this->hitbox = &gUnk_080FD448;
        }
        this->frameIndex = 0xff;
        this->spriteSettings.b.draw = 1;
    }
    factor = this->field_0x78.HALF.HI << 8;
    this->x.WORD = entity->x.WORD + gSineTable[entity->direction] * factor;
    this->y.WORD = entity->y.WORD - gSineTable[entity->direction + 0x40] * factor;
}

NONMATCH("asm/non_matching/projectile22/sub_080AC5E4.inc", bool32 sub_080AC5E4(Entity* this)) {
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
        entity = CreateProjectile(0x22);
        entity->type = this->type;
        entity->type2 = 1;
        entity->parent = this->parent;
        entity->field_0x78.HALF.HI = 0x12;
        this->attachedEntity = entity;
        entity2 = CreateProjectile(0x22);
        entity2->type = this->type;
        entity2->type2 = 2;
        entity2->parent = this->parent;
        entity2->field_0x78.HALF.HI = 0x14;
        uVar3 = entity2->field_0x78.HALF.HI;
        entity->attachedEntity = entity2;
        entity3 = CreateProjectile(0x22);
        entity3->type = this->type;
        entity3->type2 = 3;
        entity3->parent = this->parent;
        entity3->attachedEntity = NULL;
        entity3->field_0x78.HALF.HI = 0;
        entity2->attachedEntity = entity3;
    } else {
        if (0x44 < gEntCount) {
            return 0;
        }
        this->field_0x78.HALF.HI = 0xf;
        entity = CreateProjectile(0x22);
        entity->type = this->type;
        entity->type2 = 1;
        entity->parent = this->parent;
        entity->field_0x78.HALF.HI = 0x10;
        uVar3 = entity->field_0x78.HALF.HI;
        this->attachedEntity = entity;
        entity2 = CreateProjectile(0x22);
        entity2->type = this->type;
        entity2->type2 = 2;
        entity2->parent = this->parent;
        entity2->attachedEntity = NULL;
        entity2->field_0x78.HALF.HI = 0x20;
        entity->attachedEntity = entity2;
    }
    entity4 = CreateProjectile(0x22);
    entity4->type = this->type;
    entity4->type2 = 4;
    entity4->parent = this->parent;
    entity4->attachedEntity = this;
    entity4->field_0x78.HALF.HI = uVar3;
    return 1;
}
END_NONMATCH

ASM_FUNC("asm/non_matching/projectile22/sub_080AC6F0.inc", void sub_080AC6F0(Entity* this))

ASM_FUNC("asm/non_matching/projectile22/sub_080AC760.inc", void sub_080AC760(Entity* this))

NONMATCH("asm/non_matching/projectile22/sub_080AC7C4.inc", void sub_080AC7C4(Entity* this)) {
    // TODO regalloc
    Entity* entity1;
    Entity* entity2;
    Entity* entity3;
    s32 iVar1;
    s32 iVar2;
    s32 iVar3;

    entity1 = this->attachedEntity;
    entity2 = entity1->attachedEntity;
    entity3 = entity2->attachedEntity;
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
        this->actionDelay = 0x3c;
        this->field_0xf = 0x56;
    }
}
