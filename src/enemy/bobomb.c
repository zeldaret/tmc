#include "asm.h"
#include "sound.h"
#include "enemy.h"
#include "object.h"
#include "functions.h"

extern void sub_08078930(Entity*);
extern void sub_08078954(Entity*);

void sub_0802CB68(Entity*);
void sub_0802CBC4(Entity*);
void sub_0802CC18(Entity*);

extern void (*const gUnk_080CD5D4[])(Entity*);
extern void (*const gUnk_080CD5EC[])(Entity*);
extern void (*const gUnk_080CD600[])(Entity*);
extern void (*const gUnk_080CD618[])(Entity*);

void Bobomb(Entity* this) {
    EnemyFunctionHandler(this, gUnk_080CD5D4);
}

void sub_0802C670(Entity* this) {
    gUnk_080CD5EC[this->action](this);
}

void sub_0802C688(Entity* this) {
    if (this->bitfield & 0x80) {
        switch (this->bitfield & 0x7f) {
            case 0:
            case 1:
                if (this->field_0x82.HALF.LO) {
                    this->knockbackDuration = 0;
                    gPlayerEntity.knockbackDuration = 4;
                }
                return;
            case 0xe:
            case 0x14:
            case 0x15:
            case 0x16:
                this->action = 3;
                this->knockbackDuration = 0;
                sub_0802CBC4(this);
                return;
        }
        this->field_0x82.HALF.LO++;
        this->field_0x80.HALF.LO = 28;
        switch (this->field_0x82.HALF.LO) {
            case 1:
                sub_0802CB68(this);
                EnqueueSFX(0x14d);
                break;
            case 2:
                this->action = 3;
                this->hitType = 0x6e;
                this->field_0xf = 1;
                this->zVelocity = 0x18000;
                this->speed = 0;
                this->field_0x80.HALF.HI = 1;
                InitializeAnimation(this, this->direction >> 4 | 6);
                break;
        }
    }
    sub_0804AA30(this, gUnk_080CD5D4);
}

void sub_0802C7AC(Entity* this) {
    if (this->subAction < 3 && !sub_0806F520(this)) {
        this->subAction = 0;
        this->field_0xf = 1;
        this->z.HALF.HI = 0;
        if (this->field_0x82.HALF.LO != 2) {
            this->speed = this->field_0x82.HALF.LO ? 0x200 : 0x80;
        }
        this->zVelocity = 0x18000;
        this->field_0x82.HALF.HI = 0;
        this->field_0x80.HALF.HI = 0;
    } else {
        this->z.HALF.HI = -1;
        gUnk_080CD600[this->subAction](this);
        if (this->actionDelay != 0) {
            GetNextFrame(this);
        }
    }
}

void sub_0802C820(Entity* this) {
    this->subAction = 1;
    this->field_0x1d = 60;
}

void sub_0802C82C(Entity* this) {
    sub_0806F4E8(this);
}

void sub_0802C834(Entity* this) {
    sub_0806F3E4(this);
}

void sub_0802C83C(Entity* this) {
    if (this->field_0x82.HALF.LO) {
        if (--this->actionDelay == 0) {
            this->action = 3;
            switch (gPlayerEntity.animationState & 6) {
                case 2:
                    this->x.HALF.HI -= 6;
                    break;
                case 6:
                    this->x.HALF.HI += 6;
                    break;
            }
            sub_0802CBC4(this);
        } else {
            sub_0802CC18(this);
            COLLISION_OFF(this);
            this->hitType = 0x6e;
        }
    } else {
        this->field_0x82.HALF.LO = 2;
        this->actionDelay = 120;
        InitializeAnimation(this, (this->direction >> 4) | 6);
        COLLISION_OFF(this);
        this->hitType = 0x6e;
    }
}

void nullsub_149(Entity* this) {
    /* ... */
}

void sub_0802C8B8(Entity* this) {
    this->action = 3;
    sub_0802CBC4(this);
}

void sub_0802C8C4(Entity* this) {
    sub_0804A7D4(this);
    this->spriteSettings.draw = 0;
}

void sub_0802C8D8(Entity* this) {
    this->action = 1;
    this->actionDelay = 0x3c;
    this->field_0xf = 0;
    this->direction = (Random() & 0x18) | 4;
    this->field_0x16 = 0;
    this->field_0x1c = 0x12;
    this->field_0x82.HALF.LO = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.LO = 0;
    this->field_0x80.HALF.HI = 0;
    InitializeAnimation(this, this->direction >> 4);
}

void sub_0802C91C(Entity* this) {
    GetNextFrame(this);
    ProcessMovement(this);
    if (this->field_0x82.HALF.LO) {
        if (this->collisions) {
            sub_0800417E(this, this->collisions);
            InitializeAnimation(this, (this->direction >> 4) | 2);
        }
        if (--this->actionDelay == 0) {
            sub_0802CBC4(this);
        } else {
            if ((this->actionDelay & 0xf) == 8) {
                CreateDustSmall(this);
            }
            sub_0802CC18(this);
        }
    } else {
        if (this->collisions) {
            sub_0800417E(this, this->collisions);
            InitializeAnimation(this, this->direction >> 4);
        }
        if (--this->actionDelay == 0) {
            this->actionDelay = 60;
            this->direction = (this->direction + 8) & 0x1c;
            InitializeAnimation(this, this->direction >> 4);
        }
    }
}

void sub_0802C9B8(Entity* this) {
    gUnk_080CD618[this->subAction](this);
}

void sub_0802C9D0(Entity* this) {
    this->subAction = 1;
    COLLISION_OFF(this);
    this->spritePriority.b1 = 0;
    this->field_0x82.HALF.HI = 1;
    sub_0802CC18(this);
    InitializeAnimation(this, (this->direction >> 4) | 6);
    GetNextFrame(this);
}

void sub_0802CA10(Entity* this) {
    if (gPlayerState.heldObject != 5) {
        if (--this->actionDelay == 0) {
            sub_0802CBC4(this);
        } else {
            sub_0802CC18(this);
            GetNextFrame(this);
        }
    } else {
        this->field_0x82.HALF.HI = 2;
        this->direction = (((gPlayerEntity.animationState) << 2) | 4) & 0x1c;
        sub_0802CC18(this);
        GetNextFrame(this);
    }
}

void sub_0802CA6C(Entity* this) {
    if (--this->actionDelay == 0) {
        sub_0802CBC4(this);
    } else {
        sub_0802CC18(this);
        GetNextFrame(this);
    }
}

void sub_0802CA94(Entity* this) {
    this->action = 3;
    COLLISION_OFF(this);
    this->field_0xf = 1;
    this->spritePriority.b1 = 1;
    this->zVelocity = 0x18000;
    this->speed = 0;
    this->field_0x82.HALF.HI = 0;
    this->field_0x80.HALF.HI = 0;
    this->direction = ((gPlayerEntity.animationState << 2) | 4) & 0x1c;
    InitializeAnimation(this, (this->direction >> 4) | 6);
}

void sub_0802CAF8(Entity* this) {
    if (--this->actionDelay == 0) {
        sub_0802CBC4(this);
    } else {
        if (this->field_0x80.HALF.HI && sub_080044EC(this, 0x2800) == 1) {
            EnqueueSFX(0x104);
        }
        sub_0802CC18(this);
        sub_08078930(this);
        if (this->field_0xf && this->z.HALF.HI == 0) {
            this->field_0xf = 0;
            COLLISION_ON(this);
            this->hitType = 0x6e;
        }
        GetNextFrame(this);
    }
}

void nullsub_150(Entity* this) {
    /* ... */
}

void sub_0802CB68(Entity* this) {
    this->action = 1;
    this->subAction = 0;
    this->direction = Random() & 0x18;
    this->direction |= 4;
    COLLISION_ON(this);
    if (this->field_0x82.HALF.LO) {
        this->actionDelay = 200;
        this->speed = 0x200;
        InitializeAnimation(this, (this->direction >> 4) | 2);
    } else {
        this->actionDelay = 0x3c;
        this->speed = 0x80;
        InitializeAnimation(this, this->direction >> 4);
    }
}

void sub_0802CBC4(Entity* this) {
    Entity* ent;

    this->action = 4;
    this->spriteSettings.draw = 0;
    COLLISION_OFF(this);
    this->health = 0;
    if (this->field_0x82.HALF.HI) {
        sub_08079184();
    }
    sub_08078954(this);

    ent = CreateObjectWithParent(this, OBJECT_20, 0, 0);
    if (ent) {
        ent->collisionLayer = this->collisionLayer;
    }
}

void sub_0802CC18(Entity* this) {
    if (--this->field_0x80.HALF.LO == 0) {
        this->field_0x80.HALF.LO = 28;
        EnqueueSFX(0x14d);
    }
}

// clang-format off
void (*const gUnk_080CD5D4[])(Entity*) = {
    sub_0802C670,
    sub_0802C688,
    sub_08001324,
    sub_0802C8C4,
    sub_08001242,
    sub_0802C7AC,
};

void (*const gUnk_080CD5EC[])(Entity*) = {
    sub_0802C8D8,
    sub_0802C91C,
    sub_0802C9B8,
    sub_0802CAF8,
    nullsub_150,
};

void (*const gUnk_080CD600[])(Entity*) = {
    sub_0802C820,
    sub_0802C82C,
    sub_0802C834,
    sub_0802C83C,
    nullsub_149,
    sub_0802C8B8,
};

void (*const gUnk_080CD618[])(Entity*) = {
    sub_0802C9D0,
    sub_0802CA10,
    sub_0802CA6C,
    sub_0802CA94,
};
// clang-format on
