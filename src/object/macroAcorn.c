/**
 * @file macroAcorn.c
 * @ingroup Objects
 *
 * @brief Macro Acorn object
 */
#include "entity.h"
#include "object.h"
#include "physics.h"

void MacroAcorn_Init(Entity*);
void MacroAcorn_Action1(Entity*);
void sub_0809E5F0(Entity*);

void MacroAcorn(Entity* this) {
    static void (*const MacroAcorn_Actions[])(Entity*) = {
        MacroAcorn_Init,
        MacroAcorn_Action1,
    };
    MacroAcorn_Actions[this->action](this);
}

void MacroAcorn_Init(Entity* this) {
    u32 bVar2;
    Entity* pEVar3;

    this->action = 1;
    if (this->type == 0xff) {
        this->frameIndex = this->type2;
    } else {
        bVar2 = (this->type & 1) ? 4 : 0;
        if ((this->type & 2)) {
            if (gEntCount < 0x45) {
                this->frameIndex = bVar2;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(this, pEVar3);
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                PositionRelative(this, pEVar3, 0, 0x10000);
                pEVar3->spriteOffsetY = -1;
                pEVar3 = CreateObject(HUGE_ACORN, 0xff, ++bVar2);
                CopyPosition(this, pEVar3);
            } else {
                DeleteThisEntity();
            }
        } else {
            pEVar3 = CreateObject(HUGE_ACORN, 0xff, bVar2 + 1);
            if (pEVar3 == NULL) {
                DeleteThisEntity();
            } else {
                this->frameIndex = bVar2;
                CopyPosition(this, pEVar3);
            }
        }
        sub_0809E5F0(this);
    }

    if ((this->frameIndex & 1) != 0) {
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
    }
}

void MacroAcorn_Action1(Entity* this) {
}

void sub_0809E5F0(Entity* this) {
    u32 position = COORD_TO_TILE(this);
    this->field_0x80.HWORD = position;
    switch (this->type) {
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
