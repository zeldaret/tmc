/**
 * @file playerItemFireRodProjectile.c
 * @ingroup Items
 *
 * @brief Fire Rod Projectile Player Item
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "functions.h"
#include "physics.h"
#include "playeritem.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
    /*0x6a*/ u8 unused[2];
    /*0x6c*/ u32 unk_6c;
} PlayerItemFireRodProjectileEntity;

extern u8 gUnk_08003E44;

void PlayerItemFireRodProjectile_Init(PlayerItemFireRodProjectileEntity* this);
void PlayerItemFireRodProjectile_Action1(PlayerItemFireRodProjectileEntity* this);

void PlayerItemFireRodProjectile(Entity* this) {
    static void (*const PlayerItemFireRodProjectile_Actions[])(PlayerItemFireRodProjectileEntity*) = {
        PlayerItemFireRodProjectile_Init,
        PlayerItemFireRodProjectile_Action1,
    };
    PlayerItemFireRodProjectile_Actions[this->action]((PlayerItemFireRodProjectileEntity*)this);
}

void PlayerItemFireRodProjectile_Init(PlayerItemFireRodProjectileEntity* this) {
    static const Hitbox gUnk_08127278 = { 0, 0, { 4, 2, 2, 4 }, 6, 6 };
    super->spriteSettings.draw = 1;
    super->action = 1;
    CopyPosition(super->parent, super);
    if (super->type == 0) {
        super->collisionFlags = gPlayerEntity.base.collisionFlags + 1;
        super->hitbox = (Hitbox*)&gUnk_08127278;
        super->speed = 0x400;
        if (super->collisionLayer == 2) {
            super->type2 = 1;
        }
        super->direction = Direction8FromAnimationState(super->animationState);
        this->unk_6c = 60;
        sub_0801766C(super);
        LinearMoveUpdate(super);
        SoundReq(SFX_ITEM_SWORD_BEAM);
    } else {
        super->timer = 6;
    }
    InitializeAnimation(super, 0x18);
    PlayerItemFireRodProjectile_Action1(this);
}

void PlayerItemFireRodProjectile_Action1(PlayerItemFireRodProjectileEntity* this) {
    if (super->type != 0) {
        if (super->timer-- == 0) {
            DeleteThisEntity();
        }
    } else {
        GetNextFrame(super);
        if (this->unk_6c-- != 0) {
            GetNextFrame(super);
            LinearMoveUpdate(super);
            super->timer++;
            if (super->type2 == 0) {
                sub_0800451C(super);
            }
            if (sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.base.collisionLayer, 0x80) == 0 &&
                sub_080040D8(super, &gUnk_08003E44, super->x.HALF.HI, super->y.HALF.HI)) {
                CreateFx(super, FX_SWORD_MAGIC, 0);
                DeleteThisEntity();
            }
            if (super->contactFlags != 0) {
                CreateFx(super, FX_SWORD_MAGIC, 0);
                DeleteThisEntity();
            }
            if (DoTileInteractionHere(super, 0xc)) {
                DeleteThisEntity();
            }
            super->child = CreatePlayerItem(PLAYER_ITEM_FIRE_ROD_PROJECTILE, 1, 0, this->unk_68);
            if (super->child != NULL) {
                super->child->parent = super;
            }
        } else {
            DeleteThisEntity();
        }
    }
}
