/**
 * @file minishVillageObject.c
 * @ingroup Objects
 *
 * @brief Minish Village Object object
 */
#include "functions.h"
#include "object.h"
#include "screen.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
} MinishVillageObjectEntity;

void MinishVillageObject_Type0(MinishVillageObjectEntity*);
void MinishVillageObject_Type1(MinishVillageObjectEntity*);
void MinishVillageObject_Type3(MinishVillageObjectEntity*);
void MinishVillageObject_Type4(MinishVillageObjectEntity*);
void MinishVillageObject_Type5(MinishVillageObjectEntity*);
void MinishVillageObject_Type6(MinishVillageObjectEntity*);
void MinishVillageObject_Type7(MinishVillageObjectEntity*);
void MinishVillageObject_Type8(MinishVillageObjectEntity*);
void MinishVillageObject_Type8_Init(MinishVillageObjectEntity*);
void MinishVillageObject_Type8_Action1(MinishVillageObjectEntity*);
void MinishVillageObject_Type8_Action2(MinishVillageObjectEntity*);

void MinishVillageObject(MinishVillageObjectEntity* this) {
    static void (*const MinishVillageObject_Types[])(MinishVillageObjectEntity*) = {
        MinishVillageObject_Type0, MinishVillageObject_Type1, MinishVillageObject_Type1, MinishVillageObject_Type3,
        MinishVillageObject_Type4, MinishVillageObject_Type5, MinishVillageObject_Type6, MinishVillageObject_Type7,
        MinishVillageObject_Type8, MinishVillageObject_Type1,
    };
    MinishVillageObject_Types[super->type](this);
}

void MinishVillageObject_Type0(MinishVillageObjectEntity* this) {
    u32 tmp;
    u32 tmp2;
    switch (super->action) {
        case 0:
            super->action = 1;
            super->timer = 64 - (Random() & 0x1F);
            super->frameIndex = 0;
            super->animationState = 0;
            super->spriteRendering.b3 = 3;
            super->spritePriority.b0 = 7;
            super->collisionLayer = 1;
            break;
        case 1:
            if (--super->timer == 0) {
                super->timer = 8;
                super->subtimer = 4;
                super->action = 2;
                super->animationState = Random() & 3;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                if (--super->subtimer == 0) {
                    super->frameIndex = 0;
                    super->action = 1;
                    super->timer = 64 - (Random() & 0x1F);
                } else {
                    super->timer = 8;
                    tmp2 = super->animationState;
                    if (super->frameIndex != tmp2) {
                        tmp = tmp2;
                    } else {
                        tmp = 0;
                    }
                    super->frameIndex = tmp;
                }
            }
            break;
    }
}

void MinishVillageObject_Type1(MinishVillageObjectEntity* this) {
    static const u16 gUnk_08121704[] = {
        0x12d, 0x12e, 0x12f, 0x130, 0x131, 0x132, 0x133, 0x132, 0x131, 0x130, 0x12f, 0x12e, 0x12d, 0,
    };

    switch (super->action) {
        case 0:
            super->action = 1;
            super->timer = 8;
            super->subtimer = 0;
            super->frameIndex = 0;
            super->spritePriority.b0 = 7;
            SetTile(SPECIAL_TILE_105, COORD_TO_TILE(super) - TILE_POS(0, 1), LAYER_BOTTOM);
            break;
        case 2:
            if ((gRoomTransition.frameCount & 3U) == 0) {
                gScreen.controls.alphaBlend = (super->subAction << 8) | (0x10 - super->subAction);
                super->subAction++;
                if (gScreen.controls.alphaBlend == 0x1000) {
                    gScreen.controls.layerFXControl = 0;
                    DeleteThisEntity();
                }
            }
            break;
        case 1:
            break;
    }
    if (--super->timer == 0) {
        super->timer = 8;
        if (super->type == 9) {
            super->timer = 2;
        }
        ChangeObjPalette(super, gUnk_08121704[super->subtimer++]);
        if (gUnk_08121704[super->subtimer] == 0) {
            super->subtimer = 0;
        }
    }
}

void sub_0808D280(void) {
    Entity* obj = FindEntity(6, MINISH_VILLAGE_OBJECT, 6, 9, 0);
    if (obj != NULL) {
        obj->action = 2;
        obj->subAction = 0;
        obj->spriteRendering.alphaBlend = 1;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x10;
        SoundReq(SFX_EVAPORATE);
    }
}

void sub_0808D2CC(void) {
    Entity* obj = FindEntity(6, MINISH_VILLAGE_OBJECT, 6, 1, 0);
    if (obj != NULL) {
        obj->type = 9;
        SetEntityPriority(obj, 2);
    }
}

void MinishVillageObject_Type3(MinishVillageObjectEntity* this) {
}

void MinishVillageObject_Type4(MinishVillageObjectEntity* this) {
    s32 tmp;
    if (super->action == 0) {
        super->action = 0;
        super->frameIndex = 0;
        super->spritePriority.b0 = 7;
        sub_0807DD64(super);
    }
    tmp = super->x.HALF.HI;
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
    if (((gRoomControls.shake_duration != 0) && (tmp != super->x.HALF.HI)) && ((gRoomTransition.frameCount & 8) == 0)) {
        SoundReq(SFX_10F);
    }
}

void MinishVillageObject_Type5(MinishVillageObjectEntity* this) {
    if (super->action == 0) {
        super->action = 0;
        super->frameIndex = 1;
        super->spritePriority.b0 = 7;
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
}

void MinishVillageObject_Type6(MinishVillageObjectEntity* this) {
    static const u16 gUnk_08121720[] = { 0x149, 0x14a, 0x14b, 0x14a, 0, 0 };
    if (super->action == 0) {
        super->action = 1;
        super->timer = 8;
        super->spritePriority.b0 = 7;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x1003;
    }
    if (--super->timer == 0) {
        super->timer = 2;
        sub_0801D28C(super, gUnk_08121720[super->subtimer++]);
        if (gUnk_08121720[super->subtimer] == 0) {
            super->subtimer = 0;
        }
    }
}

void MinishVillageObject_Type7(MinishVillageObjectEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 7;
        super->spriteRendering.alphaBlend = 1;
        super->frameIndex = super->type2;
        SetAffineInfo(super, (1 - super->type2) * 0x200 + 0x100, 0xffffff40, 0);
    }
}

void MinishVillageObject_Type8(MinishVillageObjectEntity* this) {
    static void (*const MinishVillageObject_Type8_Actions[])(MinishVillageObjectEntity*) = {
        MinishVillageObject_Type8_Init,
        MinishVillageObject_Type8_Action1,
        MinishVillageObject_Type8_Action2,
    };

    MinishVillageObject_Type8_Actions[super->action](this);
}

void MinishVillageObject_Type8_Init(MinishVillageObjectEntity* this) {
    u32 tilePos;
    super->spritePriority.b0 = 7;
    super->frameIndex = super->type2;
    super->action = 2;
    if ((super->type2 == 0) && (CheckLocalFlag(0x7c) == 0)) {
        super->action = 1;
        super->timer = 0;
        super->spriteRendering.alphaBlend = 1;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x1000;
        SoundReq(SFX_179);
    } else {
        super->timer = 8;
        tilePos = COORD_TO_TILE(super);
        if (super->type2 != 0) {
            tilePos -= 0x40;
        }
        SetTile(SPECIAL_TILE_105, tilePos, super->collisionLayer);
    }
}

void MinishVillageObject_Type8_Action1(MinishVillageObjectEntity* this) {
    if ((gRoomTransition.frameCount & 3U) == 0) {
        gScreen.controls.alphaBlend = ((0x10 - super->timer) * 0x100) | super->timer;
        super->timer++;
        if (gScreen.controls.alphaBlend == 0x10) {
            super->action = 2;
            super->timer = 8;
            super->spriteRendering.alphaBlend = 0;
            gScreen.controls.layerFXControl = 0;
            SetTile(SPECIAL_TILE_105, COORD_TO_TILE(super), super->collisionLayer);
        }
    }
}

void MinishVillageObject_Type8_Action2(MinishVillageObjectEntity* this) {
    static const u16 gUnk_08121738[] = {
        0x14c, 0x14d, 0x14e, 0x14f, 0x150, 0x151, 0x150, 0x14f, 0x14e, 0x14d, 0x14c, 0,
    };
    if (--super->timer == 0) {
        super->timer = 8;
        ChangeObjPalette(super, gUnk_08121738[super->subtimer++]);
        if (gUnk_08121738[super->subtimer] == 0) {
            super->subtimer = 0;
        }
    }
}
