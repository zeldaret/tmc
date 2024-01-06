/**
 * @file lookedDoor.c
 * @ingroup Objects
 *
 * @brief Looked Door object
 */
#include "asm.h"
#include "common.h"
#include "effects.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "hitbox.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u8 unused2[6];
    /*0x7e*/ u8 unk_7e;
    /*0x7f*/ u8 unused3[5];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} LockedDoorEntity;

void LockedDoor_Init(LockedDoorEntity* this);
void LockedDoor_Action1(LockedDoorEntity* this);
void LockedDoor_Action2(LockedDoorEntity* this);
void LockedDoor_Action3(LockedDoorEntity* this);
void LockedDoor_Action4(LockedDoorEntity* this);
void LockedDoor_Action5(LockedDoorEntity* this);
void LockedDoor_Action6(LockedDoorEntity* this);
void LockedDoor_Action7(LockedDoorEntity* this);
void LockedDoor_Action8(LockedDoorEntity* this);

void sub_08083638(LockedDoorEntity* this);
void sub_08083658(LockedDoorEntity* this);
void sub_080836A0(LockedDoorEntity* this);
void sub_080836DC(Entity* this, u32, u32);
u32 sub_080837B0(LockedDoorEntity* this);
void sub_08083814(LockedDoorEntity* this, u32);

void (*const LockedDoor_Actions[])(LockedDoorEntity*) = {
    LockedDoor_Init,    LockedDoor_Action1, LockedDoor_Action2, LockedDoor_Action3, LockedDoor_Action4,
    LockedDoor_Action5, LockedDoor_Action6, LockedDoor_Action7, LockedDoor_Action8,
};

void LockedDoor(LockedDoorEntity* this) {
    LockedDoor_Actions[super->action](this);
}

typedef struct PACKED {
    s8 x;
    s8 y;
} struct_0811F680;

const struct_0811F680 gUnk_0811F680[] = {
    { 0, -2 },
    { 2, 0 },
    { 0, 2 },
    { -2, 0 },
};

const struct_0811F680 gUnk_0811F688[] = {
    { 0, -21 },
    { 21, 0 },
    { 0, 21 },
    { -21, 0 },
};

const u16 gUnk_0811F690[] = {
    0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x0A, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15, 0x15,
    0x52, 0x52, 0x52, 0x52, 0x52, 0x52, 0x52, 0x52, 0x53, 0x53, 0x53, 0x53, 0x53, 0x53, 0x53, 0x53,
    0x54, 0x54, 0x54, 0x54, 0x54, 0x54, 0x54, 0x54, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55, 0x55,
    0x56, 0x56, 0x56, 0x56, 0x56, 0x56, 0x56, 0x56, 0x57, 0x57, 0x57, 0x57, 0x57, 0x57, 0x57, 0x57,
    0x58, 0x58, 0x58, 0x58, 0x58, 0x58, 0x58, 0x58, 0x59, 0x59, 0x59, 0x59, 0x59, 0x59, 0x59, 0x59,
};

typedef struct {
    struct_0811F680 unk_00;
    struct_0811F680 unk_02;
} struct_0811F730;

const struct_0811F730 gUnk_0811F730[] = {
    { { 8, 8 }, { -8, 8 } },
    { { -8, 8 }, { -8, -8 } },
    { { 8, -8 }, { -8, -8 } },
    { { 8, 8 }, { 8, -8 } },
};

const u8 gLockedDoorInteractDirections[] = {
    0xBE,
    0x7D,
    0xEB,
    0xD7,
};

void LockedDoor_Init(LockedDoorEntity* this) {
    if (this->unk_84 != 0xFFFF && CheckFlags(this->unk_84)) {
        DeleteThisEntity();
    }
    if (!sub_080837B0(this))
        return;
    super->type2 = (super->type >> 2) & 3;
    super->frameIndex = super->type & 3;
    super->speed = 0x300;
    this->unk_70 = super->x.HALF.HI;
    this->unk_72 = super->y.HALF.HI;
    this->unk_7e = super->type & 3;
    super->hitbox = (Hitbox*)&gHitbox_2;
    super->spritePriority.b0 = 5;
    super->frame = super->type & 0xF;
    this->unk_76 = TILE(super->x.HALF.HI, super->y.HALF.HI);
    this->unk_74 = GetTileIndex(this->unk_76, super->collisionLayer);
    switch (super->type2) {
        case 0:
            if (!CheckFlags(this->unk_86)) {
                if (super->type & 0x10) {
                    super->action = 3;
                } else {
                    sub_080836A0(this);
                }
            } else {
                super->type &= ~0x10;
                sub_08083638(this);
            }
            break;
        case 1:
            if (!CheckFlags(this->unk_86)) {
                sub_08083638(this);
            } else {
                sub_080836A0(this);
            }
            break;
        case 2:
            if (!CheckFlags(this->unk_86)) {
                super->frameIndex |= 4;
                sub_080836DC(super, this->unk_7e, this->unk_76);
                if (!AreaIsDungeon()) {
                    super->action = 5;
                } else {
                    super->action = 8;
                    AddInteractableSmallKeyLock(super);
                    SetInteractableObjectCollision(super, 0, gLockedDoorInteractDirections[this->unk_7e], NULL);
                }
            } else {
                DeleteThisEntity();
            }
            break;
        default:
            DeleteThisEntity();
            break;
    }
}

void LockedDoor_Action1(LockedDoorEntity* this) {
    if (--super->timer == 0) {
        super->action = 2;
        super->timer = 7;
        SetTile(this->unk_74, this->unk_76, super->collisionLayer);
        EnqueueSFX(SFX_10B);
    }
}

void LockedDoor_Action2(LockedDoorEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        if (super->type & 0x80) {
            sub_08083638(this);
        } else {
            DeleteThisEntity();
        }
    }
}

void LockedDoor_Action3(LockedDoorEntity* this) {
    if (sub_08083734(super, this->unk_7e)) {
        super->action = 4;
        sub_080836DC(super, this->unk_7e, this->unk_76);
    }
}

void LockedDoor_Action4(LockedDoorEntity* this) {
    LinearMoveUpdate(super);
    if (!--super->timer) {
        if (super->type & 0x10) {
            super->type &= ~0x10;
            sub_080836A0(this);
        } else {
            if (super->type & 0x80) {
                sub_080836A0(this);
            } else {
                super->action = 5;
            }
        }
        sub_08083814(this, this->unk_7e);
        EnqueueSFX(SFX_10B);
    }
}

void LockedDoor_Action5(LockedDoorEntity* this) {
}

void LockedDoor_Action6(LockedDoorEntity* this) {
    if (super->type2 == 0) {
        if (!CheckFlags(this->unk_86))
            return;
    } else {
        if (CheckFlags(this->unk_86))
            return;
    }
    sub_08083658(this);
}

void LockedDoor_Action7(LockedDoorEntity* this) {
    if (super->type2 == 0) {
        if (CheckFlags(this->unk_86))
            return;
    } else {
        if (!CheckFlags(this->unk_86))
            return;
    }
    super->action = 3;
}

void LockedDoor_Action8(LockedDoorEntity* this) {
    if (super->interactType == INTERACTION_NONE && !CheckFlags(this->unk_86))
        return;
    super->action = 1;
    super->timer = 20;
    sub_08083658(this);
    SetFlag(this->unk_86);
    ModDungeonKeys(-1);
}

void sub_08083638(LockedDoorEntity* this) {
    super->action = 7;
    super->spriteSettings.draw = 0;
    super->x.HALF.HI = this->unk_70;
    super->y.HALF.HI = this->unk_72;
}

void sub_08083658(LockedDoorEntity* this) {
    const struct_0811F680* tmp;
    super->action = 1;
    super->timer = 20;
    super->direction = this->unk_7e << 3;
    tmp = &gUnk_0811F680[this->unk_7e];
    super->x.HALF.HI += tmp->x;
    super->y.HALF.HI += tmp->y;
    RequestPriorityDuration(super, 60);
    SoundReq(SFX_10B);
}

void sub_080836A0(LockedDoorEntity* this) {
    super->action = 6;
    super->spriteSettings.draw = 1;
    super->x.HALF.HI = this->unk_70;
    super->y.HALF.HI = this->unk_72;
    SetTile(SPECIAL_TILE_34, this->unk_76, super->collisionLayer);
}

void sub_080836DC(Entity* this, u32 unk_0, u32 unk_1) {
    const struct_0811F680* tmp;
    SetTile(SPECIAL_TILE_34, unk_1, this->collisionLayer);
    this->timer = 7;
    this->spriteSettings.draw = 1;
    this->direction = (unk_0 << 3) ^ DirectionSouth;
    tmp = &gUnk_0811F688[unk_0];
    if (this->type2 != 2) {
        this->x.HALF.HI += tmp->x;
        this->y.HALF.HI += tmp->y;
    }
}

u32 sub_08083734(Entity* this, u32 unk0) {
    // TODO this is used in bossDoor, carlovObject, lockedDoor, metalDoor and minecartDoor. Do they have the same entity
    // struct?
    switch (unk0) {
        case 0:
            if (((LockedDoorEntity*)this)->unk_72 + 0xd - gPlayerEntity.base.y.HALF.HI < 0)
                return 1;
            break;
        case 1:
            if (gPlayerEntity.base.x.HALF.HI - (((LockedDoorEntity*)this)->unk_70 - 0xb) < 0)
                return 1;
            break;
        case 2:
            if (gPlayerEntity.base.y.HALF.HI - (((LockedDoorEntity*)this)->unk_72 - 0x8) < 0)
                return 1;
            break;
        case 3:
            if (((LockedDoorEntity*)this)->unk_70 + 0xa - gPlayerEntity.base.x.HALF.HI < 0)
                return 1;
            break;
    }
    return 0;
}

u32 sub_080837B0(LockedDoorEntity* this) {
    u32 tmp;
    u32 tmp2 = gRoomControls.area;
    if (tmp2 < 0x40) {
        switch (tmp2) {
            default:
                tmp = 0xA;
                break;
            case 0x25:
                tmp = 0x1e7;
                break;
            case 0x35:
                tmp = 0x1c3;
                break;
        }
    } else {
        tmp = gUnk_0811F690[tmp2 - 0x40];
    }
    if (tmp2 == 0x68) {
        ChangeObjPalette(super, 0);
    } else {
        if (tmp2 == 0x88) {
            ChangeObjPalette(super, 1);
        }
    }
    LoadFixedGFX(super, tmp);
}

void sub_08083814(LockedDoorEntity* this, u32 unk0) {
    Entity* fx;
    const struct_0811F730* tmp = &gUnk_0811F730[unk0];
    fx = CreateFx(super, FX_DASH, 0x40);
    if (fx) {
        fx->x.HALF.HI += tmp->unk_00.x;
        fx->y.HALF.HI += tmp->unk_00.y;
    }
    fx = CreateFx(super, FX_DASH, 0x40);
    if (fx) {
        fx->x.HALF.HI += tmp->unk_02.x;
        fx->y.HALF.HI += tmp->unk_02.y;
    }
}
