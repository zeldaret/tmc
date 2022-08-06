#include "entity.h"
#include "enemy.h"
#include "functions.h"
#include "object.h"
#include "hitbox.h"

typedef struct {
    u8 b0;
    u8 direction;
} PACKED Struct_0812A074;

void SpiderWeb_OnTick(Entity*);
void sub_080AA6C0(Entity*);
void sub_080AAAA8(Entity*);
void sub_080AAA68(Entity*);
void sub_080AA9E0(Entity*);
void sub_080AA78C(Entity*);
void SpiderWeb_Init(Entity*);
void SpiderWeb_Action1(Entity*);
void SpiderWeb_Action2(Entity*);
void SpiderWeb_Action3(Entity*);
void SpiderWeb_SubAction0(Entity*);
void SpiderWeb_SubAction1(Entity*);

void SpiderWeb(Entity* this) {
    static void (*const SpiderWeb_Functions[])(Entity*) = {
        SpiderWeb_OnTick, sub_080AA6C0, DeleteEntity, DeleteEntity, DeleteEntity, sub_080AA78C,
    };
    SpiderWeb_Functions[GetNextFunction(this)](this);
}

void SpiderWeb_OnTick(Entity* this) {
    static void (*const SpiderWeb_Actions[])(Entity*) = {
        SpiderWeb_Init,
        SpiderWeb_Action1,
        SpiderWeb_Action2,
        SpiderWeb_Action3,
    };
    SpiderWeb_Actions[this->action](this);
}

void sub_080AA6C0(Entity* this) {
    static const s8 typeSpritOffsets[] = {
        -8, -4, 6, 1, 4, -11, -3, 3, -7, -3, 6, 4, -4, -11, 3, 3,
    };
    Entity* object;

    if (this->contactFlags == 0x87) {
        this->action = 3;
        this->timer = 90;
        COLLISION_OFF(this);
        InitAnimationForceUpdate(this, this->type + 0x10);
        object = CreateObject(FLAME, 3, 0);
        if (object != NULL) {
            object->type2 = 0x5a;
            object->spritePriority.b0 = 3;
            object->spriteOffsetX = typeSpritOffsets[this->type * 4];
            object->spriteOffsetY = typeSpritOffsets[this->type * 4 + 1];
            object->parent = this;
        }
        object = CreateObject(FLAME, 3, 0);
        if (object != NULL) {
            object->type2 = 0x5a;
            object->spritePriority.b0 = 3;
            object->spriteOffsetX = typeSpritOffsets[this->type * 4 + 2];
            object->spriteOffsetY = typeSpritOffsets[this->type * 4 + 3];
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
            this->gustJarState &= ~4;
            if (AnimationStateFlip90(animationState) != this->type) {
                return;
            }
            this->iframes = 0xe2;
            sub_080AA6C0(this);
            return;
        }
        this->subAction = 1;
        InitAnimationForceUpdate(this, animationState + 8);
    }
    if (sub_0806F520(this)) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & 0x10) != 0) {
            this->frame &= ~0x10;
            EnqueueSFX(SFX_100);
        }
        if ((this->frame & ANIM_DONE) != 0) {
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
    static const Hitbox* const typeHitboxes[] = {
        &gUnk_080FD41C,
        &gUnk_080FD424,
        &gUnk_080FD42C,
        &gUnk_080FD434,
    };
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->gustJarFlags = 1;
    this->carryFlags = 1;
    this->hitbox = (Hitbox*)typeHitboxes[this->type];
    this->cutsceneBeh.HALF.LO = 0;
    InitAnimationForceUpdate(this, this->type);
    sub_080AAA68(this);
}

void SpiderWeb_Action1(Entity* this) {
    if ((this->frame & ANIM_DONE) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    sub_080AA9E0(this);
}

void SpiderWeb_Action2(Entity* this) {
    static void (*const SpiderWeb_SubActions[])(Entity*) = {
        SpiderWeb_SubAction0,
        SpiderWeb_SubAction1,
    };
    sub_0806FBB4(this);
    SpiderWeb_SubActions[this->subAction - 5](this);
}

void SpiderWeb_SubAction0(Entity* this) {
    static const s8 gUnk_0812A064[] = { 0, 17, -15, 4, 0, -11, 15, 4 };
    static const s8 gUnk_0812A06C[] = { 0, 2, -2, 0, 0, -2, 2, 0 };

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
            if (sub_080B1B18(x, y, entity->collisionLayer) == 0) {
                entity->x.HALF.HI = x;
                entity->y.HALF.HI = y;
            }
        }
        this->cutsceneBeh.HALF.LO = 1;
        this->subtimer = 2;
        InitAnimationForceUpdate(this, this->type + 4);
    }
    if ((entity->animationState >> 1 == this->type) && (gPlayerState.framestate == PL_STATE_PULL) &&
        ((gPlayerState.heldObject & 2) != 0) && ((gPlayerEntity.frame & 2) != 0) && ((this->frame & ANIM_DONE) == 0)) {
        UpdateAnimationSingleFrame(this);
        if ((this->frame & 1) != 0) {
            entity->x.HALF.HI = gUnk_0812A06C[entity->animationState] + entity->x.HALF.HI;
            entity->y.HALF.HI = gUnk_0812A06C[entity->animationState + 1] + entity->y.HALF.HI;
            EnqueueSFX(SFX_100);
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
    if (--this->timer == 0) {
        sub_080AAAA8(this);
    }
}

void sub_080AA9E0(Entity* this) {
    static const Struct_0812A074 gUnk_0812A074[] = { { 4, 0 },  { 5, 16 }, { 3, 8 },  { 5, 24 },
                                                     { 3, 16 }, { 5, 0 },  { 3, 24 }, { 5, 8 } };
    s32 diff;
    const Struct_0812A074* ptr;

    diff =
        (this->type & 0x1) ? (gPlayerEntity.x.HALF.HI - this->x.HALF.HI) : (gPlayerEntity.y.HALF.HI - this->y.HALF.HI);
    ptr = gUnk_0812A074 + (this->type << 1);
    switch (this->type) {
        case 0:
        case 3: {
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

    this->spritePriority.b0 = ptr->b0;
    this->direction = ptr->direction;
    if (ptr->b0 == 5) {
        RegisterCarryEntity(this);
    }
}

void sub_080AAA68(Entity* this) {
    static const u16 typeTiles[] = { 16419, 16421, 16422, 16420 };
    SetTile(typeTiles[this->type], TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
}

void sub_080AAAA8(Entity* this) {
    SetFlag(this->field_0x86.HWORD);
    RestorePrevTileEntity(TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    DeleteThisEntity();
}
