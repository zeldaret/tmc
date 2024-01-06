/**
 * @file metalDoor.c
 * @ingroup Objects
 *
 * @brief Metal Door object
 */
#include "asm.h"
#include "effects.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "hitbox.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u8 unused2[8];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} MetalDoorEntity;

extern u32 sub_08083734(Entity*, u32);
void sub_080A080C(MetalDoorEntity* this);
void sub_080A0870(MetalDoorEntity* this);
void MetalDoor_Init(MetalDoorEntity* this);
void MetalDoor_Action1(MetalDoorEntity* this);
void MetalDoor_Action2(MetalDoorEntity* this);
void MetalDoor_Action3(MetalDoorEntity* this);
void MetalDoor_Action4(MetalDoorEntity* this);

void MetalDoor(MetalDoorEntity* this) {
    static void (*const MetalDoor_Actions[])(MetalDoorEntity*) = {
        MetalDoor_Init, MetalDoor_Action1, MetalDoor_Action2, MetalDoor_Action3, MetalDoor_Action4,
    };
    MetalDoor_Actions[super->action](this);
}

void MetalDoor_Init(MetalDoorEntity* this) {
    if ((this->unk_84 != 0xffff) && CheckFlags(this->unk_84)) {
        DeleteThisEntity();
    }
    super->action = 1;
    super->speed = 0x300;
    super->spriteSettings.draw = 0;
    super->frameIndex = 0;
    super->spriteSettings.flipY = 1;
    super->hitbox = (Hitbox*)&gHitbox_3;
    super->spritePriority.b0 = 5;
    this->unk_70 = super->x.HALF.HI;
    this->unk_72 = super->y.HALF.HI;
    this->unk_74 = COORD_TO_TILE(super);
}

void MetalDoor_Action1(MetalDoorEntity* this) {
    if (sub_08083734(super, 2) != 0) {
        super->action = 2;
        super->timer = 12;
        super->spriteSettings.draw = TRUE;
        super->direction = 0;
        super->y.HALF.HI += 0x24;
        sub_080A080C(this);
    }
}

void MetalDoor_Action2(MetalDoorEntity* this) {
    u8 bVar1;
    Entity* fx;

    LinearMoveUpdate(super);

    if (--super->timer == 0) {
        super->action = 3;
        super->z.HALF.HI = 0;
        super->x.HALF.HI = this->unk_70;
        super->y.HALF.HI = this->unk_72;
        fx = CreateFx(super, FX_DASH, 0x40);
        if (fx != NULL) {
            fx->x.HALF.HI += 0xc;
            fx->y.HALF.HI -= 0xc;
        }
        fx = CreateFx(super, FX_DASH, 0x40);
        if (fx != NULL) {
            fx->x.HALF.HI -= 0xc;
            fx->y.HALF.HI -= 0xc;
        }
        EnqueueSFX(SFX_10B);
    }
}

void MetalDoor_Action3(MetalDoorEntity* this) {
    if (CheckFlags(this->unk_86)) {
        super->action = 4;
        super->timer = 12;
        super->direction = 0x10;
        super->y.HALF.HI += 2;
        sub_080A0870(this);
        SoundReq(SFX_10B);
    }
}

void MetalDoor_Action4(MetalDoorEntity* this) {

    LinearMoveUpdate(super);

    if (--super->timer == 0) {
        DeleteThisEntity();
    }
}

void sub_080A080C(MetalDoorEntity* this) {
    this->unk_76 = GetTileIndex(this->unk_74 - 1, super->collisionLayer);
    this->unk_78 = GetTileIndex(this->unk_74, super->collisionLayer);
    this->unk_7a = GetTileIndex(this->unk_74 + 1, super->collisionLayer);
    SetTile(SPECIAL_TILE_34, this->unk_74 - 1, super->collisionLayer);
    SetTile(SPECIAL_TILE_34, this->unk_74, super->collisionLayer);
    SetTile(SPECIAL_TILE_34, this->unk_74 + 1, super->collisionLayer);
}

void sub_080A0870(MetalDoorEntity* this) {
    SetTile(this->unk_76, this->unk_74 - 1, super->collisionLayer);
    SetTile(this->unk_78, this->unk_74, super->collisionLayer);
    SetTile(this->unk_7a, this->unk_74 + 1, super->collisionLayer);
}
