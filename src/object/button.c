/**
 * @file button.c
 * @ingroup Objects
 *
 * @brief Button object
 */
#include "object.h"
#include "functions.h"

void Button_Init(Entity*);
void Button_Action1(Entity*);
void Button_Action2(Entity*);
void Button_Action3(Entity*);
void Button_Action4(Entity*);
void Button_Action5(Entity*);

void Button(Entity* this) {
    static void (*const Button_Actions[])(Entity*) = {
        Button_Init, Button_Action1, Button_Action2, Button_Action3, Button_Action4, Button_Action5,
    };
    Button_Actions[this->action](this);
}

extern u32 sub_08081E3C(Entity*);

void Button_Init(Entity* this) {
    COLLISION_OFF(this);
    this->updatePriority = PRIO_NO_BLOCK;
    this->y.HALF.HI++;
    if (this->cutsceneBeh.HWORD != 0) {
        this->collisionLayer = this->cutsceneBeh.HWORD;
    }
    this->field_0x74.HWORD = (((this->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3F) |
                             ((((this->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3F) << 6);
    this->field_0x70.HALF.HI = GetTileType(this->field_0x74.HWORD, this->collisionLayer);
    if (this->type == 0 && CheckFlags(this->field_0x86.HWORD)) {
        this->action = 5;
        SetTileType(0x7A, this->field_0x74.HWORD, this->collisionLayer);
    } else {
        if (sub_08081E3C(this)) {
            this->action = 2;
        } else {
            this->action = 1;
        }
    }
}

void Button_Action1(Entity* this) {
    if (sub_08081E3C(this)) {
        this->action = 2;
        this->field_0x70.HALF.HI = GetTileType(this->field_0x74.HWORD, this->collisionLayer);
    }
}

u32 sub_08081CB0(Entity*);
void sub_08081FF8(Entity*);

void Button_Action2(Entity* this) {
    if (sub_08081CB0(this)) {
        this->subAction = 0;
        this->timer = 10;
        RequestPriorityDuration(this, 10);
        sub_08081FF8(this);
        if (this->type == 1) {
            this->action = 3;
        } else {
            this->action = 5;
        }
    }
}

u32 sub_08081F7C(Entity*, u32);
u32 sub_08081D28(Entity*);
void sub_08081E6C(Entity*);

void Button_Action3(Entity* this) {
    if (!sub_08081F7C(this, 0x78))
        return;
    if (!sub_08081D28(this)) {
        this->action = 4;
        this->subtimer = 1;
        if ((gPlayerState.heldObject == 2) || (!(gPlayerState.field_0x35 & 0x80))) {
            this->timer = 24;
        } else {
            this->timer = 8;
        }
    } else {
        sub_08081E6C(this);
    }
}

void Button_Action4(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
        if (this->subtimer != 0) {
            this->subtimer = 0;
            SetTile(0x4035, this->field_0x74.HWORD, this->collisionLayer);
        }
        if (sub_08081CB0(this)) {
            this->action = 3;
            this->timer = 0;
        }
    } else {
        this->action = 2;
        ClearFlag(this->field_0x86.HWORD);
        SetTileType(0x77, this->field_0x74.HWORD, this->collisionLayer);
        SoundReq(SFX_BUTTON_PRESS);
    }
}

void Button_Action5(Entity* this) {
    if (sub_08081F7C(this, 0x7a)) {
        sub_08081E6C(this);
    }
}

Entity* sub_08081D74(Entity*);

u32 sub_08081CB0(Entity* this) {
    u16 tmp;
    if (sub_08081D74(this)) {
        this->field_0x70.HALF.LO = -1;
        if (GetTileType(this->field_0x74.HWORD, this->collisionLayer) == 0x4035) {
            sub_0807B7D8(0x78, this->field_0x74.HWORD, this->collisionLayer);
        }
        return 1;
    } else {
        tmp = GetTileType(this->field_0x74.HWORD, this->collisionLayer);
        if (tmp != 0x77 && tmp != 0x79 && tmp != 0x4035) {
            this->field_0x70.HALF.LO = GetTileIndex(this->field_0x74.HWORD, this->collisionLayer);
            return 1;
        }
    }
    return 0;
}

u32 sub_08081D28(Entity* this) {
    if (sub_08081D74(this)) {
        this->field_0x70.HALF_U.LO = 0xFFFF;
        return 1;
    } else {
        if (this->field_0x70.HALF_U.LO == 0xFFFF) {
            return 0;
        }
        if (GetTileIndex(this->field_0x74.HWORD, this->collisionLayer) != this->field_0x70.HALF_U.LO) {
            return 0;
        }
    }
    return 1;
}

extern Entity* gPlayerClones[3];
u32 sub_08081E0C(Entity*);

Entity* sub_08081D74(Entity* this) {
    Entity* ent;
    if (GetCollisionDataAtMetaTilePos(this->field_0x74.HWORD, this->collisionLayer) == 0xF) {
        return 0;
    }
    ent = 0;
    if (sub_08081E0C(this)) {
        if ((gPlayerState.flags & PL_CAPTURED) == 0 && (gPlayerState.flags & PL_MINISH) == 0) {
            ent = &gPlayerEntity;
        }
    } else {
        if (gPlayerState.flags & PL_CLONING) {
            if (EntityInRectRadius(this, gPlayerClones[0], 5, 6)) {
                ent = gPlayerClones[0];
            } else if (EntityInRectRadius(this, gPlayerClones[1], 5, 6)) {
                ent = gPlayerClones[1];
            } else if (EntityInRectRadius(this, gPlayerClones[2], 5, 6)) {
                ent = gPlayerClones[2];
            }
        }
    }
    this->child = ent;
    return ent;
}

u32 sub_08081E0C(Entity* this) {
    Entity* tmp = &gPlayerEntity;
    if (tmp->z.HALF.HI != 0 || !PlayerCanBeMoved()) {
        return 0;
    } else {
        return EntityInRectRadius(this, tmp, 5, 6);
    }
}

u32 sub_08081E3C(Entity* this) {
    static const u16 gUnk_0811EE50[] = {
        0x77, 0x78, 0x79, 0x7a, 0, 0,
    };
    const u16* tmp1;
    s32 tmp2;
    tmp2 = GetTileType(this->field_0x74.HWORD, this->collisionLayer);
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

void sub_08081E6C(Entity* this) {
    u32 tileType;
    LayerStruct* r1;
    u16* tmp2;
    u16* tmp;
    u16* tmp3;
    u32 tilePosition = this->field_0x74.HWORD;
    u32 layer = this->collisionLayer;
    u32 tile = GetTileType(tilePosition, layer);

    if (tile < 0x4000)
        return;
    r1 = GetLayerByIndex(layer);
    tileType = (this->type == 0 ? 0x7a : 0x78);
    tmp = r1->metatiles;
    tmp = tmp + (r1->unkData2[tileType] << 2);
    tmp2 = (layer == 2 ? gMapDataTopSpecial : gMapDataBottomSpecial);
    tmp2 += (((0x3f & tilePosition) << 1) + ((0xfc0 & tilePosition) << 2));
    if (sub_08081F00((u32*)tmp2, (u32*)tmp))
        return;
    SetTileType(tileType, tilePosition, layer);
    SetTile(tile, tilePosition, layer);
}

// Are the two tiles already set to the correct one
bool32 sub_08081F00(u32* screenblock, u32* metatileList) {
    if (screenblock[0] != metatileList[0])
        return FALSE;
    if (screenblock[0x40] != metatileList[1])
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

u32 sub_08081F7C(Entity* this, u32 r7) {
    u16 tmp;
    if (this->timer == 0)
        return 1;
    if (--this->timer > 6) {
        if (this->child != NULL)
            this->child->spriteOffsetY = -4;
    } else {
        if (this->timer == 6) {
            SetFlag(this->field_0x86.HWORD);
            SetTileType(r7, this->field_0x74.HWORD, this->collisionLayer);
            sub_08081F24(this);
            SoundReq(SFX_BUTTON_PRESS);
            if (this->field_0x70.HALF_U.LO != 0xFFFF)
                SetTile(this->field_0x70.HALF_U.LO, this->field_0x74.HWORD, this->collisionLayer);
            return 0;
        }
    }
    return 1;
}

void sub_08081FF8(Entity* this) {
    u32 direction;
    u32 i;
    if (this->child != &gPlayerEntity)
        return;
    direction = GetFacingDirection(this->child, this);
    sub_080044AE(this->child, 0x200, direction);
    for (i = 0; i < 3; i++) {
        if (gPlayerClones[i]) {
            sub_080044AE(gPlayerClones[i], 0x200, direction);
        }
    }
}
