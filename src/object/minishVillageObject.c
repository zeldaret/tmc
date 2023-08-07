/**
 * @file minishVillageObject.c
 * @ingroup Objects
 *
 * @brief Minish Village Object object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"
#include "screen.h"

void MinishVillageObject_Type0(Entity*);
void MinishVillageObject_Type1(Entity*);
void MinishVillageObject_Type3(Entity*);
void MinishVillageObject_Type4(Entity*);
void MinishVillageObject_Type5(Entity*);
void MinishVillageObject_Type6(Entity*);
void MinishVillageObject_Type7(Entity*);
void MinishVillageObject_Type8(Entity*);
void MinishVillageObject_Type8_Init(Entity*);
void MinishVillageObject_Type8_Action1(Entity*);
void MinishVillageObject_Type8_Action2(Entity*);

void MinishVillageObject(Entity* this) {
    static void (*const MinishVillageObject_Types[])(Entity*) = {
        MinishVillageObject_Type0, MinishVillageObject_Type1, MinishVillageObject_Type1, MinishVillageObject_Type3,
        MinishVillageObject_Type4, MinishVillageObject_Type5, MinishVillageObject_Type6, MinishVillageObject_Type7,
        MinishVillageObject_Type8, MinishVillageObject_Type1,
    };
    MinishVillageObject_Types[this->type](this);
}

void MinishVillageObject_Type0(Entity* this) {
    u32 tmp;
    u32 tmp2;
    switch (this->action) {
        case 0:
            this->action = 1;
            this->timer = 64 - (Random() & 0x1F);
            this->frameIndex = 0;
            this->animationState = 0;
            this->spriteRendering.b3 = 3;
            this->spritePriority.b0 = 7;
            this->collisionLayer = 1;
            break;
        case 1:
            if (--this->timer == 0) {
                this->timer = 8;
                this->subtimer = 4;
                this->action = 2;
                this->animationState = Random() & 3;
            }
            break;
        case 2:
            if (--this->timer == 0) {
                if (--this->subtimer == 0) {
                    this->frameIndex = 0;
                    this->action = 1;
                    this->timer = 64 - (Random() & 0x1F);
                } else {
                    this->timer = 8;
                    tmp2 = this->animationState;
                    if (this->frameIndex != tmp2) {
                        tmp = tmp2;
                    } else {
                        tmp = 0;
                    }
                    this->frameIndex = tmp;
                }
            }
            break;
    }
}

void MinishVillageObject_Type1(Entity* this) {
    static const u16 gUnk_08121704[] = {
        0x12d, 0x12e, 0x12f, 0x130, 0x131, 0x132, 0x133, 0x132, 0x131, 0x130, 0x12f, 0x12e, 0x12d, 0,
    };

    switch (this->action) {
        case 0:
            this->action = 1;
            this->timer = 8;
            this->subtimer = 0;
            this->frameIndex = 0;
            this->spritePriority.b0 = 7;
            SetTile(0x4069, COORD_TO_TILE(this) - 0x40, 1);
            break;
        case 2:
            if ((gRoomTransition.frameCount & 3U) == 0) {
                gScreen.controls.alphaBlend = (this->subAction << 8) | (0x10 - this->subAction);
                this->subAction++;
                if (gScreen.controls.alphaBlend == 0x1000) {
                    gScreen.controls.layerFXControl = 0;
                    DeleteThisEntity();
                }
            }
            break;
        case 1:
            break;
    }
    if (--this->timer == 0) {
        this->timer = 8;
        if (this->type == 9) {
            this->timer = 2;
        }
        ChangeObjPalette(this, gUnk_08121704[this->subtimer++]);
        if (gUnk_08121704[this->subtimer] == 0) {
            this->subtimer = 0;
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
        SetDefaultPriority(obj, 2);
    }
}

void MinishVillageObject_Type3(Entity* this) {
}

void MinishVillageObject_Type4(Entity* this) {
    s32 tmp;
    if (this->action == 0) {
        this->action = 0;
        this->frameIndex = 0;
        this->spritePriority.b0 = 7;
        sub_0807DD64(this);
    }
    tmp = this->x.HALF.HI;
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
    if (((gRoomControls.shake_duration != 0) && (tmp != this->x.HALF.HI)) && ((gRoomTransition.frameCount & 8) == 0)) {
        SoundReq(SFX_10F);
    }
}

void MinishVillageObject_Type5(Entity* this) {
    if (this->action == 0) {
        this->action = 0;
        this->frameIndex = 1;
        this->spritePriority.b0 = 7;
        sub_0807DD64(this);
    }
    ExecuteScriptForEntity(this, NULL);
    HandleEntity0x82Actions(this);
}

void MinishVillageObject_Type6(Entity* this) {
    static const u16 gUnk_08121720[] = { 0x149, 0x14a, 0x14b, 0x14a, 0, 0 };
    if (this->action == 0) {
        this->action = 1;
        this->timer = 8;
        this->spritePriority.b0 = 7;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x1003;
    }
    if (--this->timer == 0) {
        this->timer = 2;
        sub_0801D28C(this, gUnk_08121720[this->subtimer++]);
        if (gUnk_08121720[this->subtimer] == 0) {
            this->subtimer = 0;
        }
    }
}

void MinishVillageObject_Type7(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
        this->spriteRendering.alphaBlend = 1;
        this->frameIndex = this->type2;
        SetAffineInfo(this, (1 - this->type2) * 0x200 + 0x100, 0xffffff40, 0);
    }
}

void MinishVillageObject_Type8(Entity* this) {
    static void (*const MinishVillageObject_Type8_Actions[])(Entity*) = {
        MinishVillageObject_Type8_Init,
        MinishVillageObject_Type8_Action1,
        MinishVillageObject_Type8_Action2,
    };

    MinishVillageObject_Type8_Actions[this->action](this);
}

void MinishVillageObject_Type8_Init(Entity* this) {
    u32 tilePosition;
    this->spritePriority.b0 = 7;
    this->frameIndex = this->type2;
    this->action = 2;
    if ((this->type2 == 0) && (CheckLocalFlag(0x7c) == 0)) {
        this->action = 1;
        this->timer = 0;
        this->spriteRendering.alphaBlend = 1;
        gScreen.controls.layerFXControl = 0x640;
        gScreen.controls.alphaBlend = 0x1000;
        SoundReq(SFX_179);
    } else {
        this->timer = 8;
        tilePosition = COORD_TO_TILE(this);
        if (this->type2 != 0) {
            tilePosition -= 0x40;
        }
        SetTile(0x4069, tilePosition, this->collisionLayer);
    }
}

void MinishVillageObject_Type8_Action1(Entity* this) {
    if ((gRoomTransition.frameCount & 3U) == 0) {
        gScreen.controls.alphaBlend = ((0x10 - this->timer) * 0x100) | this->timer;
        this->timer++;
        if (gScreen.controls.alphaBlend == 0x10) {
            this->action = 2;
            this->timer = 8;
            this->spriteRendering.alphaBlend = 0;
            gScreen.controls.layerFXControl = 0;
            SetTile(0x4069, COORD_TO_TILE(this), this->collisionLayer);
        }
    }
}

void MinishVillageObject_Type8_Action2(Entity* this) {
    static const u16 gUnk_08121738[] = {
        0x14c, 0x14d, 0x14e, 0x14f, 0x150, 0x151, 0x150, 0x14f, 0x14e, 0x14d, 0x14c, 0,
    };
    if (--this->timer == 0) {
        this->timer = 8;
        ChangeObjPalette(this, gUnk_08121738[this->subtimer++]);
        if (gUnk_08121738[this->subtimer] == 0) {
            this->subtimer = 0;
        }
    }
}
