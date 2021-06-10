#include "entity.h"
#include "enemy.h"
#include "audio.h"
#include "functions.h"
#include "object.h"
#include "flags.h"

extern void (*const gUnk_0812A014[])(Entity*);

extern void (*const gUnk_0812A02C[])(Entity*);

extern u8 gUnk_0812A03C[];

void sub_080AA6C0(Entity*);
void sub_080AAAA8(Entity*);

extern Hitbox* gUnk_0812A04C[];
void sub_080AAA68(Entity*);

void sub_080AA9E0(Entity*);

extern void (*const gUnk_0812A05C[])(Entity*);
extern void sub_0806FBB4(Entity*);

extern u16 gUnk_0812A084[];

extern u32 sub_080002D4(s32, s32, u32);
extern s8 gUnk_0812A064[];
extern s8 gUnk_0812A06C[];

void Projectile15(Entity* this) {
    gUnk_0812A014[GetNextFunction(this)](this);
}

void sub_080AA6A8(Entity* this) {
    gUnk_0812A02C[this->action](this);
}

void sub_080AA6C0(Entity* this) {
    Entity* object;

    if (this->bitfield == 0x87) {
        this->action = 3;
        this->actionDelay = 0x5a;
        this->flags &= 0x7f;
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
        if ((this->frames.all & 0x10) != 0) {
            this->frames.all &= 0xef;
            EnqueueSFX(SFX_100);
        }
        if ((this->frames.all & 0x80) != 0) {
            sub_080AAAA8(this);
        }
    } else {
        if ((this->frames.all & 1) != 0) {
            sub_080AAAA8(this);
        } else {
            InitAnimationForceUpdate(this, this->type + 0x10);
        }
    }
}

void sub_080AA834(Entity* this) {
    if (CheckFlags(this->field_0x86.HWORD) != 0) {
        DeleteThisEntity();
    }
    this->action = 1;
    this->field_0x1c = 1;
    this->field_0x16 = 1;
    this->hitbox = gUnk_0812A04C[this->type];
    this->cutsceneBeh.HALF.LO = 0;
    InitAnimationForceUpdate(this, this->type);
    sub_080AAA68(this);
}

void sub_080AA878(Entity* this) {
    if ((this->frames.all & 0x80) == 0) {
        UpdateAnimationSingleFrame(this);
    }
    sub_080AA9E0(this);
}

void sub_080AA898(Entity* this) {
    sub_0806FBB4(this);
    gUnk_0812A05C[this->subAction - 5](this);
}

void sub_080AA8B8(Entity* this) {
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
    if ((entity->animationState >> 1 == this->type) && (gPlayerState.field_0xa8 == 0x1a) &&
        ((gPlayerState.heldObject & 2) != 0) && ((gPlayerEntity.frames.all & 2) != 0) &&
        ((this->frames.all & 0x80) == 0)) {
        UpdateAnimationSingleFrame(this);
        if ((this->frames.all & 1) != 0) {
            entity->x.HALF.HI = gUnk_0812A06C[entity->animationState] + entity->x.HALF.HI;
            entity->y.HALF.HI = gUnk_0812A06C[entity->animationState + 1] + entity->y.HALF.HI;
            EnqueueSFX(0x100);
        }
    }
}

void sub_080AA9AC(Entity* this) {
    this->action = 1;
    this->cutsceneBeh.HALF.LO = 0;
    InitAnimationForceUpdate(this, this->type + 0xc);
}

void sub_080AA9C4(Entity* this) {
    GetNextFrame(this);
    if (--this->actionDelay == 0) {
        sub_080AAAA8(this);
    }
}

ASM_FUNC("asm/non_matching/projectile15/sub_080AA9E0.inc", void sub_080AA9E0(Entity* this))

void sub_080AAA68(Entity* this) {
    SetTile(gUnk_0812A084[this->type], TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
}

void sub_080AAAA8(Entity* this) {
    SetFlag(this->field_0x86.HWORD);
    sub_0807BA8C(TILE(this->x.HALF.HI, this->y.HALF.HI), this->collisionLayer);
    DeleteThisEntity();
}
