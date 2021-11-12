#include "global.h"
#include "entity.h"
#include "functions.h"
#include "script.h"
#include "utils.h"

extern void sub_08068318(Entity*);
extern void sub_0806854C(Entity*, u32*);

void sub_08068578(Entity* this);

void ZeldaFollower(Entity* this) {
    if (this->action == 0) {
        this->action++;
        this->spriteSettings.draw = TRUE;
        this->animationState = 4;
        this->field_0x68.HALF.LO = 0;
        this->field_0x68.HALF.HI = 0;
        sub_0805E3A0(this, 2);
        InitAnimationForceUpdate(this, 0);
        sub_0806854C(this, NULL);
    }
    if ((s8)this->field_0x68.HALF.LO != 0) {
        sub_08068318(this);
    } else {
        this->spriteSettings.draw = FALSE;
    }
}

ASM_FUNC("asm/non_matching/zeldaFollower/sub_08068318.inc", void sub_08068318(Entity* this))

void sub_0806854C(Entity* this, u32* none) {
    this->myHeap = zMalloc(0xa0);
    if (this->myHeap != NULL) {
        this->field_0x68.HALF.LO = 1;
        sub_080788E0(this);
        this->hitbox = NULL;
        sub_08068578(this);
    }
}

ASM_FUNC("asm/non_matching/zeldaFollower/sub_08068578.inc", void sub_08068578(Entity* this))

void sub_08068680(Entity* this, Entity* entity) {
    entity->field_0x68.HALF.LO = 0;
    entity->spriteSettings.draw = 0;
}

void sub_08068694(Entity* this, Entity* entity) {
    entity->field_0x68.HALF.LO = 1;
    entity->spriteSettings.draw = 1;
    entity->animationState = this->animationState;
    sub_08068578(entity);
    InitAnimationForceUpdate(entity, entity->animationState / 2);
}

void sub_080686C4(Entity* this, Entity* entity) {
    entity->y.HALF.HI -= 0x10;
    sub_08068578(entity);
}
