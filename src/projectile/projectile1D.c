#include "entity.h"
#include "random.h"
#include "functions.h"
#include "utils.h"

extern void (*const gUnk_0812A6B4[])(Entity*);
void sub_080AB9DC(Entity*);

void Projectile1D(Entity* this) {
    gUnk_0812A6B4[this->action](this);
    sub_080AB9DC(this);
}

void sub_080AB8E8(Entity* this) {
    Entity* entity;
    u16* puVar3;
    s32 index;

    this->action += 1;
    this->speed = 0x140;
    this->height.WORD = 0;
    if (this->type == 0) {
        this->direction = Random() & 0x18;
        this->parent = this;
    }
    InitializeAnimation(this, 0);
    if (this->type < 4) {
        entity = CreateProjectile(0x1d);
        entity->type = this->type + 1;
        entity->parent = this->parent;
        entity->attachedEntity = this;
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

ASM_FUNC("asm/non_matching/projectile1D/sub_080AB950.inc", void sub_080AB950(Entity* this))

void sub_080AB9DC(Entity* this) {
    MemCopy(&this->field_0x6c, &this->field_0x68, 0x1c);
    this->cutsceneBeh.HWORD = this->x.HALF.HI;
    this->field_0x86.HWORD = this->y.HALF.HI;
}

ASM_FUNC("asm/non_matching/projectile1D/sub_080AB9FC.inc", void sub_080AB9FC(Entity* this))
