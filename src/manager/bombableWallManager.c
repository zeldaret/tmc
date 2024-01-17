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

u32 BombableWallManager_GetBombableType(u32 tilePos, u32 layer);
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
    this->tilePos = (this->x >> 4 & 0x3fU) | (((this->y << 0x10) >> 0x14 & 0x3fU) << 6);
    super->type = BombableWallManager_GetBombableType(this->tilePos, this->layer);
    if (CheckLocalFlag(this->flag) != 0) {
        BombableWallManager_DestroyWall(this);
        DeleteManager(super);
    }
}

void BombableWallManager_Action1(BombableWallManager* this) {
    if (GetActTileAtTilePos(this->tilePos, this->layer) != ACT_TILE_46) {
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

u32 BombableWallManager_GetBombableType(u32 tilePos, u32 layer) {
    u32 tileType = GetTileTypeAtTilePos(tilePos, layer);

    switch (tileType) {
        case TILE_TYPE_236:
            return 1;
        case TILE_TYPE_191:
            return 4;
        case TILE_TYPE_175:
            return 0;
        case TILE_TYPE_204:
            return 2;
        case TILE_TYPE_223:
            return 3;
        case TILE_TYPE_255:
            return 0;
        case TILE_TYPE_277:
            return 1;
        case TILE_TYPE_264:
            return 2;
        case TILE_TYPE_272:
            return 3;
        case TILE_TYPE_261:
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
        gUnk_08108CE8[super->type](this->tilePos, this->layer);
    }
}

void BombableWallManager_DestroyWall0(u32 tilePos, u32 layer) {
    SetTileType(TILE_TYPE_177, tilePos + TILE_POS(-1, -1), layer);
    SetTileType(TILE_TYPE_178, tilePos + TILE_POS(0, -1), layer);
    SetTileType(TILE_TYPE_179, tilePos + TILE_POS(1, -1), layer);
    SetTileType(TILE_TYPE_180, tilePos + TILE_POS(-1, 0), layer);
    SetTileType(TILE_TYPE_183, tilePos + TILE_POS(1, 0), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            Entity* object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) - 8 + gRoomControls.origin_y;
            }
            SetTileType(TILE_TYPE_181, tilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetTileType(TILE_TYPE_181, tilePos, LAYER_BOTTOM);
            } else {
                SetTileType(TILE_TYPE_182, tilePos, LAYER_BOTTOM);
            }
        }

        SetTileType(TILE_TYPE_184, tilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_185, tilePos + TILE_POS(0, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_186, tilePos + TILE_POS(1, -1), LAYER_TOP);
    } else {
        Entity* object;
        SetTileType(TILE_TYPE_181, tilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) - 0x10 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall1(u32 tilePos, u32 layer) {
    Entity* object;

    SetTileType(TILE_TYPE_241, tilePos + TILE_POS(0, -1), layer);
    SetTileType(TILE_TYPE_245, tilePos + TILE_POS(1, -1), layer);
    SetTileType(TILE_TYPE_246, tilePos + TILE_POS(1, 0), layer);
    SetTileType(TILE_TYPE_244, tilePos + TILE_POS(0, 1), layer);
    SetTileType(TILE_TYPE_247, tilePos + TILE_POS(1, 1), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {

            object = CreateObject(ARCHWAY, 0xe, 1);
            if (object != NULL) {
                object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 0x18 + gRoomControls.origin_x;
                object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            }
            SetTileType(TILE_TYPE_242, tilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetTileType(TILE_TYPE_242, tilePos, LAYER_BOTTOM);
            } else {
                SetTileType(TILE_TYPE_243, tilePos, LAYER_BOTTOM);
            }
        }
        SetTileType(TILE_TYPE_248, tilePos + TILE_POS(1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_249, tilePos + 1, LAYER_TOP);
        SetTileType(TILE_TYPE_250, tilePos + TILE_POS(1, 1), LAYER_TOP);
    } else {
        SetTileType(TILE_TYPE_242, tilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 7);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 0x20 + gRoomControls.origin_x;
        object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall2(u32 tilePos, u32 layer) {
    Entity* object;

    SetTileType(TILE_TYPE_209, tilePos + TILE_POS(-1, 0), layer);
    SetTileType(TILE_TYPE_212, tilePos + TILE_POS(1, 0), layer);
    SetTileType(TILE_TYPE_213, tilePos + TILE_POS(-1, 1), layer);
    SetTileType(TILE_TYPE_214, tilePos + TILE_POS(0, 1), layer);
    SetTileType(TILE_TYPE_215, tilePos + TILE_POS(1, 1), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            object = CreateObject(ARCHWAY, 0xe, 2);
            if (object != NULL) {
                object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + 0x20 + gRoomControls.origin_y;
            }
            SetTileType(TILE_TYPE_210, tilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetTileType(TILE_TYPE_210, tilePos, LAYER_BOTTOM);
            } else {
                SetTileType(TILE_TYPE_211, tilePos, LAYER_BOTTOM);
            }
        }
        SetTileType(TILE_TYPE_216, tilePos + TILE_POS(-1, 1), LAYER_TOP);
        SetTileType(TILE_TYPE_217, tilePos + TILE_POS(0, 1), LAYER_TOP);
        SetTileType(TILE_TYPE_218, tilePos + TILE_POS(1, 1), LAYER_TOP);
    } else {
        SetTileType(TILE_TYPE_210, tilePos, LAYER_TOP);
        if (AreaIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 8);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + 0x20 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall3(u32 tilePos, u32 layer) {
    Entity* object;

    SetTileType(TILE_TYPE_225, tilePos + TILE_POS(-1, -1), layer);
    SetTileType(TILE_TYPE_228, tilePos + TILE_POS(0, -1), layer);
    SetTileType(TILE_TYPE_226, tilePos + TILE_POS(-1, 0), layer);
    SetTileType(TILE_TYPE_227, tilePos + TILE_POS(-1, 1), layer);
    SetTileType(TILE_TYPE_231, tilePos + TILE_POS(0, 1), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            object = CreateObject(ARCHWAY, 0xe, 3);
            if (object != NULL) {
                object->x.HALF.HI = ((tilePos & 0x3f) << 4) + -0x10 + gRoomControls.origin_x;
                object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            }
            SetTileType(TILE_TYPE_229, tilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetTileType(TILE_TYPE_229, tilePos, LAYER_BOTTOM);
            } else {
                SetTileType(TILE_TYPE_230, tilePos, LAYER_BOTTOM);
            }
        }
        SetTileType(TILE_TYPE_232, tilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_233, tilePos + TILE_POS(-1, 0), LAYER_TOP);
        SetTileType(TILE_TYPE_234, tilePos + TILE_POS(-1, 1), LAYER_TOP);
    } else {
        SetTileType(TILE_TYPE_229, tilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }

        object = CreateObject(ARCHWAY, getArchwayType(), 9);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((tilePos & 0x3f) << 4) + -0x10 + gRoomControls.origin_x;
        object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

void BombableWallManager_DestroyWall4(u32 tilePos, u32 layer) {
    Entity* object;

    SetTileType(TILE_TYPE_193, tilePos + TILE_POS(-1, -1), layer);
    SetTileType(TILE_TYPE_194, tilePos + TILE_POS(0, -1), layer);
    SetTileType(TILE_TYPE_195, tilePos + TILE_POS(1, -1), layer);
    SetTileType(TILE_TYPE_196, tilePos + TILE_POS(-1, 0), layer);
    SetTileType(TILE_TYPE_199, tilePos + TILE_POS(1, 0), layer);
    if (layer == LAYER_BOTTOM) {
        if (AreaHasEnemies()) {
            object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + -0x10 + gRoomControls.origin_y;
            }
            SetTileType(TILE_TYPE_197, tilePos, LAYER_BOTTOM);
        } else {
            if (AreaIsDungeon()) {
                SetTileType(TILE_TYPE_197, tilePos, LAYER_BOTTOM);
            } else {
                SetTileType(TILE_TYPE_198, tilePos, LAYER_BOTTOM);
            }
        }
        SetTileType(TILE_TYPE_200, tilePos + TILE_POS(-1, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_201, tilePos + TILE_POS(0, -1), LAYER_TOP);
        SetTileType(TILE_TYPE_202, tilePos + TILE_POS(1, -1), LAYER_TOP);
    } else {
        SetTileType(TILE_TYPE_197, tilePos, LAYER_TOP);
        if (!AreaIsDungeon()) {
            return;
        }

        object = CreateObject(ARCHWAY, getArchwayType(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((tilePos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((tilePos & 0xfc0) >> 2) + -0x10 + gRoomControls.origin_y;
        object->collisionLayer = LAYER_TOP;
    }
}

u32 getArchwayType(void) {
    static const u8 archwayTypes[] = { 0xd, 0xd, 0xd, 0x19, 0x1a, 0xd, 0x21, 0 };
    return archwayTypes[gArea.dungeon_idx];
}
