#include "entity.h"
#include "player.h"
#include "functions.h"
#include "random.h"

extern void (*const gUnk_0812AA80[])(Entity*);

bool32 sub_080ACDB0(Entity*);

void sub_080ACC78(Entity*);
void sub_080ACECC(Entity*);

typedef struct {
    u16 bits;
    u8 type2;
    u8 actionDelay;
    u8 _4;
    u8 type;
    u16 tileID;
} Obj11;

Obj11* sub_08008782(Entity*, u32, u32, u32);

const s8 gUnk_0812AA88[] = {
    -4, -4, 4, -4, -4, 4, 4, 4, 0,
};

const s8 gUnk_0812AA91[] = {
    -5, -5, 5, -5, -5, 5, 5, 5, 0,
};

const s8 gUnk_0812AA9A[] = {
    -9, -9, 1, -9, 9, -9, -9, 1, 9, 1, -9, 9, 1, 9, 9, 9, 0, 0,
};

const s8* const gUnk_0812AAAC[] = {
    gUnk_0812AA88,
    gUnk_0812AA91,
    gUnk_0812AA91,
    gUnk_0812AA9A,
};

const s8 gUnk_0812AABC[] = {
    0x78,
    0x50,
    0x28,
    0x4,
};

const Hitbox gUnk_0812AAC0 = {
    0, 0, 4, 2, 2, 4, 4, 4,
};

const Hitbox gUnk_0812AAC8 = {
    0, 0, 4, 3, 3, 4, 9, 9,
};

const Hitbox gUnk_0812AAD0 = {
    0, 0, 8, 7, 7, 8, 14, 14,
};

const Hitbox* const gUnk_0812AAD8[] = {
    &gUnk_0812AAC0,
    &gUnk_0812AAC8,
    &gUnk_0812AAC8,
    &gUnk_0812AAD0,
};

const u8 gUnk_0812AAE8[] = {
    0,
    12,
    16,
    16,
};

void PlayerItem10(Entity* this) {
    if ((gPlayerState.field_0x1c & 0x7f) != 1) {
        DeleteThisEntity();
    }
    gUnk_0812AA80[this->action](this);
    this->iframes = 0;
}

void sub_080ACC04(Entity* this) {
    this->action = 1;
    this->flags2 = gPlayerEntity.flags2;
    this->direction = this->animationState << 2;
    this->speed = 0x200;
    this->flags |= ENT_COLLIDE | ENT_20;
    this->field_0x3c = 2;
    this->hitbox = (Hitbox*)gUnk_0812AAD8[this->type];
    this->field_0x70.WORD = 0x10;
    sub_080ACDB0(this);
    sub_0801766C(this);
}

void sub_080ACC5C(Entity* this) {
    if (sub_080ACDB0(this) == FALSE) {
        sub_080ACC78(this);
        sub_080ACECC(this);
    }
}

void sub_080ACC78(Entity* this) {
    s32 width;
    Obj11* o;
    Entity* child;
    s32 offset;
    const s8* puVar8;

    if ((this->type + gScreenTransition.frameCount) & 1) {
        puVar8 = gUnk_0812AAAC[this->type];
        if (puVar8[*(u32*)&this->field_0x74] == 0) {
            *(u32*)&this->field_0x74 = 0;
        }
        o = sub_08008782(this, 0xe, puVar8[*(u32*)&this->field_0x74], puVar8[*(u32*)&this->field_0x74 + 1]);
        if (o != NULL) {
            child = CreateObject(0x11, o->type, o->type2);
            if (child != NULL) {
                child->actionDelay = o->actionDelay;
                child->x.HALF.HI = puVar8[*(u32*)&this->field_0x74] + this->x.HALF.HI;
                child->y.HALF.HI = puVar8[*(u32*)&this->field_0x74 + 1] + this->y.HALF.HI;
            }
        }
        *(u32*)&this->field_0x74 += 2;
    }
    if (this->attachedEntity == NULL && (u32)this->field_0x70.WORD > 2) {
        this->field_0x70.WORD = 1;
    }

    if (--this->field_0x70.WORD != -1) {
        return;
    }
    if (this->attachedEntity == NULL) {
        this->field_0x70.WORD = 2;
    } else {
        this->field_0x70.WORD = gUnk_0812AABC[this->type];
    }
    child = CreateObject(0x17, 0, 0);
    if (child == NULL) {
        return;
    }
    offset = Random() % 16;
    width = this->hitbox->width;
    if (width < offset) {
        offset = width;
    }
    if (offset & 1) {
        offset = -offset;
    }
    switch (this->animationState >> 1) {
        case 0:
            child->y.HALF.HI = this->y.HALF.HI - this->hitbox->height;
            child->x.HALF.HI = this->x.HALF.HI + offset;
            break;
        case 2:
            child->y.HALF.HI = this->y.HALF.HI + this->hitbox->height;
            child->x.HALF.HI = this->x.HALF.HI + offset;
            break;
        case 1:
            child->x.HALF.HI = this->x.HALF.HI + this->hitbox->width;
            child->y.HALF.HI = this->y.HALF.HI + offset;
            break;
        case 3:
            child->x.HALF.HI = this->x.HALF.HI - this->hitbox->width;
            child->y.HALF.HI = this->y.HALF.HI + offset;
            break;
    }
}

ASM_FUNC("asm/non_matching/playerItem10/sub_080ACDB0.inc", bool32 sub_080ACDB0(Entity* this))

void sub_080ACECC(Entity* this) {
    Entity* entity;

    if (this->type < 3 && this->attachedEntity == NULL && (s32) * (u32*)&this->field_0x78 >= 0 &&
        gUnk_0812AAE8[this->type] <= *(u32*)&this->field_0x78) {
        entity = CreatePlayerItem(0x10, this->type + 1, 0, 0);
        if (entity != NULL) {
            entity->parent = this;
            this->attachedEntity = entity;
            entity->x.HALF.HI = this->x.HALF.HI;
            entity->y.HALF.HI = this->y.HALF.HI;
        }
    }
}
