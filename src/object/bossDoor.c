/**
 * @file bossDoor.c
 * @ingroup Objects
 *
 * @brief Boss Door object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u8 unk_7e[6];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} BossDoorEntity;

extern bool32 gUnk_02036BB8;
extern const u8 gLockedDoorInteractDirections[];

void sub_0808C500(BossDoorEntity*);
void sub_0808C4BC(BossDoorEntity*);
void sub_0808C5D0(BossDoorEntity*);
void BossDoor_Init(BossDoorEntity*);
void BossDoor_Action1(BossDoorEntity*);
void BossDoor_Action2(BossDoorEntity*);
void BossDoor_Action3(BossDoorEntity*);
void BossDoor_Action4(BossDoorEntity*);
void BossDoor_Action5(BossDoorEntity*);
void BossDoor_Action6(BossDoorEntity*);

void BossDoor(BossDoorEntity* this) {
    static void (*const BossDoor_Actions[])(BossDoorEntity*) = {
        BossDoor_Init,    BossDoor_Action1, BossDoor_Action2, BossDoor_Action3,
        BossDoor_Action4, BossDoor_Action5, BossDoor_Action6,
    };
    BossDoor_Actions[super->action](this);
}

void BossDoor_Init(BossDoorEntity* this) {
    if ((this->unk_84 != 0xffff) && CheckFlags(this->unk_84)) {
        DeleteThisEntity();
    }
    if ((this->unk_86 != BEGIN) && CheckFlags(this->unk_86)) {
        DeleteThisEntity();
    }
    super->type2 = super->type >> 2;
    super->speed = 0x300;
    this->unk_70 = super->x.HALF.HI;
    this->unk_72 = super->y.HALF.HI;
    super->hitbox = (Hitbox*)&gHitbox_3;
    super->spritePriority.b0 = 5;
    this->unk_76 = super->type & 3;
    this->unk_74 = COORD_TO_TILE(super);
    InitializeAnimation(super, super->type & 0x1f);
    switch (super->type2) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            sub_0808C500(this);
            AddInteractableBossDoor(super);
            SetInteractableObjectCollision(super, 0, gLockedDoorInteractDirections[this->unk_76], NULL);
            break;
        case 1:
            super->action = 4;
            super->spriteSettings.draw = 0;
            break;
        case 2:
            super->action = 1;
            super->spriteSettings.draw = 1;
            sub_0808C500(this);
            break;
    }
}

void BossDoor_Action1(BossDoorEntity* this) {
    if (super->interactType != INTERACTION_NONE) {
        super->action = 2;
        RemoveInteractableObject(super);
        SetFlag(this->unk_86);
    }
}

void BossDoor_Action2(BossDoorEntity* this) {
    if ((super->frame & ANIM_DONE) == 0) {
        if ((gRoomTransition.frameCount & 3) == 0) {
            SoundReq(SFX_185);
        }
        GetNextFrame(super);
    } else {
        sub_0808C4BC(this);
    }
}

void BossDoor_Action3(BossDoorEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        if (super->type < 4) {
            sub_08078AC0(0x40, 0, 1);
            gPlayerEntity.base.direction = super->type << 3;
        }
        DeleteThisEntity();
    }
}

void BossDoor_Action4(BossDoorEntity* this) {
    static const s8 gUnk_081214F4[] = { 0, -36, 36, 0, 0, 36, -36, 0 };
    const s8* ptr;

    if (sub_08083734(super, this->unk_76)) {
        super->action = 5;
        super->timer = 12;
        super->spriteSettings.draw = 1;
        super->direction = *(u8*)&this->unk_76 << 3 ^ 0x10;
        ptr = &gUnk_081214F4[this->unk_76 * 2];
        super->x.HALF.HI += ptr[0];
        super->y.HALF.HI += ptr[1];
        sub_0808C500(this);
    }
}

void BossDoor_Action5(BossDoorEntity* this) {
    static const s8 gUnk_081214FC[] = { 12, 12, -12, 12, -12, 12, -12, -12, 12, -12, -12, -12, 12, 12, 12, -12 };
    Entity* effect;
    const s8* ptr;

    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        super->action = 6;
        super->z.HALF.HI = 0;
        super->x.HALF.HI = this->unk_70;
        super->y.HALF.HI = this->unk_72;
        ptr = &gUnk_081214FC[this->unk_76 * 4];
        effect = CreateFx(super, FX_DASH, 0x40);
        if (effect != NULL) {
            effect->x.HALF.HI += ptr[0];
            effect->y.HALF.HI += ptr[1];
        }
        effect = CreateFx(super, FX_DASH, 0x40);
        if (effect != NULL) {
            effect->x.HALF.HI += ptr[2];
            effect->y.HALF.HI += ptr[3];
        }
        EnqueueSFX(SFX_10B);
    }
}

void BossDoor_Action6(BossDoorEntity* this) {
    if (CheckFlags(this->unk_86)) {
        super->action = 2;
    }
}

void sub_0808C4BC(BossDoorEntity* this) {
    static const s8 gUnk_0812150C[] = { 0, -2, 2, 0, 0, 2, -2, 0 };
    const s8* ptr;
    super->action = 3;
    super->timer = 12;
    super->direction = this->unk_76 * 8;
    ptr = &gUnk_0812150C[this->unk_76 * 2];
    super->x.HALF.HI += ptr[0];
    super->y.HALF.HI += ptr[1];
    sub_0808C5D0(this);
    SoundReq(SFX_10B);
}

void sub_0808C500(BossDoorEntity* this) {
    if ((this->unk_76 == 0) || (this->unk_76 == 2)) {
        this->unk_78 = GetTileIndex(this->unk_74 - 1, super->collisionLayer);
        this->unk_7a = GetTileIndex(this->unk_74, super->collisionLayer);
        this->unk_7c = GetTileIndex(this->unk_74 + 1, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->unk_74 - 1, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->unk_74, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->unk_74 + 1, super->collisionLayer);
    } else {
        this->unk_78 = GetTileIndex(this->unk_74 - 0x40, super->collisionLayer);
        this->unk_7a = GetTileIndex(this->unk_74, super->collisionLayer);
        this->unk_7c = GetTileIndex(this->unk_74 + 0x40, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->unk_74 - 0x40, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->unk_74, super->collisionLayer);
        SetTile(SPECIAL_TILE_34, this->unk_74 + 0x40, super->collisionLayer);
    }
}

void sub_0808C5D0(BossDoorEntity* this) {
    if ((this->unk_76 == 0) || (this->unk_76 == 2)) {
        SetTile(this->unk_78, this->unk_74 - 1, super->collisionLayer);
        SetTile(this->unk_7a, this->unk_74, super->collisionLayer);
        SetTile(this->unk_7c, this->unk_74 + 1, super->collisionLayer);
    } else {
        SetTile(this->unk_78, this->unk_74 - 0x40, super->collisionLayer);
        SetTile(this->unk_7a, this->unk_74, super->collisionLayer);
        SetTile(this->unk_7c, this->unk_74 + 0x40, super->collisionLayer);
    }
}

void sub_0808C650(Entity* this, u32 param_2) {
    Entity* obj = CreateObject(WHITE_TRIANGLE_EFFECT, 0, param_2);
    if (obj != NULL) {
        obj->parent = this;
        gUnk_02036BB8 = FALSE;
    } else {
        gUnk_02036BB8 = TRUE;
    }
}

bool32 sub_0808C67C(void) {
    return gUnk_02036BB8;
}

void sub_0808C688(void) {
    sub_0801E104();
    gUnk_02036BB8 = TRUE;
}
