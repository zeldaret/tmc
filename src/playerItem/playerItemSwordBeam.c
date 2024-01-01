/**
 * @file playerItemSwordBeam.c
 * @ingroup Items
 *
 * @brief Sword Beam Player Item
 */
#include "asm.h"
#include "common.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "physics.h"
#include "player.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[4];
    /*0x6c*/ u32 unk_6c;
    /*0x70*/ u32 unk_70;
    /*0x74*/ u32 unk_74;
} PlayerItemSwordBeamEntity;

void PlayerItemSwordBeam_Init(PlayerItemSwordBeamEntity* this);
void PlayerItemSwordBeam_Action1(PlayerItemSwordBeamEntity* this);
void PlayerItemSwordBeam_CyclePalettes(PlayerItemSwordBeamEntity* this);

extern u8 gUnk_08003E44;

void PlayerItemSwordBeam(PlayerItemSwordBeamEntity* this) {
    static void (*const PlayerItemSwordBeam_Actions[])(PlayerItemSwordBeamEntity*) = {
        PlayerItemSwordBeam_Init,
        PlayerItemSwordBeam_Action1,
    };
    PlayerItemSwordBeam_Actions[super->action](this);
}

static const u8 PlayerItemSwordBeam_AnimIndices[] = { 30, 29, 30, 29 };
static const u8 PlayerItemSwordBeam_Palettes[] = { 0, 4, 1, 2, 0xff };

void PlayerItemSwordBeam_Init(PlayerItemSwordBeamEntity* this) {
    static const Hitbox hitbox = { 0, 0, { 4, 0, 0, 0 }, 6, 6 };
    CopyPosition(&gPlayerEntity.base, super);
    super->action++;
    super->spriteSettings.draw = 1;
    super->collisionFlags = gPlayerEntity.base.collisionFlags + 1;
    super->hitbox = (Hitbox*)&hitbox;
    super->speed = 0x380;
    this->unk_74 = 2;
    this->unk_70 = 0;
    if (super->collisionLayer == 2) {
        super->type2 = 1;
    }
    super->direction = super->animationState << 2;
    this->unk_6c = 60;
    switch (super->animationState) {
        case 0:
            super->x.HALF.HI -= 3;
            super->y.HALF.HI -= 8;
            super->spriteSettings.flipY = 1;
            break;
        case 4:
            super->x.HALF.HI += 2;
            break;
        case 2:
            super->spriteSettings.flipX = 1;
            super->x.HALF.HI++;
            super->y.HALF.HI -= 4;
            break;
        case 6:
            super->x.HALF.HI--;
            super->y.HALF.HI -= 4;
            break;
    }

    InitializeAnimation(super, PlayerItemSwordBeam_AnimIndices[super->animationState >> 1]);
    sub_0801766C(super);
    LinearMoveUpdate(super);
    PlayerItemSwordBeam_Action1(this);
    SoundReq(SFX_ITEM_SWORD_BEAM);
}

void PlayerItemSwordBeam_Action1(PlayerItemSwordBeamEntity* this) {
    if (this->unk_6c-- != 0) {
        GetNextFrame(super);
        LinearMoveUpdate(super);
        super->timer++;
        if (super->type2 == 0) {
            sub_0800451C(super);
        }
        if ((sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.base.collisionLayer, 0x80) == 0) &&
            (sub_080040D8(super, &gUnk_08003E44, super->x.HALF.HI, super->y.HALF.HI) != 0)) {
            CreateFx(super, FX_SWORD_MAGIC, 0);
            DeleteThisEntity();
        }
        if (super->contactFlags != 0) {
            CreateFx(super, FX_SWORD_MAGIC, 0);
            DeleteThisEntity();
        }
        if (DoTileInteractionHere(super, 0xc) != NULL) {
            DeleteThisEntity();
        }
    } else {
        DeleteThisEntity();
    }

    PlayerItemSwordBeam_CyclePalettes(this);
}

void PlayerItemSwordBeam_CyclePalettes(PlayerItemSwordBeamEntity* this) {
    if (--this->unk_74 == 0) {
        this->unk_74 = 2;
        this->unk_70++;
        if (PlayerItemSwordBeam_Palettes[this->unk_70] == 0xff) {
            this->unk_70 = 0;
        }
        ChangeObjPalette(super, PlayerItemSwordBeam_Palettes[this->unk_70]);
    }
}
