/**
 * @file pushableStatue.c
 * @ingroup Objects
 *
 * @brief Pushable Statue object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "hitbox.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0x18];
    /*0x80*/ u16 unk_80;
    /*0x82*/ u8 unk_82;
    /*0x83*/ u8 unk_83;
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} PushableStatueEntity;

extern const s16 gUnk_080B4488[];
extern const s16 gUnk_080B4468[];

extern void (*const PushableStatue_Actions[])(PushableStatueEntity*);
extern void (*const PushableStatue_SubActions[])(PushableStatueEntity*);
extern const s8 gUnk_08120CB4[];
extern const u16 gUnk_08120CBC[];
extern const u16 gUnk_08120CCC[];
extern const u16 gUnk_08120D6C[];

u32 sub_0808968C(u32);
bool32 sub_0808965C(PushableStatueEntity*);
void sub_08089454(PushableStatueEntity*);
void sub_080894C8(PushableStatueEntity*);
void sub_08089538(PushableStatueEntity*);
void sub_080894FC(PushableStatueEntity*);
bool32 sub_080895C0(PushableStatueEntity*);
bool32 sub_080896B0(void);

void PushableStatue(PushableStatueEntity* this) {
    PushableStatue_Actions[super->action](this);
}

void PushableStatue_Init(PushableStatueEntity* this) {
    if (sub_0808965C(this)) {
        super->action = 1;
        super->speed = 0x80;
        super->updatePriority = 3;
        super->hitbox = (Hitbox*)&gUnk_080FD1F4;
        super->carryFlags = 1;
        this->unk_86 = 0;
        sub_08089454(this);
        sub_080894C8(this);
        InitializeAnimation(super, 0);
    }
}

void PushableStatue_Action1(PushableStatueEntity* this) {
    u16 tileType;
    Entity* obj;

    if (sub_0800442E(super) == 0) {
        tileType = GetTileType(this->unk_84, super->collisionLayer);
        if (tileType != 0x400b) {
            switch (sub_0808968C(tileType)) {
                case 1:
                    super->action = 3;
                    super->direction = ((tileType - 0xc) & 3) << 3;
                    sub_08089538(this);
                    break;
                case 0:
                    obj = CreateObject(SPECIAL_FX, FX_ROCK, 0);
                    if (obj != NULL) {
                        CopyPosition(super, obj);
                    }
                    sub_080894FC(this);
                    break;
                case 2:
                    this->unk_80 = tileType;
                    break;
            }
        } else {
            RegisterCarryEntity(super);
        }
    }
}

void PushableStatue_Action2(PushableStatueEntity* this) {
    if (this->unk_86 != 0) {
        sub_080895C0(this);
    } else {
        if (gPlayerState.heldObject == 0) {
            super->subAction = 6;
        }
        PushableStatue_SubActions[super->subAction - 5](this);
    }
}

void PushableStatue_SubAction0(PushableStatueEntity* this) {
    u16 tileType;
    Entity* obj;
    u32 index;
    const s8* ptr;

    if (this->unk_83 == 0) {
        this->unk_83 = 1;
        index = gPlayerEntity.animationState;
        ptr = &gUnk_08120CB4[index];
        PositionRelative(super, &gPlayerEntity, *(ptr) << 0x10, *(ptr + 1) << 0x10);
    }
    tileType = GetTileType(this->unk_84, super->collisionLayer);
    if (tileType != 0x400b) {
        switch (sub_0808968C(tileType)) {
            case 1:
                super->direction = (((tileType - 0xc) & 3) << 3);
                sub_08089538(this);
                break;
            case 0:
                obj = CreateObject(SPECIAL_FX, FX_ROCK, 0);
                if (obj != NULL) {
                    CopyPosition(super, obj);
                }
                sub_080894FC(this);
                return;
            case 2:
                this->unk_80 = tileType;
                break;
        }
    }
    if (sub_080896B0()) {
        gPlayerState.queued_action = PLAYER_PULL;
        gPlayerState.field_0x38 = 0x20;
        gPlayerState.flags |= PL_BUSY;
        gPlayerEntity.x.HALF.LO = 0;
        gPlayerEntity.y.HALF.LO = 0;
        super->direction = (gPlayerEntity.animationState ^ 4) << 2;
        sub_08089538(this);
    }
}

void PushableStatue_SubAction1(PushableStatueEntity* this) {
    super->action = 1;
    this->unk_83 = 0;
}

void PushableStatue_Action3(PushableStatueEntity* this) {
    if (sub_080895C0(this)) {
        super->action = 1;
    }
}

void PushableStatue_Action4(PushableStatueEntity* this) {
    if (--super->timer != 0) {
        super->spriteSettings.draw ^= 1;
    } else {
        super->spriteSettings.draw = 1;
        super->action = 1;
        SetTile(0x400b, this->unk_84, super->collisionLayer);
        sub_080894C8(this);
    }
}

void sub_08089454(PushableStatueEntity* this) {
    this->unk_84 = COORD_TO_TILE(super);
    this->unk_80 = GetTileIndex(this->unk_84, super->collisionLayer);
    SetTile(0x400b, this->unk_84, super->collisionLayer);
    if (super->collisionLayer == 2 && GetTileType(this->unk_84, 1) == 0x310) {
        SetTile(0x400b, this->unk_84, 1);
    }
}

void sub_080894C8(PushableStatueEntity* this) {
    u32 index;
    for (index = 0; index < 8; index++) {
        if (gRoomVars.entities[index] == NULL) {
            gRoomVars.entities[index] = super;
            break;
        }
    }
}

void sub_080894FC(PushableStatueEntity* this) {
    u32 index;
    for (index = 0; index <= 7; index++) {
        if (super == gRoomVars.entities[index]) {
            gRoomVars.entities[index] = NULL;
            break;
        }
    }
    DeleteEntity(super);
}

void sub_08089538(PushableStatueEntity* this) {
    u16 tileType;
    this->unk_86 = 0x20;
    EnqueueSFX(SFX_10F);
    SetTile(this->unk_80, this->unk_84, super->collisionLayer);
    if ((super->collisionLayer == 2) && (GetTileType(this->unk_84, 1) == 0x400b)) {
        CloneTile(0x310, this->unk_84, 1);
    }
    tileType = GetTileType(this->unk_84 + gUnk_080B4488[super->direction >> 3], super->collisionLayer);
    if ((tileType == 0x79) || (tileType == 0x77)) {
        super->spriteOffsetY = -2;
    }
}

bool32 sub_080895C0(PushableStatueEntity* this) {
    Entity* obj;

    LinearMoveUpdate(super);
    if ((--this->unk_86 == 0) && (sub_0800442E(super) == 0)) {
        super->spriteOffsetY = 0;
        if (!sub_080B1B0C(super)) {
            sub_08089454(this);
            return TRUE;
        }
        obj = CreateObject(SPECIAL_FX, FX_ROCK, 0);
        if (obj != NULL) {
            CopyPosition(super, obj);
        }
        super->spriteSettings.draw = 0;
        super->x.HALF.HI += gUnk_08120CBC[super->direction >> 2];
        super->y.HALF.HI += gUnk_08120CBC[(super->direction >> 2) + 1];
        sub_08089454(this);
        super->action = 4;
        super->timer = 60;
    }
    sub_0800445C(super);
    return FALSE;
}

bool32 sub_0808965C(PushableStatueEntity* this) {
    if (gRoomControls.area < 0x40) {
        return LoadFixedGFX(super, 0xe9);
    } else {
        return LoadFixedGFX(super, gUnk_08120CCC[gRoomControls.area - 0x40]);
    }
}

u32 sub_0808968C(u32 param_1) {
    const u16* it;

    for (it = gUnk_08120D6C; *it != 0; it += 2) {
        if (*it == param_1) {
            return it[1];
        }
    }
    return 0;
}

bool32 sub_080896B0(void) {
    s16 uVar1;
    s16 iVar2;
    LayerStruct* layer;
    s32 uVar4;
    const s16* ptr;
    u32 tmp1;
    u32 tmp2;
    u32 val;

    if (((gPlayerState.heldObject & 0x1f) == 0x12) && ((gPlayerEntity.frame & 1) != 0)) {
        ptr = &gUnk_080B4468[gPlayerEntity.animationState & 6];
        uVar1 = gUnk_080B4488[gPlayerEntity.animationState >> 1];
        uVar4 = COORD_TO_TILE_OFFSET(&gPlayerEntity, -ptr[0], -ptr[1]) - uVar1;
        val = sub_080B1AE0(uVar4, gPlayerEntity.collisionLayer);
        if ((val - 0x26 > 1) && (val != 0x29)) {
            layer = GetLayerByIndex(gPlayerEntity.collisionLayer);
            iVar2 = (uVar4 * 0x10000) >> 0x10;
            tmp1 = layer->collisionData[iVar2];
            tmp2 = layer->collisionData[(iVar2 - uVar1)];
            if ((tmp1 == 0) && (tmp2 == 0)) {
                return TRUE;
            }
        }
    }
    return FALSE;
}

void (*const PushableStatue_Actions[])(PushableStatueEntity*) = {
    PushableStatue_Init, PushableStatue_Action1, PushableStatue_Action2, PushableStatue_Action3, PushableStatue_Action4,
};
void (*const PushableStatue_SubActions[])(PushableStatueEntity*) = {
    PushableStatue_SubAction0,
    PushableStatue_SubAction1,
};
const s8 gUnk_08120CB4[] = {
    0, 14, -14, 2, 0, -14, 14, 2,
};
const u16 gUnk_08120CBC[] = {
    0, 16, 65520, 0, 0, 65520, 16, 0,
};
const u16 gUnk_08120CCC[] = {
    29, 29, 29, 29, 29, 29, 29, 29, 73, 73, 73, 73, 73, 73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 75, 75, 75,
    75, 75, 75, 75, 75, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78, 78,
    78, 78, 79, 79, 79, 79, 79, 79, 79, 79, 80, 80, 80, 80, 80, 80, 80, 80, 81, 81, 81, 81, 81, 81, 81, 81,
};
const u16 gUnk_08120D6C[] = {
    0x400c, 1, 0x400d, 1, 0x400e, 1, 0x400f, 1, 0x7a, 2, 0x78, 2, 0,
};
