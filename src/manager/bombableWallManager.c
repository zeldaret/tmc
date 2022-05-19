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

u32 sub_0805BFC4(u32, u32);
void sub_0805C02C(BombableWallManager*);

extern u32 sub_080B1AE0(u16, u8);

u32 getArchwayType(void);
void BombableWallManager_Init(BombableWallManager*);
void BombableWallManager_Action1(BombableWallManager*);
void BombableWallManager_Action2(BombableWallManager*);
void sub_0805C050(u32, u32);
void sub_0805C178(u32, u32);
void sub_0805C294(u32, u32);
void sub_0805C3B4(u32, u32);
void sub_0805C4E0(u32, u32);

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
    this->tile = (this->x >> 4 & 0x3fU) | (((this->y << 0x10) >> 0x14 & 0x3fU) << 6);
    super->type = sub_0805BFC4(this->tile, this->field_0x35);
    if (CheckLocalFlag(this->field_0x3e) != 0) {
        sub_0805C02C(this);
        DeleteManager(super);
    }
}

void BombableWallManager_Action1(BombableWallManager* this) {
    if (sub_080B1AE0(this->tile, this->field_0x35) != 0x2e) {
        super->action = 2;
        super->timer = 0x5a;
        sub_0805C02C(this);
        SetLocalFlag(this->field_0x3e);
    }
}

void BombableWallManager_Action2(BombableWallManager* this) {
    if (--super->timer == 0) {
        SoundReq(SFX_SECRET);
        DeleteManager((Manager*)this);
    }
}

u32 sub_0805BFC4(u32 pos, u32 layer) {
    u32 tileType = GetTileType(pos, layer);

    switch (tileType) {
        case 0xec:
            return 1;
        case 0xbf:
            return 4;
        case 0xaf:
            return 0;
        case 0xcc:
            return 2;
        case 0xdf:
            return 3;
        case 0xff:
            return 0;
        case 0x115:
            return 1;
        case 0x108:
            return 2;
        case 0x110:
            return 3;
        case 0x105:
            return 4;
    }
    return 0xff;
}

void sub_0805C02C(BombableWallManager* this) {
    static void (*const gUnk_08108CE8[])(u32, u32) = {
        sub_0805C050, sub_0805C178, sub_0805C294, sub_0805C3B4, sub_0805C4E0,
    };
    if (super->type != 0xff) {
        gUnk_08108CE8[super->type](this->tile, this->field_0x35);
    }
}

void sub_0805C050(u32 pos, u32 layer) {
    SetTileType(0xb1, pos - 0x41, layer);
    SetTileType(0xb2, pos - 0x40, layer);
    SetTileType(0xb3, pos - 0x3f, layer);
    SetTileType(0xb4, pos - 1, layer);
    SetTileType(0xb7, pos + 1, layer);
    if (layer == 1) {
        if (AreaHasEnemies() != 0) {
            Entity* object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) - 8 + gRoomControls.origin_y;
            }
            SetTileType(0xb5, pos, 1);
        } else {
            if (AreaIsDungeon() != 0) {
                SetTileType(0xb5, pos, 1);
            } else {
                SetTileType(0xb6, pos, 1);
            }
        }

        SetTileType(0xb8, pos - 0x41, 2);
        SetTileType(0xb9, pos - 0x40, 2);
        SetTileType(0xba, pos - 0x3f, 2);
    } else {
        Entity* object;
        SetTileType(0xb5, pos, 2);
        if (AreaIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) - 0x10 + gRoomControls.origin_y;
        object->collisionLayer = 2;
    }
}

void sub_0805C178(u32 pos, u32 layer) {
    Entity* object;

    SetTileType(0xf1, pos - 0x40, layer);
    SetTileType(0xf5, pos - 0x3f, layer);
    SetTileType(0xf6, pos + 1, layer);
    SetTileType(0xf4, pos + 0x40, layer);
    SetTileType(0xf7, pos + 0x41, layer);
    if (layer == 1) {

        if (AreaHasEnemies() != 0) {

            object = CreateObject(ARCHWAY, 0xe, 1);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 0x18 + gRoomControls.origin_x;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            }
            SetTileType(0xf2, pos, 1);
        } else {
            if (AreaIsDungeon() != 0) {
                SetTileType(0xf2, pos, 1);
            } else {
                SetTileType(0xf3, pos, 1);
            }
        }
        SetTileType(0xf8, pos - 0x3f, 2);
        SetTileType(0xf9, pos + 1, 2);
        SetTileType(0xfa, pos + 0x41, 2);
    } else {
        SetTileType(0xf2, pos, 2);
        if (AreaIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 7);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 0x20 + gRoomControls.origin_x;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
        object->collisionLayer = 2;
    }
}

void sub_0805C294(u32 pos, u32 layer) {
    Entity* object;

    SetTileType(0xd1, pos - 1, layer);
    SetTileType(0xd4, pos + 1, layer);
    SetTileType(0xd5, pos + 0x3f, layer);
    SetTileType(0xd6, pos + 0x40, layer);
    SetTileType(0xd7, pos + 0x41, layer);
    if (layer == 1) {
        if (AreaHasEnemies() != 0) {
            object = CreateObject(ARCHWAY, 0xe, 2);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 0x20 + gRoomControls.origin_y;
            }
            SetTileType(0xd2, pos, 1);
        } else {
            if (AreaIsDungeon() != 0) {
                SetTileType(0xd2, pos, 1);
            } else {
                SetTileType(0xd3, pos, 1);
            }
        }
        SetTileType(0xd8, pos + 0x3f, 2);
        SetTileType(0xd9, pos + 0x40, 2);
        SetTileType(0xda, pos + 0x41, 2);
    } else {
        SetTileType(0xd2, pos, 2);
        if (AreaIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, getArchwayType(), 8);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 0x20 + gRoomControls.origin_y;
        object->collisionLayer = 2;
    }
}

void sub_0805C3B4(u32 pos, u32 layer) {
    Entity* object;

    SetTileType(0xe1, pos - 0x41, layer);
    SetTileType(0xe4, pos - 0x40, layer);
    SetTileType(0xe2, pos - 1, layer);
    SetTileType(0xe3, pos + 0x3f, layer);
    SetTileType(0xe7, pos + 0x40, layer);
    if (layer == 1) {
        if (AreaHasEnemies() != 0) {
            object = CreateObject(ARCHWAY, 0xe, 3);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + -0x10 + gRoomControls.origin_x;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
            }
            SetTileType(0xe5, pos, 1);
        } else {
            if (AreaIsDungeon() != 0) {
                SetTileType(0xe5, pos, 1);
            } else {
                SetTileType(0xe6, pos, 1);
            }
        }
        SetTileType(0xe8, pos - 0x41, 2);
        SetTileType(0xe9, pos - 1, 2);
        SetTileType(0xea, pos + 0x3f, 2);
    } else {
        SetTileType(0xe5, pos, 2);
        if (AreaIsDungeon() == 0) {
            return;
        }

        object = CreateObject(ARCHWAY, getArchwayType(), 9);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + -0x10 + gRoomControls.origin_x;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.origin_y;
        object->collisionLayer = 2;
    }
}

void sub_0805C4E0(u32 pos, u32 layer) {
    Entity* object;

    SetTileType(0xc1, pos - 0x41, layer);
    SetTileType(0xc2, pos - 0x40, layer);
    SetTileType(0xc3, pos - 0x3f, layer);
    SetTileType(0xc4, pos - 1, layer);
    SetTileType(0xc7, pos + 1, layer);
    if (layer == 1) {
        if (AreaHasEnemies() != 0) {
            object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + -0x10 + gRoomControls.origin_y;
            }
            SetTileType(0xc5, pos, 1);
        } else {
            if (AreaIsDungeon() != 0) {
                SetTileType(0xc5, pos, 1);
            } else {
                SetTileType(0xc6, pos, 1);
            }
        }
        SetTileType(0xc8, pos - 0x41, 2);
        SetTileType(0xc9, pos - 0x40, 2);
        SetTileType(0xca, pos - 0x3f, 2);
    } else {
        SetTileType(0xc5, pos, 2);
        if (AreaIsDungeon() == 0) {
            return;
        }

        object = CreateObject(ARCHWAY, getArchwayType(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.origin_x;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + -0x10 + gRoomControls.origin_y;
        object->collisionLayer = 2;
    }
}

u32 getArchwayType(void) {
    static const u8 archwayTypes[] = { 0xd, 0xd, 0xd, 0x19, 0x1a, 0xd, 0x21, 0 };
    return archwayTypes[gArea.dungeon_idx];
}
