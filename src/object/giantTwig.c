/**
 * @file giantTwig.c
 * @ingroup Objects
 *
 * @brief Giant Twig object
 */
#define NENT_DEPRECATED
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[0xe];
    /*0x76*/ u16 tilePosition;
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
} GiantTwigEntity;

void sub_08093A1C(GiantTwigEntity*);
void sub_08093C70(GiantTwigEntity*);
void sub_08093984(GiantTwigEntity*);
void GiantTwig_Type0Init(GiantTwigEntity*);
void GiantTwig_Type0Idle(GiantTwigEntity*);
void GiantTwig_Type1Init(GiantTwigEntity*);
void GiantTwig_Type1Idle(GiantTwigEntity*);
void GiantTwig_Type2Init(GiantTwigEntity*);
void GiantTwig_Type2Idle(GiantTwigEntity*);
void GiantTwig_Type3Init(GiantTwigEntity*);
void GiantTwig_Type3Idle(GiantTwigEntity*);

void GiantTwig(GiantTwigEntity* this) {
    switch (super->type) {
        case 0:
        case 0x40:
        case 0x41: {
            static void (*const GiantTwig_Type0Actions[])(GiantTwigEntity*) = {
                GiantTwig_Type0Init,
                GiantTwig_Type0Idle,
            };
            GiantTwig_Type0Actions[super->action](this);
            break;
        }
        case 1: {
            static void (*const GiantTwig_Type1Actions[])(GiantTwigEntity*) = {
                GiantTwig_Type1Init,
                GiantTwig_Type1Idle,
            };
            GiantTwig_Type1Actions[super->action](this);
            break;
        }
        case 2: {
            static void (*const GiantTwig_Type2Actions[])(GiantTwigEntity*) = {
                GiantTwig_Type2Init,
                GiantTwig_Type2Idle,
            };
            GiantTwig_Type2Actions[super->action](this);
            break;
        }
        case 3: {
            static void (*const GiantTwig_Type3Actions[])(GiantTwigEntity*) = {
                GiantTwig_Type3Init,
                GiantTwig_Type3Idle,
            };
            GiantTwig_Type3Actions[super->action](this);
            break;
        }
    }
}

void GiantTwig_Type0Init(GiantTwigEntity* this) {
    Entity* obj;
    super->action = 1;
    this->tilePosition = COORD_TO_TILE(super);
    switch (super->type) {
        case 0:
            super->frameIndex = 1;
            super->spriteRendering.b3 = 2;
            super->spritePriority.b0 = 5;
            this->unk_78 = 1;
            this->unk_7a = 0x3c;
            obj = CreateObject(GIANT_TWIG, 0x40, 0);
            if (obj != NULL) {
                obj->parent = super;
                CopyPosition(super, obj);
            }
            break;
        case 0x40:
            super->frameIndex = 2;
            super->spritePriority.b0 = 7;
            obj = CreateObject(GIANT_TWIG, 0x41, 0);
            if (obj != NULL) {
                obj->parent = super;
                CopyPosition(super, obj);
            }
            break;
        case 0x41:
            super->frameIndex = 0;
            super->spriteOrientation.flipY = 1;
            break;
    }
    sub_08093A1C(this);
}

void GiantTwig_Type0Idle(GiantTwigEntity* this) {
    if (super->type == 0) {
        if (gPlayerEntity.y.HALF.HI < super->y.HALF.HI + 0x20) {
            super->spriteRendering.b3 = 1;
        } else {
            super->spriteRendering.b3 = 2;
        }
    }
    sub_08093C70(this);
}

void GiantTwig_Type1Init(GiantTwigEntity* this) {
    super->action = 1;
    super->frameIndex = (super->type2 & 1) + 3;
    super->spritePriority.b0 = 7;
    this->tilePosition = COORD_TO_TILE(super);
    sub_08093A1C(this);
}

void GiantTwig_Type1Idle(GiantTwigEntity* this) {
}

void GiantTwig_Type2Init(GiantTwigEntity* this) {
    super->action = 1;
    super->frameIndex = (super->type2 & 1) + 5;
    super->spriteRendering.b3 = 3;
    super->spritePriority.b0 = 7;
    this->tilePosition = COORD_TO_TILE(super);
    if ((super->type2 & 1) != 0) {
        super->spriteOffsetX = 8;
    }
    sub_08093984(this);
    ChangeObjPalette(super, 0x7b);
}

void GiantTwig_Type2Idle(GiantTwigEntity* this) {
}

void sub_08093984(GiantTwigEntity* this) {
    u32 index;
    const s16* array;

    if (super->type2 != 0) {
        static const s16 gUnk_081228F8[] = {
            -130, -129, -128, -127, -66, -65, -64, -63, -62, -2, -1, 0, 1, 2, 63, 64, 65, 66, 67,
        };
        array = gUnk_081228F8;
    } else {
        static const s16 gUnk_0812291E[] = {
            -129, -128, -127, -126, -66, -65, -64, -63, -62, -2, -1, 0, 1, 2, 61, 62, 63, 64, 65,
        };
        array = gUnk_0812291E;
    }

    for (index = 0; index < 0x13; index++) {
        SetTile(0x4074, array[index] + this->tilePosition, 1);
    }
}

void GiantTwig_Type3Init(GiantTwigEntity* this) {
    super->action = 1;
    super->frameIndex = (super->type2 & 3) + 7;
    super->spritePriority.b0 = 7;
    this->tilePosition = COORD_TO_TILE(super);
    sub_08093A1C(this);
    ChangeObjPalette(super, 0x7a);
}

void GiantTwig_Type3Idle(GiantTwigEntity* this) {
}

void sub_08093A1C(GiantTwigEntity* this) {
    switch (super->type) {
        case 0:
            SetTile(0x4024, this->tilePosition + 0x3c, super->collisionLayer);
            SetTile(0x4022, this->tilePosition + 0x3d, super->collisionLayer);
            SetTile(0x4022, this->tilePosition + 0x3e, super->collisionLayer);
            SetTile(0x4029, this->tilePosition + 0x7c, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x7d, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x7e, super->collisionLayer);
            SetTile(0x403d, this->tilePosition + 0x40, super->collisionLayer);
            SetTile(0x403d, this->tilePosition + 0x80, super->collisionLayer);
            SetTile(0x4027, this->tilePosition + 0x41, super->collisionLayer);
            SetTile(0x4023, this->tilePosition + 0x42, super->collisionLayer);
            SetTile(0x406d, this->tilePosition + 0x43, super->collisionLayer);
            SetTile(0x4029, this->tilePosition + 0x81, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x82, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x83, super->collisionLayer);
            break;
        case 1:
            if ((super->type2 & 1) != 0) {
                SetTile(0x406d, this->tilePosition - 0x81, super->collisionLayer);
                SetTile(0x4022, this->tilePosition - 0x41, super->collisionLayer);
                SetTile(0x4029, this->tilePosition - 2, super->collisionLayer);
                SetTile(0x4026, this->tilePosition - 1, super->collisionLayer);
                SetTile(0x4022, this->tilePosition, super->collisionLayer);
                SetTile(0x406d, this->tilePosition + 1, super->collisionLayer);
                SetTile(0x406e, this->tilePosition + 0x40, super->collisionLayer);
                SetTile(0x4022, this->tilePosition + 0x41, super->collisionLayer);
                SetTile(0x406d, this->tilePosition + 0x42, super->collisionLayer);
            } else {
                SetTile(0x406c, this->tilePosition - 0x7f, super->collisionLayer);
                SetTile(0x4022, this->tilePosition - 0x3f, super->collisionLayer);
                SetTile(0x406c, this->tilePosition - 1, super->collisionLayer);
                SetTile(0x4022, this->tilePosition, super->collisionLayer);
                SetTile(0x4026, this->tilePosition + 1, super->collisionLayer);
                SetTile(0x402a, this->tilePosition + 2, super->collisionLayer);
                SetTile(0x406c, this->tilePosition + 0x3e, super->collisionLayer);
                SetTile(0x4022, this->tilePosition + 0x3f, super->collisionLayer);
                SetTile(0x406f, this->tilePosition + 0x40, super->collisionLayer);
                return;
            }
            break;
        case 3:
            SetTile(0x4022, this->tilePosition, super->collisionLayer);
            break;
    }
}

void sub_08093C70(GiantTwigEntity* this) {
    if (this->unk_78 != 0) {
        if (gPlayerState.heldObject != 0) {
            this->unk_78 = 0;
            SetTile(0x4022, this->tilePosition + 0x3f, super->collisionLayer);
            SetTile(0x4022, this->tilePosition + 0x40, super->collisionLayer);
            SetTile(0x4022, this->tilePosition + 0x41, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x7f, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x80, super->collisionLayer);
            SetTile(0x4026, this->tilePosition + 0x81, super->collisionLayer);
        }

    } else {
        if (gPlayerState.heldObject == 0) {
            if (--this->unk_7a == 0) {
                this->unk_78++;
                this->unk_7a = 0x3c;
                SetTile(0x403d, this->tilePosition + 0x3f, super->collisionLayer);
                SetTile(0x403d, this->tilePosition + 0x40, super->collisionLayer);
                SetTile(0x4027, this->tilePosition + 0x41, super->collisionLayer);
                SetTile(0x403d, this->tilePosition + 0x7f, super->collisionLayer);
                SetTile(0x403d, this->tilePosition + 0x80, super->collisionLayer);
                SetTile(0x4029, this->tilePosition + 0x81, super->collisionLayer);
            }
        }
    }
}
