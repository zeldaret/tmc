#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "audio.h"
#include "game.h"
#include "object.h"
#include "area.h"

extern void (*const gUnk_08108CDC[])(Manager24*);

u32 sub_0805BFC4(u32, u32);
void sub_0805C02C(Manager24*);

extern u32 sub_080002C8(u16, u8);

extern void (*const gUnk_08108CE8[])(u32, u32);

u32 sub_0805C608(void);
extern u32 CheckIsInteriorWithEnemies(void);

extern u8 gUnk_08108CFC[];

void Manager24_Main(Manager24* manager) {
    gUnk_08108CDC[manager->manager.action](manager);
}

void sub_0805BF30(Manager24* manager) {
    manager->manager.action = 1;
    manager->tile = (manager->x >> 4 & 0x3fU) | (((manager->y << 0x10) >> 0x14 & 0x3fU) << 6);
    manager->manager.unk_0a = sub_0805BFC4(manager->tile, manager->field_0x35);
    if (CheckLocalFlag(manager->field_0x3e) != 0) {
        sub_0805C02C(manager);
        DeleteManager((Manager*)manager);
    }
}

void sub_0805BF78(Manager24* this) {
    if (sub_080002C8(this->tile, this->field_0x35) != 0x2e) {
        this->manager.action = 2;
        this->manager.unk_0e = 0x5a;
        sub_0805C02C(this);
        SetLocalFlag(this->field_0x3e);
    }
}

void sub_0805BFA4(Manager24* this) {
    if (--this->manager.unk_0e == 0) {
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

void sub_0805C02C(Manager24* this) {
    if (this->manager.unk_0a != 0xff) {
        gUnk_08108CE8[this->manager.unk_0a](this->tile, this->field_0x35);
    }
}

void sub_0805C050(u32 pos, u32 layer) {
    SetTileType(0xb1, pos - 0x41, layer);
    SetTileType(0xb2, pos - 0x40, layer);
    SetTileType(0xb3, pos - 0x3f, layer);
    SetTileType(0xb4, pos - 1, layer);
    SetTileType(0xb7, pos + 1, layer);
    if (layer == 1) {
        if (CheckIsInteriorWithEnemies() != 0) {
            Entity* object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.roomOriginX;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) - 8 + gRoomControls.roomOriginY;
            }
            SetTileType(0xb5, pos, 1);
        } else {
            if (CheckIsDungeon() != 0) {
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
        if (CheckIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, sub_0805C608(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.roomOriginX;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) - 0x10 + gRoomControls.roomOriginY;
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

        if (CheckIsInteriorWithEnemies() != 0) {

            object = CreateObject(ARCHWAY, 0xe, 1);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 0x18 + gRoomControls.roomOriginX;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.roomOriginY;
            }
            SetTileType(0xf2, pos, 1);
        } else {
            if (CheckIsDungeon() != 0) {
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
        if (CheckIsDungeon() == 0) {
            return;
        }
        object = CreateObject(ARCHWAY, sub_0805C608(), 7);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 0x20 + gRoomControls.roomOriginX;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.roomOriginY;
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
        if (CheckIsInteriorWithEnemies() != 0) {
            object = CreateObject(0x4f, 0xe, 2);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.roomOriginX;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 0x20 + gRoomControls.roomOriginY;
            }
            SetTileType(0xd2, pos, 1);
        } else {
            if (CheckIsDungeon() != 0) {
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
        if (CheckIsDungeon() == 0) {
            return;
        }
        object = CreateObject(0x4f, sub_0805C608(), 8);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.roomOriginX;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 0x20 + gRoomControls.roomOriginY;
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
        if (CheckIsInteriorWithEnemies() != 0) {
            object = CreateObject(ARCHWAY, 0xe, 3);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + -0x10 + gRoomControls.roomOriginX;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.roomOriginY;
            }
            SetTileType(0xe5, pos, 1);
        } else {
            if (CheckIsDungeon() != 0) {
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
        if (CheckIsDungeon() == 0) {
            return;
        }

        object = CreateObject(ARCHWAY, sub_0805C608(), 9);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + -0x10 + gRoomControls.roomOriginX;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + 8 + gRoomControls.roomOriginY;
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
        if (CheckIsInteriorWithEnemies() != 0) {
            object = CreateObject(ARCHWAY, 0xe, 0);
            if (object != NULL) {
                object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.roomOriginX;
                object->y.HALF.HI = ((pos & 0xfc0) >> 2) + -0x10 + gRoomControls.roomOriginY;
            }
            SetTileType(0xc5, pos, 1);
        } else {
            if (CheckIsDungeon() != 0) {
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
        if (CheckIsDungeon() == 0) {
            return;
        }

        object = CreateObject(ARCHWAY, sub_0805C608(), 6);
        if (object == NULL) {
            return;
        }
        object->x.HALF.HI = ((pos & 0x3f) << 4) + 8 + gRoomControls.roomOriginX;
        object->y.HALF.HI = ((pos & 0xfc0) >> 2) + -0x10 + gRoomControls.roomOriginY;
        object->collisionLayer = 2;
    }
}

u32 sub_0805C608(void) {
    return gUnk_08108CFC[gArea.dungeon_idx];
}
