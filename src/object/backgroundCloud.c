#include "object.h"

void sub_0808F658(Entity*);
void sub_0808F6E0(Entity*);
void sub_0808F70C(Entity*);

void BackgroundCloud(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_0808F658,
        sub_0808F6E0,
        sub_0808F70C,
    };
    actionFuncs[this->action](this);
}

void sub_0808F658(Entity* this) {
    static const u8 gUnk_08121EB0[] = { 0x30, 0x28, 0x20 };
    this->action = 1;
    this->spriteSettings.draw = 1;
    this->spriteOrientation.flipY = 3;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = this->type;
    this->frameIndex = this->type;
    this->direction = 8;
    this->speed = gUnk_08121EB0[this->type];
    this->field_0x78.HWORD = gRoomControls.origin_x - 0x60;
    this->field_0x7a.HWORD = gRoomControls.origin_x + gRoomControls.width + 0x60;
    this->animationState = 0;
    this->x.HALF.HI += (Random() & 0xf) << 4;
    this->timer = 0;
    this->subAction = 0;
}

void sub_0808F6E0(Entity* this) {
    LinearMoveUpdate(this);

    if ((s16)this->x.HALF.HI < (s16)this->field_0x78.HWORD || (s16)this->x.HALF.HI > (s16)this->field_0x7a.HWORD)
        this->action = 2;
}

void sub_0808F70C(Entity* this) {
    static const u8 gUnk_08121EB3[] = { 0x8, 0x28, 0x48, 0x98, 0 };
    if (this->subAction == 0) {
        this->subAction = 1;
        this->timer = ((Random() & 7) << 3) + 31;

        if ((this->direction & 0x10)) {
            this->x.HALF.HI = this->field_0x7a.HWORD;
        } else {
            this->x.HALF.HI = this->field_0x78.HWORD;
        }

        if (this->type == 2)
            this->y.HALF.HI = gUnk_08121EB3[this->type2 * 2 + (Random() & 1)];
    }

    if (this->subAction == 1) {
        if (--this->timer == 0) {
            this->action = 1;
            this->subAction = 0;
        }
    }
}
