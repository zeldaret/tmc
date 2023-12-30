/**
 * @file pressurePlate.c
 * @ingroup Objects
 *
 * @brief Pressure Plate object
 */
#include "collision.h"
#include "functions.h"
#include "hitbox.h"
#include "object.h"

typedef struct {
    Entity base;
    /*0x68*/ union SplitHWord field_0x68;
    /*0x6a*/ union SplitHWord field_0x6a;
    /*0x6c*/ union SplitHWord field_0x6c;
    /*0x6e*/ union SplitHWord field_0x6e;
    /*0x70*/ u16 canToggle;
    /*0x72*/ u8 dir;
    /*0x73*/ u8 filler73[0x86 - 0x73];
    /*0x86*/ u16 flag;
} PressurePlateEntity;

typedef void(PressurePlateAction)(PressurePlateEntity*);

PressurePlateAction PressurePlate_Init;
PressurePlateAction PressurePlate_Action1;
PressurePlateAction PressurePlate_Action2;

static u32 sub_08088938(PressurePlateEntity*);
static u32 get_standing_count(PressurePlateEntity*);

static const u8 sSpriteOffsets[];

void PressurePlate(PressurePlateEntity* this) {
    static PressurePlateAction* const PressurePlate_Actions[] = {
        PressurePlate_Init,
        PressurePlate_Action1,
        PressurePlate_Action2,
    };

    if (super->subtimer) {
        if (--super->subtimer == 0) {
            this->dir = super->animationState;
            InitializeAnimation(super, super->animationState);
        }
    }

    PressurePlate_Actions[super->action](this);
}

void PressurePlate_Init(PressurePlateEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 1;
    super->spritePriority.b0 = 7;
    super->hitbox = (Hitbox*)&gUnk_080FD1D4;
    this->dir = super->animationState;
}

void PressurePlate_Action1(PressurePlateEntity* this) {
    u8 weight = sub_08088938(this) + get_standing_count(this);
    if (super->type + 2 <= weight) {
        super->action = 2;
        super->subtimer = 0;
        super->animationState = 4;
        super->z.HALF.HI = 0;
        InitializeAnimation(super, 4);
        SetFlag(this->flag);
        EnqueueSFX(SFX_PRESSURE_PLATE);
    } else {
        if (weight > super->animationState) {
            if (super->type + 1 == weight) {
                super->subtimer = 4;
                InitializeAnimation(super, weight + 1);
            } else {
                InitializeAnimation(super, weight);
            }
            EnqueueSFX(SFX_BUTTON_PRESS);
        } else if (weight < super->animationState) {
            InitializeAnimation(super, weight);
        }
        super->animationState = weight;
    }
}

void PressurePlate_Action2(PressurePlateEntity* this) {
    if (this->canToggle) {
        u8 weight = sub_08088938(this) + get_standing_count(this);
        if (super->type + 2 > weight) {
            super->action = 1;
            super->animationState = weight;
            ClearFlag(this->flag);
            InitializeAnimation(super, weight);
        }
    }
}

static u32 sub_08088938(PressurePlateEntity* this) {
    u16 x, y;
    s32 num;
    u32 i;

    num = 0;
    x = super->x.HALF.HI - 8;
    y = super->y.HALF.HI - 8;
    for (i = 0; i < 8; ++i) {
        Entity* e = gRoomVars.puzzleEntities[i];
        if (e != NULL) {
            if ((u16)(e->x.HALF.HI - x) < 0x11 && ((u16)(e->y.HALF_U.HI - y) < 0x11)) {
                e->spriteOffsetY = sSpriteOffsets[this->dir];
                num++;
            }
        }
    }
    return num;
}

static u32 get_standing_count(PressurePlateEntity* this) {
    u32 num;

    num = 0;
    if (IsCollidingPlayer(super) != 0) {
        gPlayerEntity.base.spriteOffsetY = sSpriteOffsets[this->dir];
        num = 1;
    }
    if ((gPlayerState.flags & PL_CLONING) != 0) {
        if (IsColliding(super, gPlayerClones[0]) != 0) {
            gPlayerClones[0]->spriteOffsetY = sSpriteOffsets[this->dir];
            num++;
        }
        if (IsColliding(super, gPlayerClones[1]) != 0) {
            gPlayerClones[1]->spriteOffsetY = sSpriteOffsets[this->dir];
            num++;
        }
        if (IsColliding(super, gPlayerClones[2]) != 0) {
            gPlayerClones[2]->spriteOffsetY = sSpriteOffsets[this->dir];
            num++;
        }
    }
    return num;
}

static const u8 sSpriteOffsets[] = {
    -4, -3, -2, -1, 0,
};

static const Frame gSpriteAnimations_PressurePlate_0 = {
    .index = 0,
    .duration = 0xFF,
    .frameSettings = { .b = { .endOfAnimation = 1 } },
};

static const Frame gSpriteAnimations_PressurePlate_1 = {
    .index = 1,
    .duration = 0xFF,
    .frameSettings = { .b = { .endOfAnimation = 1 } },
};

static const Frame gSpriteAnimations_PressurePlate_2 = {
    .index = 2,
    .duration = 0xFF,
    .frameSettings = { .b = { .endOfAnimation = 1 } },
};

static const Frame gSpriteAnimations_PressurePlate_3 = {
    .index = 3,
    .duration = 0xFF,
    .frameSettings = { .b = { .endOfAnimation = 1 } },
};

static const Frame gSpriteAnimations_PressurePlate_4 = {
    .index = 4,
    .duration = 0xFF,
    .frameSettings = { .b = { .endOfAnimation = 1 } },
};

const Frame* const gSpriteAnimations_PressurePlate[] = {
    &gSpriteAnimations_PressurePlate_0, &gSpriteAnimations_PressurePlate_1, &gSpriteAnimations_PressurePlate_2,
    &gSpriteAnimations_PressurePlate_3, &gSpriteAnimations_PressurePlate_4,
};
