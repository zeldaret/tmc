#define NENT_DEPRECATED
#include "entity.h"
#include "player.h"
#include "functions.h"
#include "asm.h"
#include "object.h"

enum {
    GUST_INIT,
    GUST_UPDATE,
};

typedef struct {
    Entity base;
    u32 filler68[2];
    u32 timer;
    u32 offset_iter;
    u32 unk78;
} GustEntity;
typedef void(GustActionFunc)(GustEntity*);

static GustActionFunc PlayerItemGust_Init;
static GustActionFunc PlayerItemGust_Update;

static void sub_080ACC78(GustEntity*);
/*static*/ bool32 sub_080ACDB0(GustEntity*);
static void sub_080ACECC(GustEntity*);

typedef struct {
    u16 bits;
    u8 type2;
    u8 timer;
    u8 _4;
    u8 type;
    u16 tileID;
} Obj11;

Obj11* sub_08008782(Entity*, u32, u32, u32);

extern const s8* const sOffsets[];
extern const s8 gUnk_0812AABC[];
extern const Hitbox* const sHitboxes[];
extern const u8 gUnk_0812AAE8[];

// specifically, the little gusts that come out while the item is active
// type 0: stays close to jar?
// type 1: causes the particles to move away from the jar
// type 2: same as 1?
// type 3: horizontal spread
void PlayerItemGust(Entity* this) {
    static GustActionFunc* const sActions[] = {
        PlayerItemGust_Init,
        PlayerItemGust_Update,
    };

    if ((gPlayerState.field_0x1c & 0x7f) != 1) {
        DeleteThisEntity();
    }
    sActions[this->action]((GustEntity*)this);
    this->iframes = 0;
}

static void PlayerItemGust_Init(GustEntity* this) {
    super->action = GUST_UPDATE;
    super->flags2 = gPlayerEntity.flags2;
    super->direction = super->animationState << 2;
    super->speed = 0x200;
    super->flags |= ENT_COLLIDE | ENT_PERSIST;
    super->collisionFlags = 2;
    super->hitbox = (Hitbox*)sHitboxes[super->type];
    this->timer = 16;
    sub_080ACDB0(this);
    sub_0801766C(super);
}

static void PlayerItemGust_Update(GustEntity* this) {
    if (sub_080ACDB0(this) == FALSE) {
        sub_080ACC78(this);
        sub_080ACECC(this);
    }
}

static void sub_080ACC78(GustEntity* this) {
    s32 width;
    Obj11* o;
    Entity* child;
    s32 offset;
    const s8* child_offsets;

    // this is what makes types 1 and 2 different?
    if ((super->type + gRoomTransition.frameCount) & 1) {
        child_offsets = sOffsets[super->type];
        if (child_offsets[this->offset_iter] == 0) {
            this->offset_iter = 0;
        }
        o = sub_08008782(super, 0xe, child_offsets[this->offset_iter], child_offsets[this->offset_iter + 1]);
        if (o != NULL) {
            child = CreateObject(OBJECT_11, o->type, o->type2);
            if (child != NULL) {
                child->timer = o->timer;
                child->x.HALF.HI = child_offsets[this->offset_iter] + super->x.HALF.HI;
                child->y.HALF.HI = child_offsets[this->offset_iter + 1] + super->y.HALF.HI;
            }
        }
        this->offset_iter += 2;
    }

    if (super->child == NULL && (u32)this->timer > 2) {
        this->timer = 1;
    }

    if (this->timer-- != 0) {
        return;
    }
    if (super->child == NULL) {
        this->timer = 2;
    } else {
        this->timer = gUnk_0812AABC[super->type];
    }
    child = CreateObject(OBJECT_17, 0, 0);
    if (child == NULL) {
        return;
    }
    offset = Random() % 16;
    width = super->hitbox->width;
    if (width < offset) {
        offset = width;
    }
    if (offset & 1) {
        offset = -offset;
    }
    switch (super->animationState >> 1) {
        case 0:
            child->y.HALF.HI = super->y.HALF.HI - super->hitbox->height;
            child->x.HALF.HI = super->x.HALF.HI + offset;
            break;
        case 2:
            child->y.HALF.HI = super->y.HALF.HI + super->hitbox->height;
            child->x.HALF.HI = super->x.HALF.HI + offset;
            break;
        case 1:
            child->x.HALF.HI = super->x.HALF.HI + super->hitbox->width;
            child->y.HALF.HI = super->y.HALF.HI + offset;
            break;
        case 3:
            child->x.HALF.HI = super->x.HALF.HI - super->hitbox->width;
            child->y.HALF.HI = super->y.HALF.HI + offset;
            break;
    }
}

/*static*/ ASM_FUNC("asm/non_matching/playerItem10/sub_080ACDB0.inc", bool32 sub_080ACDB0(GustEntity* this))

static void sub_080ACECC(GustEntity* this) {
    Entity* entity;

    if (super->type < 3 && super->child == NULL && (s32)this->unk78 >= 0 && gUnk_0812AAE8[super->type] <= this->unk78) {
        entity = CreatePlayerItem(0x10, super->type + 1, 0, 0);
        if (entity != NULL) {
            entity->parent = super;
            super->child = entity;
            entity->x.HALF.HI = super->x.HALF.HI;
            entity->y.HALF.HI = super->y.HALF.HI;
        }
    }
}

static const s8 sOffsets0[] = {
    -4, -4, 4, -4, -4, 4, 4, 4, 0,
};

static const s8 sOffsets1And2[] = {
    -5, -5, 5, -5, -5, 5, 5, 5, 0,
};

static const s8 sOffsets3[] = {
    -9, -9, 1, -9, 9, -9, -9, 1, 9, 1, -9, 9, 1, 9, 9, 9, 0, 0,
};

static const s8* const sOffsets[] = {
    sOffsets0,
    sOffsets1And2,
    sOffsets1And2,
    sOffsets3,
};

static const s8 gUnk_0812AABC[] = {
    120,
    80,
    40,
    4,
};

static const Hitbox sHitbox0 = {
    0, 0, 4, 2, 2, 4, 4, 4,
};

static const Hitbox sHitbox1And2 = {
    0, 0, 4, 3, 3, 4, 9, 9,
};

static const Hitbox sHitbox3 = {
    0, 0, 8, 7, 7, 8, 14, 14,
};

static const Hitbox* const sHitboxes[] = {
    &sHitbox0,
    &sHitbox1And2,
    &sHitbox1And2,
    &sHitbox3,
};

static const u8 gUnk_0812AAE8[] = {
    0,
    12,
    16,
    16,
};
