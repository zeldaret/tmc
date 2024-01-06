/**
 * @file gleerokParticle.c
 * @ingroup Objects
 *
 * @brief Gleerok Particle object
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "player.h"
#include "room.h"

typedef struct {
    Entity base;
    u8 filler[0xC];
    u32 unk74;
    u32 unk78;
    u32 unk7c;
    union SplitWord unk80;
    union SplitWord unk84;
} GleerokParticleEntity;

void GleerokParticle_Init(GleerokParticleEntity*);
void GleerokParticle_Action1(GleerokParticleEntity*);
void GleerokParticle_Action2(GleerokParticleEntity*);
void GleerokParticle_Action3(GleerokParticleEntity*);
void GleerokParticle_Action4(GleerokParticleEntity*);
void sub_08094660(GleerokParticleEntity*);
void sub_08094708(GleerokParticleEntity*, u32, u32);

void GleerokParticle(Entity* this) {
    static void (*const GleerokParticle_Actions[])(GleerokParticleEntity*) = {
        GleerokParticle_Init,    GleerokParticle_Action1, GleerokParticle_Action2,
        GleerokParticle_Action3, GleerokParticle_Action4,
    };

    GleerokParticle_Actions[this->action]((GleerokParticleEntity*)this);
}

typedef struct {
    u8 unk0;
    u8 direction;
    s8 x;
    s8 y;
} gUnk_081229D0_struct;

typedef struct {
    s8 x;
    s8 y;
    u8 timer;
    u8 unk3;
    u8 unk4;
    u8 filler[3];
} gUnk_081229F0_struct;

void GleerokParticle_Init(GleerokParticleEntity* this) {
    static const gUnk_081229D0_struct gUnk_081229D0[] = {
        { 0, 12, 8, 8 }, { 0x40, 0x14, -8, 8 }, { 0x80, 4, 8, -8 }, { 0xC0, 0x1C, -8, -8 },
        { 0, 12, 0, 0 }, { 0x40, 0x14, 0, 0 },  { 0x80, 4, 0, 0 },  { 0xC0, 0x1C, -0, 0 },
    };
    static const gUnk_081229F0_struct gUnk_081229F0[] = {
        { -32, -40, 1, 2, 0, { 0 } },
        { 0x1f, -40, 3, 2, 0x40, { 0 } },
        { -32, 0x17, 1, 0, 0x80, { 0 } },
        { 0x1f, 0x17, 3, 0, 0xC0, { 0 } },
    };
    const gUnk_081229F0_struct* ptr;

    switch (super->type) {
        case 2:
            if (super->subAction == 0) {
                super->subAction = 1;
                this->unk78 = 0x168;
                gRoomControls.camera_target = super;
            } else {
                if (--this->unk78 == -1) {
                    gRoomControls.camera_target = &gPlayerEntity.base;
                    DeleteThisEntity();
                }
            }
            PausePlayer();
            return;
        case 0:
            super->direction = gUnk_081229D0[super->type2].direction;
            super->x.HALF.HI += gUnk_081229D0[super->type2].x;
            super->y.HALF.HI += gUnk_081229D0[super->type2].y;
            if ((gUnk_081229D0[super->type2].unk0 & 0x40) != 0) {
                super->spriteSettings.flipX = 1;
            }
            if ((gUnk_081229D0[super->type2].unk0 & 0x80) != 0) {
                super->spriteSettings.flipY = 1;
            }
            if (super->type2 < 4) {
                super->zVelocity = (Random() & 0x1ffff) | Q_16_16(2.5);
                super->speed = 0x100;
                InitializeAnimation(super, 0x56);
            } else {
                super->zVelocity = Q_16_16(2.5);
                super->speed = 0x100;
                super->direction = (Random() & 3) | super->direction;
                InitializeAnimation(super, 0x57);
            }
            break;
        case 1:
            if (super->type2 == 0) {
                super->child = CreateObjectWithParent(super, GLEEROK_PARTICLE, 1, 0x80);
                if (super->child != NULL) {
                    super->child->child = super->parent;
                }
            }

            switch (super->type2) {
                default:
                    super->frameIndex = 75;
                    super->spriteRendering.alphaBlend = 1;
                    super->speed = 0x7000;
                    super->spriteRendering.b3 = 3;
                    super->spritePriority.b0 = 7;
                    super->spriteRendering.b0 = 3;
                    ptr = gUnk_081229F0 + super->type2;
                    super->x.HALF.HI = ptr->x + super->x.HALF.HI;
                    super->y.HALF.HI = ptr->y + super->y.HALF.HI;
                    super->timer = ptr->timer;
                    super->subtimer = ptr->unk3;
                    this->unk7c = 0xce;
                    this->unk74 = 0;
                    if ((ptr->unk4 & 0x40) != 0) {
                        this->unk80.HALF.HI = -0x100;
                    } else {
                        this->unk80.HALF.HI = 0x100;
                    }
                    if ((ptr->unk4 & 0x80) != 0) {
                        this->unk84.HALF.HI = -0x100;
                    } else {
                        this->unk84.HALF.HI = 0x100;
                    }

                    if (AllocMutableHitbox(super) != NULL) {
                        super->hitbox->offset_x = gUnk_080FD2E8.offset_x;
                        super->hitbox->offset_y = gUnk_080FD2E8.offset_y;
                        super->hitbox->unk2[0] = gUnk_080FD2E8.unk2[0];
                        super->hitbox->unk2[1] = gUnk_080FD2E8.unk2[1];
                        super->hitbox->unk2[2] = gUnk_080FD2E8.unk2[2];
                        super->hitbox->unk2[3] = gUnk_080FD2E8.unk2[3];
                        super->hitbox->width = gUnk_080FD2E8.width;
                        super->hitbox->height = gUnk_080FD2E8.height;
                        COLLISION_ON(super);
                        super->collisionLayer = 2;
                        super->collisionFlags = 7;
                        super->hurtType = 0x48;
                        super->hitType = 0x7a;
                        super->collisionMask = 1;
                    }
                    break;
                case 0x80:
                    super->spriteSettings.draw = 0;
                    break;
            }
            break;
    }

    super->action = 1;
    GleerokParticle_Action1(this);
}

void GleerokParticle_Action1(GleerokParticleEntity* this) {
    switch (super->type) {
        case 0:
            GetNextFrame(super);
            LinearMoveUpdate(super);
            if (GravityUpdate(super, Q_8_8(64.0)) == 0) {
                if (super->type2 < 4) {
                    CreateFx(super, FX_LAVA_SPLASH, 0);
                }
                DeleteThisEntity();
            }
            break;
        case 1:
            if (super->type2 != 0x80) {
                if (--this->unk7c == -1) {
                    this->unk7c = 600;
                    super->action = 2;
                }
                SetAffineInfo(super, this->unk80.HALF_U.HI, this->unk84.HALF_U.HI, 0);
            } else {
                if ((((GenericEntity*)super->child)->field_0x78.HALF.HI & 0x80) == 0) {
                    DeleteThisEntity();
                }
                sub_08094660(this);
            }
            break;
    }
}

void GleerokParticle_Action2(GleerokParticleEntity* this) {
    u32 uVar2;
    u32 uVar5;

    if (this->unk80.HALF.HI < 0) {
        this->unk80.WORD += (int)super->speed;
        uVar2 = -this->unk80.HALF.HI;
    } else {
        this->unk80.WORD -= (int)super->speed;
        uVar2 = this->unk80.HALF_U.HI;
    }

    if (this->unk84.HALF.HI < 0) {
        this->unk84.WORD += (int)super->speed;
        uVar5 = -this->unk84.HALF.HI;
    } else {
        this->unk84.WORD -= (int)super->speed;
        uVar5 = this->unk84.HALF_U.HI;
    }

    if (0x2000 < super->speed) {
        super->speed -= 0x100;
    }

    if (--this->unk7c == -1) {
        this->unk80.HALF.LO = 0;
        this->unk84.HALF.LO = 0;
        super->action = 3;
        this->unk7c = 0x78;
    } else {
        sub_0806FCF4(super, this->unk80.HALF.HI, 0x20, super->timer);
        sub_0806FCF4(super, this->unk84.HALF.HI, 0x20, super->subtimer);
        SetAffineInfo(super, this->unk80.HALF_U.HI, this->unk84.HALF_U.HI, 0);
    }

    if (super->hitbox != NULL) {
        super->hitbox->width = (u32)(0x10000 / (s32)uVar2) >> 3;
        super->hitbox = super->hitbox;
        super->hitbox->height = (u32)(0x10000 / (s32)uVar5) >> 3;
        super->hitbox->offset_x = super->spriteOffsetX;
        super->hitbox->offset_y = super->spriteOffsetY;
    }
}

void GleerokParticle_Action3(GleerokParticleEntity* this) {
    if (--this->unk7c == -1) {
        super->action = 4;
        this->unk7c = 2;
    }
    SetAffineInfo(super, this->unk80.HALF_U.HI, this->unk84.HALF_U.HI, 0);
}

void GleerokParticle_Action4(GleerokParticleEntity* this) {
    u32 uVar2;
    u32 uVar3;

    if ((this->unk80.HALF_U.HI == 0x100) || (this->unk80.HALF.HI == -0x100)) {
        if (this->unk7c == 0) {
            ((GenericEntity*)super->parent)->field_0x7c.HALF.LO = 0;
            if ((((GenericEntity*)super->parent)->field_0x78.HALF.HI & 0x80) == 0) {
                DeleteThisEntity();
            }
        } else {
            this->unk7c--;
        }
    } else {
        if (this->unk80.HALF.HI < 0) {
            this->unk80.HALF.HI--;
            uVar2 = -this->unk80.HALF.HI;
        } else {
            this->unk80.HALF.HI++;
            uVar2 = this->unk80.HALF_U.HI;
        }

        if (this->unk84.HALF.HI < 0) {
            this->unk84.HALF.HI = this->unk84.HALF.HI + -1;
            uVar3 = -this->unk84.HALF.HI;
        } else {
            this->unk84.HALF.HI = this->unk84.HALF.HI + 1;
            uVar3 = this->unk84.HALF_U.HI;
        }
        sub_0806FCF4(super, this->unk80.HALF.HI, 0x20, super->timer);
        sub_0806FCF4(super, this->unk84.HALF.HI, 0x20, super->subtimer);
        SetAffineInfo(super, this->unk80.HALF_U.HI, this->unk84.HALF_U.HI, 0);
    }

    if (super->hitbox != NULL) {
        super->hitbox->width = (u32)(0x10000 / (s32)uVar2) >> 3;
        super->hitbox->height = (u32)(0x10000 / (s32)uVar3) >> 3;
        super->hitbox->offset_x = super->spriteOffsetX;
        super->hitbox->offset_y = super->spriteOffsetY;
    }
}

void sub_08094660(GleerokParticleEntity* this) {
    int iVar1;
    int spriteOffsetX;
    int iVar3;
    int iVar4;
    int iVar5;

    spriteOffsetX = (s8)super->parent->spriteOffsetX;
    if (spriteOffsetX < 0) {
        spriteOffsetX = -spriteOffsetX;
    }

    spriteOffsetX = spriteOffsetX * 2;
    if (spriteOffsetX < 0) {
        iVar5 = spriteOffsetX + 0xf;
    } else {
        iVar5 = spriteOffsetX;
    }

    iVar1 = iVar5 >> 4;
    if (this->unk74 < iVar1) {
        this->unk74 = iVar1;
        iVar3 = super->x.HALF.HI - spriteOffsetX - 0x40;
        iVar4 = super->y.HALF.HI - spriteOffsetX - 0x40;
        this->unk78 = 0x10;
        this->unk7c = 0;
        sub_08094708(this, iVar3, iVar4);
        this->unk78 = 0;
        this->unk7c = 0x10;
        sub_08094708(this, iVar3, iVar4);
        iVar3 = super->x.HALF.HI + spriteOffsetX + 0x30;
        iVar4 = super->y.HALF.HI + spriteOffsetX + 0x30;
        this->unk78 = -16;
        this->unk7c = 0;
        sub_08094708(this, iVar3, iVar4);
        this->unk78 = 0;
        this->unk7c = -16;
        sub_08094708(this, iVar3, iVar4);
    }
}

void sub_08094708(GleerokParticleEntity* this, u32 param_2, u32 param_3) {
    int index;

    for (index = this->unk74 * 2 + 8; index != 0; index--) {
        RestorePrevTileEntity(TILE(param_2, param_3), 2);
        param_2 = param_2 + this->unk78;
        param_3 = param_3 + this->unk7c;
    }
}
