#include "global.h"
#include "entity.h"
#include "functions.h"

extern void (*const gUnk_08121EA4[])(Entity*);
extern const u8 gUnk_08121EB0[];
extern const u8 gUnk_08121EB3[];

void BackgroundCloud(Entity* this) {
    gUnk_08121EA4[this->action](this);
}

void sub_0808F658(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->spriteOrientation.flipY = 3;
    this->spriteRendering.b3 = 3;
    this->spritePriority.b0 = this->entityType.form;
    this->frameIndex = this->entityType.form;
    this->direction = 8;
    this->nonPlanarMovement = gUnk_08121EB0[(this->entityType).form];
    this->field_0x78.HWORD = gRoomControls.roomOriginX - 0x60;
    this->field_0x7a.HWORD = gRoomControls.roomOriginX + gRoomControls.width + 0x60;
    this->animationState = 0;
    this->x.HALF.HI += (Random() & 0xf) << 4;
    this->actionDelay = 0;
    this->previousActionFlag = 0;
}

void sub_0808F6E0(Entity* this) {
    sub_0806F69C(this);

    if ((s16)this->x.HALF.HI < (s16)this->field_0x78.HWORD || (s16)this->x.HALF.HI > (s16)this->field_0x7a.HWORD)
        this->action = 2;
}

void sub_0808F70C(Entity* this) {
    if (this->previousActionFlag == 0) {
        this->previousActionFlag = 1;
        this->actionDelay = ((Random() & 7) << 3) + 31;

        if ((this->direction & 0x10)) {
            this->x.HALF.HI = this->field_0x7a.HWORD;
        } else {
            this->x.HALF.HI = this->field_0x78.HWORD;
        }

        if (this->entityType.form == 2)
            this->y.HALF.HI = gUnk_08121EB3[this->entityType.parameter * 2 + (Random() & 1)];
    }

    if (this->previousActionFlag == 1) {
        if (--this->actionDelay == 0) {
            this->action = 1;
            this->previousActionFlag = 0;
        }
    }
}
