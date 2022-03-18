#include "global.h"
#include "entity.h"
#include "functions.h"

void Object2B(Entity* object) {
    Entity* parent;

    if (object->action == 0) {
        object->action = 1;
        object->z.WORD = 0;
        object->spriteRendering.b3 = 3;
        InitializeAnimation(object, 9);
    }

    parent = object->parent;
    if (parent->z.WORD == 0) {
        DeleteThisEntity();
    } else {
        int position = 0x120 - parent->z.HALF.HI;
        SetAffineInfo(object, position, position, parent->field_0x7c.HALF_U.HI);
    }
}
