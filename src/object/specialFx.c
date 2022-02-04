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

extern void (*gUnk_0811FAC0[])(SpecialFxObject*);

extern u8 gUnk_0811FAC8[];
extern u8 gUnk_0811FACC[];

typedef struct {
    u8 unk_00 : 4;
    u8 unk_01;
    u16 unk_02;
} struct_0811F960;
extern struct_0811F960 gUnk_0811F960[];

extern void (*gUnk_0811FAD0[])(SpecialFxObject*);

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
    gUnk_0811FAC0[this->action]((SpecialFxObject*)this);
}

void sub_080844E0(SpecialFxObject* this) {
    struct_0811F960* ptr;
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
    gUnk_0811FAD0[gUnk_0811F960[super->type].unk_00](this);
}

void sub_080845DC(SpecialFxObject* this) {
    GetNextFrame(super);
    if (super->frame & 0x80) {
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
    if (super->frame & 0x80) {
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
    if (!super->parent || !super->parent->next) {
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

extern s8 gUnk_0811FB08[];

void sub_0808471C(SpecialFxObject* this) {
    GetNextFrame(super);
    if (super->frame & 0x80) {
        u32 i;
        for (i = 0; i < 4; i++) {
            Entity* fx = CreateFx(super, 0x24, 0);
            if (fx) {
                s8* ptr = &gUnk_0811FB08[2 * i];
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
    if ((super->frame & 0x80) || !super->child->next) {
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
