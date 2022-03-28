#define NENT_DEPRECATED
#include "entity.h"
#include "functions.h"
#include "sound.h"

extern void (*const gUnk_0812905C[])(Entity*);

extern u8 gUnk_08129096[];

typedef struct {
    Entity base;
    u8 unk_68;
} PlayerItemSwordEntity;

void sub_080A78B8(PlayerItemSwordEntity*, Entity*);
void sub_080A7B98(PlayerItemSwordEntity*);

void sub_080A7A54(PlayerItemSwordEntity*);

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

void sub_080A7824(PlayerItemSwordEntity* this) {
    if (gPlayerState.item != super) {
        DeleteThisEntity();
    }
    if (gPlayerState.field_0x3[1] != 0) {
        if (gPlayerState.jump_status == 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        }
        if ((gPlayerEntity.frame & 0x80) != 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        } else {
            sub_080A78B8(this, &gPlayerEntity);
            if ((gPlayerEntity.frame & 0x20) != 0) {
                SoundReq(SFX_PLY_VO3);
            }
            if (super->frameIndex > 0x8a) {
                super->frameIndex = 0xff;
            }
            if ((gPlayerEntity.frame & 8) != 0) {
                super->flags |= ENT_COLLIDE;
                sub_080A7B98(this);
            } else {
                super->flags &= ~ENT_COLLIDE;
            }
        }
    } else {
        gPlayerState.item = NULL;
        DeleteThisEntity();
    }
}

void sub_080A78B8(PlayerItemSwordEntity* this, Entity* param_2) {
    u32 flipX;

    if ((gPlayerState.sword_state & 0x20) != 0) {
        super->frameIndex = param_2->frameIndex - 0x6a;
        if ((gRoomTransition.frameCount & 4) != 0) {
            sub_080042D0(super, (super->animationState >> 1) + 0xb1, super->spriteIndex);
        } else {
            sub_080042D0(super, super->frameIndex, super->spriteIndex);
        }
    } else {
        if (param_2->frameIndex - 0x6a != super->frameIndex) {
            super->frameIndex = param_2->frameIndex - 0x6a;
            sub_080042D0(super, (u32)super->frameIndex, super->spriteIndex);
        }
    }
    if ((gPlayerState.sword_state & 0x40) != 0) {
        super->spriteSettings.flipX = 0;
    } else {
        if ((param_2->animationState & 2) != 0) {
            flipX = param_2->spriteSettings.flipX ^ 1;
        } else {
            flipX = param_2->spriteSettings.flipX;
        }
        super->spriteSettings.flipX = flipX;
    }
    if ((super->bitfield & 0x80) != 0) {
        if ((param_2->iframes == 0) || ((u8)param_2->iframes == 0x81)) {
            param_2->iframes = super->iframes;
            param_2->knockbackDirection = super->knockbackDirection;
            param_2->knockbackDuration = super->knockbackDuration;
            super->knockbackDuration = 0;
            super->knockbackDirection = 0;
            super->iframes = 0;
        }
        if ((gPlayerState.flags & 0x8000000) != 0) {
            gPlayerState.sword_state |= 0x80;
        } else if (gPlayerState.sword_state != 0) {
            switch (super->bitfield & 0x7f) {
                case 0x44:
                    break;
                case 0x43:
                case 0xd:
                    gPlayerState.sword_state |= 8;
                    param_2->knockbackDuration = 2;
                    if ((gPlayerState.sword_state & 0x20) == 0) {
                        gPlayerState.sword_state &= 0xfe;
                    }
                    break;
                default:
                    if ((gPlayerState.sword_state & 0xc0) == 0) {
                        gPlayerState.sword_state = 0;
                        gPlayerState.field_0x3[1] = 0;
                        gPlayerState.item = NULL;
                        DeleteThisEntity();
                    }
                    break;
            }
        }
    }
    if (super->iframes != 0) {
        if (super->iframes >= 1) {
            super->iframes--;
        } else {
            super->iframes++;
        }
    }
    sub_080A7A54(this);
    if ((*(u8*)&super->spriteSettings * 0x2000000) < 0) { // TODO
        super->hitbox->offset_x = -super->hitbox->offset_x;
    }
}

void sub_080A7A54(PlayerItemSwordEntity* this) {
    u8* tmp;

    tmp = &gUnk_08129096[(gPlayerEntity.frameIndex - 0x6a) * 4];
    super->hitbox->offset_x = tmp[0];
    super->hitbox->offset_y = tmp[1];
    super->hitbox->width = tmp[2];
    super->hitbox->height = tmp[3];
}

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A7A84.inc", void sub_080A7A84(Entity* this))

ASM_FUNC("asm/non_matching/playerItemSword/sub_080A7B98.inc", void sub_080A7B98(PlayerItemSwordEntity* this))
