#include "object.h"

void sub_0808A40C(Entity*);
void sub_0808A46C(Entity*);
void sub_0808A484(Entity*);
void sub_0808A4D0(Entity*);

void Smoke(Entity* this) {
    static void (*const typeFuncs[])(Entity*) = {
        sub_0808A40C,
        sub_0808A46C,
    };
    typeFuncs[this->type](this);
}

void sub_0808A40C(Entity* this) {
    static const s8 gUnk_08121068[] = {
        -1, 1, -2, 2, 0, 0, 0, 0,
    };
    Entity* ent;

    if (this->action == 0) {
        this->action = 1;
        this->timer = 0x28;
    }
    if (--this->timer == 0) {
        this->timer = 0x40 - (Random() & 0x1f);
        ent = CreateObject(SMOKE, 1, 0);
        if (ent != NULL) {
            CopyPosition(this, ent);
            ent->x.HALF.HI += gUnk_08121068[(Random() & 7)];
        }
    }
}

void sub_0808A46C(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808A484,
        sub_0808A4D0,
    };
    actionFuncs[this->action](this);
}

void sub_0808A484(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = TRUE;
    this->speed = 0x40;
    this->direction = 6;
    this->spriteRendering.b3 = 1;
    this->spritePriority.b0 = 0;
    this->spriteOrientation.flipY = 1;
    InitializeAnimation(this, 0x28);
}

void sub_0808A4D0(Entity* this) {
    GetNextFrame(this);
    LinearMoveUpdate(this);
    if (this->frame & ANIM_DONE) {
        DeleteEntity(this);
    }
}
