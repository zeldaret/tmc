/**
 * @file doorMimic.c
 * @ingroup Enemies
 *
 * @brief Door Mimic enemy
 */
#include "enemy.h"
#include "functions.h"
#include "sound.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[16];
    /*0x78*/ u16 unk_78;
    /*0x7a*/ u16 unk_7a;
    /*0x7c*/ u16 unk_7c;
    /*0x7e*/ u16 unk_7e;
} DoorMimicEntity;

void sub_080221C0(DoorMimicEntity*);

typedef struct {
    s8 h;
    s8 v;
} PACKED PosOffset;

extern void (*const DoorMimic_Functions[])(DoorMimicEntity*);
extern void (*const gUnk_080CB74C[])(DoorMimicEntity*);

extern const s8 gUnk_080CB764[];
extern const PosOffset gUnk_080CB76C[4][6];
extern const u16 gUnk_080CB79C[];
extern const Hitbox* const* const gUnk_080CB8A4[];

extern s16 gUnk_080B4488[];

void DoorMimic(DoorMimicEntity* this) {
    DoorMimic_Functions[GetNextFunction(super)](this);
    super->hitbox = (Hitbox*)gUnk_080CB8A4[super->type2][super->frameIndex];
}

void DoorMimic_OnTick(DoorMimicEntity* this) {
    gUnk_080CB74C[super->action](this);
}

void DoorMimic_OnCollision(DoorMimicEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, DoorMimic_Functions);
}

void DoorMimic_OnDeath(DoorMimicEntity* this) {
    SetTile(this->unk_7c, this->unk_7e, super->collisionLayer);
    CreateFx(super, FX_POT_SHATTER, 0);
    EnemyDisableRespawn(super);
    DeleteThisEntity();
}

void sub_08022034(DoorMimicEntity* this) {
    super->action = 1;
    super->type2 = super->type & 3;
    super->spritePriority.b0 = 5;
    this->unk_78 = gUnk_080CB764[super->type2 * 2 + 0] + super->x.HALF.HI;
    this->unk_7a = gUnk_080CB764[super->type2 * 2 + 1] + super->y.HALF.HI;
    InitializeAnimation(super, super->type2);
    sub_080221C0(this);
}

void sub_0802209C(DoorMimicEntity* this) {
    if (super->timer == 0) {
        if (CheckPlayerProximity(this->unk_78, this->unk_7a, 0x10, 0x10)) {
            super->action = 2;
            super->timer = 18;
            InitializeAnimation(super, super->type2 + 4);
        }
    } else {
        super->timer--;
    }
}

void sub_080220D8(DoorMimicEntity* this) {
    if (--super->timer == 0)
        super->action = 3;
}

void sub_080220F0(DoorMimicEntity* this) {
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        const PosOffset* off;
        u32 i;

        super->action = 4;
        super->timer = 120;
        super->damage = 0;
        off = gUnk_080CB76C[super->type2];
        for (i = 0; i < 6; i++, off++) {
            Entity* fx = CreateFx(super, FX_DASH, 0);
            if (fx) {
                fx->x.HALF.HI += off->h;
                fx->y.HALF.HI += off->v;
            }
        }
        EnqueueSFX(SFX_PLACE_OBJ);
    } else if (super->frame & 1) {
        super->damage = 4;
    }
}

void sub_08022174(DoorMimicEntity* this) {
    sub_0800445C(super);
    if (--super->timer == 0) {
        super->action = 5;
        InitializeAnimation(super, super->type2 + 8);
    }
}

void sub_08022198(DoorMimicEntity* this) {
    sub_0800445C(super);
    GetNextFrame(super);
    if (super->frame & ANIM_DONE) {
        super->action = 1;
        super->timer = 90;
    }
}

void sub_080221C0(DoorMimicEntity* this) {
    u32 tilePos = COORD_TO_TILE(super) + gUnk_080B4488[super->type2];
    this->unk_7e = tilePos;
    this->unk_7c = GetTileIndex(tilePos, super->collisionLayer);
    SetTile(gUnk_080CB79C[super->type2], tilePos, super->collisionLayer);
}

// clang-format off
void (*const DoorMimic_Functions[])(DoorMimicEntity*) = {
    DoorMimic_OnTick,
    DoorMimic_OnCollision,
    (void (*)(DoorMimicEntity*))GenericKnockback,
    DoorMimic_OnDeath,
    (void (*)(DoorMimicEntity*))GenericConfused,
    DoorMimic_OnTick,
};

void (*const gUnk_080CB74C[])(DoorMimicEntity*) = {
    sub_08022034,
    sub_0802209C,
    sub_080220D8,
    sub_080220F0,
    sub_08022174,
    sub_08022198,
};

const s8 gUnk_080CB764[] = {
    -0x08,  0x00,
    -0x10, -0x08,
    -0x08, -0x10,
     0x00, -0x08,
};

const PosOffset gUnk_080CB76C[][6] = {
    {
        {-0x04,  0x1a},
        { 0x04,  0x1a},
        {-0x0c,  0x10},
        { 0x0c,  0x10},
        {-0x0c,  0x08},
        { 0x0c,  0x08},
    },
    {
        {-0x1a, -0x04},
        {-0x1a,  0x04},
        {-0x10, -0x0c},
        {-0x10,  0x0c},
        {-0x08, -0x0c},
        {-0x08,  0x0c},
    },
    {
        {-0x04, -0x1a},
        { 0x04, -0x1a},
        {-0x0c, -0x10},
        { 0x0c, -0x10},
        {-0x0c, -0x08},
        { 0x0c, -0x08},
    },
    {
        { 0x1a, -0x04},
        { 0x1a,  0x04},
        { 0x10, -0x0c},
        { 0x10,  0x0c},
        { 0x08, -0x0c},
        { 0x08,  0x0c},
    },
};

const u16 gUnk_080CB79C[] = {
    SPECIAL_TILE_35,
    SPECIAL_TILE_37,
    SPECIAL_TILE_38,
    SPECIAL_TILE_36,
};


const Hitbox gUnk_080CB7A4 = { 0x00, -9, 0x00, 0x00, 0x00, 0x00, 0x08, 0x06 };
const Hitbox gUnk_080CB7AC = { 0x00, -5, 0x00, 0x00, 0x00, 0x00, 0x06, 0x04 };
const Hitbox gUnk_080CB7B4 = { 0x00, -1, 0x00, 0x00, 0x00, 0x00, 0x06, 0x04 };
const Hitbox gUnk_080CB7BC = { 0x00, 0x07, 0x00, 0x00, 0x00, 0x00, 0x06, 0x08 };
const Hitbox gUnk_080CB7C4 = { 0x00, 0x0b, 0x00, 0x00, 0x00, 0x00, 0x08, 0x0c };
const Hitbox gUnk_080CB7CC = { 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08 };
const Hitbox gUnk_080CB7D4 = { 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x04 };
const Hitbox gUnk_080CB7DC = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x04 };
const Hitbox gUnk_080CB7E4 = { 0x00, -8, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08 };
const Hitbox gUnk_080CB7EC = { 0x00, -12, 0x00, 0x00, 0x00, 0x00, 0x08, 0x0c };

const Hitbox *const gUnk_080CB7F4[] = {
    &gUnk_080CB7A4,
    &gUnk_080CB7AC,
    &gUnk_080CB7B4,
    &gUnk_080CB7BC,
    &gUnk_080CB7C4,
    &gUnk_080CB7C4,
    &gUnk_080CB7CC,
    &gUnk_080CB7D4,
    &gUnk_080CB7DC,
    &gUnk_080CB7E4,
    &gUnk_080CB7EC,
    &gUnk_080CB7EC,
};

const Hitbox gUnk_080CB824 = { 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08 };
const Hitbox gUnk_080CB82C = { 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x08 };
const Hitbox gUnk_080CB834 = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x08 };
const Hitbox gUnk_080CB83C = { -8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08 };
const Hitbox gUnk_080CB844 = { -12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x08 };
const Hitbox gUnk_080CB84C = { -8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08 };
const Hitbox gUnk_080CB854 = { -4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x08 };
const Hitbox gUnk_080CB85C = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x08 };
const Hitbox gUnk_080CB864 = { 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x08 };
const Hitbox gUnk_080CB86C = { 0x0c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x08 };

const Hitbox *const gUnk_080CB874[] = {
    &gUnk_080CB84C,
    &gUnk_080CB854,
    &gUnk_080CB85C,
    &gUnk_080CB864,
    &gUnk_080CB86C,
    &gUnk_080CB86C,
    &gUnk_080CB824,
    &gUnk_080CB82C,
    &gUnk_080CB834,
    &gUnk_080CB83C,
    &gUnk_080CB844,
    &gUnk_080CB844,
};

const Hitbox *const *const gUnk_080CB8A4[] = {
    gUnk_080CB7F4,
    gUnk_080CB874,
    gUnk_080CB7F4,
    gUnk_080CB874,
};
// clang-format on
