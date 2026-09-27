/**
 * @file linkFire.c
 * @ingroup Objects
 *
 * @brief Link Fire object
 */
#include "object.h"
#include "physics.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[4];
    /*0x6c*/ u16 unk_6c;
} LinkFireEntity;

void LinkFire_Init(LinkFireEntity*);
void LinkFire_Update_Type0(LinkFireEntity*);
void LinkFire_Update_Type1(LinkFireEntity*);

void LinkFire(LinkFireEntity* this) {
    static void (*const sLinkFire_Type0_Actions[])(LinkFireEntity*) = {
        LinkFire_Init,
        LinkFire_Update_Type0,
    };
    static void (*const sLinkFire_Type1_Actions[])(LinkFireEntity*) = {
        LinkFire_Init,
        LinkFire_Update_Type1,
    };
    if (super->type != 0) {
        sLinkFire_Type1_Actions[super->action](this);
    } else {
        sLinkFire_Type0_Actions[super->action](this);
    }
}

void LinkFire_Init(LinkFireEntity* this) {
    super->action = 1;
    if (super->type != 0) {
        super->timer = 120;
        this->unk_6c = 0xf0;
        InitializeAnimation(super, 0);
        LinkFire_Update_Type1(this);
    }
}

void LinkFire_Update_Type0(LinkFireEntity* this) {
    DeleteThisEntity();
}

void LinkFire_Update_Type1(LinkFireEntity* this) {
    static const s8 sLinkFire_PositionOffsets[] = { 0, -6, 0, 6 };
    Entity* player;
    this->unk_6c--;
    if (PlayerInputPressed()) {
        super->subtimer++;
    }
    if ((30 < super->subtimer) || ((gPlayerState.flags & (PL_CAPTURED | PL_FROZEN | PL_IN_MINECART)) != 0) ||
        (this->unk_6c == 0)) {
        gPlayerState.flags &= ~PL_BURNING;
        DeleteThisEntity();
    }
    player = &gPlayerEntity.base;
    super->x.HALF.HI = sLinkFire_PositionOffsets[gPlayerEntity.base.animationState >> 1] + player->x.HALF.HI;
    super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI + -6;
    super->z = gPlayerEntity.base.z;
    super->collisionLayer = gPlayerEntity.base.collisionLayer;
    super->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    if ((gPlayerState.flags & PL_BURNING) != 0) {
        GetNextFrame(super);
    } else {
        DeleteThisEntity();
    }
    if (gPlayerEntity.base.animationState >> 1 == 2) {
        sub_0806FEBC(&gPlayerEntity.base, 3, super);
        super->y.HALF.HI -= 5;
    } else {
        sub_0806FEBC(&gPlayerEntity.base, 0, super);
    }
}
