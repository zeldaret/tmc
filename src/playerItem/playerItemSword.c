#include "entity.h"
#include "functions.h"

extern void (*const gUnk_0812905C[])(Entity*);

extern u8 gUnk_08129096[];

void PlayerItemSword(Entity* this) {
    gUnk_0812905C[this->action](this);
    if (this->type == 0) {
        sub_08078E84(this, &gPlayerEntity);
        this->hitbox->offset_x += this->spriteOffsetX;
        this->hitbox->offset_y += this->spriteOffsetY;
    }
}

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A758C.inc", void sub_080A758C(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A76CC.inc", void sub_080A76CC(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A7824.inc", void sub_080A7824(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A78B8.inc", void sub_080A78B8(Entity* this))

void sub_080A7A54(Entity* this) {
    u8* tmp;

    tmp = &gUnk_08129096[(gPlayerEntity.frameIndex - 0x6a) * 4];
    this->hitbox->offset_x = tmp[0];
    this->hitbox->offset_y = tmp[1];
    this->hitbox->width = tmp[2];
    this->hitbox->height = tmp[3];
}

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A7A84.inc", void sub_080A7A84(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A7B98.inc", void sub_080A7B98(Entity* this))
