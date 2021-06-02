#include "entity.h"
#include "enemy.h"
#include "functions.h"

extern void (*const gUnk_08129AE0[])(Entity*);

extern void (*const gUnk_08129AF8[])(Entity*);

extern void (*const gUnk_08129B08[])(Entity*);
void sub_080A9BA8(Entity*);

void sub_080A9BD0(Entity*);
void sub_080A9C34(Entity*);

void sub_080A9C50(Entity*);

typedef struct {
    s8 unk_0;
    s8 unk_1;
    s8 unk_2;
} PACKED struct_08129B20;
extern struct_08129B20 gUnk_08129B20[];

extern u8 gUnk_08129B50[];

void Projectile10(Entity* this) {
    gUnk_08129AE0[GetNextFunction(this)](this);
}

void sub_080A9A1C(Entity* this) {
    gUnk_08129AF8[this->action](this);
}

void sub_080A9A34(Entity* this) {
    if (this->bitfield == 0x9d) {
        this->action = 3;
        this->flags &= 0x7f;
        this->field_0x20 = 0x2a000;
        this->spritePriority.b1 = 1;
    }
}

void sub_080A9A64(Entity* this) {
    if ((this->subAction < 3) && (sub_0806F520(this) == 0)) {
        sub_080A9BA8(this);
    }
    gUnk_08129B08[this->subAction](this);
}

void sub_080A9A94(Entity* this) {
    this->subAction = 2;
    this->height.HALF.HI = 0xfffe;
}

void sub_080A9AA4(Entity* this) {
    sub_0806F4E8(this);
}

void sub_080A9AAC(Entity* this) {
    sub_0806F3E4(this);
}

void sub_080A9AB4(Entity* this) {
    this->flags &= 0x7f;
}

void nullsub_128(Entity* this) {
}

void sub_080A9AC4(Entity* this) {
    sub_080A9BA8(this);
}

void sub_080A9ACC(Entity* this) {
    switch (this->type2) {
        case 1:
            this->action = 2;
            this->flags |= 0x80;
            break;
        case 2:
            this->action = 3;
            this->field_0x20 = 0x2a000;
            this->spritePriority.b1 = 1;
            break;
        default:
            this->action = 1;
            break;
    }

    this->field_0x1c = 2;
    if (this->type == 0) {
        InitializeAnimation(this, 5);
    } else {
        this->frameIndex = 0;
    }
}

void sub_080A9B24(Entity* this) {
    if (this->parent->next == NULL) {
        sub_080A9BA8(this);
    }
    if (this->parent->action == 0xb) {
        sub_080A9BD0(this);
    } else {
        this->action = 2;
        sub_080A9C34(this);
    }
}

void sub_080A9B54(Entity* this) {
    if (this->parent->next == NULL) {
        sub_080A9BA8(this);
    }
    if (this->parent->action == 9) {
        sub_080A9C34(this);
    } else {
        sub_080A9C50(this);
    }
}

void sub_080A9B80(Entity* this) {
    if (this->field_0x20 < 0) {
        this->spriteSettings.b.flipY = 1;
    }
    if (sub_08003FC4(this, 0x2000) == 0) {
        sub_080A9BA8(this);
    }
}

void sub_080A9BA8(Entity* this) {
    if (this->type == 0) {
        CreateFx(this, 5, 0);
    } else {
        CreateFx(this, 0x3c, 0);
    }
    DeleteThisEntity();
}

void sub_080A9BD0(Entity* this) {
    Entity* parent;
    s32 tmp;
    u32 tmp2;
    struct_08129B20* entry;

    parent = this->parent;
    switch (parent->animationState) {
        case 0:
            tmp = parent->frameIndex - 0x39;
            break;
        case 1:
        case 3:
            tmp = parent->frameIndex - 0x3d;
            break;
        case 2:
            tmp = parent->frameIndex - 0x41;
            break;
    }
    entry = &gUnk_08129B20[tmp + parent->animationState * 4];
    sub_0806FA90(parent, this, entry->unk_0, entry->unk_1);
    this->height.HALF.HI = entry->unk_2 + this->height.HALF.HI;
}

void sub_080A9C34(Entity* this) {
    sub_0806FA90(this->parent, this, 0, 1);
    this->spriteOffsetY -= 0xe;
}

void sub_080A9C50(Entity* this) {
    Entity* parent;
    u32 tmp;

    parent = this->parent;
    switch (parent->animationState) {
        case 0:
            tmp = 0xffffffd9 + parent->frameIndex;
            break;
        case 1:
        case 3:
            tmp = parent->frameIndex - 0x2d;
            break;
        case 2:
            tmp = parent->frameIndex - 0x33;
            break;
    }

    sub_0806FA90(parent, this, 0, 1);
    this->spriteOffsetY += gUnk_08129B50[tmp];
}
