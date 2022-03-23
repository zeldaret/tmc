/**
 * @file object64.c
 * @ingroup Objects
 *
 * @brief Object64 object
 */

#define NENT_DEPRECATED
#include "global.h"
#include "object.h"
#include "functions.h"

typedef struct {
    /*0x00*/ Entity base;
} Object64Entity;

void sub_08093E3C(Object64Entity*);
void sub_08093EAC(Object64Entity*);
void sub_08093ED0(Object64Entity*);
void sub_08093EF0(Object64Entity*);

typedef struct {
    u16 unk_0;
    u8 unk_2;
    u8 unk_3;
} struct_08122950;

const struct_08122950 gUnk_08122950[] = {
    { 244, 31, 0 },
    { 0, 31, 0 },
    { 0, 31, 0 },
};

void Object64(Object64Entity* this) {
    static void (*const gUnk_0812295C[])(Object64Entity*) = {
        sub_08093E3C,
        sub_08093EAC,
    };
    gUnk_0812295C[super->action](this);
}

void sub_08093E3C(Object64Entity* this) {
    const u16* ptr;
    super->action = 1;
    super->flags &= 0x7f;
    super->spriteSettings.draw = 1;
    if (super->collisionLayer == 0) {
        ResolveCollisionLayer(super);
    }
    InitializeAnimation(super, super->type);
    ptr = &gUnk_08122950[super->type].unk_0;
    if ((ptr[0] != 0) && ((super->type2 & 0x40) == 0)) {
        EnqueueSFX(ptr[0]);
    }
    if ((super->type2 & 0x20) != 0) {
        super->spriteRendering.b3 = 1;
    }
}

void sub_08093EAC(Object64Entity* this) {
    static void (*const gUnk_08122964[])(Object64Entity*) = {
        sub_08093ED0,
        sub_08093EF0,
    };
    gUnk_08122964[gUnk_08122950[super->type].unk_2 >> 4](this);
}

void sub_08093ED0(Object64Entity* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) != 0) {
        DeleteEntity(super);
    }
}

void sub_08093EF0(Object64Entity* this) {
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
            object = CreateObject(OBJECT_64, 1, 0);
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
                object = CreateObject(OBJECT_64, 2, 0);
                if (object != NULL) {
                    object->parent = super->parent;
                    CopyPosition(super, object);
                }
            }
            if ((super->frame & ANIM_DONE) == 0) {
                return;
            }
            if (super->parent == &gPlayerEntity) {
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
