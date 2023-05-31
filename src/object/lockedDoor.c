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
#include "global.h"
#include "hitbox.h"
#include "sound.h"

void LockedDoor_Init(Entity*);
void LockedDoor_Action1(Entity*);
void LockedDoor_Action2(Entity*);
void LockedDoor_Action3(Entity*);
void LockedDoor_Action4(Entity*);
void LockedDoor_Action5(Entity*);
void LockedDoor_Action6(Entity*);
void LockedDoor_Action7(Entity*);
void LockedDoor_Action8(Entity*);

void sub_08083638(Entity*);
void sub_08083658(Entity*);
void sub_080836A0(Entity*);
void sub_080836DC(Entity*, u32, u32);
u32 sub_08083734(Entity*, u32);
u32 sub_080837B0(Entity*);
void sub_08083814(Entity*, u32);

void (*const LockedDoor_Actions[])(Entity*) = {
    LockedDoor_Init,    LockedDoor_Action1, LockedDoor_Action2, LockedDoor_Action3, LockedDoor_Action4,
    LockedDoor_Action5, LockedDoor_Action6, LockedDoor_Action7, LockedDoor_Action8,
};

void LockedDoor(Entity* this) {
    LockedDoor_Actions[this->action](this);
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

void LockedDoor_Init(Entity* this) {
    if (this->cutsceneBeh.HWORD != 0xFFFF && CheckFlags(this->cutsceneBeh.HWORD)) {
        DeleteThisEntity();
    }
    if (!sub_080837B0(this))
        return;
    this->type2 = (this->type >> 2) & 3;
    this->frameIndex = this->type & 3;
    this->speed = 0x300;
    this->field_0x70.HALF.LO = this->x.HALF.HI;
    this->field_0x70.HALF.HI = this->y.HALF.HI;
    this->field_0x7c.BYTES.byte2 = this->type & 3;
    this->hitbox = (Hitbox*)&gHitbox_2;
    this->spritePriority.b0 = 5;
    this->frame = this->type & 0xF;
    this->field_0x76.HWORD = TILE(this->x.HALF.HI, this->y.HALF.HI);
    this->field_0x74.HWORD = GetTileIndex(this->field_0x76.HWORD, this->collisionLayer);
    switch (this->type2) {
        case 0:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                if (this->type & 0x10) {
                    this->action = 3;
                } else {
                    sub_080836A0(this);
                }
            } else {
                this->type &= ~0x10;
                sub_08083638(this);
            }
            break;
        case 1:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                sub_08083638(this);
            } else {
                sub_080836A0(this);
            }
            break;
        case 2:
            if (!CheckFlags(this->field_0x86.HWORD)) {
                this->frameIndex |= 4;
                sub_080836DC(this, this->field_0x7c.BYTES.byte2, this->field_0x76.HWORD);
                if (!AreaIsDungeon()) {
                    this->action = 5;
                } else {
                    this->action = 8;
                    AddInteractableSmallKeyLock(this);
                    SetInteractableObjectCollision(this, 0, gLockedDoorInteractDirections[this->field_0x7c.BYTES.byte2],
                                                   NULL);
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

void LockedDoor_Action1(Entity* this) {
    if (--this->timer == 0) {
        this->action = 2;
        this->timer = 7;
        SetTile(this->field_0x74.HWORD, this->field_0x76.HWORD, this->collisionLayer);
        EnqueueSFX(SFX_10B);
    }
}

void LockedDoor_Action2(Entity* this) {
    LinearMoveUpdate(this);
    if (--this->timer == 0) {
        if (this->type & 0x80) {
            sub_08083638(this);
        } else {
            DeleteThisEntity();
        }
    }
}

void LockedDoor_Action3(Entity* this) {
    if (sub_08083734(this, this->field_0x7c.BYTES.byte2)) {
        this->action = 4;
        sub_080836DC(this, this->field_0x7c.BYTES.byte2, this->field_0x76.HWORD);
    }
}

void LockedDoor_Action4(Entity* this) {
    LinearMoveUpdate(this);
    if (!--this->timer) {
        if (this->type & 0x10) {
            this->type &= ~0x10;
            sub_080836A0(this);
        } else {
            if (this->type & 0x80) {
                sub_080836A0(this);
            } else {
                this->action = 5;
            }
        }
        sub_08083814(this, this->field_0x7c.BYTES.byte2);
        EnqueueSFX(SFX_10B);
    }
}

void LockedDoor_Action5(Entity* this) {
}

void LockedDoor_Action6(Entity* this) {
    if (this->type2 == 0) {
        if (!CheckFlags(this->field_0x86.HWORD))
            return;
    } else {
        if (CheckFlags(this->field_0x86.HWORD))
            return;
    }
    sub_08083658(this);
}

void LockedDoor_Action7(Entity* this) {
    if (this->type2 == 0) {
        if (CheckFlags(this->field_0x86.HWORD))
            return;
    } else {
        if (!CheckFlags(this->field_0x86.HWORD))
            return;
    }
    this->action = 3;
}

void LockedDoor_Action8(Entity* this) {
    if (this->interactType == 0 && !CheckFlags(this->field_0x86.HWORD))
        return;
    this->action = 1;
    this->timer = 20;
    sub_08083658(this);
    SetFlag(this->field_0x86.HWORD);
    ModDungeonKeys(-1);
}

void sub_08083638(Entity* this) {
    this->action = 7;
    this->spriteSettings.draw = 0;
    this->x.HALF.HI = this->field_0x70.HALF.LO;
    this->y.HALF.HI = this->field_0x70.HALF.HI;
}

void sub_08083658(Entity* this) {
    const struct_0811F680* tmp;
    this->action = 1;
    this->timer = 20;
    this->direction = this->field_0x7c.BYTES.byte2 << 3;
    tmp = &gUnk_0811F680[this->field_0x7c.BYTES.byte2];
    this->x.HALF.HI += tmp->x;
    this->y.HALF.HI += tmp->y;
    RequestPriorityDuration(this, 60);
    SoundReq(SFX_10B);
}

void sub_080836A0(Entity* this) {
    this->action = 6;
    this->spriteSettings.draw = 1;
    this->x.HALF.HI = this->field_0x70.HALF.LO;
    this->y.HALF.HI = this->field_0x70.HALF.HI;
    SetTile(0x4022, this->field_0x76.HWORD, this->collisionLayer);
}

void sub_080836DC(Entity* this, u32 unk_0, u32 unk_1) {
    const struct_0811F680* tmp;
    SetTile(0x4022, unk_1, this->collisionLayer);
    this->timer = 7;
    this->spriteSettings.draw = 1;
    this->direction = (unk_0 << 3) ^ 0x10;
    tmp = &gUnk_0811F688[unk_0];
    if (this->type2 != 2) {
        this->x.HALF.HI += tmp->x;
        this->y.HALF.HI += tmp->y;
    }
}

u32 sub_08083734(Entity* this, u32 unk0) {
    switch (unk0) {
        case 0:
            if (this->field_0x70.HALF_U.HI + 0xd - gPlayerEntity.y.HALF.HI < 0)
                return 1;
            break;
        case 1:
            if (gPlayerEntity.x.HALF.HI - (this->field_0x70.HALF_U.LO - 0xb) < 0)
                return 1;
            break;
        case 2:
            if (gPlayerEntity.y.HALF.HI - (this->field_0x70.HALF_U.HI - 0x8) < 0)
                return 1;
            break;
        case 3:
            if (this->field_0x70.HALF_U.LO + 0xa - gPlayerEntity.x.HALF.HI < 0)
                return 1;
            break;
    }
    return 0;
}

u32 sub_080837B0(Entity* this) {
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
        ChangeObjPalette(this, 0);
    } else {
        if (tmp2 == 0x88) {
            ChangeObjPalette(this, 1);
        }
    }
    LoadFixedGFX(this, tmp);
}

void sub_08083814(Entity* this, u32 unk0) {
    Entity* fx;
    const struct_0811F730* tmp = &gUnk_0811F730[unk0];
    fx = CreateFx(this, FX_DASH, 0x40);
    if (fx) {
        fx->x.HALF.HI += tmp->unk_00.x;
        fx->y.HALF.HI += tmp->unk_00.y;
    }
    fx = CreateFx(this, FX_DASH, 0x40);
    if (fx) {
        fx->x.HALF.HI += tmp->unk_02.x;
        fx->y.HALF.HI += tmp->unk_02.y;
    }
}
