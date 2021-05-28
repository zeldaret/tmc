#include "global.h"
#include "npc.h"
#include "coord.h"
#include "flags.h"
#include "audio.h"
#include "textbox.h"
#include "functions.h"

void sub_0806B67C(Entity*);
void sub_0806B7BC(Entity*);
void sub_0806B96C(Entity*);
Entity* sub_0806B9BC(Entity*);

typedef struct xy {
    s8 x;
    s8 y;
} PACKED xy;

void (*const gUnk_08112F78[])(Entity*) = {
    sub_0806B67C,
    sub_0806B7BC,
};
const xy gUnk_08112F80[] = { { 10, -29 }, { -10, -29 }, { 15, -21 }, { -15, -21 } };

void VaatiReborn(Entity* this) {
    gUnk_08112F78[this->action](this);
}

void sub_0806B67C(Entity* this) {
    Entity* entity;
    u32 i;

    this->action = 1;
    this->subAction = 0;
    this->actionDelay = 0;
    switch (this->type) {
        case 0:
            this->y.HALF.HI -= 0xa0;
            this->actionDelay = 0xa0;
            this->field_0xf = 0x20;
            this->spriteOffsetY = 0x20;
            for (i = 0; i < 4; i++) {
                entity = CreateNPC(VAATI_REBORN, 2, i);
                if (entity != NULL) {
                    entity->parent = this;
                }
            }
            entity = CreateNPC(VAATI_REBORN, 1, 0);
            entity->parent = this;
            entity->spriteOffsetY = -1;
            PositionRelative(this, entity, 0, 0x10000);
            InitAnimationForceUpdate(this, 0);
            break;
        case 1:
        case 5:
            InitAnimationForceUpdate(this, 0);
            break;
        case 2:
            if ((this->type2 & 2) != 0) {
                this->spriteSettings.b.flipX = 1;
            }
            sub_0806B96C(this);
            InitAnimationForceUpdate(this, 0);
            break;
        case 3:
            this->actionDelay = 1;
            this->field_0xf = 0x20;
            entity = CreateNPC(VAATI_REBORN, 4, 0);
            if (entity != NULL) {
                CopyPosition(this, entity);
                entity->parent = this;
                entity->spritePriority.b0 = this->spritePriority.b0 - 1;
                entity->frameIndex = 0;
            }
            entity = CreateNPC(VAATI_REBORN, 5, 0);
            if (entity != NULL) {
                CopyPosition(this, entity);
                entity->parent = this;
                entity->spritePriority.b0 = this->spritePriority.b0 + 1;
            }
            InitAnimationForceUpdate(this, 0);
            break;
        case 4:
            InitializeAnimation(this, 0);
            break;
        default:
            break;
    }
}

ASM_FUNC("asm/non_matching/vaati/sub_0806B7BC.inc", void sub_0806B7BC(Entity* this))

void sub_0806B96C(Entity* this) {
    Entity* entity;
    const xy* ptr;

    entity = sub_0806B9BC(this);
    if (entity == NULL) {
        DeleteThisEntity();
    }
    ptr = &gUnk_08112F80[this->type2];
    this->spriteSettings.b.draw = entity->spriteSettings.b.draw;
    PositionRelative(entity, this, ptr->x << 0x10, (ptr->y + 0x21) << 0x10);
    UpdateAnimationSingleFrame(this);
}

Entity* sub_0806B9BC(Entity* this) {
    Entity* entity;

    entity = this->parent;
    if (entity != NULL && entity->next == NULL) {
        entity = NULL;
    }
    return entity;
}
