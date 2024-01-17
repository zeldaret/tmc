/**
 * @file playerItemPacciCaneProjectile.c
 * @ingroup Items
 *
 * @brief Pacci Cane Projectile Player Item
 */
#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused[4];
    /*0x6c*/ u32 unk_6c;
    /*0x70*/ u32 unk_70;
    /*0x74*/ s32 unk_74;
    /*0x78*/ s32 unk_78;
    /*0x7c*/ u32 unk_7c;
} PlayerItemPacciCaneProjectileEntity;

static const Hitbox gUnk_0811B9D0;

void PlayerItemPacciCaneProjectile_Init(PlayerItemPacciCaneProjectileEntity* this);
void PlayerItemPacciCaneProjectile_Action1(PlayerItemPacciCaneProjectileEntity* this);
void PlayerItemPacciCaneProjectile_Action2(PlayerItemPacciCaneProjectileEntity* this);
void PlayerItemPacciCaneProjectile_Action3(PlayerItemPacciCaneProjectileEntity* this);
void PlayerItemPacciCaneProjectile_Action4(PlayerItemPacciCaneProjectileEntity* this);
void sub_08070458(PlayerItemPacciCaneProjectileEntity* this);

extern void sub_08017744(Entity*);
extern u8* DoTileInteractionOffset(Entity*, u32, u32, u32);

void PlayerItemPacciCaneProjectile(PlayerItemPacciCaneProjectileEntity* this) {
    static void (*const PlayerItemPacciCaneProjectile_Actions[])(PlayerItemPacciCaneProjectileEntity*) = {
        PlayerItemPacciCaneProjectile_Init,    PlayerItemPacciCaneProjectile_Action1,
        PlayerItemPacciCaneProjectile_Action2, PlayerItemPacciCaneProjectile_Action3,
        PlayerItemPacciCaneProjectile_Action4,
    };
    PlayerItemPacciCaneProjectile_Actions[super->action](this);
}

extern u8 gUnk_08003E44;

typedef struct {
    u8 flipX;
    u8 flipY;
    s8 unk2;
    s8 unk3;
    u8 animIndex;
    u8 filler[3];
} gUnk_0811B9A8_struct;

void PlayerItemPacciCaneProjectile_Init(PlayerItemPacciCaneProjectileEntity* this) {
    static const s8 gUnk_0811B9A0[] = {
        0, -18, 14, 0, 0, 14, -14, 0,
    };
    static const gUnk_0811B9A8_struct gUnk_0811B9A8[] = {
        { 0, 0, 0, -5, 17, { 0, 0, 0 } },
        { 1, 0, 5, 0, 18, { 0, 0, 0 } },
        { 0, 1, 0, 5, 17, { 0, 0, 0 } },
        { 0, 0, -5, 0, 18, { 0, 0, 0 } },
    };
    const gUnk_0811B9A8_struct* ptr;

    super->action = 1;
    super->spriteSettings.draw = 1;
    COLLISION_ON(super);
    super->direction = super->animationState << 2;
    super->speed = 0x200;
    this->unk_74 = 0x40;
    this->unk_78 = 0x1e0;
    super->x.HALF.HI = gPlayerEntity.base.x.HALF.HI + gUnk_0811B9A0[super->animationState];
    super->y.HALF.HI = gPlayerEntity.base.y.HALF.HI + gUnk_0811B9A0[super->animationState + 1];
    super->collisionFlags = 7;
    super->collisionMask = 0x8a;
    super->hitbox = (Hitbox*)&gUnk_0811B9D0;
    if (super->collisionLayer == 2) {
        super->type = 1;
    } else {
        super->type = 0;
    }
    super->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    ptr = &gUnk_0811B9A8[(super->animationState >> 1)];
    super->spriteSettings.flipX = ptr->flipX;
    super->spriteSettings.flipY = ptr->flipY;
    super->animIndex = ptr->animIndex;
    this->unk_6c = ptr->unk2;
    this->unk_70 = ptr->unk3;
    sub_0801766C(super);
    InitializeAnimation(super, super->animIndex);
    SoundReq(SFX_1DD);
}

void PlayerItemPacciCaneProjectile_Action1(PlayerItemPacciCaneProjectileEntity* this) {
    static const s8 gUnk_0811B9C8[] = {
        0, -4, 4, 0, 0, 4, -4, 0,
    };
    u32 cVar1;
    u32 cVar2;
    u8* iVar3;
    Entity* pEVar4;

    cVar1 = gUnk_0811B9C8[super->animationState];
    cVar2 = gUnk_0811B9C8[super->animationState + 1];
    iVar3 = DoTileInteractionOffset(super, 10, cVar1, cVar2);
    if (iVar3) {
        pEVar4 = CreateObject(OBJECT_53, iVar3[5], iVar3[2]);
        if (pEVar4) {
            pEVar4->timer = iVar3[3];
            pEVar4->x.HALF.HI = super->x.HALF.HI + cVar1;
            pEVar4->y.HALF.HI = super->y.HALF.HI + cVar2;
        }

        sub_08070458(this);
        return;
    }

    if ((--(this->unk_74) == -1) || (--(this->unk_78) == -1)) {
        sub_08070458(this);
    } else {
        GetNextFrame(super);
        LinearMoveUpdate(super);
        if (super->type == 0) {
            sub_0800451C(super);
        }
        if (sub_080B1BA4(COORD_TO_TILE(super), gPlayerEntity.base.collisionLayer, 0x80) == 0) {
            if (sub_080040D8(super, &gUnk_08003E44, super->x.HALF.HI, super->y.HALF.HI) == 0) {
                if (GetActTileAtEntity(super) == ACT_TILE_25) {
                    super->action = 4;
                    COLLISION_OFF(super);
                    super->x.HALF.HI = (super->x.HALF.HI & 0xfff0) | 8;
                    super->y.HALF.HI = (super->y.HALF.HI & 0xfff0) | 8;
                    super->spritePriority.b0 = 7;
                    this->unk_7c = GetTileIndex(COORD_TO_TILE(super), super->collisionLayer);
                    InitializeAnimation(super, 0x14);
                    SetTile(SPECIAL_TILE_32, COORD_TO_TILE(super), super->collisionLayer);
                    return;
                }
            } else {
                sub_08070458(this);
            }
        }
        if (super->contactFlags != 0) {
            sub_08070458(this);
        }
    }
}

void PlayerItemPacciCaneProjectile_Action2(PlayerItemPacciCaneProjectileEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteThisEntity();
    }
}

void PlayerItemPacciCaneProjectile_Action3(PlayerItemPacciCaneProjectileEntity* this) {
    GetNextFrame(super);
    LinearMoveUpdate(super);
    if (GravityUpdate(super, Q_8_8(32.0)) == 0) {
        DeleteThisEntity();
    }
}

void PlayerItemPacciCaneProjectile_Action4(PlayerItemPacciCaneProjectileEntity* this) {
    GetNextFrame(super);
    switch (GetTileIndex(COORD_TO_TILE(super), super->collisionLayer)) {
        default:
            this->unk_7c = 0;
            sub_08070458(this);
            break;
        case SPECIAL_TILE_33:
            sub_08070458(this);
            break;
        case SPECIAL_TILE_112:
            this->unk_78 = 0xff;
        case SPECIAL_TILE_32:
            if (--(this->unk_78) == -1) {
                sub_08070458(this);
            } else {
                if (super->contactFlags == 0) {
                    return;
                }
                if (((super->contactFlags & 0x7f) == 0) && (super->action != 0x1a)) {
                    return;
                }
                sub_08070458(this);
                return;
            }
            break;
    }
}

void sub_08070458(PlayerItemPacciCaneProjectileEntity* this) {
    super->action = 2;
    COLLISION_OFF(super);
    super->speed = 0;
    if (this->unk_7c != 0) {
        SetTile(this->unk_7c, TILE(super->x.HALF.HI, super->y.HALF.HI), super->collisionLayer);
    }
    InitializeAnimation(super, 0x13);
    sub_08017744(super);
    SoundReq(SFX_199);
}

static const Hitbox gUnk_0811B9D0 = { 0, 0, 4, 2, 2, 4, 4, 4 };
