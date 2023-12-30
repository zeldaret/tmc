/**
 * @file linkFire.c
 * @ingroup Objects
 *
 * @brief Link Fire object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[4];
    /*0x6c*/ u16 unk_6c;
} LinkFireEntity;

void sub_0808DDB4(LinkFireEntity*);
void sub_0808DDE0(LinkFireEntity*);
void sub_0808DDE8(LinkFireEntity*);

void LinkFire(LinkFireEntity* this) {
    static void (*const gUnk_081217A8[])(LinkFireEntity*) = {
        sub_0808DDB4,
        sub_0808DDE0,
    };
    static void (*const gUnk_081217B0[])(LinkFireEntity*) = {
        sub_0808DDB4,
        sub_0808DDE8,
    };
    if (super->type != 0) {
        gUnk_081217B0[super->action](this);
    } else {
        gUnk_081217A8[super->action](this);
    }
}

void sub_0808DDB4(LinkFireEntity* this) {
    super->action = 1;
    if (super->type != 0) {
        super->timer = 120;
        this->unk_6c = 0xf0;
        InitializeAnimation(super, 0);
        sub_0808DDE8(this);
    }
}

void sub_0808DDE0(LinkFireEntity* this) {
    DeleteThisEntity();
}

void sub_0808DDE8(LinkFireEntity* this) {
    static const s8 gUnk_081217B8[] = { 0, -6, 0, 6 };
    Entity* player;
    this->unk_6c--;
    if (sub_0807953C()) {
        super->subtimer++;
    }
    if (((0x1e < super->subtimer) || ((gPlayerState.flags & (PL_CAPTURED | PL_FROZEN | PL_IN_MINECART)) != 0)) ||
        (this->unk_6c == 0)) {
        gPlayerState.flags &= ~PL_BURNING;
        DeleteThisEntity();
    }
    player = &gPlayerEntity.base;
    super->x.HALF.HI = (s8)gUnk_081217B8[gPlayerEntity.base.animationState >> 1] + player->x.HALF.HI;
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
