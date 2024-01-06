/**
 * @file bigBarrel.c
 * @ingroup Objects
 *
 * @brief Big Barrel object
 */
#include "asm.h"
#include "common.h"
#include "entity.h"
#include "flags.h"
#include "map.h"
#include "object.h"
#include "room.h"
#include "save.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    Entity base;
    const u8* unk_68;
} BigBarrelEntity;

void BigBarrel_Type0(BigBarrelEntity* this);
void BigBarrel_Type1(BigBarrelEntity* this);
void BigBarrel_Type2(BigBarrelEntity* this);
void BigBarrel_Type3(BigBarrelEntity* this);
void BigBarrel_Type4(BigBarrelEntity* this);
void sub_08088BE0(BigBarrelEntity* this);
void sub_08089094(BigBarrelEntity* this);
void sub_080890EC(BigBarrelEntity* this, const s16*, s32);

Entity* sub_08088C78(BigBarrelEntity*, u32, u32, u32);

extern bool32 sub_0806FB38(Entity*);
extern void sub_0806FB00(Entity*, u32, u32, u32);

const s8 gUnk_08120C1C[] = { 3, 0, 2, 0, 2, 0, 1, 0, -1 };
const s8 gUnk_08120C25[] = { 5, 0, 4, 0, 4, 0, 2, 0, -1 };
const s8 gUnk_08120C2E[] = { 3, 0, -1, 0, 0, 0 };

void BigBarrel(Entity* this) {
    static void (*const BigBarrel_Types[])(BigBarrelEntity*) = {
        BigBarrel_Type0, BigBarrel_Type1, BigBarrel_Type2, BigBarrel_Type3, BigBarrel_Type4,
    };
    BigBarrel_Types[this->type]((BigBarrelEntity*)this);
}

void BigBarrel_Type0(BigBarrelEntity* this) {
    u32 uVar3;
    const u8* pcVar3;

    if (super->action == 0) {
        super->action = 1;
        super->spriteSettings.draw = 3;
        super->updatePriority = 3;
        if (CheckGlobalFlag(LV1TARU_OPEN)) {
            super->frameIndex = gSave.dws_barrel_state + 1;
        } else {
            super->frameIndex = gSave.dws_barrel_state;
        }
        sub_08088BE0(this);
        if (CheckPlayerInRegion(super->x.HALF.HI - gRoomControls.origin_x, super->y.HALF.HI - gRoomControls.origin_y,
                                0x80, 0x60)) {
            gRoomVars.animFlags |= 4;
        }
    } else {
        if (gRoomVars.animFlags & 1) {
            gRoomVars.animFlags &= ~1;
            super->timer = 1;
            this->unk_68 = gUnk_08120C1C;
            SoundReq(SFX_BARREL_ENTER);
        }
        if (gRoomVars.animFlags & 2) {
            gRoomVars.animFlags &= ~2;
            super->timer = 1;
            this->unk_68 = gUnk_08120C25;
            SoundReq(SFX_BARREL_RELEASE);
        }
        if (gRoomVars.animFlags & 4) {
            gRoomVars.animFlags &= ~4;
            super->timer = 1;
            this->unk_68 = gUnk_08120C2E;
            SoundReq(SFX_BARREL_ENTER);
        }
        if (super->timer) {
            if (super->timer-- == 1) {
                pcVar3 = this->unk_68;
                uVar3 = pcVar3[0];
                *(u8*)&super->spriteOffsetY = uVar3;
                pcVar3++;
                if (*pcVar3 != 0xff) {
                    super->timer = 8;
                    this->unk_68 = pcVar3;
                } else {
                    super->spriteOffsetY = 0;
                }
            }
        }
    }
    super->spritePriority.b0 = 1;
    if (CheckPlayerProximity(super->x.HALF.HI - 0x50, super->y.HALF.HI - 0x50, 0xa0, 0x30)) {
        super->spritePriority.b0 = 5;
    }
    if (CheckPlayerProximity(super->x.HALF.HI - 0x50, super->y.HALF.HI + 0x30, 0xa0, 0x30)) {
        super->spritePriority.b0 = 5;
    }
}

void sub_08088BE0(BigBarrelEntity* this) {
    Entity* ent;

    if (CheckLocalFlag(0x15) == 0) {
        sub_08088C78(this, 2, 0, -120);
        ent = sub_08088C78(this, 4, 0x15, 0);
        if (ent != NULL) {
            ent->x.HALF.HI = gRoomControls.origin_x + 0x48;
            ent->y.HALF.HI = gRoomControls.origin_y + 200;
        }
    }

    if (CheckLocalFlag(0x16) == 0) {
        sub_08088C78(this, 2, 1, 120);
        ent = sub_08088C78(this, 4, 0x16, 0);
        if (ent != NULL) {
            ent->x.HALF.HI = gRoomControls.origin_x + 0x188;
            ent->y.HALF.HI = gRoomControls.origin_y + 200;
        }
    }
    sub_08088C78(this, 1, 0, -120);
    sub_08088C78(this, 1, 1, 120);
}

Entity* sub_08088C78(BigBarrelEntity* this, u32 type, u32 type2, u32 xOffset) {
    Entity* pEVar1;

    pEVar1 = CreateObject(BIG_BARREL, type, type2);
    if (pEVar1) {
        pEVar1->x.HALF.HI = super->x.HALF.HI + xOffset;
        pEVar1->y.HALF.HI = super->y.HALF.HI;
        pEVar1->parent = super;
    }
    return pEVar1;
}

void BigBarrel_Type1(BigBarrelEntity* this) {
    static const u8 gUnk_08120C48[] = { 2, 3, 4, 5, 6, 7, 7, 7 };
    static const s8 gUnk_08120C50[] = { 8, -8 };
    u32 localFlag;
    s32 x;

    super->spritePriority.b0 = gUnk_08120C48[super->parent->spritePriority.b0];
    super->spriteOffsetY = super->parent->spriteOffsetY / 2;
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            super->frameIndex = super->type2 + 4;
            super->updatePriority = 3;
            if (super->type2 == 0) {
                localFlag = 21;
            } else {
                localFlag = 22;
            }
            super->subtimer = localFlag;
            if (CheckLocalFlag(super->subtimer) == 0) {
                return;
            }

            super->x.HALF_U.HI += gUnk_08120C50[super->type2];
            super->action = 4;
            break;
        case 1:
            if (CheckLocalFlag(super->subtimer) == 0) {
                return;
            }
            super->action = 2;
            break;
        case 2:
            if ((gRoomVars.animFlags & 0x20) == 0) {
                return;
            }
            gRoomVars.animFlags &= ~0x20;
            super->action = 3;
            super->subAction = 4;
            super->timer = 1;
        case 3:
            if (--super->timer) {
                return;
            }
            super->timer = 8;
            x = super->x.HALF.HI;
            if (super->type2) {
                super->x.HALF.HI = x - 2;
            } else {
                super->x.HALF.HI = x + 2;
            }
            if (--super->subAction) {
                return;
            }
            super->action = 4;
            break;
    }
}

void BigBarrel_Type2(BigBarrelEntity* this) {
    switch (super->action) {
        case 0:
            super->action = 1;
            super->spriteSettings.draw = 1;
            super->frameIndex = super->type2 * 4 + 6;
            super->collisionLayer = 2;
            SetEntityPriority(super, 3);
            super->type2 = super->type2 == 0 ? 0x15 : 0x16;
            UpdateSpriteForCollisionLayer(super);
            break;
        case 1:
            if (CheckLocalFlag(super->type2)) {
                super->action++;
                super->timer = 10;
            }
            break;
        case 2:
        case 3:
        case 4:
            if ((gRoomVars.animFlags & 8) == 0) {
                return;
            }
            if (--super->timer) {
                return;
            }
            super->timer = 30;
            super->frameIndex++;
            super->action++;
            break;
        default:
            if (--super->timer == 0) {
                gRoomVars.animFlags &= ~0x8;
                DeleteEntity(super);
            }
            break;
    }
}

void BigBarrel_Type3(BigBarrelEntity* this) {
    static const s8 gUnk_08120C52[] = { -2, 0, 2, 0 };
    Entity* ent;

    if (super->action == 0) {
        super->action = 1;
        super->collisionLayer = 2;
        gRoomVars.animFlags |= 8;
    }
    if (sub_0806FB38(super)) {
        gRoomVars.animFlags |= 0x10;
        DeleteEntity(super);
    } else {
        if ((gRoomTransition.frameCount & 7U) == 0) {
            ent = CreateObjectWithParent(super, FLAME, 0, 0x1e);
            if (ent != NULL) {
                ent->updatePriority = 3;
                ent->spriteRendering.b3 = 0;
                ent->spritePriority.b0 = 0;
                ent->spriteOrientation.flipY = 0;
                ent->y.HALF.HI += gUnk_08120C52[Random() & 3];
            }
        }
    }
}

void BigBarrel_Type4(BigBarrelEntity* this) {
    Entity* flame;

    switch (super->action) {
        case 0:
            super->action = 1;
            super->updatePriority = 3;
            if (CheckLocalFlag(super->type2) == 0) {
                return;
            }
            DeleteEntity(super);
            break;
        case 1:
            if (CheckLocalFlag(super->type2) == 0) {
                return;
            }
            super->action = 2;
            super->timer = 30;
            RequestPriorityDuration(super, 270);
            flame = CreateObject(FLAME, 1, 0);
            if (flame != NULL) {
                flame->updatePriority = 3;
                flame->x.HALF.HI = super->x.HALF.HI;
                flame->y.HALF.HI = super->y.HALF.HI;
                flame->collisionLayer = 2;
                flame->spritePriority.b0 = 2;
            }
            SetTileType(TILE_TYPE_118, COORD_TO_TILE(super), LAYER_TOP);
            break;
        case 2:
            if (--super->timer) {
                return;
            }
            sub_08089094(this);
            super->action = 3;
            break;
        case 3:
            if ((gRoomVars.animFlags & 0x10) == 0) {
                return;
            }
            super->action = 4;
            super->timer = 120;
            break;
        default:
            if (--super->timer == 0x5a) {
                if (CheckLocalFlags(0x15, 2)) {
                    gRoomVars.animFlags |= 2;
                } else {
                    gRoomVars.animFlags |= 1;
                }
                gRoomVars.animFlags |= 0x20;
            }
            if (super->timer == 0) {
                gRoomVars.animFlags &= ~0x10;
                if (CheckLocalFlags(0x15, 2)) {
                    RequestPriorityDuration(super, 60);
                    SoundReq(SFX_SECRET);
                }
                DeleteEntity(super);
            }
            break;
    }
}

void sub_08089094(BigBarrelEntity* this) {
    static const s16 gUnk_08120C56[] = { 0x58, -0x30, 0x58, 0x30 };
    static const s16 gUnk_08120C5E[] = { -0x58, -0x30, -0x58, 0x30 };

    if (super->x.HALF.HI - gRoomControls.origin_x < 0x100) {
        sub_080890EC(this, gUnk_08120C56, -8);
        sub_080890EC(this, gUnk_08120C56 + 2, 4);
    } else {
        sub_080890EC(this, gUnk_08120C5E, -8);
        sub_080890EC(this, gUnk_08120C5E + 2, 4);
    }
}

void sub_080890EC(BigBarrelEntity* this, const s16* offsets, s32 yOffset) {
    Entity* pEVar1 = CreateObject(BIG_BARREL, 3, 0);
    if (pEVar1) {
        SetEntityPriority(pEVar1, 3);
        pEVar1->x.HALF.HI = super->x.HALF.HI;
        pEVar1->y.HALF.HI = super->y.HALF.HI + yOffset;
        pEVar1->parent = super;
        sub_0806FB00(pEVar1, pEVar1->x.HALF.HI + offsets[0], pEVar1->y.HALF.HI + offsets[1], 0x5a);
    }
}
