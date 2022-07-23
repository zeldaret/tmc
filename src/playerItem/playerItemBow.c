#define NENT_DEPRECATED
#include "global.h"
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "effects.h"
#include "object.h"
#include "playeritem.h"
#include "sound.h"
#include "save.h"

typedef struct {
    Entity base;
    u8 unk_68;
    u8 unk_69[3];
    u32 unk_6c;
    u32 unk_70;
    u32 unk_74;
    u32 unk_78;
} PlayerItemBowEntity;

typedef struct {
    s8 x;
    s8 y;
    u8 spriteSettings;
    u8 unk_3;
    s8 unk_4;
    s8 unk_5;
    u8 animIndex;
    u8 unk_7;
    const Hitbox* hitbox;
} struct_080B3E40;

extern u8 gUnk_08003E44;

extern Entity* sub_08008782(Entity*, u32, s32, s32);
extern void sub_08017744(Entity*);
extern void ModArrows(s32);

void sub_08019468(PlayerItemBowEntity*);
void sub_08018FE4(PlayerItemBowEntity*);
void sub_0801917C(PlayerItemBowEntity*);
void sub_08019410(PlayerItemBowEntity*);
void sub_08019444(PlayerItemBowEntity*);

void PlayerItemBow(Entity* this) {
    static void (*const gUnk_080B3E30[])(PlayerItemBowEntity*) = {
        sub_08018FE4,
        sub_0801917C,
        sub_08019410,
        sub_08019444,
    };
    gUnk_080B3E30[this->action]((PlayerItemBowEntity*)this);
}

static const Hitbox gUnk_080B3E70;
static const Hitbox gUnk_080B3E78;

static const struct_080B3E40 gUnk_080B3E40[] = {
    { -3, -12, 0, 0, 0, -5, 2, 0, &gUnk_080B3E78 },
    { 8, -4, 1, 0, 5, 0, 1, 0, &gUnk_080B3E70 },
    { 0, 1, 0, 1, 0, 5, 2, 0, &gUnk_080B3E78 },
    { -8, -4, 0, 0, -5, 0, 1, 0, &gUnk_080B3E70 },
};

static const Hitbox gUnk_080B3E70 = { 0, 0, { 4, 0, 0, 0 }, 6, 4 };
static const Hitbox gUnk_080B3E78 = { 0, 0, { 0, 0, 0, 4 }, 4, 6 };

void sub_08018FE4(PlayerItemBowEntity* this) {
    Entity* object;
    const struct_080B3E40* ptr;
    super->action = 1;
    if (super->type != 0) {
        super->spriteSettings.draw = 1;
        super->flags |= 0x80;
        this->unk_74 = 0x6a;
        super->hurtType = super->type2;
        super->spriteIndex = 0xa6;
        if (super->hurtType == 0x0e) {
            super->speed = 0x400;
        } else {
            super->speed = 0x300;
        }
        super->direction = super->animationState << 2;
        super->collisionFlags = gPlayerEntity.collisionFlags + 1;
        super->flags2 = gPlayerEntity.flags2;
        if (super->collisionLayer == 2) {
            super->type2 = 1;
        } else {
            super->type2 = 0;
        }
        super->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
        ptr = &gUnk_080B3E40[super->animationState >> 1];
        super->x.HALF.HI = gPlayerEntity.x.HALF.HI + ptr->x;
        super->y.HALF.HI = gPlayerEntity.y.HALF.HI + ptr->y;
        super->spriteSettings.flipX = ptr->spriteSettings;
        super->spriteSettings.flipY = ptr->unk_3;
        super->animIndex = ptr->animIndex;
        this->unk_6c = ptr->unk_4;
        this->unk_70 = ptr->unk_5;
        super->hitbox = (Hitbox*)ptr->hitbox;
        sub_0801766C(super);
        if (super->hurtType == 0x0e) {
            super->animIndex += 6;
            super->spriteVramOffset = 0;
        }
        InitializeAnimation(super, super->animIndex);
        SoundReq(SFX_FC);
    } else {
        super->updatePriority = 6;
        super->frameIndex = 0xff;
        super->spriteSettings.flipX = gUnk_080B3E40[super->animationState >> 1].spriteSettings;
        gPlayerState.item = super;
        LoadSwapGFX(super, 1, 3);
        sub_08079BD8(super);
        if (this->unk_68 == 0xa) {
            this->unk_78 = 0x3c;
            object = CreateObject(SWORD_PARTICLE, super->type, 1);
            if (object != NULL) {
                CopyPosition(super, object);
            }
        } else {
            this->unk_78 = 0;
        }
        sub_0801917C(this);
    }
}

void sub_0801917C(PlayerItemBowEntity* this) {
    u8 arrowCount;
    bool32 tmp2;
    s32 tmp3;
    Entity* entity;

    if (super->type != 0) {
        if (--this->unk_74 == 0) {
            sub_08019468(this);
            DeleteThisEntity();
        }
        GetNextFrame(super);
        if (this->unk_74 < 0x18) {
            super->spriteSettings.draw ^= 1;
        }
        LinearMoveUpdate(super);
        if (sub_08008782(super, (super->hurtType == 0x0e) ? 1 : 4, this->unk_6c, this->unk_70) != NULL) {
            if (super->hurtType != 0x0e) {
                DeleteThisEntity();
            }
            tmp2 = TRUE;
        } else {
            tmp2 = FALSE;
        }
        if (super->hurtType == 0x0e) {
            super->timer++;
            if ((super->timer & 7) == 0) {
                CreateFx(super, FX_SPARKLE2, 0);
            }
        }
        if (super->type2 == 0) {
            sub_0800451C(super);
        }
        if ((sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.collisionLayer, 0x80) == 0) && (!tmp2) &&
            sub_080040D8(super, &gUnk_08003E44, super->x.HALF.HI, super->y.HALF.HI) != 0) {
            super->timer = 30;
            super->action++;
            if (super->hurtType == 0x0e) {
                sub_08019468(this);
                InitializeAnimation(super, super->animIndex + 0xf);
            } else {
                InitializeAnimation(super, super->animIndex + 2);
            }
            sub_08017744(super);
            super->flags &= 0x7f;
            super->speed = 0;
            tmp3 = super->x.WORD;
            if (tmp3 < 0) {
                tmp3 = 0;
            }
            super->x.WORD = tmp3;
            tmp3 = super->y.WORD;
            if (tmp3 < 0) {
                tmp3 = 0;
            }
            super->y.WORD = tmp3;
            SoundReq(SFX_18A);
        }
        if ((super->contactFlags != 0) && (!tmp2)) {
            if (super->hurtType == 0x0e) {
                sub_08019468(this);
            }
            sub_08017744(super);
            if ((super->contactFlags & 0x3f) == 0x42) {
                super->spriteSettings.draw = 1;
                super->action = 3;
                super->direction ^= 0x10;
                super->speed = 0x100;
                super->zVelocity = Q_16_16(0.5);
                super->flags &= 0x7f;
                InitializeAnimation(super, 6);
            } else {
                super->action++;
                super->timer = 1;
                super->spriteSettings.draw = 0;
            }
        }

    } else {
        if ((PlayerItemBowEntity*)gPlayerState.item != this || (gPlayerState.field_0x1f[2] == 0)) {
            if ((PlayerItemBowEntity*)gPlayerState.item == this) {
                gPlayerState.item = 0;
            }
            gPlayerState.field_0x1f[2] = 0;
            DeleteThisEntity();
        }
        if ((this->unk_68 == 0xa) && (gPlayerState.field_0x1f[2] != 0)) {
            if (gPlayerState.field_0x1f[2] < 0x78) {
                gPlayerState.field_0x1f[2]++;
            } else {
                super->hurtType = 0x0e;
            }
        }
        arrowCount = gSave.stats.arrowCount;
        if (super->frameIndex - this->unk_78 != gPlayerEntity.frameIndex) {
            super->frameIndex = gPlayerEntity.frameIndex + this->unk_78;
            if (arrowCount == 0) {
                super->frameIndex += 0x2a;
            }
            sub_080042D0(super, super->frameIndex, super->spriteIndex);
        }
        if ((gPlayerEntity.frame & 1) != 0 && arrowCount != 0) {
            entity = CreatePlayerItem(PLAYER_ITEM_BOW, 1, super->hurtType, 9);
            if (entity != NULL) {
                gPlayerState.field_0x3[1] |= 0x80;
                ModArrows(-1);
            }
        }
        sub_08078E84(super, &gPlayerEntity);
    }
}

void sub_08019410(PlayerItemBowEntity* this) {
    if (super->timer < 0xf) {
        InitializeAnimation(super, super->animIndex);
    } else {
        GetNextFrame(super);
    }
    if (super->timer-- == 0) {
        DeleteThisEntity();
    }
}

void sub_08019444(PlayerItemBowEntity* this) {
    GetNextFrame(super);
    LinearMoveUpdate(super);
    if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
        DeleteThisEntity();
    }
}

void sub_08019468(PlayerItemBowEntity* this) {
    if (super->hurtType == 0x0e) {
        CreateFx(super, FX_REFLECT5, 0);
    }
}
