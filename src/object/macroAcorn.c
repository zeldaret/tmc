/**
 * @file macroAcorn.c
 * @ingroup Objects
 *
 * @brief Macro Acorn object
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "object.h"
#include "physics.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u16 unk_80;
} MacroAcornEntity;

void MacroAcorn_Init(MacroAcornEntity* this);
void MacroAcorn_Action1(MacroAcornEntity* this);
void sub_0809E5F0(MacroAcornEntity* this);

void MacroAcorn(MacroAcornEntity* this) {
    static void (*const MacroAcorn_Actions[])(MacroAcornEntity*) = {
        MacroAcorn_Init,
        MacroAcorn_Action1,
    };
    MacroAcorn_Actions[super->action](this);
}

void MacroAcorn_Init(MacroAcornEntity* this) {
    u32 bVar2;
    Entity* pEVar3;

    super->action = 1;
    if (super->type == 0xff) {
        super->frameIndex = super->type2;
    } else {
        bVar2 = (super->type & 1) ? 4 : 0;
        if ((super->type & 2)) {
            if (gEntCount < 0x45) {
                super->frameIndex = bVar2;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(super, pEVar3);
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                PositionRelative(super, pEVar3, 0, 0x10000);
                pEVar3->spriteOffsetY = -1;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(super, pEVar3);
            } else {
                DeleteThisEntity();
            }
        } else {
            pEVar3 = CreateObject(HUGE_ACORN, 0xff, bVar2 + 1);
            if (pEVar3 == NULL) {
                DeleteThisEntity();
            } else {
                super->frameIndex = bVar2;
                CopyPosition(super, pEVar3);
            }
        }
        sub_0809E5F0(this);
    }

    if ((super->frameIndex & 1) != 0) {
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 7;
    }
}

void MacroAcorn_Action1(MacroAcornEntity* this) {
}

void sub_0809E5F0(MacroAcornEntity* this) {
    u32 position = COORD_TO_TILE(super);
    this->unk_80 = position;
    switch (super->type) {
        case 2:
            SetTile(0x4022, position - 0x3d, 1);
            SetTile(0x406d, position - 0x3c, 1);
        case 0:
            SetTile(0x406c, position - 0x42, 1);
            SetTile(0x4022, position - 0x41, 1);
            SetTile(0x4022, position - 0x40, 1);
            SetTile(0x4022, position - 0x3f, 1);
            SetTile(0x4022, position - 2, 1);
            SetTile(0x4022, position - 1, 1);
            SetTile(0x4022, position, 1);
            SetTile(0x4022, position + 1, 1);
            SetTile(0x406e, position + 0x3e, 1);
            SetTile(0x4022, position + 0x3f, 1);
            SetTile(0x4022, position + 0x40, 1);
            SetTile(0x406f, position + 0x41, 1);
            break;
        case 3:
            SetTile(0x4022, position - 0x44, 1);
            SetTile(0x406c, position - 0x45, 1);
        case 1:
            SetTile(0x4022, position - 0x42, 1);
            SetTile(0x4022, position - 0x41, 1);
            SetTile(0x4022, position - 0x40, 1);
            SetTile(0x406d, position - 0x3f, 1);
            SetTile(0x4022, position - 2, 1);
            SetTile(0x4022, position - 1, 1);
            SetTile(0x4022, position, 1);
            SetTile(0x4022, position + 1, 1);
            SetTile(0x406e, position + 0x3e, 1);
            SetTile(0x4022, position + 0x3f, 1);
            SetTile(0x4022, position + 0x40, 1);
            SetTile(0x406f, position + 0x41, 1);
            break;
    }
}
