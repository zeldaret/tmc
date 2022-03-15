#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "sound.h"

typedef struct {
    Entity base;
    u8 filler[0x4];
    u32 unk6c;
    union SplitWord objDir;
    u32 unk74;
    u16 unk78;
    u16 unk7a;
    u16 unk7c;
    s16 unk7e;
} Object79Entity;

void Object79_Init(Object79Entity*);
void Object79_Action1(Object79Entity*);
void Object79_Action2(Object79Entity*);
void sub_08098130(Object79Entity*);

void Object79(Entity* this) {
    static void (*const actionFuncs[])(Object79Entity*) = {
        Object79_Init,
        Object79_Action1,
        Object79_Action2,
    };

    if ((gPlayerState.flags & PL_MINISH) != 0) {
        DeleteThisEntity();
    }

    actionFuncs[this->action]((Object79Entity*)this);
}

void Object79_Init(Object79Entity* this) {
    static const u8 Object79_Directions[] = { DirectionSouthWest, DirectionWest, DirectionNorthWest,
                                              DirectionNorthEast, DirectionEast, DirectionSouthEast };
    super->action++;
    super->speed = 0;
    this->unk6c = 0;
    this->unk7a = 0x1200;
    super->actionDelay = 0;
    super->field_0xf = 30;
    this->objDir.HALF.HI = Object79_Directions[super->type];
    this->unk74 = 0x2000;
    SetDefaultPriority(super, 6);
    if (super->type == 0) {
        this->unk7e = 0x40;
        LoadSwapGFX(super, 1, 0);
        InitAnimationForceUpdate(super, super->type);
    } else {
        Entity* parent;
        super->spriteVramOffset = super->parent->spriteVramOffset;
        parent = super->parent;
        super->frameIndex = super->type * 13 + parent->frameIndex;
    }
    sub_08098130(this);
}

void Object79_Action1(Object79Entity* this) {
    if (super->type == 0) {
        UpdateAnimationSingleFrame(super);
        if (super->type2 != 0) {
            gPlayerEntity.field_0xf = 0;
            super->action++;
            InitAnimationForceUpdate(super, 1);
            SoundReq(SFX_178);
        }
    } else {
        Entity* parent = super->parent;
        super->frameIndex = super->type * 13 + parent->frameIndex;
        super->action = parent->action;
    }
}

void Object79_Action2(Object79Entity* this) {
    if (this->unk6c >= 0x140001) {
        gPlayerState.flags |= PL_MINISH;
        DeleteThisEntity();
    } else {
        if (super->type == 0) {
            UpdateAnimationSingleFrame(super);
            if (--this->unk7e << 16 == -0x10000) {
                this->unk7e = 0x40;
                SoundReq(SFX_178);
            }
        } else {
            Entity* parent = super->parent;
            super->frameIndex = super->type * 13 + parent->frameIndex;
        }
        this->unk6c += 0x1400;
        this->objDir.WORD += this->unk74;
        this->objDir.HALF.HI = DirectionNormalize(this->objDir.HALF.HI);
        this->unk74 += 0x140;
        if (--super->field_0xf == 0xff) {
            super->field_0xf = 30;
            super->actionDelay ^= 1;
        }
        sub_08098130(this);
    }
}

void sub_08098130(Object79Entity* this) {
    CopyPosition(&gPlayerEntity, super);
    super->direction = this->objDir.HALF.HI;
    super->speed = this->unk7a;
    LinearMoveUpdate(super);
    super->y.WORD -= 0x140000;
    super->y.WORD += this->unk6c;
}
