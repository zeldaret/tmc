#include "entity.h"
#include "asm.h"
#include "functions.h"
#include "common.h"
#include "projectile.h"

extern void (*const Winder_Actions[])(Entity*);
extern s16 gUnk_080B4488[];
extern u8* GetLayerByIndex(u32);
static const u8 gUnk_0812A6BC[];
static const u16 gUnk_0812A6C4[];

void sub_080AB9DC(Entity*);
bool32 sub_080AB9FC(Entity* this, u32 param_1);

void Winder(Entity* this) {
    Winder_Actions[this->action](this);
    sub_080AB9DC(this);
}

void Winder_Init(Entity* this) {
    Entity* entity;
    u16* puVar3;
    s32 index;

    this->action += 1;
    this->speed = 0x140;
    this->z.WORD = 0;
    if (this->type == 0) {
        this->direction = Random() & 0x18;
        this->parent = this;
    }
    InitializeAnimation(this, 0);
    if (this->type < 4) {
        entity = CreateProjectile(0x1d);
        entity->type = this->type + 1;
        entity->parent = this->parent;
        entity->child = this;
        CopyPosition(this, entity);
    }

    puVar3 = &this->field_0x68.HWORD;
    for (index = 7; index >= 0; --index) {
        *puVar3 = this->x.HALF.HI;
        puVar3 += 1;
        *puVar3 = this->y.HALF.HI;
        puVar3 += 1;
    }
}

void sub_080AB950(Entity* this) {
    if (this->type == 0) {
        u8 dir;
        ProcessMovement(this);
        dir = this->direction >> 3;
        if (((gUnk_0812A6C4)[dir] & this->collisions) || sub_080AB9FC(this, this->direction)) {
            this->direction = gUnk_0812A6BC[(Random() & 0x1) + (dir << 1)];
        }
    } else {
        Entity* child;

        if (this->parent == NULL) {
            DeleteThisEntity();
        }

        if (this->parent->next == NULL) {
            DeleteThisEntity();
        }

        child = this->child;
        if (child && child->next) {
            this->x.HALF.HI = child->field_0x68.HWORD;
            this->y.HALF.HI = child->field_0x6a.HWORD;
        } else {
            DeleteThisEntity();
        }
    }

    GetNextFrame(this);
}

void sub_080AB9DC(Entity* this) {
    MemCopy(&this->field_0x6c, &this->field_0x68, 0x1c);
    this->cutsceneBeh.HWORD = this->x.HALF.HI;
    this->field_0x86.HWORD = this->y.HALF.HI;
}

bool32 sub_080AB9FC(Entity* this, u32 dir) {
    u32 val;
    u8* layer = GetLayerByIndex(this->collisionLayer);
    u32 tmp;
    val = (((this->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3f) |
          ((((this->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3f) << 6);
    val += gUnk_080B4488[dir >> 3];
    layer += 0x2004;
    layer += val;
    tmp = *layer;
    if (tmp <= 0x1f) {
        return 0;
    }

    if (tmp > 0x3f) {
        return 0;
    }

    return 1;
}

void (*const Winder_Actions[])(Entity*) = {
    Winder_Init,
    sub_080AB950,
};
const u8 gUnk_0812A6BC[] = {
    8, 24, 0, 16, 8, 24, 0, 16,
};
const u16 gUnk_0812A6C4[] = {
    0xe,
    0xe000,
    0xe0,
    0xe00,
};
