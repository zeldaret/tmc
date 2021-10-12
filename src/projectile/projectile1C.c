#include "entity.h"
#include "functions.h"

extern void (*const gUnk_0812A5E8[])(Entity*);

extern Hitbox gUnk_0812A614;

void sub_080AB758(Entity*);

void sub_080AB888(Entity*);

extern Hitbox gUnk_0812A614;
extern Hitbox gUnk_0812A61C;

extern Hitbox* gUnk_0812A5F4[];

void Projectile1C(Entity* this) {
    if (this->parent->spriteSettings.b.draw == 0) {
        DeleteThisEntity();
    }
    gUnk_0812A5E8[this->action](this);
}

void sub_080AB6B8(Entity* this) {
    *(u32*)&this->field_0x74 = this->parent->x.WORD;
    if (this->type == 0) {
        this->action = 1;
        this->flags &= 0x7f;
        this->hitbox = &gUnk_0812A614;
        InitializeAnimation(this, 0);
    } else {
        this->action = 2;
        this->field_0xf = 4;
        InitializeAnimation(this, this->actionDelay);
    }
}

void sub_080AB6FC(Entity* this) {
    GetNextFrame(this);
    if ((this->frames.all & 0x80) != 0) {
        this->action = 2;
        InitializeAnimation(this, 1);
        sub_080AB758(this);
    }
}

void sub_080AB728(Entity* this) {
    GetNextFrame(this);
    this->x.WORD += (this->parent->x.WORD - *(u32*)&this->field_0x74);
    *(u32*)&this->field_0x74 = this->parent->x.WORD;
    sub_080AB888(this);
    if (this->parent->field_0xf == 0) {
        DeleteThisEntity();
    }
}

ASM_FUNC("asm/non_matching/projectile1C/sub_080AB758.inc", void sub_080AB758(Entity* this))

void sub_080AB844(Entity* this, s32 param_1, s32 param_2) {
    Entity* entity;

    entity = CreateProjectile(0x1c);
    if (entity != NULL) {
        entity->type = 1;
        entity->actionDelay = param_1;
        entity->parent = this->parent;
        PositionRelative(this, entity, 0, param_2 << 0x10);
        if (param_1 != 1) {
            entity->hitbox = &gUnk_0812A61C;
        } else {
            entity->hitbox = &gUnk_0812A614;
        }
    }
}

void sub_080AB888(Entity* this) {
    s32 index;

    this->field_0xf -= 1;
    index = 0;

    switch (this->actionDelay) {
        case 3:
            index = 1;
        case 4:
            this->hitbox = gUnk_0812A5F4[this->field_0xf * 2 + index];
            break;
        case 0:
        case 1:
        case 2:
        default:
            break;
    }

    if (this->field_0xf == 0) {
        this->field_0xf = 4;
    }
}
