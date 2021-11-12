#include "entity.h"
#include "player.h"
#include "functions.h"

extern void (*const gUnk_08132700[])(Entity*);

extern Hitbox gUnk_08132B28;
void sub_080ADC84(Entity*);

void sub_080ADCA0(Entity*, u32);

void PlayerItemGustJar(Entity* this) {
    if (((Entity*)gPlayerState.field_0x2c != this) || (gPlayerState.field_0x1c == 0)) {
        DeleteThisEntity();
    }
    gUnk_08132700[this->action](this);
    sub_08078E84(this, &gPlayerEntity);
}

void sub_080ADA6C(Entity* this) {
    this->action = 1;
    this->field_0xf = 0xf;
    this->hitbox = &gUnk_08132B28;
    this->hitbox->unk2[2] = 3;
    this->hitbox->unk2[1] = 3;
    this->hitbox->unk2[3] = 6;
    this->hitbox->unk2[0] = 6;
    sub_080ADC84(this);
    sub_080AE008(this, 1, 3);
    InitAnimationForceUpdate(this, this->animationState >> 1);
}

void sub_080ADAA8(Entity* this) {
    sub_080ADC84(this);
    if ((this->frame & 0x80) != 0) {
        this->action = 2;
        sub_080ADCA0(this, 0);
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

ASM_FUNC("asm/non_matching/playerItemGustJar/sub_080ADAD4.inc", void sub_080ADAD4(Entity* this))

void sub_080ADC14(Entity* this) {
    switch (gPlayerState.field_0x1c & 0xf) {
        case 6:
            this->action += 1;
            InitAnimationForceUpdate(this, (gPlayerEntity.animationState >> 1) + 4);
            break;
        case 1:
            sub_080ADCA0(this, 0);
            this->action = 2;
            break;
        default:
            UpdateAnimationSingleFrame(this);
            break;
    }
}

void sub_080ADC60(Entity* this) {
    if ((this->frame & 0x80) != 0) {
        this->spriteSettings.draw = 0;
    } else {
        UpdateAnimationSingleFrame(this);
    }
}

void sub_080ADC84(Entity* this) {
    this->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
}

ASM_FUNC("asm/non_matching/playerItemGustJar/sub_080ADCA0.inc", void sub_080ADCA0(Entity* this, u32 param_1))

ASM_FUNC("asm/non_matching/playerItemGustJar/sub_080ADCDC.inc", void sub_080ADCDC(Entity* this))
