/**
 * @file object3E.c
 * @ingroup Objects
 *
 * @brief Object3E object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
} Object3EEntity;

void Object3E_Type0(Object3EEntity*);
void Object3E_Type1(Object3EEntity*);
void Object3E_Type3(Object3EEntity*);
void Object3E_Type4(Object3EEntity*);
void Object3E_Type5(Object3EEntity*);
void Object3E_Type6(Object3EEntity*);
void Object3E_Type7(Object3EEntity*);
void Object3E_Type8(Object3EEntity*);
void Object3E_Type8_Init(Object3EEntity*);
void Object3E_Type8_Action1(Object3EEntity*);
void Object3E_Type8_Action2(Object3EEntity*);

void Object3E(Object3EEntity* this) {
    static void (*const Object3E_Types[])(Object3EEntity*) = {
        Object3E_Type0, Object3E_Type1, Object3E_Type1, Object3E_Type3, Object3E_Type4,
        Object3E_Type5, Object3E_Type6, Object3E_Type7, Object3E_Type8, Object3E_Type1,
    };
    Object3E_Types[super->type](this);
}

void Object3E_Type0(Object3EEntity* this) {
    u32 tmp;
    u32 tmp2;
    switch (super->action) {
        case 0:
            super->action = 1;
            super->actionDelay = 0x40 - (Random() & 0x1f);
            super->frameIndex = 0;
            super->animationState = 0;
            super->spriteRendering.b3 = 3;
            super->spritePriority.b0 = 7;
            super->collisionLayer = 1;
            break;
        case 1:
            if (--super->actionDelay == 0) {
                super->actionDelay = 8;
                super->field_0xf = 4;
                super->action = 2;
                super->animationState = Random() & 3;
            }
            break;
        case 2:
            if (--super->actionDelay == 0) {
                if (--super->field_0xf == 0) {
                    super->frameIndex = 0;
                    super->action = 1;
                    super->actionDelay = 0x40 - (Random() & 0x1f);
                } else {
                    super->actionDelay = 8;
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

void Object3E_Type1(Object3EEntity* this) {
    static const u16 gUnk_08121704[] = {
        0x12d, 0x12e, 0x12f, 0x130, 0x131, 0x132, 0x133, 0x132, 0x131, 0x130, 0x12f, 0x12e, 0x12d, 0,
    };

    switch (super->action) {
        case 0:
            super->action = 1;
            super->actionDelay = 8;
            super->field_0xf = 0;
            super->frameIndex = 0;
            super->spritePriority.b0 = 7;
            SetTile(0x4069, COORD_TO_TILE(super) - 0x40, 1);
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
    if (--super->actionDelay == 0) {
        super->actionDelay = 8;
        if (super->type == 9) {
            super->actionDelay = 2;
        }
        ChangeObjPalette(super, gUnk_08121704[super->field_0xf++]);
        if (gUnk_08121704[super->field_0xf] == 0) {
            super->field_0xf = 0;
        }
    }
}

void sub_0808D280(void) {
    Entity* obj = FindEntity(6, OBJECT_3E, 6, 9, 0);
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
    Entity* obj = FindEntity(6, OBJECT_3E, 6, 1, 0);
    if (obj != NULL) {
        obj->type = 9;
        SetDefaultPriority(obj, 2);
    }
}

void Object3E_Type3(Object3EEntity* this) {
}

void Object3E_Type4(Object3EEntity* this) {
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

void Object3E_Type5(Object3EEntity* this) {
    if (super->action == 0) {
        super->action = 0;
        super->frameIndex = 1;
        super->spritePriority.b0 = 7;
        sub_0807DD64(super);
    }
    ExecuteScriptForEntity(super, NULL);
    HandleEntity0x82Actions(super);
}

void Object3E_Type6(Object3EEntity* this) {
    static const u16 gUnk_08121720[] = { 0x149, 0x14a, 0x14b, 0x14a, 0, 0 };
    if (super->action == 0) {
        super->action = 1;
        super->actionDelay = 8;
        super->spritePriority.b0 = 7;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x1003;
    }
    if (--super->actionDelay == 0) {
        super->actionDelay = 2;
        sub_0801D28C(super, gUnk_08121720[super->field_0xf++]);
        if (gUnk_08121720[super->field_0xf] == 0) {
            super->field_0xf = 0;
        }
    }
}

void Object3E_Type7(Object3EEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 7;
        super->spriteRendering.alphaBlend = 1;
        super->frameIndex = super->type2;
        sub_0805EC9C(super, (1 - super->type2) * 0x200 + 0x100, 0xffffff40, 0);
    }
}

void Object3E_Type8(Object3EEntity* this) {
    static void (*const Object3E_Type8_Actions[])(Object3EEntity*) = {
        Object3E_Type8_Init,
        Object3E_Type8_Action1,
        Object3E_Type8_Action2,
    };

    Object3E_Type8_Actions[super->action](this);
}

void Object3E_Type8_Init(Object3EEntity* this) {
    u32 tilePosition;
    super->spritePriority.b0 = 7;
    super->frameIndex = super->type2;
    super->action = 2;
    if ((super->type2 == 0) && (CheckLocalFlag(0x7c) == 0)) {
        super->action = 1;
        super->actionDelay = 0;
        super->spriteRendering.alphaBlend = 1;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x1000;
        SoundReq(SFX_179);
    } else {
        super->actionDelay = 8;
        tilePosition = COORD_TO_TILE(super);
        if (super->type2 != 0) {
            tilePosition -= 0x40;
        }
        SetTile(0x4069, tilePosition, super->collisionLayer);
    }
}

void Object3E_Type8_Action1(Object3EEntity* this) {
    if ((gRoomTransition.frameCount & 3U) == 0) {
        gScreen.controls.alphaBlend = ((0x10 - super->actionDelay) * 0x100) | super->actionDelay;
        super->actionDelay++;
        if (gScreen.controls.alphaBlend == 0x10) {
            super->action = 2;
            super->actionDelay = 8;
            super->spriteRendering.alphaBlend = 0;
            gScreen.controls.layerFXControl = 0;
            SetTile(0x4069, COORD_TO_TILE(super), super->collisionLayer);
        }
    }
}

void Object3E_Type8_Action2(Object3EEntity* this) {
    static const u16 gUnk_08121738[] = {
        0x14c, 0x14d, 0x14e, 0x14f, 0x150, 0x151, 0x150, 0x14f, 0x14e, 0x14d, 0x14c, 0,
    };
    if (--super->actionDelay == 0) {
        super->actionDelay = 8;
        ChangeObjPalette(super, gUnk_08121738[super->field_0xf++]);
        if (gUnk_08121738[super->field_0xf] == 0) {
            super->field_0xf = 0;
        }
    }
}
