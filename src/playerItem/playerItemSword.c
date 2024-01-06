/**
 * @file playerItemSword.c
 * @ingroup Items
 *
 * @brief Sword Player Item
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
} PlayerItemSwordEntity;

void sub_080A78B8(PlayerItemSwordEntity*, Entity*);
void sub_080A7B98(PlayerItemSwordEntity*);

void sub_080A7A54(PlayerItemSwordEntity*);
void PlayerItemSword_Action2(PlayerItemSwordEntity*);
void PlayerItemSword_Action1(PlayerItemSwordEntity*);
void PlayerItemSword_Init(PlayerItemSwordEntity*);
void sub_080A7A84(PlayerItemSwordEntity*);

void PlayerItemSword(Entity* this) {
    static void (*const PlayerItemSword_Actions[])(PlayerItemSwordEntity*) = {
        PlayerItemSword_Init,
        PlayerItemSword_Action1,
        PlayerItemSword_Action2,
    };
    PlayerItemSword_Actions[this->action]((PlayerItemSwordEntity*)this);
    if (this->type == 0) {
        sub_08078E84(this, &gPlayerEntity.base);
        this->hitbox->offset_x += this->spriteOffsetX;
        this->hitbox->offset_y += this->spriteOffsetY;
    }
}

void PlayerItemSword_Init(PlayerItemSwordEntity* this) {
    static const u8 gUnk_08129068[] = {
        0x56,
        0x55,
        0x55,
        0x0,
    };
    static const u16 gUnk_0812906C[] = {
        SFX_PLY_VO1,
        SFX_PLY_VO4,
        SFX_PLY_VO5,
    };
    if (((super->type == 0) && (gPlayerState.attack_status == 0)) && ((gPlayerState.jump_status & 0x20) == 0)) {
        DeleteThisEntity();
    }
    if (AllocMutableHitbox(super) == NULL) {
        DeleteThisEntity();
    }
    LoadSwapGFX(super, 1, 3);
    super->collisionFlags = (gPlayerEntity.base.collisionFlags + 1) | 0x20;
    super->collisionMask = gPlayerEntity.base.collisionMask;
    super->updatePriority = 6;
    super->contactFlags = 0;
    super->iframes = 0;
    super->knockbackDuration = 0;
    super->action++;
    super->frameIndex = 0xff;
    sub_0801766C(super);
    if (super->type == 0) {
        if ((gPlayerState.jump_status & 0x20) != 0) {
            super->flags &= ~ENT_COLLIDE;
            super->type2 = 2;
            super->damage = gPlayerState.swordDamage * 2 + 8;
            switch (this->unk_68) {
                case 6:
                    super->hurtType = 0x1a;
                    break;
                case 1:
                    super->hurtType = 0x18;
                    break;
                default:
                    super->hurtType = 0x19;
                    break;
            }
            super->action++;
            PlayerItemSword_Action2(this);
        } else {
            super->damage = gPlayerState.swordDamage * 2 + 4;
            PlayerItemSword_Action1(this);
        }
        gPlayerState.item = super;
        sub_08079BD8(super);
        SoundReq(gUnk_0812906C[GetRandomByWeight(gUnk_08129068)]);
    } else {
        PlayerItemSword_Action1(this);
    }
    SoundReq(SFX_10E);
}

static const s8 gUnk_08129072[][2] = { { 0x0, 0xd },   { 0xf, -0x3 },   { 0x0, -0x16 },   { -0x10, 0xd },
                                       { 0x10, 0xd },  { 0x10, -0x13 }, { -0x10, -0x13 }, { 0x0, -0x3 },
                                       { 0x10, -0x3 }, { -0x10, -0x3 }, { -0xc, 0x7 },    { 0xc, 0x7 },
                                       { 0xc, -0xf },  { -0xc, -0xf } };

static const s8 gUnk_0812908E[] = { -0x2, -0xf, 0xb, -0x3, 0x2, 0x7, -0xb, -0x3 };

static const s8 gUnk_08129096[] = {
    -0x10, 0x0,   0x6,  0x3,  -0x8,  0x8,   0x8,  0x8,  -0x8,  0x8,   0x8, 0x8, 0x0,   0xc,   0xb,  0xb,
    0x6,   0xc,   0x8,  0x8,  0xa,   0xb,   0x6,  0x6,  0xa,   0x8,   0x6, 0x6, 0xc,   0x4,   0x6,  0x6,
    0xc,   0x4,   0x6,  0x6,  0x0,   0x0,   0x0,  0x0,  0x2,   0xb,   0x4, 0x8, 0x2,   0xb,   0x4,  0x8,
    0x0,   -0x10, 0x5,  0x6,  -0xc,  -0xc,  0x8,  0x8,  -0x10, -0xc,  0x8, 0x8, -0x14, 0x0,   0xa,  0xa,
    -0x12, 0x4,   0x8,  0x8,  -0x10, 0x8,   0x6,  0x6,  -0xc,  0x6,   0x6, 0x6, -0x8,  0x6,   0x6,  0x6,
    -0x8,  0x6,   0x6,  0x6,  0x0,   0x0,   0x0,  0x0,  -0x10, 0x0,   0x8, 0x4, -0x10, 0x0,   0x8,  0x4,
    0xe,   -0x6,  0x6,  0x6,  0x10,  -0x10, 0x8,  0x8,  0x10,  -0x10, 0x8, 0x8, 0x0,   -0x14, 0xa,  0xa,
    0x0,   -0x14, 0x8,  0x8,  -0xc,  -0x12, 0x6,  0x6,  -0xc,  -0xe,  0x6, 0x6, -0xc,  -0xa,  0x6,  0x6,
    -0xc,  -0xa,  0x6,  0x6,  0x0,   0x0,   0x0,  0x0,  0x0,   -0x12, 0x4, 0x8, 0x0,   -0x12, 0x4,  0x8,
    0x2,   0xb,   0x4,  0x8,  0x2,   0xb,   0x4,  0x8,  0x2,   0xb,   0x4, 0x8, 0x2,   0xb,   0x4,  0x8,
    0x2,   0xb,   0x4,  0x8,  -0x10, 0x0,   0x8,  0x4,  -0x10, 0x0,   0x8, 0x4, -0x10, 0x0,   0x8,  0x4,
    -0x10, 0x0,   0x8,  0x4,  -0x10, 0x0,   0x8,  0x4,  0x0,   -0x12, 0x4, 0x8, 0x0,   -0x12, 0x4,  0x8,
    0x0,   -0x12, 0x4,  0x8,  0x0,   -0x12, 0x4,  0x8,  0x0,   -0x12, 0x4, 0x8, 0x2,   0xb,   0x4,  0x8,
    0x2,   0xb,   0x4,  0x8,  0x2,   0xb,   0x4,  0x8,  -0x10, 0x0,   0x8, 0x4, -0x10, 0x0,   0x8,  0x4,
    -0x10, 0x0,   0x8,  0x4,  0x0,   -0x12, 0x4,  0x8,  0x0,   -0x12, 0x4, 0x8, 0x0,   -0x12, 0x4,  0x8,
    0xe,   0xa,   0xc,  0xc,  0x4,   0xc,   0xc,  0xc,  -0x4,  0xc,   0xc, 0xc, -0xe,  0x4,   0xc,  0xc,
    -0xe,  -0x6,  0xc,  0xc,  -0x4,  -0x15, 0xc,  0xc,  0x6,   -0x14, 0xc, 0xc, 0xc,   -0x8,  0xc,  0xc,
    0x5,   0x10,  0x4,  0x8,  0x8,   -0x12, 0x6,  0x8,  -0x4,  -0x12, 0x8, 0x8, 0x8,   -0x8,  0xc,  0xc,
    0x8,   -0x4,  0xc,  0xc,  0xa,   0x4,   0xc,  0xc,  0x4,   0xc,   0xc, 0xc, 0x4,   0xc,   0x4,  0xc,
    0x0,   -0x8,  0x4,  0xc,  -0x6,  0x8,   0xc,  0xc,  0x4,   0x6,   0xc, 0xc, -0xe,  0x8,   0xc,  0xc,
    -0xc,  0x8,   0xa,  0xa,  -0xa,  -0x4,  0xc,  0xc,  -0x2,  -0x12, 0xc, 0xc, 0x0,   -0x12, 0x4,  0xc,
    -0x8,  0x0,   0x8,  0x4,  0x4,   0x8,   0xa,  0xa,  0x8,   -0x8,  0xc, 0xc, 0x4,   0x8,   0xc,  0xc,
    0x4,   0x8,   0xc,  0xc,  -0x4,  0x8,   0xc,  0xc,  -0x8,  0x2,   0xc, 0xc, -0x8,  0x0,   0x8,  0x4,
    0x8,   0x0,   0x8,  0x4,  -0x4,  -0x8,  0xa,  0xa,  -0x8,  0x8,   0xc, 0xc, -0x4,  -0x8,  0xc,  0xc,
    -0x4,  -0x8,  0xc,  0xc,  0x4,   -0x8,  0xc,  0xc,  0x8,   -0x2,  0xc, 0xc, 0x8,   0x0,   0x8,  0x4,
    -0x4,  -0x12, 0x8,  0x8,  -0x4,  -0x12, 0x8,  0x8,  0x0,   0x0,   0x0, 0x0, 0x0,   0x0,   0x0,  0x0,
    0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0, 0x0, 0x0,   0x8,   0x18, 0x18,
    0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0, 0x0, 0x0,   0x0,   0x0,  0x0,
    0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0, 0x0, 0x0,   0x8,   0x18, 0x18,
    0x0,   0x8,   0x18, 0x18, 0x0,   0x8,   0x18, 0x18, 0x0,   0x0,   0x0, 0x0, 0x0,   0x0,   0x0,  0x0,
    0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0, 0x0, 0x0,   0x8,   0x18, 0x18,
    0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0,  0x0,  0x2,   0xb,   0x4, 0x8, 0x2,   0xb,   0x4,  0x8,
    0x2,   0xb,   0x4,  0x8,  0x2,   0xb,   0x4,  0x8,  0x2,   0xb,   0x4, 0x8, 0x0,   0x0,   0x0,  0x0,
    0x0,   0x0,   0x0,  0x0,  -0x10, 0x0,   0x8,  0x4,  -0x10, 0x0,   0x8, 0x4, -0x10, 0x0,   0x8,  0x4,
    -0x10, 0x0,   0x8,  0x4,  -0x10, 0x0,   0x8,  0x4,  0x0,   0x0,   0x0, 0x0, 0x0,   0x0,   0x0,  0x0,
    0x0,   -0x12, 0x4,  0x8,  0x0,   -0x12, 0x4,  0x8,  0x0,   -0x12, 0x4, 0x8, 0x0,   -0x12, 0x4,  0x8,
    0x0,   -0x12, 0x4,  0x8,  0x0,   0x0,   0x0,  0x0,  0x0,   0x0,   0x0, 0x0
};

static const s8 gUnk_081292E2[] = { 0x0,   0x2,  -0x8,  0xa,   -0x8,  0xa,   0x0,   0xe,   0x6,   0xe,   0xa,
                                    0xd,   0xa,  0xa,   0xc,   0x6,   0x0,   0x2,   0x2,   0xb,   0x2,   0xb,
                                    -0x2,  0x0,  -0xe,  -0xc,  -0x12, -0xc,  -0x16, 0x0,   -0x14, 0x4,   -0x12,
                                    0x8,   -0xe, 0x6,   -0xa,  0xa,   -0x2,  0x0,   -0x10, 0x0,   -0x10, 0x0,
                                    0x0,   -0x2, 0x10,  -0x12, 0x10,  -0x12, 0x0,   -0x16, 0x0,   -0x16, -0xc,
                                    -0x14, -0xc, -0x10, -0xc,  -0xc,  0x0,   -0x2 };

void PlayerItemSword_Action1(PlayerItemSwordEntity* this) {
    Entity* effect;
    Effect type;
    const s8* ptr;
    s32 tmp;

    if (super->type == 0) {
        if ((PlayerItemSwordEntity*)gPlayerState.item != this) {
            DeleteThisEntity();
        }
        if (gPlayerState.attack_status == 0) {
            gPlayerState.item = NULL;
            gPlayerState.sword_state = 0;
            DeleteThisEntity();
        }
        if (gPlayerState.sword_state != 0) {
            super->hurtType = 0xd;
            if ((gPlayerState.sword_state & 0x40) != 0) {
                switch (this->unk_68) {
                    case 6:
                        super->hurtType = 0xa;
                        break;
                    case 1:
                        super->hurtType = 8;
                        break;
                    default:
                        super->hurtType = 9;
                        break;
                }
            }
            if ((gPlayerEntity.base.frame & 0x20) != 0) {
                SoundReq(SFX_116);
            }
        } else {

            if ((gPlayerState.flags & PL_SWORD_THRUST) != 0) {
                if (this->unk_68 == 6) {
                    super->hurtType = 0xc;
                } else {
                    super->hurtType = 0xb;
                }
            }
            if (((gPlayerState.swordDamage) != 0) && ((gPlayerEntity.base.frame & 0x40) != 0)) {
                type = FX_BLUE_SPARKLE;
                if ((gPlayerState.swordDamage) == 1) {
                    type = FX_SPARKLE2;
                }
                effect = CreateFx(super, type, 0);
                if (effect != NULL) {
                    ptr = &gUnk_081292E2[super->frameIndex * 2];
                    effect->y.HALF.HI = super->y.HALF.HI + ptr[1];
                    tmp = ptr[0];
                    if ((*(u8*)&super->spriteSettings * 0x2000000) < 0) { // TODO
                        tmp = -tmp;
                    }
                    effect->x.HALF.HI = super->x.HALF.HI + tmp;
                }
            }
        }
        sub_080A78B8(this, &gPlayerEntity.base);
        sub_080A7A84(this);
    } else {
        if (!((gPlayerState.attack_status == 0) || (gPlayerState.item->hurtType == 0))) {
            super->flags |= ENT_COLLIDE;
            super->hurtType = gPlayerState.item->hurtType;
            sub_080A7A54(this);
            sub_080A7A84(this);
        } else {
            super->frameIndex = 0xff;
            super->flags &= ~ENT_COLLIDE;
        }
    }
}

void PlayerItemSword_Action2(PlayerItemSwordEntity* this) {
    if (gPlayerState.item != super) {
        DeleteThisEntity();
    }
    if (gPlayerState.attack_status != 0) {
        if (gPlayerState.jump_status == 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        }
        if ((gPlayerEntity.base.frame & 0x80) != 0) {
            gPlayerState.item = NULL;
            DeleteThisEntity();
        } else {
            sub_080A78B8(this, &gPlayerEntity.base);
            if ((gPlayerEntity.base.frame & 0x20) != 0) {
                SoundReq(SFX_PLY_VO3);
            }
            if (super->frameIndex > 0x8a) {
                super->frameIndex = 0xff;
            }
            if ((gPlayerEntity.base.frame & 8) != 0) {
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
    if ((super->contactFlags & CONTACT_NOW) != 0) {
        if ((param_2->iframes == 0) || ((u8)param_2->iframes == 0x81)) {
            param_2->iframes = super->iframes;
            param_2->knockbackDirection = super->knockbackDirection;
            param_2->knockbackDuration = super->knockbackDuration;
            super->knockbackDuration = 0;
            super->knockbackDirection = 0;
            super->iframes = 0;
        }
        if ((gPlayerState.flags & PL_SWORD_THRUST) != 0) {
            gPlayerState.sword_state |= 0x80;
        } else if (gPlayerState.sword_state != 0) {
            switch (super->contactFlags & 0x7f) {
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
                        gPlayerState.attack_status = 0;
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
    const u8* tmp;

    tmp = &gUnk_08129096[(gPlayerEntity.base.frameIndex - 0x6a) * 4];
    super->hitbox->offset_x = tmp[0];
    super->hitbox->offset_y = tmp[1];
    super->hitbox->width = tmp[2];
    super->hitbox->height = tmp[3];
}

void sub_080A7A84(PlayerItemSwordEntity* this) {
    u32 one;
    Entity* effect;
    s16 xOffset;
    s32 uVar3;
    Entity* entity;
    const s8* ptr;
    u32 tmp;
    u32 tmp2;
    u32 yOffset;

    if ((gPlayerEntity.base.frame & 0xf) != 0) {
        uVar3 = gUnk_08129072[((gPlayerEntity.base.frame & 0xf) - 1)][0];
        one = 1;
        yOffset = gUnk_08129072[(gPlayerEntity.base.frame & 0xf) - 1][one];
        if (((gPlayerState.sword_state & 0xc0) == 0) && (gPlayerEntity.base.spriteSettings.flipX == 1)) {
            uVar3 = -uVar3;
        }
        if (super->type != 0) {
            DoTileInteraction(super, 0, super->x.HALF.HI + uVar3, super->y.HALF.HI + yOffset);
        } else if (super->z.WORD == 0) {
            if (gPlayerState.skills & SKILL_ROCK_BREAKER) {
                tmp2 = 1;
            } else {
                tmp2 = 0;
            }
            xOffset = uVar3;
            if (((DoTileInteraction(super, tmp2, super->x.HALF.HI + xOffset, super->y.HALF.HI + yOffset) == NULL) &&
                 (gPlayerState.sword_state != 0)) &&
                ((gPlayerState.sword_state & 0xc0) == 0)) {
                entity = super;
                if (GetActTileRelativeToEntity(entity, xOffset, yOffset) == ACT_TILE_46) {
                    SoundReqClipped(&gPlayerEntity.base, SFX_ITEM_GLOVES_KNOCKBACK);
                } else {
                    SoundReqClipped(&gPlayerEntity.base, SFX_METAL_CLINK);
                }
                effect = CreateObject(SPECIAL_FX, FX_LIGHTNING, 0);
                if (effect != NULL) {
                    ptr = gUnk_0812908E;
                    effect->x.HALF.HI = entity->x.HALF.HI + ptr[entity->animationState];
                    tmp = entity->animationState + 1;
                    effect->y.HALF.HI = entity->y.HALF.HI + ptr[tmp];
                    effect->z = entity->z;
                }
            }
        }
    }
}

void sub_080A7B98(PlayerItemSwordEntity* this) {
    u32 i, j;
    u32 uVar2;
    s32 xOffset;
    s32 yOffset;
    if ((gPlayerState.skills & 8) != 0) {
        uVar2 = 1;
    } else {
        uVar2 = 0;
    }
    yOffset = -0x10;

    for (i = 0; i < 3; i++) {
        xOffset = -0x10;
        for (j = 0; j < 3; j++) {
            DoTileInteraction(super, uVar2, super->x.HALF.HI + xOffset, super->y.HALF.HI + yOffset);
            xOffset += 0x10;
        }
        yOffset += 0x10;
    }
}
