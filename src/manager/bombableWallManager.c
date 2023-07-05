/**
 * @file bombableWallManager.c
 * @ingroup Managers
 *
 * @brief Manages bombable walls.
 */
#include "manager/bombableWallManager.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "game.h"
#include "object.h"
#include "sound.h"
#include "tiles.h"

u32 BombableWallManager_GetBombableType(u32 metaTilePos, u32 layer);
void BombableWallManager_DestroyWall(BombableWallManager*);

u32 getArchwayType(void);
void BombableWallManager_Init(BombableWallManager*);
void BombableWallManager_Action1(BombableWallManager*);
void BombableWallManager_Action2(BombableWallManager*);
void BombableWallManager_DestroyWall0(u32, u32);
void BombableWallManager_DestroyWall1(u32, u32);
void BombableWallManager_DestroyWall2(u32, u32);
void BombableWallManager_DestroyWall3(u32, u32);
void BombableWallManager_DestroyWall4(u32, u32);

void BombableWallManager_Main(BombableWallManager* this) {
    static void (*const BombableWallManager_Actions[])(BombableWallManager*) = {
        BombableWallManager_Init,
        BombableWallManager_Action1,
        BombableWallManager_Action2,
    };
    BombableWallManager_Actions[super->action](this);
}

void BombableWallManager_Init(BombableWallManager* this) {
    super->action = 1;
    this->metaTilePos = (this->x >> 4 & 0x3fU) | (((this->y << 0x10) >> 0x14 & 0x3fU) << 6);
    super->type = BombableWallManager_GetBombableType(this->metaTilePos, this->layer);
    if (CheckLocalFlag(this->flag) != 0) {
        BombableWallManager_DestroyWall(this);
        DeleteManager(super);
    }
}

void BombableWallManager_Action1(BombableWallManager* this) {
    if (GetVvvAtMetaTilePos(this->metaTilePos, this->layer) != VVV_46) {
        super->action = 2;
        super->timer = 90;
        BombableWallManager_DestroyWall(this);
        SetLocalFlag(this->flag);
    }
}

void BombableWallManager_Action2(BombableWallManager* this) {
    if (--super->timer == 0) {
        SoundReq(SFX_SECRET);
        DeleteManager((Manager*)this);
    }
}

u32 BombableWallManager_GetBombableType(u32 metaTilePos, u32 layer) {
    u32 metaTileType = GetMetaTileType(metaTilePos, layer);

    switch (metaTileType) {
        case META_TILE_TYPE_236:
            return 1;
        case META_TILE_TYPE_191:
            return 4;
        case META_TILE_TYPE_175:
            return 0;
        case META_TILE_TYPE_204:
            return 2;
        case META_TILE_TYPE_223:
            return 3;
        case META_TILE_TYPE_255:
            return 0;
        case META_TILE_TYPE_277:
            return 1;
        case META_TILE_TYPE_264:
            return 2;
        case META_TILE_TYPE_272:
            return 3;
        case META_TILE_TYPE_261:
            return 4;
    }
    return 0xff;
}

void BombableWallManager_DestroyWall(BombableWallManager* this) {
    static void (*const gUnk_08108CE8[])(u32, u32) = {
        BombableWallManager_DestroyWall0, BombableWallManager_DestroyWall1, BombableWallManager_DestroyWall2,
        BombableWallManager_DestroyWall3, BombableWallManager_DestroyWall4,
    };
    if (super->type != 0xff) {
        gUnk_08108CE8[super->type](this->metaTilePos, this->layer);
    }
}

void BombableWallManager_DestroyWall0(u32 metaTilePos, u32 layer) {
    SetMetaTileType(META_TILE_TYPE_177, metaTilePos + TILE_POS(-1, -1), layer);
    SetMetaTileType(META_TILE_TYPE_178, metaTilePos + TILE_POS(0, -1), layer);
    SetMetaTileType(META_TILE_TYPE_179, metaTilePos + TILE_POS(1, -1), layer);
    SetMetaTileType(META_TILE_TYPE_180, metaTilePos + TILE_POS(-1, 0), layer);
    SetMetaTileType(META_TILE_TYPE_183, metaTilePos + TILE_POS(1, 0), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            Entity* object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) - 8 + gRoomControls.origin_y;
            }
            SetMetaTileType(META_TILE_TYPE_181, metaTilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetMetaTileType(META_TILE_TYPE_181, metaTilePos, LAYER_BOTTOM);
            } else {
                SetMetaTileType(META_TILE_TYPE_182, metaTilePos, LAYER_BOTTOM);
            }
        }

        SetMetaTileType(META_TILE_TYPE_184, metaTilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_185, metaTilePos + TILE_POS(0, -1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_186, metaTilePos + TILE_POS(1, -1), LAYER_TOP);
    } else {
        Entity* object;
        SetMetaTileType(META_TILE_TYPE_181, metaTilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) - 0x10 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall1(u32 metaTilePos, u32 layer) {
    Entity* object;

    SetMetaTileType(META_TILE_TYPE_241, metaTilePos + TILE_POS(0, -1), layer);
    SetMetaTileType(META_TILE_TYPE_245, metaTilePos + TILE_POS(1, -1), layer);
    SetMetaTileType(META_TILE_TYPE_246, metaTilePos + TILE_POS(1, 0), layer);
    SetMetaTileType(META_TILE_TYPE_244, metaTilePos + TILE_POS(0, 1), layer);
    SetMetaTileType(META_TILE_TYPE_247, metaTilePos + TILE_POS(1, 1), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {

            object = CreateObject(ARCHWAY, 0xe, 1);
            if (object != NULL) {
                object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 0x18 + gRoomControls.origin_x;
                object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            }
            SetMetaTileType(META_TILE_TYPE_242, metaTilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetMetaTileType(META_TILE_TYPE_242, metaTilePos, LAYER_BOTTOM);
            } else {
                SetMetaTileType(META_TILE_TYPE_243, metaTilePos, LAYER_BOTTOM);
            }
        }
        SetMetaTileType(META_TILE_TYPE_248, metaTilePos + TILE_POS(1, -1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_249, metaTilePos + 1, LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_250, metaTilePos + TILE_POS(1, 1), LAYER_TOP);
    } else {
        SetMetaTileType(META_TILE_TYPE_242, metaTilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 7);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 0x20 + gRoomControls.origin_x;
        object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall2(u32 metaTilePos, u32 layer) {
    Entity* object;

    SetMetaTileType(META_TILE_TYPE_209, metaTilePos + TILE_POS(-1, 0), layer);
    SetMetaTileType(META_TILE_TYPE_212, metaTilePos + TILE_POS(1, 0), layer);
    SetMetaTileType(META_TILE_TYPE_213, metaTilePos + TILE_POS(-1, 1), layer);
    SetMetaTileType(META_TILE_TYPE_214, metaTilePos + TILE_POS(0, 1), layer);
    SetMetaTileType(META_TILE_TYPE_215, metaTilePos + TILE_POS(1, 1), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            object = CreateObject(ARCHWAY, 0xe, 2);
            if (object != NULL) {
                object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + 0x20 + gRoomControls.origin_y;
            }
            SetMetaTileType(META_TILE_TYPE_210, metaTilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetMetaTileType(META_TILE_TYPE_210, metaTilePos, LAYER_BOTTOM);
            } else {
                SetMetaTileType(META_TILE_TYPE_211, metaTilePos, LAYER_BOTTOM);
            }
        }
        SetMetaTileType(META_TILE_TYPE_216, metaTilePos + TILE_POS(-1, 1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_217, metaTilePos + TILE_POS(0, 1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_218, metaTilePos + TILE_POS(1, 1), LAYER_TOP);
    } else {
        SetMetaTileType(META_TILE_TYPE_210, metaTilePos, LAYER_TOP);
        if (AreaIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 8);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + 0x20 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall3(u32 metaTilePos, u32 layer) {
    Entity* object;

    SetMetaTileType(META_TILE_TYPE_225, metaTilePos + TILE_POS(-1, -1), layer);
    SetMetaTileType(META_TILE_TYPE_228, metaTilePos + TILE_POS(0, -1), layer);
    SetMetaTileType(META_TILE_TYPE_226, metaTilePos + TILE_POS(-1, 0), layer);
    SetMetaTileType(META_TILE_TYPE_227, metaTilePos + TILE_POS(-1, 1), layer);
    SetMetaTileType(META_TILE_TYPE_231, metaTilePos + TILE_POS(0, 1), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            object = CreateObject(ARCHWAY, 0xe, 3);
            if (object != NULL) {
                object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + -0x10 + gRoomControls.origin_x;
                object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            }
            SetMetaTileType(META_TILE_TYPE_229, metaTilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetMetaTileType(META_TILE_TYPE_229, metaTilePos, LAYER_BOTTOM);
            } else {
                SetMetaTileType(META_TILE_TYPE_230, metaTilePos, LAYER_BOTTOM);
            }
        }
        SetMetaTileType(META_TILE_TYPE_232, metaTilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_233, metaTilePos + TILE_POS(-1, 0), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_234, metaTilePos + TILE_POS(-1, 1), LAYER_TOP);
    } else {
        SetMetaTileType(META_TILE_TYPE_229, metaTilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }

        object = CreateObject(ARCHWAY, getArchwayType(), 9);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + -0x10 + gRoomControls.origin_x;
        object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall4(u32 metaTilePos, u32 layer) {
    Entity* object;

    SetMetaTileType(META_TILE_TYPE_193, metaTilePos + TILE_POS(-1, -1), layer);
    SetMetaTileType(META_TILE_TYPE_194, metaTilePos + TILE_POS(0, -1), layer);
    SetMetaTileType(META_TILE_TYPE_195, metaTilePos + TILE_POS(1, -1), layer);
    SetMetaTileType(META_TILE_TYPE_196, metaTilePos + TILE_POS(-1, 0), layer);
    SetMetaTileType(META_TILE_TYPE_199, metaTilePos + TILE_POS(1, 0), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + -0x10 + gRoomControls.origin_y;
            }
            SetMetaTileType(META_TILE_TYPE_197, metaTilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetMetaTileType(META_TILE_TYPE_197, metaTilePos, LAYER_BOTTOM);
            } else {
                SetMetaTileType(META_TILE_TYPE_198, metaTilePos, LAYER_BOTTOM);
            }
        }
        SetMetaTileType(META_TILE_TYPE_200, metaTilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_201, metaTilePos + TILE_POS(0, -1), LAYER_TOP);
        SetMetaTileType(META_TILE_TYPE_202, metaTilePos + TILE_POS(1, -1), LAYER_TOP);
    } else {
        SetMetaTileType(META_TILE_TYPE_197, metaTilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }

        object = CreateObject(ARCHWAY, getArchwayType(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((metaTilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((metaTilePos & 0xfc0) >> 2) + -0x10 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

u32 getArchwayType(void) {
    static const u8 archwayTypes[] = { 0xd, 0xd, 0xd, 0x19, 0x1a, 0xd, 0x21, 0 };
    return archwayTypes[gArea.dungeon_idx];
}
