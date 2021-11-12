#include "entity.h"
#include "random.h"
#include "functions.h"
#include "utils.h"

extern void (*const Winder_Actions[])(Entity*);
extern const u8 gUnk_0812A6BC[];
extern const u8 gUnk_0812A6C4[];

void sub_080AB9DC(Entity*);

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

ASM_FUNC("asm/non_matching/winder/sub_080AB950.inc", void sub_080AB950(Entity* this))

void sub_080AB9DC(Entity* this) {
    MemCopy(&this->field_0x6c, &this->field_0x68, 0x1c);
    this->cutsceneBeh.HWORD = this->x.HALF.HI;
    this->field_0x86.HWORD = this->y.HALF.HI;
}

ASM_FUNC("asm/non_matching/winder/sub_080AB9FC.inc", void sub_080AB9FC(Entity* this))

void (*const Winder_Actions[])(Entity*) = {
    Winder_Init,
    sub_080AB950,
};
const u8 gUnk_0812A6BC[] = {
    8, 24, 0, 16, 8, 24, 0, 16,
};
const u8 gUnk_0812A6C4[] = {
    14, 0, 0, 224, 224, 0, 0, 14,
};
