/**
 * @file button.c
 * @ingroup Objects
 *
 * @brief Button object
 */
#include "functions.h"
#include "tiles.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[8];
    /*0x70*/ u16 unk_70;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u16 tilePos;
    /*0x76*/ u8 unused2[14];
    /*0x84*/ u16 unk_84;
    /*0x86*/ u16 unk_86;
} ButtonEntity;

void Button_Init(ButtonEntity* this);
void Button_Action1(ButtonEntity* this);
void Button_Action2(ButtonEntity* this);
void Button_Action3(ButtonEntity* this);
void Button_Action4(ButtonEntity* this);
void Button_Action5(ButtonEntity* this);

void Button(ButtonEntity* this) {
    static void (*const Button_Actions[])(ButtonEntity*) = {
        Button_Init, Button_Action1, Button_Action2, Button_Action3, Button_Action4, Button_Action5,
    };
    Button_Actions[super->action](this);
}

extern u32 sub_08081E3C(ButtonEntity*);

void Button_Init(ButtonEntity* this) {
    COLLISION_OFF(super);
    super->updatePriority = PRIO_NO_BLOCK;
    super->y.HALF.HI++;
    if (this->unk_84 != 0) {
        super->collisionLayer = this->unk_84;
    }
    this->tilePos = (((super->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3F) |
                    ((((super->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3F) << 6);
    this->unk_72 = GetTileTypeAtTilePos(this->tilePos, super->collisionLayer);
    if (super->type == 0 && CheckFlags(this->unk_86)) {
        super->action = 5;
        SetTileType(TILE_TYPE_122, this->tilePos, super->collisionLayer);
    } else {
        if (sub_08081E3C(this)) {
            super->action = 2;
        } else {
            super->action = 1;
        }
    }
}

void Button_Action1(ButtonEntity* this) {
    if (sub_08081E3C(this)) {
        super->action = 2;
        this->unk_72 = GetTileTypeAtTilePos(this->tilePos, super->collisionLayer);
    }
}

u32 sub_08081CB0(ButtonEntity*);
void sub_08081FF8(Entity*);

void Button_Action2(ButtonEntity* this) {
    if (sub_08081CB0(this)) {
        super->subAction = 0;
        super->timer = 10;
        RequestPriorityDuration(super, 10);
        sub_08081FF8(super);
        if (super->type == 1) {
            super->action = 3;
        } else {
            super->action = 5;
        }
    }
}

u32 sub_08081F7C(ButtonEntity*, u32 tileType);
u32 sub_08081D28(ButtonEntity*);
void sub_08081E6C(ButtonEntity*);

void Button_Action3(ButtonEntity* this) {
    if (!sub_08081F7C(this, TILE_TYPE_120))
        return;
    if (!sub_08081D28(this)) {
        super->action = 4;
        super->subtimer = 1;
        if ((gPlayerState.heldObject == 2) || (!(gPlayerState.field_0x35 & 0x80))) {
            super->timer = 24;
        } else {
            super->timer = 8;
        }
    } else {
        sub_08081E6C(this);
    }
}

void Button_Action4(ButtonEntity* this) {
    if (super->timer != 0) {
        super->timer--;
        if (super->subtimer != 0) {
            super->subtimer = 0;
            SetTile(SPECIAL_TILE_53, this->tilePos, super->collisionLayer);
        }
        if (sub_08081CB0(this)) {
            super->action = 3;
            super->timer = 0;
        }
    } else {
        super->action = 2;
        ClearFlag(this->unk_86);
        SetTileType(TILE_TYPE_119, this->tilePos, super->collisionLayer);
        SoundReq(SFX_BUTTON_PRESS);
    }
}

void Button_Action5(ButtonEntity* this) {
    if (sub_08081F7C(this, TILE_TYPE_122)) {
        sub_08081E6C(this);
    }
}

Entity* sub_08081D74(ButtonEntity*);

bool32 sub_08081CB0(ButtonEntity* this) {
    u16 tileType;
    if (sub_08081D74(this)) {
        this->unk_70 = -1;
        if (GetTileTypeAtTilePos(this->tilePos, super->collisionLayer) == SPECIAL_TILE_53) {
            sub_0807B7D8(0x78, this->tilePos, super->collisionLayer);
        }
        return TRUE;
    } else {
        tileType = GetTileTypeAtTilePos(this->tilePos, super->collisionLayer);
        if (tileType != 0x77 && tileType != 0x79 && tileType != SPECIAL_TILE_53) {
            this->unk_70 = GetTileIndex(this->tilePos, super->collisionLayer);
            return TRUE;
        }
    }
    return FALSE;
}

bool32 sub_08081D28(ButtonEntity* this) {
    if (sub_08081D74(this)) {
        this->unk_70 = 0xFFFF;
        return TRUE;
    } else {
        if (this->unk_70 == 0xFFFF) {
            return FALSE;
        }
        if (GetTileIndex(this->tilePos, super->collisionLayer) != this->unk_70) {
            return FALSE;
        }
    }
    return TRUE;
}

extern Entity* gPlayerClones[3];
u32 sub_08081E0C(Entity*);

Entity* sub_08081D74(ButtonEntity* this) {
    Entity* ent;
    if (GetCollisionDataAtTilePos(this->tilePos, super->collisionLayer) == COLLISION_DATA_15) {
        return NULL;
    }
    ent = 0;
    if (sub_08081E0C(super)) {
        if ((gPlayerState.flags & PL_CAPTURED) == 0 && (gPlayerState.flags & PL_MINISH) == 0) {
            ent = &gPlayerEntity.base;
        }
    } else {
        if (gPlayerState.flags & PL_CLONING) {
            if (EntityInRectRadius(super, gPlayerClones[0], 5, 6)) {
                ent = gPlayerClones[0];
            } else if (EntityInRectRadius(super, gPlayerClones[1], 5, 6)) {
                ent = gPlayerClones[1];
            } else if (EntityInRectRadius(super, gPlayerClones[2], 5, 6)) {
                ent = gPlayerClones[2];
            }
        }
    }
    super->child = ent;
    return ent;
}

u32 sub_08081E0C(Entity* this) {
    Entity* tmp = &gPlayerEntity.base;
    if (tmp->z.HALF.HI != 0 || !PlayerCanBeMoved()) {
        return 0;
    } else {
        return EntityInRectRadius(this, tmp, 5, 6);
    }
}

u32 sub_08081E3C(ButtonEntity* this) {
    static const u16 gUnk_0811EE50[] = {
        0x77, 0x78, 0x79, 0x7a, 0, 0,
    };
    const u16* tmp1;
    s32 tmp2;
    tmp2 = GetTileTypeAtTilePos(this->tilePos, super->collisionLayer);
    tmp1 = gUnk_0811EE50;
    do {
        if (*tmp1 == tmp2)
            return 1;
    } while (*++tmp1);
    return 0;
}

u32 sub_08081F00(u32*, u32*);

extern u16 gMapDataTopSpecial[0x2000];

extern u16 gMapDataBottomSpecial[];

void sub_08081E6C(ButtonEntity* this) {
    u32 tileType;
    MapLayer* mapLayer;
    u16* tmp2;
    u16* subTiles;
    u16* tmp3;
    u32 tilePos = this->tilePos;
    u32 layer = super->collisionLayer;
    u32 specialTile = GetTileTypeAtTilePos(tilePos, layer);

    if (specialTile < 0x4000)
        return;
    mapLayer = GetLayerByIndex(layer);
    tileType = (super->type == 0 ? TILE_TYPE_122 : TILE_TYPE_120);
    subTiles = mapLayer->subTiles;
    subTiles = subTiles + (mapLayer->tileIndices[tileType] << 2);
    tmp2 = (layer == 2 ? gMapDataTopSpecial : gMapDataBottomSpecial);
    tmp2 += (((0x3f & tilePos) << 1) + ((0xfc0 & tilePos) << 2));
    if (sub_08081F00((u32*)tmp2, (u32*)subTiles))
        return;
    SetTileType(tileType, tilePos, layer);
    SetTile(specialTile, tilePos, layer);
}

// Are the two tiles already set to the correct one
bool32 sub_08081F00(u32* screenblock, u32* tileList) {
    if (screenblock[0] != tileList[0])
        return FALSE;
    if (screenblock[0x40] != tileList[1])
        return FALSE;
    return TRUE;
}

void sub_08081F24(Entity* this) {
    Entity* fx = CreateFx(this, FX_DASH, 0x40);
    if (fx) {
        fx->updatePriority = PRIO_NO_BLOCK;
        fx->x.HALF.HI += 7;
        fx->y.HALF.HI += 5;
    }
    fx = CreateFx(this, FX_DASH, 0x40);
    if (fx) {
        fx->updatePriority = PRIO_NO_BLOCK;
        fx->x.HALF.HI -= 7;
        fx->y.HALF.HI += 5;
    }
}

bool32 sub_08081F7C(ButtonEntity* this, u32 tileType) {
    u16 tmp;
    if (super->timer == 0)
        return TRUE;
    if (--super->timer > 6) {
        if (super->child != NULL)
            super->child->spriteOffsetY = -4;
    } else {
        if (super->timer == 6) {
            SetFlag(this->unk_86);
            SetTileType(tileType, this->tilePos, super->collisionLayer);
            sub_08081F24(super);
            SoundReq(SFX_BUTTON_PRESS);
            if (this->unk_70 != 0xFFFF)
                SetTile(this->unk_70, this->tilePos, super->collisionLayer);
            return FALSE;
        }
    }
    return TRUE;
}

void sub_08081FF8(Entity* this) {
    u32 direction;
    u32 i;
    if (this->child != &gPlayerEntity.base)
        return;
    direction = GetFacingDirection(this->child, this);
    sub_080044AE(this->child, 0x200, direction);
    for (i = 0; i < 3; i++) {
        if (gPlayerClones[i]) {
            sub_080044AE(gPlayerClones[i], 0x200, direction);
        }
    }
}
