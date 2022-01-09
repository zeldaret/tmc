#include "entity.h"

extern u8 gUnk_08120C80[];
extern u8 gUnk_08120C92[];

void BarrelInside(Entity* this) {
    u8* ptr;
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->frameIndex = this->type;
        this->actionDelay = 0x10;
        this->field_0xf = 1;
        ptr = gUnk_08120C80 + this->type * 3;
        this->spriteRendering.b3 = *ptr;
        this->spritePriority.b0 = *(ptr + 1);
        this->spriteOrientation.flipY = *(ptr + 2);
    }

    if (this->type == 4) {
        if (--this->actionDelay == 0) {
            u32 tmp;
            this->actionDelay = 0x10;
            this->frameIndex = gUnk_08120C92[this->field_0xf++];
            if (this->field_0xf == 3) {
                this->field_0xf = 0;
            }
        }
    }
}
