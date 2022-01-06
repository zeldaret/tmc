#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "object.h"

typedef struct {
    u8 b0;
    u8 direction;
} PACKED Struct_0812A074;

extern void sub_0806FBB4(Entity*);
extern u32 sub_080002D4(s32, s32, u32);
extern void sub_08078930(Entity*);

extern void (*const SpiderWeb_Functions[])(Entity*);
extern void (*const SpiderWeb_Actions[])(Entity*);
extern const u8 gUnk_0812A03C[];
extern const Hitbox* const gUnk_0812A04C[];
extern void (*const SpiderWeb_SubActions[])(Entity*);
extern const s8 gUnk_0812A064[];
extern const s8 gUnk_0812A06C[];
extern const Struct_0812A074 gUnk_0812A074[];
extern const u16 gUnk_0812A084[];

void sub_080AA6C0(Entity*);
void sub_080AAAA8(Entity*);
void sub_080AAA68(Entity*);
void sub_080AA9E0(Entity*);

void SpiderWeb(Entity* this) {
    SpiderWeb_Functions[GetNextFunction(this)](this);
}

void SpiderWeb_OnTick(Entity* this) {
    SpiderWeb_Actions[this->action](this);
}

void sub_080AA6C0(Entity* this) {
    Entity* object;

    if (this->bitfield == 0x87) {
        this->action = 3;
        this->actionDelay = 0x5a;
        COLLISION_OFF(this);
        InitAnimationForceUpdate(this, this->type + 0x10);
        object = CreateObject(OBJECT_2A, 3, 0);
        if (object != NULL) {
            object->type2 = 0x5a;
            object->spritePriority.b0 = 3;
            object->spriteOffsetX = gUnk_0812A03C[this->type * 4];
            object->spriteOffsetY = gUnk_0812A03C[this->type * 4 + 1];
            object->parent = this;
        }
        object = CreateObject(OBJECT_2A, 3, 0);
        if (object != NULL) {
            object->type2 = 0x5a;
            object->spritePriority.b0 = 3;
            object->spriteOffsetX = gUnk_0812A03C[this->type * 4 + 2];
            object->spriteOffsetY = gUnk_0812A03C[this->type * 4 + 3];
            object->parent = this;
        }
    } else {
        InitAnimationForceUpdate(this, this->type + 0x10);
        EnqueueSFX(SFX_101);
    }
}

void sub_080AA78C(Entity* this) {
    u32 animationState;

    if (this->subAction == 0) {
        animationState = (gPlayerEntity.animationState >> 1);
        if (animationState != this->type) {
            this->field_0x3a &= 0xfb;
            if ((animationState ^ 2) != this->type) {
                return;
            }
            this->iframes = 0xe2;
            sub_080AA6C0(this);
            return;
        }
        this->subAction = 1;
        InitAnimationForceUpdate(this, animationState + 8);
    }
    if (sub_0806F520(this) != 0) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & 0x10) != 0) {
            this->frame &= 0xef;
            EnqueueSFX(SFX_100);
        }
        if ((this->frame & 0x80) != 0) {
            sub_080AAAA8(this);
        }
    } else {
        if ((this->frame & 1) != 0) {
            sub_080AAAA8(this);
        } else {
            InitAnimationForceUpdate(this, this->type + 0x10);
        }
    }
}

void SpiderWeb_Init(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->field_0x1c = 1;
    this->field_0x16 = 1;
    this->hitbox = (Hitbox*)gUnk_0812A04C[this->type];
    this->cutsceneBeh.HALF.LO = 0;
    InitAnimationForceUpdate(this, this->type);
    sub_080AAA68(this);
}

void SpiderWeb_Action1(Entity* this) {
    if ((this->frame & 0x80) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    sub_080AA9E0(this);
}

void SpiderWeb_Action2(Entity* this) {
    sub_0806FBB4(this);
    SpiderWeb_SubActions[this->subAction - 5](this);
}

void SpiderWeb_SubAction0(Entity* this) {
    u32 tmp;
    u16 x;
    u16 y;
    Entity* entity;

    entity = &gPlayerEntity;

    if (this->cutsceneBeh.HALF.LO == 0) {
        tmp = this->type;
        if (tmp * 2 - entity->animationState == 0) {
            x = gUnk_0812A064[tmp * 2] + this->x.HALF.HI;
            y = gUnk_0812A064[tmp * 2 + 1] + this->y.HALF.HI;
            if (sub_080002D4(x, y, entity->collisionLayer) == 0) {
                entity->x.HALF.HI = x;
                entity->y.HALF.HI = y;
            }
        }
        this->cutsceneBeh.HALF.LO = 1;
        this->field_0xf = 2;
        InitAnimationForceUpdate(this, this->type + 4);
    }
    if ((entity->animationState >> 1 == this->type) && (gPlayerState.framestate == PL_STATE_PULL) &&
        ((gPlayerState.heldObject & 2) != 0) && ((gPlayerEntity.frame & 2) != 0) && ((this->frame & 0x80) == 0)) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & 1) != 0) {
            entity->x.HALF.HI = gUnk_0812A06C[entity->animationState] + entity->x.HALF.HI;
            entity->y.HALF.HI = gUnk_0812A06C[entity->animationState + 1] + entity->y.HALF.HI;
            EnqueueSFX(0x100);
        }
    }
}

void SpiderWeb_SubAction1(Entity* this) {
    this->action = 1;
    this->cutsceneBeh.HALF.LO = 0;
    InitAnimationForceUpdate(this, this->type + 0xc);
}

void SpiderWeb_Action3(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        sub_080AAAA8(this);
    }
}

NONMATCH("asm/non_matching/spiderWeb/sub_080AA9E0.inc", void sub_080AA9E0(Entity* this)) {
    s32 coord1, coord2, diff;
    Struct_0812A074* ptr;
    SpritePriority* priorityPtr;
    SpritePriority prio;
    u8 val1, val2;
    if (this->type & 0x1) {
        coord2 = gPlayerEntity.x.HALF.HI;
        coord1 = this->x.HALF.HI;
    } else {
        coord2 = gPlayerEntity.y.HALF.HI;
        coord1 = this->y.HALF.HI;
    }

    diff = coord2 - coord1;
    ptr = (Struct_0812A074*)gUnk_0812A074 + (this->type << 1);
    switch (this->type) {
        case 3:
        case 0: {
            if (diff > 4) {
                ptr++;
            }
            break;
        }
        case 1:
        case 2: {
            if (diff < -4) {
                ptr++;
            }
            break;
        }
    }

    val1 = ptr->b0;
    priorityPtr = (SpritePriority*)&this->spritePriority;
    priorityPtr->b0 = val1 & 0x7;
    // instruction order problems
    // this->spritePriority.b0 = ptr->b0 & 0x7;
    this->direction = ptr->direction;
    if (val1 == 5) {
        sub_08078930(this);
    }
}
END_NONMATCH

void sub_080AAA68(Entity* this) {
    SetTile(gUnk_0812A084[this->type], TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
}

void sub_080AAAA8(Entity* this) {
    SetFlag(this->field_0x86.HWORD);
    sub_0807BA8C(TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    DeleteThisEntity();
}

void (*const SpiderWeb_Functions[])(Entity*) = {
    SpiderWeb_OnTick, sub_080AA6C0, DeleteEntity, DeleteEntity, DeleteEntity, sub_080AA78C,
};
void (*const SpiderWeb_Actions[])(Entity*) = {
    SpiderWeb_Init,
    SpiderWeb_Action1,
    SpiderWeb_Action2,
    SpiderWeb_Action3,
};
const u8 gUnk_0812A03C[] = {
    248, 252, 6, 1, 4, 245, 253, 3, 249, 253, 6, 4, 252, 245, 3, 3,
};
extern const Hitbox gUnk_080FD41C;
extern const Hitbox gUnk_080FD424;
extern const Hitbox gUnk_080FD42C;
extern const Hitbox gUnk_080FD434;
const Hitbox* const gUnk_0812A04C[] = {
    &gUnk_080FD41C,
    &gUnk_080FD424,
    &gUnk_080FD42C,
    &gUnk_080FD434,
};
void (*const SpiderWeb_SubActions[])(Entity*) = {
    SpiderWeb_SubAction0,
    SpiderWeb_SubAction1,
};
const s8 gUnk_0812A064[] = { 0, 17, -15, 4, 0, -11, 15, 4 };
const s8 gUnk_0812A06C[] = { 0, 2, -2, 0, 0, -2, 2, 0 };
const Struct_0812A074 gUnk_0812A074[] = { { 4, 0 },  { 5, 16 }, { 3, 8 },  { 5, 24 },
                                          { 3, 16 }, { 5, 0 },  { 3, 24 }, { 5, 8 } };
const u16 gUnk_0812A084[] = { 16419, 16421, 16422, 16420 };
