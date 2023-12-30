/**
 * @file thunderbolt.c
 * @ingroup Objects
 *
 * @brief Thunderbolt object
 */
#include "functions.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
} ThunderboltEntity;

void Thunderbolt_Init(ThunderboltEntity*);
void Thunderbolt_Action1(ThunderboltEntity*);
void sub_08093ED0(ThunderboltEntity*);
void sub_08093EF0(ThunderboltEntity*);

typedef struct {
    u16 sfx;
    u8 unk_2;
    u8 unk_3;
} struct_08122950;

const struct_08122950 gUnk_08122950[] = {
    { 244, 31, 0 },
    { 0, 31, 0 },
    { 0, 31, 0 },
};

void Thunderbolt(ThunderboltEntity* this) {
    static void (*const Thunderbolt_Actions[])(ThunderboltEntity*) = {
        Thunderbolt_Init,
        Thunderbolt_Action1,
    };
    Thunderbolt_Actions[super->action](this);
}

void Thunderbolt_Init(ThunderboltEntity* this) {
    const struct_08122950* ptr;
    super->action = 1;
    super->flags &= ~0x80;
    super->spriteSettings.draw = 1;
    if (super->collisionLayer == 0) {
        ResolveCollisionLayer(super);
    }
    InitializeAnimation(super, super->type);
    ptr = &gUnk_08122950[super->type];
    if ((ptr->sfx != SFX_NONE) && ((super->type2 & 0x40) == 0)) {
        EnqueueSFX(ptr->sfx);
    }
    if ((super->type2 & 0x20) != 0) {
        super->spriteRendering.b3 = 1;
    }
}

void Thunderbolt_Action1(ThunderboltEntity* this) {
    static void (*const gUnk_08122964[])(ThunderboltEntity*) = {
        sub_08093ED0,
        sub_08093EF0,
    };
    gUnk_08122964[gUnk_08122950[super->type].unk_2 >> 4](this);
}

void sub_08093ED0(ThunderboltEntity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteEntity(super);
    }
}

void sub_08093EF0(ThunderboltEntity* this) {
    Entity* object;
    switch (super->type) {
        case 0:
            if (super->subAction != 0) {
                return;
            }
            GetNextFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            object = CreateObject(THUNDERBOLT, 1, 0);
            if (object != NULL) {
                object->parent = super->parent;
                CopyPosition(super, object);
            }
            DeleteThisEntity();
            break;
        case 1:
            GetNextFrame(super);
            if ((super->frame & 1) != 0) {
                super->frame = 0;
                object = CreateObject(THUNDERBOLT, 2, 0);
                if (object != NULL) {
                    object->parent = super->parent;
                    CopyPosition(super, object);
                }
            }
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            if (super->parent == &gPlayerEntity.base) {
                SoundReq(SFX_PLY_VO6);
                sub_08079D84();
            }
            DeleteThisEntity();
            break;
        case 2:
            GetNextFrame(super);
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            DeleteThisEntity();
            break;
    }
}
