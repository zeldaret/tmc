#define NENT_DEPRECATED
#include "entity.h"
#include "room.h"
#include "functions.h"
#include "object.h"

extern void sub_080001D0(u32, u32, u32);
extern u32 sub_080001DA(u32, u32);

enum {
    FURNITURE_INIT,
    FURNITURE_UPDATE,
};

typedef enum {
    TMP,
} FurnitureFlag;

typedef enum {
    TMP2,
} FurnitureType;

typedef struct {
    Entity base;
    /* 0x68 */ u8 pad[0x10];
    /* 0x78 */ u16 tile;
    /* 0x7a */ u16 unk1;
    /* 0x7c */ u16 unk2;
    /* 0x7e */ u16 unk3;
    /* 0x80 */ u8 width;
    /* 0x81 */ u8 height;
    /* 0x82 */ u16 flags;
} FurnitureEntity;

typedef void(FurnitureAction)(FurnitureEntity*);

static FurnitureAction FurnitureInit;
static FurnitureAction FurnitureUpdate;

typedef struct {
    u8 width;
    u8 height;
    s8 x;
    s8 y;
    u8 rendering;
    u8 priority;
    u16 flags;
} FurnitureCfg;

extern FurnitureCfg gUnk_08122128[];
extern FurnitureCfg gUnk_08122198[];
extern FurnitureCfg gUnk_081221A8[];
extern FurnitureCfg gUnk_081221B8[];
extern FurnitureCfg gUnk_081221C8[];
extern FurnitureCfg gUnk_081221D8[];
extern FurnitureCfg gUnk_081221E8[];
extern FurnitureCfg gUnk_081221F8[];
extern FurnitureCfg gUnk_08122208[];
extern const FurnitureCfg gUnk_08121EF8[];

static void sub_08090DC4(FurnitureEntity*);
static void sub_08090E64(FurnitureEntity*);
static void sub_08090B6C(FurnitureEntity*);
static void sub_08090E4C(FurnitureEntity*);
static void sub_08090CDC(u32, u32, u32);

void Furniture(FurnitureEntity* this) {
    static FurnitureAction* const sFurnitureActions[] = {
        FurnitureInit,
        FurnitureUpdate,
    };

    sFurnitureActions[super->action](this);
}

static void FurnitureInit(FurnitureEntity* this) {
    u32 i, tile, cnt;
    Entity* e;

    super->action = FURNITURE_UPDATE;
    this->tile = COORD_TO_TILE(super);
    sub_08090DC4(this);
    switch (this->flags & 0x7fff) {
        case 0x100:
            super->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(super);
            break;
        case 0x20:
            break;
        case 0x40:
            super->y.HALF.HI = (super->y.HALF.HI & ~0xF) | 4;
            SetTile(0x4017, this->tile - 128, 1);
            SetTile(0x4017, this->tile - 64, 1);
            break;
        case 0x80:
            super->frameIndex = 0;
            super->y.HALF.HI = (super->y.HALF.HI & ~0xF) | 6;
            this->tile = COORD_TO_TILE(super);
            SetTile(0x4026, this->tile, super->collisionLayer);
            break;
        case 0x200:
            break;
        case 0x400:
            sub_08090E64(this);
            if (super->type2 != 0) {
                super->spriteOffsetX = 1;
                this->width = 48;
            }
        default:
            sub_08090B6C(this);
            break;
    }

    if (this->height != 16) {
        switch (this->height & 0x70) {
            case 0x30:
                this->tile -= 64;
                sub_08090B6C(this);
                this->tile = COORD_TO_TILE(super);
            case 0x20:
                this->tile += 64;
                sub_08090B6C(this);
        }
        this->tile = COORD_TO_TILE(super);
    }

    switch (this->flags & 0x7fff) {
        case 0x4:
            ChangeObjPalette(super, 0x7E);
            break;
        case 0x2:
            tile = this->tile - 129;
            cnt = super->type != 26 ? 3 : 2;
            for (i = 0; i < cnt; ++i, ++tile) {
                SetTile(0x4026, tile, 2);
                SetTile(0x4026, tile, 1);
                sub_080001D0(0, tile + 64, 1);
            }
            break;
    }

    switch (super->type) {
        case 1:
            if (super->type2 != 0) {
                super->spritePriority.b0 = 4;
            }
            break;
        case 9:
            e = CreateObject(FURNITURE, 62, 0);
            if (e != NULL) {
                PositionRelative(super, e, 0x100000, 0x100000);
                e->frameIndex = 1;
                e->updatePriority = 2;
            }
            break;
        case 30:
            sub_0807B7D8(774, this->tile + 65, 2);
            break;
        case 31:
            super->collisionLayer = 1;
            super->spriteOrientation.flipY = 2;
            SetTile(0x4074, this->tile - 64, super->collisionLayer);
            sub_080001D0(63, this->tile - 64, super->collisionLayer);
            SetTile(0x4017, this->tile, super->collisionLayer);
            SetTile(0x4017, this->tile + 64, super->collisionLayer);
            break;
        case 40:
            if (super->type2 != 0)
                super->spriteOffsetX = -4;
            break;
        case 59:
            SetTile(0x4023, this->tile - 65, super->collisionLayer);
            SetTile(0x4023, this->tile - 64, super->collisionLayer);
            SetTile(0x4023, this->tile - 63, super->collisionLayer);
            break;
        case 60:
            SetTile(0x4022, this->tile + 65, super->collisionLayer);
    }
}

static void FurnitureUpdate(FurnitureEntity* this) {
    switch (this->flags & 0x7FFF) {
        case 0x1:
            if (gPlayerEntity.y.HALF.HI < super->y.HALF.HI || gPlayerEntity.y.HALF.HI > super->y.HALF.HI + 24) {
                super->spriteRendering.b3 = 2;
            } else {
                super->spriteRendering.b3 = 3;
            }
            break;
        case 0x8:
            if (++super->actionDelay == 16) {
                super->actionDelay = 0;
                super->field_0xf = (super->field_0xf + 1) & 3;
                sub_08090E4C(this);
            }
            break;
        case 0x10:
            if (super->type != 62) {
                if (++super->actionDelay == 20) {
                    super->frameIndex = (super->frameIndex + 1) & 3;
                    super->actionDelay = 0;
                }
            } else {
                if (++super->actionDelay == 14) {
                    super->actionDelay = 0;
                    super->field_0xf = (super->field_0xf + 1) % 3;
                    super->frameIndex = super->field_0xf + 1;
                }
            }
            break;
        case 0x80:
            if (gPlayerEntity.y.HALF.HI < super->y.HALF.HI + 8) {
                if (gPlayerState.field_0x10[2] != 30 && GetTileTypeByEntity(super) == 0x4017) {
                    SetTile(0x4026, this->tile, super->collisionLayer);
                    SetTile(0x403D, this->tile - 64, super->collisionLayer);
                    SetTile(0x403D, this->tile - 128, super->collisionLayer);
                }
            } else {
                if (gPlayerEntity.collisionLayer & 2) {
                    gPlayerEntity.collisionLayer = 1;
                    UpdateSpriteForCollisionLayer(&gPlayerEntity);
                }
                if (GetTileTypeByEntity(super) != 0x4017) {
                    SetTile(0x4017, this->tile, super->collisionLayer);
                    SetTile(0x4017, this->tile - 64, super->collisionLayer);
                    SetTile(0x4014, this->tile - 128, super->collisionLayer);
                }
            }
            break;
    }
}

static void sub_08090B6C(FurnitureEntity* this) {
    s32 num;

    u32 width = (u32)(this->width << 0x18) >> 0x18;
    if (width != 0) {
        u8 w2 = width / 8;
        u32 px = super->x.HALF.HI & 0xF;
        u32 tile = this->tile;
        u32 cl = super->collisionLayer;
        int i;

        switch ((u32)w2 & 3) {
            case 0:
                num = w2 / 8;
                if (w2 == 0xc) {
                    num = 2;
                }
                for (i = -num; i <= num; ++i) {
                    SetTile(0x4022, tile + i, cl);
                }
                if (px & 8) {
                    sub_08090CDC(0x4024, tile - i, cl);
                    sub_08090CDC(0x4025, tile + i, cl);
                } else {
                    SetTile(0x4022, tile - i, cl);
                }
                break;
            case 1:
                num = w2 / 8;
                for (i = -num; i <= num; i++) {
                    SetTile(0x4022, tile + i, cl);
                }
                if (px & 8) {
                    sub_08090CDC(0x4024, tile - i, cl);
                    if (i != 0) {
                        SetTile(0x4022, tile + i, cl);
                    }
                } else {
                    if (i != 0) {
                        SetTile(0x4022, tile - i, cl);
                    }
                    sub_08090CDC(0x4025, tile + i, cl);
                }
                break;
            case 2:
                num = w2 / 4;
                for (i = -num; i < num; ++i) {
                    SetTile(0x4022, tile + i, cl);
                }
                if (px & 8) {
                    SetTile(0x4022, tile + i, cl);
                } else {
                    sub_08090CDC(0x4024, tile - i - 1, cl);
                    sub_08090CDC(0x4025, tile + i, cl);
                }
                break;
            case 3:
                num = w2 / 4;
                for (i = -num; i <= num; ++i) {
                    SetTile(0x4022, tile + i, cl);
                }
                if (px & 8) {
                    sub_08090CDC(0x4025, tile + i, cl);
                } else {
                    sub_08090CDC(0x4024, tile - i, cl);
                }
                break;
        }
    }
}

static void sub_08090CDC(u32 id, u32 pos, u32 layer) {
    u16 cur = sub_080001DA(pos, layer);
    u32 next = cur;
    u32 id2;

    if ((cur & 0x4000) == 0) {
        SetTile(id, pos, layer);
    } else {
        switch (cur) {
            case 0x4025:
                if (id == 0x4024)
                    next = 0x4022;
                if (id == 0x402c)
                    next = 0x4022;
                break;
            case 0x402D:
                if (id == 0x402c)
                    next = 0x402b;
                if (id == 0x4024)
                    next = 0x4022;
                break;
            case 0x4024:
                if (id == 0x4025)
                    next = 0x4022;
                if (id == 0x402d)
                    next = 0x4022;
                break;
            case 0x402C:
                if (id == 0x402d)
                    next = 0x402b;
                if (id == 0x4025)
                    next = 0x4022;
                break;
            case 0x4022:
            case 0x4023:
            case 0x4026:
            case 0x4027:
            case 0x4028:
            case 0x4029:
            case 0x402a:
            case 0x402b:
            default:
                return;
        }
        SetTile(next, pos, layer);
    }
}

static void sub_08090DC4(FurnitureEntity* this) {
    static const FurnitureCfg* const sCfgTable[] = {
        gUnk_08122128, gUnk_08122198, gUnk_081221A8, gUnk_081221B8, gUnk_081221C8,
        gUnk_081221D8, gUnk_081221E8, gUnk_081221F8, gUnk_08122208,
    };

    const FurnitureCfg* cfg = &gUnk_08121EF8[super->type];
    if (cfg->flags & 0x8000) {
        cfg = sCfgTable[cfg->y];
        cfg += super->type2;
        super->frameIndex = super->type2;
    }
    this->width = cfg->width;
    this->height = cfg->height;
    super->spriteOffsetX = cfg->x;
    super->spriteOffsetY = cfg->y;
    super->spriteRendering.b3 = cfg->rendering;
    super->spritePriority.b0 = cfg->priority;
    this->flags = cfg->flags;
}

static void sub_08090E4C(FurnitureEntity* this) {
    static const u32 sPalettes[] = { 0x5f, 0x60, 0x61, 0x62 };

    ChangeObjPalette(super, sPalettes[super->field_0xf]);
}

static NONMATCH("asm/non_matching/furniture/sub_08090E64.s", void sub_08090E64(FurnitureEntity* this)) {
    Entity* e = CreateObject(OBJECT_42, 0, 0);
    u32 tmp = 0x10000 - 2;

    if (e != NULL) {
        PositionRelative(super, e, (tmp + super->type2) * 0x10000, 0);
        e->z.HALF.HI -= 16;
        e->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(e);
    }
}
END_NONMATCH
