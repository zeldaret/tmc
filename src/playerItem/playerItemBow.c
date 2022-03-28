#define NENT_DEPRECATED
#include "global.h"
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "effects.h"
#include "object.h"

extern void (*const gUnk_080B3E30[])(Entity*);

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
    Hitbox* hitbox;
} struct_080B3E40;

extern const struct_080B3E40 gUnk_080B3E40[];

void sub_0801917C(PlayerItemBowEntity*);

void PlayerItemBow(Entity* this) {
    gUnk_080B3E30[(this->action)](this);
}

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
        super->field_0x3c = gPlayerEntity.field_0x3c + 1;
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
        super->hitbox = ptr->hitbox;
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
            object = CreateObject(OBJECT_43, super->type, 1);
            if (object != NULL) {
                CopyPosition(super, object);
            }
        } else {
            this->unk_78 = 0;
        }
        sub_0801917C(this);
    }
}

ASM_FUNC("asm/non_matching/playerItemBow/sub_0801917C.inc", void sub_0801917C(PlayerItemBowEntity* this))

void sub_08019410(Entity* this) {
    if (this->actionDelay < 0xf) {
        InitializeAnimation(this, this->animIndex);
    } else {
        GetNextFrame(this);
    }
    if (this->actionDelay-- == 0) {
        DeleteThisEntity();
    }
}

void sub_08019444(Entity* this) {
    GetNextFrame(this);
    LinearMoveUpdate(this);
    if (GravityUpdate(this, 0x2000) == 0) {
        DeleteThisEntity();
    }
}

void sub_08019468(Entity* this) {
    if (this->hurtType == 0x0e) {
        CreateFx(this, FX_REFLECT5, 0);
    }
}
