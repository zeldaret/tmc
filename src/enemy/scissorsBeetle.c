#define NENT_DEPRECATED
#include "entity.h"
#include "enemy.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x12];
    u8 unk_7a;
    u8 filler2[5];
    u16 unk_80;
    u8 unk_82;
} ScissorsBeetleEntity;

void (*const ScissorsBeetle_Functions[])(Entity*);
void (*const ScissorsBeetle_Actions[])(ScissorsBeetleEntity*);
const u8 gUnk_080CF62C[];
const u8 gUnk_080CF634[];
const u8 gUnk_080CF63C[];

void sub_08038C84(ScissorsBeetleEntity*, u32);
void sub_08038BA8(ScissorsBeetleEntity*);
void sub_08038C2C(ScissorsBeetleEntity*);
void sub_08038B90(ScissorsBeetleEntity*);

void ScissorsBeetle(Entity* this) {
    EnemyFunctionHandler(this, ScissorsBeetle_Functions);
    SetChildOffset(this, 0, 1, -0x10);
}

void sub_080388D4(ScissorsBeetleEntity* this) {
    ScissorsBeetle_Actions[super->action](this);
}

void sub_080388EC(ScissorsBeetleEntity* this) {
    Entity* child;
    if (super->field_0x43) {
        sub_0804A9FC(super, 0x1c);
    }

    sub_0804AA30(super, ScissorsBeetle_Functions);
    if ((super->bitfield & 0x80) && super->action != 4) {
        u32 knockbackDir;
        child = super->child;
        child->iframes = super->iframes;
        knockbackDir = super->knockbackDirection;
        child->knockbackDirection = knockbackDir;
        if (super->field_0x43) {
            COLLISION_OFF(child);
        } else if (super->action == 1) {
            child->direction = Direction8Round(knockbackDir + 0x12);
            child->animationState = Direction8ToAnimationState(child->direction);
            super->direction = DirectionRound(super->knockbackDirection + 0x14);
            super->animationState = Direction8ToAnimationState(super->direction);
            sub_08038C84(this, 0);
            sub_08038C84((ScissorsBeetleEntity*)child, 1);
        }
    }
}

void nullsub_164(ScissorsBeetleEntity* this) {
}

void ScissorsBeetle_Init(ScissorsBeetleEntity* this) {
    Entity* ent = CreateProjectile(MANDIBLES_PROJECTILE);
    if (!ent)
        return;

    sub_0804A720(super);
    super->action = 1;
    super->spriteSettings.draw = 1;
    COLLISION_ON(super);
    super->child = ent;
    super->animationState = Random() & 6;
    this->unk_80 = 0;
    this->unk_7a = 0;
    ent->parent = super;
    ent->type = 0;
    ent->animationState = 0xff;
    ent->collisionLayer = super->collisionLayer;
    sub_08038BA8(this);
}

void sub_080389E8(ScissorsBeetleEntity* this) {
    Entity* child = super->child;
    if (this->unk_80) {
        if (--this->unk_80 == 0) {
            super->speed = 0x80;
        }
    } else if (--super->field_0xf == 0) {
        sub_08038BA8(this);
        sub_08038C2C((ScissorsBeetleEntity*)child);
    } else if (super->actionDelay) {
        super->actionDelay--;
    } else if (super->collisions) {
        ;
        super->actionDelay = 0xc;
        if ((child->animationState & 1) == 0) {
            child->animationState += Random() & 0x20 ? 1 : 7;
            child->animationState &= 7;
        }

        sub_08038BA8(this);
        sub_08038C2C((ScissorsBeetleEntity*)child);
    }

    sub_08038B90(this);
}

void sub_08038A70(ScissorsBeetleEntity* this) {
    Entity* child = super->child;
    if (--this->unk_80 == 0) {
        super->action = 3;
        this->unk_82 = 4;
        super->speed = 0x80;
        super->field_0xf = 0x20;
        child->action = 3;
        ((ScissorsBeetleEntity*)child)->unk_82 = 2;
        child->animationState = 0xff;
        sub_08038C84(this, 0);
        sub_08038C2C((ScissorsBeetleEntity*)child);
        child->field_0xf = 0x20;
        child->parent = NULL;
        child->child = super;
    } else if (--super->field_0xf == 0) {
        u32 dir;
        super->field_0xf = 0x10;
        super->direction = sub_08049F84(super, 0);
        dir = (super->direction + 4) & 0x1c;
        child->animationState = dir >> 2;
        super->animationState = (dir & 0x18) >> 2;
        sub_08038C84(this, 0);
        sub_08038C84((ScissorsBeetleEntity*)child, 1);
    }

    sub_08038B90(this);
}

void sub_08038B08(ScissorsBeetleEntity* this) {
    if (super->field_0xf) {
        super->field_0xf--;
        return;
    }

    UpdateAnimationSingleFrame(super);
    if (super->frame & 0x80) {
        super->action = 4;
        this->unk_82 = 3;
        super->actionDelay = 0x32;
        super->field_0xf = 2;
        super->direction = ((super->animationState << 2) + 0x10) & 0x1f;
        super->speed = 0x80;
        sub_08038C84(this, 0);
        EnqueueSFX(SFX_15B);
    }
}

void sub_08038B64(ScissorsBeetleEntity* this) {
    ProcessMovement(super);
    UpdateAnimationSingleFrame(super);
    if (--super->field_0xf == 0) {
        super->field_0xf = 2;
        super->direction = DirectionNormalize(super->direction + 0x1f);
    }
}

void sub_08038B90(ScissorsBeetleEntity* this) {
    UpdateAnimationSingleFrame(super);
    ProcessMovement(super);
    sub_0800445C(super);
}

void sub_08038BA8(ScissorsBeetleEntity* this) {
    Entity* child;
    u32 r3;
    u32 animationState;
    super->field_0xf = gUnk_080CF62C[Random() & 7];
    this->unk_82 = 1;
    ((ScissorsBeetleEntity*)super->child)->unk_82 = 0;

    if (this->unk_7a == 0) {
        this->unk_7a++;
        super->direction = Direction8FromAnimationState(super->animationState);
        sub_08038C84(this, 0);
        return;
    }

    child = super->child;
    if (child->animationState & 1) {
        if (child->animationState == ((super->animationState + 1) & 7)) {
            r3 = 2;
        } else {
            r3 = 6;
        }

        r3 = (r3 + super->animationState) & 6;
    } else {
        r3 = child->animationState;
    }

    if (r3 != super->animationState) {
        super->animationState = r3;
        super->direction = Direction8FromAnimationState(r3);
        sub_08038C84(this, 0);
    }
}

void sub_08038C2C(ScissorsBeetleEntity* this) {
    u32 parentAnimState;
    super->field_0xf = gUnk_080CF634[Random() & 7];
    parentAnimState = super->parent->animationState;
    if (super->animationState == 0xff) {
        super->animationState = parentAnimState;
        sub_08038C84(this, 1);
        return;
    }

    parentAnimState = (gUnk_080CF63C[Random() & 7] + parentAnimState) & 7;
    if (parentAnimState != super->animationState) {
        super->animationState = parentAnimState;
        sub_08038C84(this, 1);
    }
}

void sub_08038C84(ScissorsBeetleEntity* this, u32 arg2) {
    u32 animationState = super->animationState | (this->unk_82 << 3);
    if (arg2 == 0) {
        animationState >>= 1;
    }

    InitAnimationForceUpdate(super, animationState);
}

void (*const ScissorsBeetle_Functions[])(Entity*) = {
    (EntityActionPtr)sub_080388D4, (EntityActionPtr)sub_080388EC, sub_08001324, sub_0804A7D4, sub_08001242,
    (EntityActionPtr)nullsub_164,
};

void (*const ScissorsBeetle_Actions[])(ScissorsBeetleEntity*) = {
    ScissorsBeetle_Init, sub_080389E8, sub_08038A70, sub_08038B08, sub_08038B64,
};

const u8 gUnk_080CF62C[] = { 0x2d, 0x5a, 0x3c, 0x2d, 0x5a, 0x4b, 0x3c, 0x5a };
const u8 gUnk_080CF634[] = { 0x18, 0x24, 0x34, 0x20, 0x3c, 0x1c, 0x2c, 0x28 };
const u8 gUnk_080CF63C[] = { 1, 0, 7, 1, 0, 7, 0, 0 };