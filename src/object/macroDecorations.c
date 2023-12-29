/**
 * @file macroDecoration.c
 * @ingroup Objects
 *
 * @brief Macro Decoration object
 */
#define NENT_DEPRECATED
#include "asm.h"
#include "entity.h"
#include "room.h"

typedef struct {
    Entity base;
    u8 filler[8];
    s16 y2;
} MacroDecorationEntity;

void MacroDecoration_Init(MacroDecorationEntity*);
void MacroDecoration_Action1(MacroDecorationEntity*);
void sub_08097EB8(MacroDecorationEntity*);
void sub_08097F34(MacroDecorationEntity*);
void sub_08097F10(MacroDecorationEntity*);
s32 sub_08097F60(MacroDecorationEntity*, s32);

void MacroDecoration(Entity* this) {
    static void (*const MacroDecoration_Actions[])(MacroDecorationEntity*) = {
        MacroDecoration_Init,
        MacroDecoration_Action1,
    };
    MacroDecoration_Actions[this->action]((MacroDecorationEntity*)this);
}

void MacroDecoration_Init(MacroDecorationEntity* this) {
    u32 bVar1;

    super->action = 1;
    UpdateSpriteForCollisionLayer(super);
    switch (super->type) {
        case 0:
            super->x.HALF.HI &= 0xfff0;
            super->y.HALF.HI &= 0xfff0;
            sub_08097EB8(this);
            if (super->type2 == 0) {
                return;
            }
            ChangeObjPalette(super, super->type2 + 0xb);
            return;
        case 1:
            bVar1 = super->frameIndex = super->type2;
            bVar1 = (bVar1 << 0x18) >> 0x19;
            switch ((s32)bVar1) {
                case 2:
                    ChangeObjPalette(super, 0xd);
                case 0:
                    super->spriteOrientation.flipY = 1;
                    break;
                case 1:
                    super->spriteOrientation.flipY = 2;
                    super->spritePriority.b0 = 3;
                    ChangeObjPalette(super, 0xb);
                    break;
            }
            break;
        case 2:
        case 3:
            super->frameIndex = super->type2;
            super->spriteSettings.draw = 3;
            break;
        default:
            return;
    }

    sub_08097F34(this);
}

void MacroDecoration_Action1(MacroDecorationEntity* this) {
    if (super->type) {
        sub_08097F10(this);
    }
}

void sub_08097EB8(MacroDecorationEntity* this) {
    static const s16 tilePosArray[] = {
        0xff7e, 0x4089, 0xff7f, 0x4022, 0xff80, 0x4022, 0xff81, 0x408a, 0xffbe, 0x4022, 0xffbf, 0x4022, 0xffc0, 0x4022,
        0xffc1, 0x4022, 0xfffe, 0x4022, 0xffff, 0x4022, 0,      0x4022, 1,      0x4022, 2,      0x408b, 0x3e,   0x4022,
        0x3f,   0x4022, 0x40,   0x4026, 0x41,   0x4022, 0x7e,   0x408c, 0x7f,   0x408c, 0x7fff, 0xffff,
    };
    const s16* tilePosPtr;
    u16 tile = COORD_TO_TILE(super);
    for (tilePosPtr = tilePosArray; *tilePosPtr != 0x7fff; tilePosPtr += 2) {
        SetTile((u16)tilePosPtr[1], tile + tilePosPtr[0], 1);
    }
}

void sub_08097F10(MacroDecorationEntity* this) {
    super->y.HALF.HI = this->y2 - sub_08097F60(this, gRoomControls.scroll_y - gRoomControls.origin_y);
}

void sub_08097F34(MacroDecorationEntity* this) {
    this->y2 = super->y.HALF.HI + sub_08097F60(this, super->y.HALF.HI - gRoomControls.origin_y);
    sub_08097F10(this);
}

s32 sub_08097F60(MacroDecorationEntity* this, s32 arg2) {
    switch (super->type) {
        case 1:
            if (super->frameIndex >> 1 == 1) {
                arg2 >>= 3;
                break;
            }
        case 2:
        case 3:
            arg2 >>= 1;
    }

    return arg2;
}
