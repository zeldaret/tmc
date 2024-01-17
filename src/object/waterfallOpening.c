/**
 * @file waterfallOpening.c
 * @ingroup Objects
 *
 * @brief Waterfall Opening object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "menu.h"
#include "room.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    Entity base;
    s16 unk68;
} WaterfallOpeningEntity;

const u8 WaterfallOpening_FrameIndices[] = { 0, 4, 8, 0 };

void sub_080A00B0(WaterfallOpeningEntity*);

void WaterfallOpening(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->timer = 8;
        this->subtimer = 0;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
        this->frameIndex = WaterfallOpening_FrameIndices[this->type];
        ((WaterfallOpeningEntity*)this)->unk68 = 0x78;
    }

    if (this->type2 != 0) {
        if (CheckRoomFlag(0xff)) {
            switch (this->subAction) {
                case 0:
                    if (--((WaterfallOpeningEntity*)this)->unk68 == 0) {
                        ((WaterfallOpeningEntity*)this)->unk68 = 0x20;
                        this->timer = 1;
                        this->subtimer = 0;
                        this->subAction = 1;
                        this->type = 1;
                        UnloadGFXSlots(this);
                        LoadFixedGFX(this, 0x18c);
#ifndef EU
                        SoundReq(SFX_EVAPORATE);
#endif
                    }
                    break;
                case 1:
                    if (--((WaterfallOpeningEntity*)this)->unk68 == 0) {
                        ((WaterfallOpeningEntity*)this)->unk68 = 0x2d;
                        this->timer = 1;
                        this->subAction = 2;
                        this->type = 2;
                        UnloadGFXSlots(this);
                        LoadFixedGFX(this, 0x18d);
                    }
                    break;
                case 2:
                    if (--((WaterfallOpeningEntity*)this)->unk68 == 0) {
                        this->subAction = 3;
                        gMenu.overlayType++;
                        SoundReq(SFX_SECRET_BIG);
                    }
                    break;
            }

            sub_080A00B0((WaterfallOpeningEntity*)this);
        }
    } else {
        switch (this->type) {
            case 0:
                break;
            case 2:
                if ((this->subAction == 0)) {
                    this->subAction = 1;
                    SetTileType(TILE_TYPE_57, COORD_TO_TILE(this), LAYER_BOTTOM);
                }
        }

        sub_080A00B0((WaterfallOpeningEntity*)this);
    }
}

void sub_080A00B0(WaterfallOpeningEntity* this) {
    if (--super->timer == 0) {
        super->timer = 8;
        super->frameIndex = super->subtimer + WaterfallOpening_FrameIndices[super->type];
        super->subtimer = (super->subtimer + 1) & 3;
    }
}
