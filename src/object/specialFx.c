#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "object.h"
#include "functions.h"

typedef struct {
    Entity base;
    u32 unk_68;
    u8 unk_6c[0x1C];
} SpecialFxObject;

typedef struct {
    u8 unk_00 : 4;
    u8 unk_00_4 : 4;
    u8 unk_01;
    u16 unk_02;
} struct_0811F960;

// way more legible like this than if clang-format were to put multiple elements on each line
// clang-format off
const struct_0811F960 gUnk_0811F960[] = {
    {0x1, 0x0, 0x00, 0x12D},
    {0x0, 0x0, 0x00, 0x0FD},
    {0x0, 0x0, 0x00, 0x124},
    {0x0, 0x1, 0x11, 0x123},
    {0x0, 0x1, 0x12, 0x164},
    {0x0, 0x1, 0x13, 0x10D},
    {0x0, 0x0, 0x00, 0x0FF},
    {0x5, 0x1, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x2, 0x1, 0x00, 0x084},
    {0x2, 0x1, 0x00, 0x084},
    {0x0, 0x0, 0x00, 0x195},
    {0x0, 0x0, 0x00, 0x164},
    {0x0, 0x0, 0x00, 0x10D},
    {0x0, 0x1, 0x00, 0x074},
    {0x0, 0x0, 0x00, 0x10C},
    {0x5, 0x0, 0x00, 0x000},
    {0x0, 0x0, 0x10, 0x123},
    {0x5, 0x1, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x164},
    {0x0, 0x1, 0x14, 0x1A8},
    {0x0, 0x1, 0x10, 0x088},
    {0x0, 0x0, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x3, 0x0, 0x00, 0x197},
    {0x3, 0x0, 0x00, 0x000},
    {0x6, 0x1, 0x00, 0x074},
    {0x3, 0x0, 0x00, 0x074},
    {0x0, 0x0, 0x00, 0x074},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x7, 0x0, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x3, 0x1, 0x00, 0x000},
    {0x8, 0x1, 0x00, 0x000},
    {0x9, 0x1, 0x00, 0x15F},
    {0x0, 0x0, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x2, 0x1, 0x00, 0x084},
    {0x0, 0x0, 0x00, 0x074},
    {0x0, 0x0, 0x00, 0x164},
    {0xA, 0x1, 0x00, 0x000},
    {0xA, 0x1, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x9, 0x1, 0x00, 0x15F},
    {0x9, 0x1, 0x00, 0x15F},
    {0x9, 0x1, 0x00, 0x15F},
    {0x0, 0x0, 0x00, 0x000},
    {0x2, 0x0, 0x00, 0x17F},
    {0x0, 0x1, 0x11, 0x123},
    {0x0, 0x1, 0x11, 0x123},
    {0x0, 0x1, 0x11, 0x123},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x1B4},
    {0x0, 0x1, 0x13, 0x164},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x10, 0x088},
    {0x0, 0x1, 0x10, 0x088},
    {0x0, 0x1, 0x10, 0x088},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x11D},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x0, 0x00, 0x164},
    {0x0, 0x0, 0x00, 0x0FD},
    {0x0, 0x0, 0x00, 0x0FD},
    {0x0, 0x0, 0x00, 0x0FD},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0xB, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x000},
    {0x0, 0x1, 0x00, 0x0FD},
    {0x2, 0x1, 0x00, 0x084},
#ifndef EU
    {0x0, 0x0, 0x18, 0x124},
#else
    {0x0, 0x0, 0x16, 0x124},
#endif
    {0xC, 0x0, 0x00, 0x124},
    {0x0, 0x0, 0x00, 0x0FD},
    {0xD, 0x1, 0x00, 0x000},
    {0xD, 0x1, 0x00, 0x000},
};
// clang-format on

void SpecialFx(Entity*);
void sub_080844E0(SpecialFxObject*);
void sub_080845B8(SpecialFxObject*);
void sub_080845DC(SpecialFxObject*);
void sub_080845F8(SpecialFxObject*);
void sub_08084630(SpecialFxObject*);
void sub_08084680(SpecialFxObject*);
void sub_08084694(SpecialFxObject*);
void sub_080846B0(SpecialFxObject*);
void sub_0808471C(SpecialFxObject*);
void sub_08084770(SpecialFxObject*);
void sub_08084784(SpecialFxObject*);
void sub_08084798(SpecialFxObject*);
void sub_080847BC(SpecialFxObject*);
void sub_080847D0(SpecialFxObject*);
void sub_080847E0(SpecialFxObject*);

void SpecialFx(Entity* this) {
    static void (*const gUnk_0811FAC0[])(SpecialFxObject*) = {
        sub_080844E0,
        sub_080845B8,
    };
    gUnk_0811FAC0[this->action]((SpecialFxObject*)this);
}

void sub_080844E0(SpecialFxObject* this) {
    static const u8 gUnk_0811FAC8[] = { 0x03, 0x37, 0x38, 0x39 };
    static const u8 gUnk_0811FACC[] = { 0x17, 0x3e, 0x3f, 0x40 };
    const struct_0811F960* ptr;

    super->action = 1;
    super->flags &= ~0x80;
    super->spriteSettings.draw = 1;
    SetDefaultPriority(super, 6);
    if (super->collisionLayer == 0) {
        ResolveCollisionLayer(super);
    }
    if (super->type == 0x20) {
        super->flags |= 0x20;
    }
    if (super->type == 0x3) {
        super->type = gUnk_0811FAC8[Random() & 3];
    }
    if (super->type == 0x17) {
        super->type = gUnk_0811FACC[Random() & 3];
    }
    InitializeAnimation(super, super->type);
    ptr = &gUnk_0811F960[super->type];
    if (ptr->unk_00 == 6) {
        super->speed = 0x40;
    }
    if (ptr->unk_02 && !(super->type2 & 0x40)) {
        EnqueueSFX(ptr->unk_02);
    }
    if (super->type2 & 0x80) {
        CreateRandomItemDrop(super, ptr->unk_01);
    }
    if (super->type2 & 0x20) {
        super->spriteRendering.b3 = 1;
    }
}

void sub_080845B8(SpecialFxObject* this) {
    static void (*const gUnk_0811FAD0[])(SpecialFxObject*) = {
        sub_080845DC, sub_080845F8, sub_08084630, sub_08084694, (void (*)(SpecialFxObject*))DeleteEntity,
        sub_08084680, sub_080846B0, sub_0808471C, sub_08084770, sub_08084798,
        sub_080847BC, sub_08084784, sub_080847D0, sub_080847E0,
    };
    gUnk_0811FAD0[gUnk_0811F960[super->type].unk_00](this);
}

void sub_080845DC(SpecialFxObject* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        DeleteThisEntity();
    }
}

void sub_080845F8(SpecialFxObject* this) {
    if (((8 - (super->x.HALF.HI & 0xF)) | (8 - (super->y.HALF.HI & 0xF))) != 0) {
        super->direction = sub_080045DA((8 - (super->x.HALF.HI & 0xF)), (8 - (super->y.HALF.HI & 0xF))) >> 3;
        LinearMoveUpdate(super);
    }
    sub_08084630(this);
}

void sub_08084630(SpecialFxObject* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        if ((super->type2 & 1) && (super->child != 0)) {
            ((GenericEntity*)super->child)->field_0x6a.HWORD--;
            if (this->unk_68 != 0) {
                ((GenericEntity*)super->child)->field_0x6c.HWORD &= ~(1 << ((this->unk_68 - 1) & 0x1F));
            }
        }
        DeleteThisEntity();
    }
}

void sub_08084680(SpecialFxObject* this) {
    super->z.WORD += 0x4000;
    sub_080845DC(this);
}

void sub_08084694(SpecialFxObject* this) {
    if ((super->parent == NULL) || (super->parent->next == NULL)) {
        DeleteThisEntity();
    }
    GetNextFrame(super);
}

void sub_080846B0(SpecialFxObject* this) {
    s32 tmp;
    if (super->actionDelay != 0) {
        if (super->speed != 0) {
            super->speed -= 0x10;
        }
        LinearMoveUpdate(super);
        sub_080845DC(this);
    } else {
        super->actionDelay = 1;
        if ((super->animationState | 2) == 2) {
            super->direction = 0x1e;
        } else {
            super->direction = 2;
        }
        if (super->field_0xf != 0) {
            super->spriteVramOffset++;
            tmp = (super->direction > 0x17 ? -1 : 1);
            super->direction += tmp;
            super->speed = 0x280;
        } else {
            super->speed = 0x300;
        }
    }
}

void sub_0808471C(SpecialFxObject* this) {
    static const s8 gUnk_0811FB08[] = { -8, -8, 8, -8, -8, 8, 8, 8 };

    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        u32 i;

        for (i = 0; i < 4; i++) {
            Entity* fx = CreateFx(super, 0x24, 0);

            if (fx != NULL) {
                const s8* ptr = &gUnk_0811FB08[2 * i];
                fx->x.HALF.HI += ptr[0];
                fx->y.HALF.HI += ptr[1];
            }
        }
        DeleteThisEntity();
    }
}

void sub_08084770(SpecialFxObject* this) {
    super->z.WORD -= 0x4000;
    sub_080845DC(this);
}

void sub_08084784(SpecialFxObject* this) {
    super->z.WORD += 0x4000;
    sub_080845DC(this);
}

void sub_08084798(SpecialFxObject* this) {
    GetNextFrame(super);
    if ((super->frame & ANIM_DONE) || (super->child->next == NULL)) {
        DeleteThisEntity();
    }
}

void sub_080847BC(SpecialFxObject* this) {
    super->z.WORD -= 0x2000;
    sub_080845DC(this);
}

void sub_080847D0(SpecialFxObject* this) {
    LinearMoveUpdate(super);
    sub_080845DC(this);
}

void sub_080847E0(SpecialFxObject* this) {
    if (gRoomControls.reload_flags == 1) {
        DeleteThisEntity();
    }
    PositionRelative(&gPlayerEntity, super, 0, -0x30000);
    super->z.HALF.HI = -3;
    SortEntityAbove(&gPlayerEntity, super);
    sub_080845DC(this);
}
