/**
 * @file chestSpawner.c
 * @ingroup Objects
 *
 * @brief Chest Spawner object
 */
#include "functions.h"
#include "item.h"
#include "object.h"
#include "screen.h"
#include "structures.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[8];
    /*0x70*/ u16 tilePos;
    /*0x72*/ u16 unk_72;
    /*0x74*/ u8 unk_74[0x12];
    /*0x86*/ u16 unk_86;
} ChestSpawnerEntity;

extern const Hitbox gUnk_0811F8A8;
extern const Hitbox gUnk_0811F8B0;

void sub_080842D8(ChestSpawnerEntity*);
void AddInteractableChest(ChestSpawnerEntity*);
void sub_08083E20(ChestSpawnerEntity*);
void sub_08084074(u32);
void sub_080840A8(s32 x, s32 y);
void ChestSpawner_Type0(ChestSpawnerEntity*);
void ChestSpawner_Type2(ChestSpawnerEntity*);
void ChestSpawner_Type0Init(ChestSpawnerEntity*);
void ChestSpawner_Type0Action1(ChestSpawnerEntity*);
void ChestSpawner_Type0Action2(ChestSpawnerEntity*);
void ChestSpawner_Type0Action3(ChestSpawnerEntity*);
void ChestSpawner_Type2Init(ChestSpawnerEntity*);
void ChestSpawner_Type2Action1(ChestSpawnerEntity*);
void ChestSpawner_Type2Action2(ChestSpawnerEntity*);
void ChestSpawner_Type2Action3(ChestSpawnerEntity*);
void ChestSpawner_Type2Action4(ChestSpawnerEntity*);
void ChestSpawner_Type2Action5(ChestSpawnerEntity*);
void ChestSpawner_Type2Action6(ChestSpawnerEntity*);
void ChestSpawner_Type2Action7(ChestSpawnerEntity*);

void ChestSpawner(ChestSpawnerEntity* this) {
    static void (*const ChestSpawner_Types[])(ChestSpawnerEntity*) = {
        ChestSpawner_Type0, ChestSpawner_Type0, ChestSpawner_Type2, ChestSpawner_Type2,
        ChestSpawner_Type2, ChestSpawner_Type2, ChestSpawner_Type0, ChestSpawner_Type0,
    };
    ChestSpawner_Types[super->type](this);
}

void ChestSpawner_Type0(ChestSpawnerEntity* this) {
    static void (*const ChestSpawner_Type0Actions[])(ChestSpawnerEntity*) = {
        ChestSpawner_Type0Init,
        ChestSpawner_Type0Action1,
        ChestSpawner_Type0Action2,
        ChestSpawner_Type0Action3,
    };
    ChestSpawner_Type0Actions[super->action](this);
}

void ChestSpawner_Type2(ChestSpawnerEntity* this) {
    static void (*const ChestSpawner_Type2Actions[])(ChestSpawnerEntity*) = {
        ChestSpawner_Type2Init,    ChestSpawner_Type2Action1, ChestSpawner_Type2Action2, ChestSpawner_Type2Action3,
        ChestSpawner_Type2Action4, ChestSpawner_Type2Action5, ChestSpawner_Type2Action6, ChestSpawner_Type2Action7,
    };
    ChestSpawner_Type2Actions[super->action](this);
}

void sub_08083E20(ChestSpawnerEntity* this) {
    super->action = 3;
    super->spriteSettings.draw = 1;
    super->spriteRendering.alphaBlend = 0;
    sub_080842D8(this);
    AddInteractableChest(this);
}
void ChestSpawner_Type2Init(ChestSpawnerEntity* this) {
    super->hitbox = (Hitbox*)&gUnk_0811F8B0;
    if (CheckLocalFlag(super->type2)) {
        super->spriteSettings.draw = 1;
        super->action = 5;
        sub_080842D8(this);
        InitializeAnimation(super, 1);
    } else {
        if (CheckFlags(this->unk_86) || super->type == 4) {
            sub_08083E20(this);
        } else {
            super->action = 1;
        }
        InitializeAnimation(super, 0);
    }
}

void ChestSpawner_Type2Action1(ChestSpawnerEntity* this) {
    if (CheckFlags(this->unk_86)) {
        gScreen.controls.layerFXControl = 0xf40;
        gScreen.controls.alphaBlend = 0x1000;
        gPauseMenuOptions.disabled = 1;
        super->action = 2;
        super->subAction = 0;
        super->subtimer = 30;
        super->spriteSettings.draw = 1;
        super->spriteRendering.alphaBlend = 1;
        RequestPriorityDuration(super, 30);
        sub_0805BC4C();
    }
}

void ChestSpawner_Type2Action2(ChestSpawnerEntity* this) {
    u32 tmp;

    SetPriorityTimer(30);
    switch (super->subAction) {
        case 0:
            if (EntityInRectRadius(super, &gPlayerEntity.base, 0x10, 8)) {
                sub_08078AC0(0x10, 0, 0);
                gPlayerEntity.base.direction = 0x10;
            }
            super->subAction = 1;
            break;
        case 1:
            if ((super->type == 5) || (gPlayerEntity.base.action == PLAYER_NORMAL)) {
                super->subAction = 2;
                super->timer = 8;
                super->subtimer = 0;
                SoundReq(SFX_14A);
            }
            break;
        default:
            sub_0800445C(super);
            CreateMagicSparkles(super->x.HALF.HI, super->y.HALF.HI, 2);
            if (--super->timer == 0) {
                super->timer = 8;
                tmp = ++super->subtimer;
                gScreen.controls.alphaBlend = (((0x10 - tmp) * 0x100) & 0xff00) | tmp;
                if (gScreen.controls.alphaBlend == 0x10) {
                    gPauseMenuOptions.disabled = 0;
                    gScreen.controls.layerFXControl = 0;
                    sub_08083E20(this);
                    SoundReq(SFX_SECRET_BIG);
                }
            }
            break;
    }
}

void ChestSpawner_Type2Action3(ChestSpawnerEntity* this) {
    sub_0800445C(super);
    if (super->interactType != INTERACTION_NONE) {
        super->action = 4;
        super->subtimer = 30;
        RemoveInteractableObject(super);
        RequestPriorityDuration(super, 60);
        SoundReq(SFX_CHEST_OPEN);
    }
}

void ChestSpawner_Type2Action4(ChestSpawnerEntity* this) {
    sub_0800445C(super);
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        if (--super->subtimer == 0) {
            if (super->timer == 24) {
                super->action = 6;
                super->timer = 8;
                super->subtimer = 16;
            } else {
                super->action = 5;
                sub_08084074(super->type2);
            }
        }
        SetLocalFlag(super->type2);
    }
}

void sub_08084074(u32 flag) {
    TileEntity* tileEntity = (TileEntity*)GetCurrentRoomProperty(3);
    if (tileEntity != NULL) {
        for (; tileEntity->type != 0; tileEntity++) {
            if ((tileEntity->type == BIG_CHEST) && (flag == tileEntity->localFlag)) {
                CreateItemEntity(tileEntity->_2, tileEntity->_3, 0);
                return;
            }
        }
    }
}

void sub_080840A8(s32 x, s32 y) {
    static const u8 gUnk_0811F838[] = {
        ITEM_RUPEE1, ITEM_RUPEE1, ITEM_RUPEE1, ITEM_RUPEE1, ITEM_RUPEE5, ITEM_RUPEE5, ITEM_RUPEE5, ITEM_RUPEE20,
    };
    static const s32 zVelocities[] = { 0x60000, 0x70000, 0x80000, 0x90000 };
    static const s8 xOffsets[] = { -6, 0, 0, 6 };
    Entity* obj = CreateObject(GROUND_ITEM, gUnk_0811F838[Random() & 7], 0);
    if (obj != NULL) {
        obj->timer = 6;
        obj->direction = ((Random() & 7) + 0xc) | 0x80;
        obj->speed = (Random() & 0xf) * 2 + 0x20;
        obj->zVelocity = zVelocities[Random() & 3];
        obj->x.HALF.HI = xOffsets[Random() & 3] + x;
        obj->y.HALF.HI = y + 1;
        obj->z.HALF.HI = -8;
        ResolveCollisionLayer(obj);
        obj = CreateFx(obj, FX_DASH, 0);
        if (obj != NULL) {
            SoundReq(SFX_124);
        }
    }
}

void ChestSpawner_Type2Action6(ChestSpawnerEntity* this) {
    if (--super->timer == 0) {
        super->timer = 8;
        if (--super->subtimer != 0) {
            sub_080840A8(super->x.HALF.HI, super->y.HALF.HI);
        } else {
            super->action = 5;
        }
    }
}

void ChestSpawner_Type2Action5(ChestSpawnerEntity* this) {
    sub_0800445C(super);
}

void ChestSpawner_Type2Action7(ChestSpawnerEntity* this) {
}

void ChestSpawner_Type0Init(ChestSpawnerEntity* this) {
    super->action++;
    this->tilePos = COORD_TO_TILE(super);
    super->hitbox = (Hitbox*)&gUnk_0811F8A8;
    if (GetTileTypeAtEntity(super) == TILE_TYPE_116) {
        DeleteThisEntity();
    }
    if (CheckFlags(this->unk_86)) {
        super->action = 3;
        sub_0807B7D8(0x73, this->tilePos, super->collisionLayer);
        if ((super->type & 1) == 0) {
            DeleteThisEntity();
        }
    }
}

void ChestSpawner_Type0Action1(ChestSpawnerEntity* this) {
    if (CheckFlags(this->unk_86)) {
        super->action = 2;
    }
}

void ChestSpawner_Type0Action2(ChestSpawnerEntity* this) {
    sub_0807B7D8(0x73, this->tilePos, super->collisionLayer);
    switch (super->type) {
        case 6:
        case 7:
            SoundReq(SFX_215);
            break;
        default:
            SoundReq(SFX_SECRET);
            CreateDust(super);
            break;
    }
    super->action = 3;
    this->unk_72 = super->timer * 0x3c;
    if ((super->type & 1) == 0) {
        DeleteThisEntity();
    }
}

void ChestSpawner_Type0Action3(ChestSpawnerEntity* this) {
    if ((super->type == 1) || (super->type == 7)) {
        if (GetTileTypeAtEntity(super) == TILE_TYPE_116) {
            DeleteEntity(super);
        } else {
            if (!CheckFlags(this->unk_86)) {
                if (this->unk_72 != 0) {
                    this->unk_72--;
                } else {
                    super->action = 1;
                    RestorePrevTileEntity(this->tilePos, super->collisionLayer);
                    CreateDust(super);
                }
            }
        }
    }
}

void sub_080842D8(ChestSpawnerEntity* this) {
    // TODO recreate as TileData[]
    static const u8 gUnk_0811F854[] = {
        35, 64, 191, 255, 35, 64, 192, 255, 38, 64, 255, 255, 38, 64, 0, 0, 255, 255,
    };
    static const u8 gUnk_0811F866[] = {
        39, 64, 191, 255, 35, 64, 192, 255, 40, 64, 193, 255, 41, 64, 255, 255, 38, 64, 0, 0, 42, 64, 1, 0, 255, 255,
    };
    static const u8 gUnk_0811F880[] = {
        34, 64, 255, 255, 34, 64, 0, 0, 255, 255,
    };
    static const u8 gUnk_0811F88A[] = {
        36, 64, 255, 255, 34, 64, 0, 0, 37, 64, 1, 0, 255, 255,
    };
    static const u8* const gUnk_0811F898[] = {
        gUnk_0811F854,
        gUnk_0811F866,
        gUnk_0811F880,
        gUnk_0811F88A,
    };
    s32 index;

    if ((super->x.HALF.HI & 8) != 0) {
        index = 1;
    } else {
        index = 0;
    }

    if ((super->y.HALF.HI & 8) != 0) {
        index += 2;
    }
    SetMultipleTiles((TileData*)gUnk_0811F898[index], COORD_TO_TILE(super), super->collisionLayer);
}

const Hitbox gUnk_0811F8A8 = { 0, -3, { 0, 0, 0, 0 }, 6, 6 };
const Hitbox gUnk_0811F8B0 = { 0, -3, { 0, 0, 0, 0 }, 12, 6 };
