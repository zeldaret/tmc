/**
 * @file pushableGrave.c
 * @ingroup Objects
 *
 * @brief Pushable Grave object
 */
#include "functions.h"
#include "hitbox.h"
#include "object.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 unk_68;
    /*0x6a*/ u16 unk_6a;
    /*0x6c*/ u16 unk_6c;
    /*0x6e*/ u16 unk_6e;
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 unk_74;
    /*0x76*/ u16 unk_76;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ s8 unk_7c[0xa];
    /*0x86*/ u16 pushedFlag;
} PushableGraveEntity;

extern void (*const PushableGrave_Actions[])(PushableGraveEntity*);
extern const u8 gUnk_081232C0[];
extern const u16 PushableGrave_Tiles[];

bool32 sub_0809798C(PushableGraveEntity*);
void sub_080977F4(PushableGraveEntity*);
bool32 sub_0809785C(PushableGraveEntity*);

void PushableGrave(PushableGraveEntity* this) {
    PushableGrave_Actions[super->action](this);
}

void PushableGrave_Init(PushableGraveEntity* this) {
    u32 tilePos;
    u32 tileIndex;

    super->spriteSettings.draw = 1;
    super->frameIndex = super->type;
    super->updatePriority = 3;
    tilePos = COORD_TO_TILE(super);
    this->unk_6a = GetTileIndex(tilePos - 0x41, super->collisionLayer);
    this->unk_6c = GetTileIndex(tilePos - 0x40, super->collisionLayer);
    this->unk_6e = GetTileIndex(tilePos - 0x3f, super->collisionLayer);
    this->unk_70 = GetTileIndex(tilePos - 1, super->collisionLayer);
    this->unk_72 = GetTileIndex(tilePos, super->collisionLayer);
    this->unk_74 = GetTileIndex(tilePos + 1, super->collisionLayer);
    this->unk_76 = GetTileIndex(tilePos + 0x3f, super->collisionLayer);
    this->unk_78 = GetTileIndex(tilePos + 0x40, super->collisionLayer);
    this->unk_7a = GetTileIndex(tilePos + 0x41, super->collisionLayer);
    if (sub_0809798C(this)) {
        if (super->type == 0) {
            super->y.HALF.HI -= 0x16;
        } else {
            super->y.HALF.HI -= 0x10;
        }
        sub_080977F4(this);

    } else {
        super->action = 1;
        tilePos = COORD_TO_TILE(super);
        this->unk_68 = tilePos;
        tileIndex = PushableGrave_Tiles[super->type2];
        if (super->type == 0) {
            super->hitbox = (Hitbox*)&gUnk_080FD578;
            SetTile(tileIndex, tilePos - 1, super->collisionLayer);
            SetTile(tileIndex, tilePos, super->collisionLayer);
            super->y.HALF.HI += 2;
        } else {
            super->hitbox = (Hitbox*)&gUnk_080FD570;
            SetTile(tileIndex, tilePos, super->collisionLayer);
            if (super->type2 == 2) {
                SetMultipleTiles((TileData*)gUnk_081232C0, tilePos, super->collisionLayer);
            }
        }
    }
}

void PushableGrave_Action1(PushableGraveEntity* this) {
    if (sub_0809785C(this)) {
        RequestPriorityDuration(super, super->timer);
    }
}

void PushableGrave_Action2(PushableGraveEntity* this) {
    if (super->subAction == 0) {
        if (--super->subtimer == 0) {
            super->subAction = 1;
            super->subtimer = 120;
            gRoomControls.camera_target = super;
            gRoomControls.scrollSpeed = 2;
        }
    } else {
        if (--super->subtimer == 0) {
            super->action = 3;
            super->timer = 96;
            super->subtimer = 20;
            RequestPriorityDuration(super, 96);
            SoundReq(SFX_10F);
        }
    }
}

void PushableGrave_Action3(PushableGraveEntity* this) {
    if (super->timer != 0) {
        super->timer--;
        LinearMoveUpdate(super);
        sub_0800445C(super);
    } else {
        if (super->subtimer != 0) {
            super->subtimer--;
        } else {
            EnqueueSFX(SFX_SECRET);
            sub_080977F4(this);
            if (super->type == 0) {
                gRoomControls.camera_target = &gPlayerEntity.base;
                gRoomControls.scrollSpeed = 4;
            }
        }
    }
}

void PushableGrave_Action4(PushableGraveEntity* this) {
}

void sub_080977F4(PushableGraveEntity* this) {
    u32 tilePos;
    super->action = 4;
    super->spriteOffsetY = 0;
    tilePos = COORD_TO_TILE(super);
    SetTile(SPECIAL_TILE_34, tilePos, super->collisionLayer);
    if (super->type == 0) {
        SetTile(SPECIAL_TILE_34, tilePos - 1, super->collisionLayer);
    }
    if (this->pushedFlag != 0) {
        SetFlag(this->pushedFlag);
    }
}

bool32 sub_0809785C(PushableGraveEntity* this) {
    u32 tilePos;

    if (super->type != 0) {
        if (super->type2 != 0) {
            if ((CheckFlags(this->pushedFlag) != 0) ||
                GetTileTypeAtTilePos(this->unk_68, super->collisionLayer) == SPECIAL_TILE_63) {
                super->action = 3;
                super->timer = 64;
                super->subtimer = 0;
                super->direction = 0;
                super->speed = 0x40;
                tilePos = this->unk_68;
                SetTileByIndex(this->unk_72, tilePos, super->collisionLayer);
                if (super->type2 == 2) {
                    SetTileByIndex(this->unk_6a, tilePos + TILE_POS(-1, -1), super->collisionLayer);
                    SetTileByIndex(this->unk_6c, tilePos + TILE_POS(0, -1), super->collisionLayer);
                    SetTileByIndex(this->unk_6e, tilePos + TILE_POS(1, -1), super->collisionLayer);
                    SetTileByIndex(this->unk_70, tilePos + TILE_POS(-1, 0), super->collisionLayer);
                    SetTileByIndex(this->unk_74, tilePos + TILE_POS(1, 0), super->collisionLayer);
                    SetTileByIndex(this->unk_76, tilePos + TILE_POS(-1, 1), super->collisionLayer);
                    SetTileByIndex(this->unk_78, tilePos + TILE_POS(0, 1), super->collisionLayer);
                    SetTileByIndex(this->unk_7a, tilePos + TILE_POS(1, 1), super->collisionLayer);
                }
                SoundReq(SFX_10F);
                return TRUE;
            }
        }

    } else {
        if (CheckFlags(this->pushedFlag) != 0) {
            super->action = 2;
            super->subAction = 0;
            super->timer = 240;
            super->subtimer = 60;
            super->direction = 0;
            super->speed = 0x40;
            RestorePrevTileEntity(this->unk_68, super->collisionLayer);
            RestorePrevTileEntity(this->unk_68 - 1, super->collisionLayer);
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_0809798C(PushableGraveEntity* this) {
    bool32 result = FALSE;
    if (((super->type == 0) || (super->type2 != 0)) && CheckFlags(this->pushedFlag)) {
        result = TRUE;
    }
    return result;
}

void (*const PushableGrave_Actions[])(PushableGraveEntity*) = {
    PushableGrave_Init, PushableGrave_Action1, PushableGrave_Action2, PushableGrave_Action3, PushableGrave_Action4,
};

// TODO recreate as TileData[]
const u8 gUnk_081232C0[] = {
    61,  64, 191, 255, 61, 64, 192, 255, 61, 64, 193, 255, 61, 64,  255,
    255, 61, 64,  1,   0,  61, 64,  63,  0,  61, 64,  65,  0,  255, 255,
};
const u16 PushableGrave_Tiles[] = {
    SPECIAL_TILE_34,
    SPECIAL_TILE_62,
    SPECIAL_TILE_62,
};
