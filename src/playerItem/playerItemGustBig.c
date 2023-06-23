#include "asm.h"
#include "entity.h"
#include "functions.h"
#include "player.h"
#include "sound.h"
#include "tiles.h"

extern void sub_08078CD0(Entity*);
extern void sub_08018FA0(Entity*);
extern void sub_08018CBC(Entity*);
extern void sub_08018DE8(Entity*);
extern void sub_08018E68(Entity*);
extern void sub_08018F6C(Entity*);

extern const u8 gUnk_08003E44[];

void PlayerItemGustBig(Entity* this) {
    static void (*const gUnk_080B3DD0[])(Entity*) = {
        sub_08018CBC,
        sub_08018DE8,
        sub_08018E68,
        sub_08018F6C,
    };
    if (this->health) {
        this->iframes = 0;
        gUnk_080B3DD0[this->action](this);
    } else {
        DeleteThisEntity();
    }
}

static const u8 gUnk_080B3DE0[] = { 0x10, 0x2, 0x20, 0x3, 0x40, 0x6, 0, 0 };
static const Hitbox gUnk_080B3E18;
static const Hitbox gUnk_080B3E20;
static const Hitbox gUnk_080B3E28;
static const Hitbox* const gUnk_080B3DE8[] = {
    &gUnk_080B3E18,
    &gUnk_080B3E20,
    &gUnk_080B3E28,
};
static const KeyValuePair gUnk_080B3DF4[] = {
    { 0x75, 0x1 },  { 0x76, 0x1 },  { 0x3ac, 0x1 }, { 0x4050, 0x1 },
    { 0x377, 0x1 }, { 0x378, 0x1 }, { 0x71, 0x1 },  { 0x72, 0x1 },
};
static const u16 gUnk_080B3DF4End = 0;

static const Hitbox gUnk_080B3E18 = { 0, 0, { 6, 3, 3, 6 }, 6, 6 };
static const Hitbox gUnk_080B3E20 = { 0, 0, { 6, 3, 3, 6 }, 8, 8 };
static const Hitbox gUnk_080B3E28 = { 0, 0, { 6, 3, 3, 6 }, 12, 12 };

void sub_08018CBC(Entity* this) {
    u32 PVar1;
    u8 uVar2;
    Entity* pEVar3;

    *(u32*)&this->cutsceneBeh = this->x.WORD = gPlayerEntity.x.WORD;
    *(u32*)&this->field_0x80 = this->y.WORD = gPlayerEntity.y.WORD;
    uVar2 = this->animationState = gPlayerEntity.animationState & 0xe;
    this->direction = (u8)(uVar2 << 2);
    this->speed = 0x400;
    this->hitType = 0x96;
    this->collisionFlags = (gPlayerEntity.collisionFlags + 1) | 0x80;
    this->flags2 = gPlayerEntity.flags2;
    pEVar3 = this->child;
    if (pEVar3 != NULL) {
        this->action = 1;
        COLLISION_OFF(this);
        this->timer = 86;
        this->hurtType = 0x1c;
        this->damage = 6;
        this->hitbox = (Hitbox*)&gUnk_080B3E18;
        this->child->spriteOffsetX = 0;
        this->child->spriteSettings.draw = 0;
    } else {
        if (gPlayerState.field_0x1c == 0) {
            DeleteThisEntity();
        }
        this->action = 2;
        this->spriteSettings.draw = 1;
        this->spriteIndex = 0xa6;
        this->palette.raw = 0x33;
        this->spriteVramOffset = 0;
        this->type = gPlayerState.gustJarSpeed - 1;
        this->timer = gUnk_080B3DE0[this->type * 2];
        this->damage = gUnk_080B3DE0[this->type * 2 + 1];
        this->hurtType = 0x1b;
        this->hitbox = (Hitbox*)gUnk_080B3DE8[this->type];
        (u32*)gPlayerEntity.field_0x70.WORD = this;
        sub_08078CD0(&gPlayerEntity);
        (u32*)gPlayerEntity.field_0x70.WORD = pEVar3;
        InitializeAnimation(this, this->type + 10);
        sub_08018FA0(this);
    }
    sub_0801766C(this);
}

void sub_08018DE8(Entity* this) {
    u8 bVar1;

    bVar1 = this->child->gustJarState & 4;
    if (bVar1 == 0) {
        gPlayerState.field_0x1c = bVar1;
        DeleteThisEntity();
    }
    switch (gPlayerState.field_0x1c) {
        case 0:
            sub_08018F6C(this);
            break;
        case 5:
            this->child->subAction = 4;
            COLLISION_ON(this);
            this->action = 2;
            this->spritePriority.b0 = 2;
            this->child->spriteSettings.draw = 1;
            sub_08018FA0(this);
            break;
    }
    sub_08078CD0(&gPlayerEntity);
}

void sub_08018E68(Entity* this) {
    s32 y;
    s32 x;
    if (this->child == NULL) {
        GetNextFrame(this);
        sub_08008790(this, 5);
    } else {
        if ((this->child->gustJarState & 4) == 0) {
            DeleteThisEntity();
        }
        if ((this->contactFlags & 0x80) != 0) {
            sub_08018F6C(this);
            return;
        }
    }
    if (this->timer-- != 0) {
        LinearMoveUpdate(this);

        switch (this->direction) {
            case DirectionNorth:
                x = 0;
                y = -4;
                break;
            case DirectionSouth:
                x = 0;
                y = 4;
                break;
            case DirectionWest:
                x = -4;
                y = 0;
                break;
            case DirectionEast:
                x = 4;
                y = 0;
                break;
        }
        if (this->child != NULL) {
            this->child->direction = this->direction;
            CopyPosition(this, this->child);
        }
        if (this->type2 == 0) {
            sub_0800451C(this);
        }
        if (FindValueForKey(sub_080B1A0C(this, x, y), gUnk_080B3DF4) != 0) {
            return;
        }
        if (GetVvvRelativeToEntity(this, x, y) == VVV_116) {
            return;
        }
        if (sub_080040D8(this, (u8*)gUnk_08003E44, this->x.HALF.HI + x, this->y.HALF.HI + y) == 0) {
            return;
        }
    }

    if (this->child == NULL) {
        InitializeAnimation(this, this->type + 0xd);
    }
    this->action++;
    sub_08018F6C(this);
}

void sub_08018F6C(Entity* this) {
    if (this->child != NULL) {
        this->child->subAction = 5;
        this->child->spriteSettings.draw = 1;
    } else {
        GetNextFrame(this);
        if (this->frame == 0) {
            return;
        }
    }
    DeleteThisEntity();
}

void sub_08018FA0(Entity* this) {
    this->collisionLayer = gPlayerEntity.collisionLayer;
    if (this->collisionLayer == 0x02) {
        this->type2 = 0x01;
    }
    SoundReq(this->type + SFX_EA);
}
