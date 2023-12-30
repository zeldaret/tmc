/**
 * @file playerItemSpiral Beam.c
 * @ingroup Items
 *
 * @brief Spiral Beam Player Item
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[4];
    /*0x6c*/ u32 unk_6c;
} PlayerItemSpiralBeamEntity;

extern u8 gUnk_08003E44;

void PlayerItemSpiralBeam_Init(PlayerItemSpiralBeamEntity*);
void PlayerItemSpiralBeam_Action1(PlayerItemSpiralBeamEntity*);

void PlayerItemSpiralBeam(PlayerItemSpiralBeamEntity* this) {
    static void (*const PlayerItemSpiralBeam_Actions[])(PlayerItemSpiralBeamEntity*) = {
        PlayerItemSpiralBeam_Init,
        PlayerItemSpiralBeam_Action1,
    };
    PlayerItemSpiralBeam_Actions[super->action](this);
}

void PlayerItemSpiralBeam_Init(PlayerItemSpiralBeamEntity* this) {
    static const Hitbox gUnk_08109AD0 = { 0, 0, { 4, 0, 0, 0 }, 6, 6 };
    CopyPosition(&gPlayerEntity.base, super);
    super->action++;
    super->spriteSettings.draw = TRUE;
    super->collisionFlags = gPlayerEntity.base.collisionFlags + 1;
    super->hitbox = (Hitbox*)&gUnk_08109AD0;
    super->speed = 0x380;
    super->animationState = super->animationState & 0x7f;
    if (super->collisionLayer == 2) {
        super->type2 = 1;
    }
    super->direction = super->animationState << 2;
    this->unk_6c = 60;
    InitializeAnimation(super, (super->animationState >> 1) + 0xc);
    sub_0801766C(super);
    LinearMoveUpdate(super);
    PlayerItemSpiralBeam_Action1(this);
    SoundReq(SFX_ITEM_SWORD_BEAM);
}

void PlayerItemSpiralBeam_Action1(PlayerItemSpiralBeamEntity* this) {
    if (this->unk_6c-- != 0) {
        GetNextFrame(super);
        LinearMoveUpdate(super);
        super->timer++;
        if (super->type2 == 0) {
            sub_0800451C(super);
        }
        if (!sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.base.collisionLayer, 0x80) &&
            sub_080040D8(super, &gUnk_08003E44, super->x.HALF.HI, super->y.HALF.HI)) {
            CreateFx(super, FX_SWORD_MAGIC, 0);
            DeleteThisEntity();
        }
        if (super->contactFlags != 0) {
            CreateFx(super, FX_SWORD_MAGIC, 0);
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }
}
