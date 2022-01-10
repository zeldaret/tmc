#define NENT_DEPRECATED
#include "global.h"
#include "room.h"
#include "asm.h"
#include "functions.h"
#include "enemy/gyorg.h"

void sub_08048684(GyorgChildEntity*);
void sub_0804869C(GyorgChildEntity*);
void sub_080486AC(GyorgChildEntity*);

void (*const gUnk_080D1E6C[])(GyorgChildEntity*) = {
    sub_08048684,
    sub_0804869C,
    (void (*)(GyorgChildEntity*))sub_08001324,
    (void (*)(GyorgChildEntity*))sub_0804A7D4,
    (void (*)(GyorgChildEntity*))sub_08001242,
    sub_080486AC,
};

void GyorgChild(Entity* this) {
    if (gRoomTransition.field_0x39 == 0) {
        this->flags &= ~0x80;
        this->health = 0;
        this->collisionLayer = 2;
    }
    gUnk_080D1E6C[GetNextFunction(this)]((GyorgChildEntity*)this);
}

void sub_080486F4(GyorgChildEntity*);
void sub_0804877C(GyorgChildEntity*);
void sub_0804882C(GyorgChildEntity*);
void sub_08048904(GyorgChildEntity*);

void sub_08048684(GyorgChildEntity* this) {
    static void (*const gUnk_080D1E84[])(GyorgChildEntity*) = {
        sub_080486F4,
        sub_0804877C,
        sub_0804882C,
        sub_08048904,
    };
    gUnk_080D1E84[super->action](this);
}

void sub_0804869C(GyorgChildEntity* this) {
    sub_0804AA30(super, gUnk_080D1E6C);
}

void sub_080486D0(GyorgChildEntity*);
void sub_080486D8(GyorgChildEntity*);
void sub_080486E0(GyorgChildEntity*);

void sub_080486AC(GyorgChildEntity* this) {
    static void (*const gUnk_080D1E94[])(GyorgChildEntity*) = {
        sub_080486D0,
        sub_080486D8,
        sub_080486E0,
    };
    if (sub_0806F520()) {
        gUnk_080D1E94[super->subAction](this);
    }
}

void sub_080486D0(GyorgChildEntity* this) {
    super->subAction = 2;
}

void sub_080486D8(GyorgChildEntity* this) {
    sub_0806F4E8(super);
}

void sub_080486E0(GyorgChildEntity* this) {
    if (sub_0806F3E4(super)) {
        sub_0804A7D4(super);
    }
}

void sub_080486F4(GyorgChildEntity* this) {
    static const s8 gUnk_080D1EA0[] = {
        0x50, 0x1,  0x40, 0x1,  0x30, 0x1,  0x20, 0x1,  0x10, 0x1,  0,
        0,    0x10, -0x1, 0x20, -0x1, 0x30, -0x1, 0x40, -0x1, 0x50, -0x1,
    };
    super->field_0x1c = 1;
    super->spriteOrientation.flipY = 3;
    super->spriteRendering.b3 = 3;
    super->spritePriority.b0 = 7;
    super->animationState = super->direction >> 2;
    if (super->type == 0) {
        s32 r;
        InitializeAnimation(super, super->animationState);
        super->action = 1;
        super->flags |= 0x80;
        r = (signed)Random() % 0xB;
        super->direction += r;
        super->direction -= 5;
        super->direction &= 0x1F;
        r *= 2;
        super->actionDelay = gUnk_080D1EA0[r];
        this->unk_7b = gUnk_080D1EA0[r + 1];
        super->speed = 0x200;
    } else {
        super->action = 2;
        super->actionDelay = 1;
        super->spriteSettings.draw = 0;
    }
}

void sub_0804877C(GyorgChildEntity* this) {
    LinearMoveUpdate(super);
    if (super->actionDelay != 0) {
        if ((--super->actionDelay & 0xF) == 0) {
            super->direction += this->unk_7b;
            super->direction &= 0x1F;
        }
    }
    switch (super->animationState >> 1) {
        case 0:
            if (super->y.HALF.HI > gRoomControls.scroll_y - 0x18) {
                return;
            }
            break;
        case 1:
            if (super->x.HALF.HI < gRoomControls.scroll_x + 0x108) {
                return;
            }
            break;
        case 2:
            if (super->y.HALF.HI < gRoomControls.scroll_y + 0xb8) {
                return;
            }
            break;
        default:
            if (super->x.HALF.HI > gRoomControls.scroll_x - 0x18) {
                return;
            }
            break;
    }
    super->action = 2;
    super->actionDelay = 90;
    super->spriteSettings.draw = 0;
}

void sub_0804882C(GyorgChildEntity* this) {
    if (--super->actionDelay == 0) {
        super->action = 3;
        super->flags |= 0x80;
        Random();
        super->spriteSettings.draw = 1;
        super->spritePriority.b0 = 4;
        super->speed = this->unk_78;
        super->collisionLayer = 2;
        UpdateSpriteForCollisionLayer(super);
        super->direction = this->unk_7a;
        super->animationState = super->direction >> 2;
        InitializeAnimation(super, super->animationState);
        switch (super->animationState >> 1) {
            case 0:
            case 2:
                super->x.HALF.HI = gPlayerEntity.x.HALF.HI + this->unk_74;
                super->y.HALF.HI = gRoomControls.scroll_y + this->unk_76;
                break;
            case 1:
            default:
                super->x.HALF.HI = gRoomControls.scroll_x + this->unk_74;
                super->y.HALF.HI = gPlayerEntity.y.HALF.HI + this->unk_76;
                break;
        }
        if (super->type2 == 0) {
            SoundReq(SFX_198);
        }
    }
}

void sub_08048904(GyorgChildEntity* this) {
    LinearMoveUpdate(super);
    GetNextFrame(super);
    switch (super->animationState >> 1) {
        case 0:
            if (super->y.HALF.HI > gRoomControls.scroll_y - 0x28) {
                return;
            }
            break;
        case 1:
            if (super->x.HALF.HI < gRoomControls.scroll_x + 0x118) {
                return;
            }
            break;
        case 2:
            if (super->y.HALF.HI < gRoomControls.scroll_y + 0xc8) {
                return;
            }
            break;
        default:
            if (super->x.HALF.HI > gRoomControls.scroll_x - 0x28) {
                return;
            }
            break;
    }
    DeleteThisEntity();
}
