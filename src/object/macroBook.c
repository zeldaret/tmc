/**
 * @file macroBook.c
 * @ingroup Objects
 *
 * @brief Macro Book object
 */
#include "asm.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "npc.h"
#include "tiles.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    u16 playerWithinRect;
    u8 filler2[0x6];
    u16 unk80;
    u16 tilePos;
} MacroBookEntity;

void MacroBook_Init(MacroBookEntity*);
void MacroBook_Action1(MacroBookEntity*);
void MacroBook_Action2(MacroBookEntity*);
void MacroBook_Action3(MacroBookEntity*);
void sub_0809A958(MacroBookEntity*);
void sub_0809AA00(MacroBookEntity*);
void sub_0809A9D4(MacroBookEntity*);
void sub_0809AA9C(MacroBookEntity*, Entity*, u32);

void MacroBook(Entity* this) {
    static void (*const MacroBook_Actions[])(MacroBookEntity*) = {
        MacroBook_Init,
        MacroBook_Action1,
        MacroBook_Action2,
        MacroBook_Action3,
    };
    MacroBook_Actions[this->action]((MacroBookEntity*)this);
}

void MacroBook_Init(MacroBookEntity* this) {
    super->action = 1;
    super->timer = 128;
    super->subtimer = 0;
    super->spriteRendering.b0 = 3;
    this->unk80 = 0x80;
    this->playerWithinRect = 0;
    super->x.HALF.HI -= 4;
    super->spriteOffsetY = -4;
    super->spritePriority.b0 = 7;
    super->spriteRendering.b3 = 3;
    SetAffineInfo(super, this->unk80, this->unk80, 0);
    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, super->subtimer);
    sub_0809A958(this);
}

void MacroBook_Action1(MacroBookEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_0809AA00(this);
    if (super->timer) {
        super->timer--;
    } else {
        if ((super->frame & ANIM_DONE) != 0) {
            if (super->subtimer == 3) {
                super->action = 2;
                super->timer = 90;
                super->subtimer = 0;
                InitAnimationForceUpdate(super, 2);
            } else {
                InitAnimationForceUpdate(super, super->subtimer);
            }
        }
    }
}

void MacroBook_Action2(MacroBookEntity* this) {
    UpdateAnimationSingleFrame(super);
    sub_0809AA00(this);
    if (super->subtimer < 2) {
        super->action = 1;
        super->timer = 0;
    } else if (super->timer) {
        super->timer--;
        if (gPlayerClones[0] != 0) {
            return;
        }
        super->action = 1;
        super->timer = 0;
    } else {
        if ((super->frame & ANIM_DONE) == 0) {
            return;
        }
        super->action = 3;
        super->timer = 0;
        InitAnimationForceUpdate(super, 3);
        RequestPriorityDuration(super, 120);
    }
}

void MacroBook_Action3(MacroBookEntity* this) {
    switch (super->frame & 0xe0) {
        case 0x80:
            if (super->frameDuration == 0) {
                DeleteThisEntity();
            }
            break;
        case 0x40:
            super->frame &= 0xbf;
            sub_0809A9D4(this);
            break;
        case 0x20:
            super->timer++;
            super->frame &= 0xdf;
            SetPlayerControl(0xff);
            SetGlobalFlag(MIZUKAKI_HARIFALL);
        default:
            UpdateAnimationSingleFrame(super);
            break;
    }

    if (super->timer) {
        this->unk80 += 8;
        super->x.WORD += Q_16_16(1.0 / 64.0);
        SetAffineInfo(super, this->unk80, this->unk80, 0);
    } else {
        sub_0809AA9C(this, super->child, 0);
        sub_0809AA9C(this, &gPlayerEntity.base, 1);
        if (gPlayerClones[0] != NULL) {
            sub_0809AA9C(this, gPlayerClones[0], 1);
        }
    }
}

void sub_0809A958(MacroBookEntity* this) {

    static const u16 tileIndices[] = {
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        SPECIAL_TILE_116,
        0,
        0,
        SPECIAL_TILE_34,
        SPECIAL_TILE_34,
    };
    int index;
    int index2;
    int tilePos;
    const u16* tileIndexPtr;

    this->tilePos = COORD_TO_TILE_OFFSET(super, -4, 0);
    tilePos = this->tilePos - 0x82;
    tileIndexPtr = tileIndices;

    for (index = 0; index < 5; index++, tilePos += 0x40) {
        for (index2 = 0; index2 < 4; index2++, tileIndexPtr++) {
            if ((*tileIndexPtr & 0x4000) != 0) {
                SetTile(*tileIndexPtr, tilePos + index2, LAYER_BOTTOM);
            }
        }
    }
}

void sub_0809A9D4(MacroBookEntity* this) {
    int index;
    int index2;
    int tilePos;

    tilePos = this->tilePos - 0x82;
    for (index = 0; index < 5; index++, tilePos += 0x40) {
        for (index2 = 0; index2 < 4; index2++) {
            RestorePrevTileEntity(tilePos + index2, 1);
        }
    }
}

void sub_0809AA00(MacroBookEntity* this) {
    Entity* ent;

    super->subtimer = 0;
    if (super->child == NULL) {
        for (ent = FindEntityByID(NPC, TOWN_MINISH, 7); ent != NULL; ent = FindNextDuplicateID(ent, NPC)) {
            if (ent->type == 0 && ent->type2 == 8) {
                super->child = ent;
            }
        }
    } else {
        sub_0809AA9C(this, super->child, 0);
    }
    ent = &gPlayerEntity.base;
    this->playerWithinRect = EntityInRectRadius(super, ent, 0x20, 0x22);
    if (this->playerWithinRect != 0) {
        sub_0809AA9C(this, ent, 1);

        ent = gPlayerClones[0];
        if (ent != NULL) {
            sub_0809AA9C(this, ent, 1);
        }
    }
}

void sub_0809AA9C(MacroBookEntity* this, Entity* ent, u32 arg3) {
    u32 bVar1;

    bVar1 = super->frame & 3;
    if (bVar1 == 1) {
        ent->spriteOffsetY = bVar1;
    } else if (bVar1 == 2) {
        ent->spriteOffsetY = bVar1;
    } else {
        ent->spriteOffsetY = 0;
    }

    if (ent->x.HALF.HI <= gRoomControls.origin_x + 0x15a) {
        super->subtimer++;
        ent->spriteOffsetY++;
    }
}
