// #define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "player.h"
#include "functions.h"

typedef struct {
    u8 unk_00[0x8];
    Entity* unk_08;
    Entity* unk_0c;
    u8 unk_10[0x08];
    void* unk_18[0x8];
    u16 unk_38;
    u16 unk_3a;
    u8 unk_3c;
} GyorgFemaleHeap;

typedef struct {
} GyorgFemaleEyeHeap;

typedef struct {
    Entity base;
    // u8 unk_68[0x20];
} GyorgFemaleEyeEntity;

extern void (*const gUnk_080D1F64[])(GyorgFemaleEyeEntity*);
extern void (*const gUnk_080D1F7C[])(GyorgFemaleEyeEntity*);

extern const u8 gUnk_080D2030[];
extern const u8 gUnk_080D2010[];

void sub_08048D20(GyorgFemaleEyeEntity*);

u32 sub_08048D70(Entity*); // GyorgFemaleEntity*

void GyorgFemaleEye(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteThisEntity();
    }
    gUnk_080D1F64[GetNextFunction(this)]((GyorgFemaleEyeEntity*)this);
}

void sub_080489B4(GyorgFemaleEyeEntity* this) {
    gUnk_080D1F7C[super->action](this);
}

void sub_080489CC(GyorgFemaleEyeEntity* this) {
    Entity* parent;
    if (super->health != 0xFF) {
        parent = super->parent;
#ifndef EU
        if ((parent->field_0x78.HALF.LO >> super->type) & 1) {
#endif
            parent->field_0x7c.BYTES.byte0 |= (1 << super->type);
#ifndef EU
            switch (super->bitfield & 0x7F) {
                case 4 ... 6:
                case 8 ... 13:
                case 16 ... 18:
                case 24 ... 26:
#endif
                    ((GyorgFemaleHeap*)parent->myHeap)->unk_18[super->type] = super->field_0x4c;
                    ((GyorgFemaleHeap*)parent->myHeap)->unk_38 = (gPlayerEntity.x.HALF.HI + super->x.HALF.HI) / 2;
                    ((GyorgFemaleHeap*)parent->myHeap)->unk_3a = (gPlayerEntity.y.HALF.HI + super->y.HALF.HI) / 2;
                    ((GyorgFemaleHeap*)parent->myHeap)->unk_3c = (super->knockbackDirection ^= 0x10);
#ifndef EU
                    break;
                default:
                    ((GyorgFemaleHeap*)parent->myHeap)->unk_3c = 0xFF;
                    break;
            }
        }
#endif
    }
    super->health = 0xFF;
    sub_0804AA30(super, (void (*const*)(Entity*))gUnk_080D1F64);
}

void sub_08048AF0(GyorgFemaleEyeEntity* this) {
    super->action = 1;
    super->animationState = 0xFF;
    super->spriteOrientation.flipY = 2;
    super->spriteRendering.b3 = 2;
    super->spritePriority.b0 = 7;
    super->collisionLayer = 2;
    sub_08048D20(this);
}

void sub_08048B2C(GyorgFemaleEyeEntity* this) {
    Entity* parent;
    sub_08048D20(this);
    parent = super->parent;
    if (sub_08048D70(parent)) {
        if (!super->spriteSettings.draw) {
            CreateFx(super, 2, 0x40);
        }
        super->spriteSettings.draw = 1;
    } else {
        super->spriteSettings.draw = 0;
    }
    if ((parent->field_0x78.HALF.LO >> super->type) & 1) {
        super->action = 2;
    }
}

void sub_08048B84(GyorgFemaleEyeEntity* this) {
    GetNextFrame(super);
    if (super->frame & 0x80) {
        super->action = 3;
        super->flags |= 0x80;
        super->hitType = 0x1E;
    }
}

void sub_08048BB0(GyorgFemaleEyeEntity* this) {
    Entity* parent = super->parent;
    if (!((parent->field_0x78.HALF.LO >> super->type) & 1)) {
        if (parent->health != 0) {
            super->action = 4;
            super->flags &= ~0x80;
            InitializeAnimation(super, gUnk_080D2030[(super->animationState << 3) + super->type]);
        } else {
            super->action = 1;
            super->flags &= ~0x80;
            super->spriteSettings.draw = 0;
            InitializeAnimation(super, gUnk_080D2010[(super->animationState << 3) + super->type]);
            CreateFx(super, 2, 0x40);
        }
    } else {
        if ((parent->field_0x80.HALF.LO >> super->type) & 1) {
            if (super->animIndex <= 0x13) {
                super->iframes = 0xF4;
                super->hitType = 0x89;
                InitializeAnimation(super, (parent->animationState >> 6) + 0x14);
                SoundReq(0x119);
            }
            GetNextFrame(super);
            if (super->frame & 0x80) {
                super->hitType = 0x1E;
                InitializeAnimation(super, gUnk_080D2010[(super->animationState << 3) + super->type]);
                UpdateAnimationVariableFrames(super, 7);
                parent->field_0x80.HALF.LO &= ~(1 << super->type);
            }
        } else {
            if (parent->field_0x78.HALF.LO == 0xFF) {
                u32 tmp = super->animIndex;
                if (tmp < 0x10 || tmp > 0x13) {
                    InitializeAnimation(super, super->animationState + 0x10);
                    UpdateAnimationVariableFrames(super, Random() & 0x1C);
                }
                GetNextFrame(super);
            }
        }
    }
}

void sub_08048CEC(GyorgFemaleEyeEntity* this) {
    GetNextFrame(super);
    if (super->frame & 0x80) {
        super->action = 1;
        InitializeAnimation(super, gUnk_080D2010[(super->animationState << 3) + super->type]);
    }
}

typedef struct {
    u16 x, y;
} xy;

extern const xy gUnk_080D1F90[];

void sub_08048D20(GyorgFemaleEyeEntity* this) {
    Entity* parent = super->parent;
    const xy* tmp;
    u32 tmp2 = (parent->animationState >> 6);
    if (tmp2 != super->animationState) {
        super->animationState = tmp2;
        tmp = &gUnk_080D1F90[super->type + (tmp2 << 3)];
        super->x.HALF.HI = tmp->x + gRoomControls.roomOriginX;
        super->y.HALF.HI = tmp->y + gRoomControls.roomOriginY;
        InitializeAnimation(super, gUnk_080D2010[super->type + (tmp2 << 3)]);
    }
}

u32 sub_08048D70(Entity* parent) {
    Entity* tmp;
    if (parent->health != 0) {
        return 1;
    }
    tmp = ((GyorgFemaleHeap*)parent->myHeap)->unk_08;
    if (!tmp) {
        tmp = ((GyorgFemaleHeap*)parent->myHeap)->unk_0c;
    }
    if (tmp->health != 0) {
        return 0;
    }
    return 1;
}
