#include "entity.h"
#include "player.h"
#include "physics.h"
#include "functions.h"
#include "sound.h"
#include "effects.h"
#include "common.h"
#include "asm.h"

void sub_08019498(Entity*);
void sub_08019580(Entity*);
void sub_08019644(Entity*);

extern u8 gUnk_08003E44;

void PlayerItemSwordBeam(Entity* this) {
    static void (*const actionFuncs[])(Entity*) = {
        sub_08019498,
        sub_08019580,
    };
    actionFuncs[this->action](this);
}

static const u8 gUnk_080B43FC[] = { 30, 29, 30, 29 };
static const u8 gUnk_080B4400[] = { 0, 4, 1, 2, -1, 0, 0, 0 };

void sub_08019498(Entity* this) {
    static const Hitbox gUnk_080B4408 = { 0, 0, { 4, 0, 0, 0 }, 6, 6 };
    CopyPosition(&gPlayerEntity, this);
    this->action += 0x01;
    this->spriteSettings.draw = 1;
    this->collisionFlags = gPlayerEntity.collisionFlags + 1;
    this->hitbox = (Hitbox*)&gUnk_080B4408;
    this->speed = 0x380;
    *(u32*)&this->field_0x74 = 2;
    this->field_0x70.WORD = 0;
    if (this->collisionLayer == 0x02) {
        this->type2 = 0x01;
    }
    this->direction = this->animationState << 2;
    *(u32*)&this->field_0x6c = 0x3c;
    switch (this->animationState) {
        case 0:
            this->x.HALF.HI += -3;
            this->y.HALF.HI += -8;
            this->spriteSettings.flipY = 1;
            break;
        case 4:
            this->x.HALF.HI += 2;
            break;
        case 2:
            this->spriteSettings.flipX = 1;
            this->x.HALF.HI += 1;
            this->y.HALF.HI += -4;
            break;
        case 6:
            this->x.HALF.HI -= 1;
            this->y.HALF.HI += -4;
            break;
    }

    InitializeAnimation(this, gUnk_080B43FC[this->animationState >> 1]);
    sub_0801766C(this);
    LinearMoveUpdate(this);
    sub_08019580(this);
    SoundReq(SFX_ITEM_SWORD_BEAM);
}

void sub_08019580(Entity* this) {
    if (--*(int*)&this->field_0x6c != -1) {
        GetNextFrame(this);
        LinearMoveUpdate(this);
        this->timer += 0x01;
        if (this->type2 == 0) {
            sub_0800451C(this);
        }
        if ((sub_080B1BA4(TILE(this->x.HALF.HI, this->y.HALF.HI), gPlayerEntity.collisionLayer, 0x80) == 0) &&
            (sub_080040D8(this, &gUnk_08003E44, this->x.HALF.HI, this->y.HALF.HI) != 0)) {
            CreateFx(this, FX_SWORD_MAGIC, 0);
            DeleteThisEntity();
        }
        if (this->contactFlags != 0) {
            CreateFx(this, FX_SWORD_MAGIC, 0);
            DeleteThisEntity();
        }
        if (sub_08008790(this, 0xc) != NULL) {
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }

    sub_08019644(this);
}

void sub_08019644(Entity* this) {
    s32 iVar1;

    iVar1 = *(int*)&this->field_0x74 + -1;
    *(int*)&this->field_0x74 = iVar1;
    if (iVar1 == 0) {
        *(int*)&this->field_0x74 = 2;
        this->field_0x70.WORD += 1;
        if (gUnk_080B4400[this->field_0x70.WORD] == 0xff) {
            this->field_0x70.WORD = iVar1;
        }
        ChangeObjPalette(this, (u32)gUnk_080B4400[this->field_0x70.WORD]);
    }
}
