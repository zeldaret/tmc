#include "enemy.h"
#include "entity.h"
#include "functions.h"

extern void (*const gUnk_080CD234[])(Entity*);
extern void (*const gUnk_080CD24C[])(Entity*);

void Spark(Entity* this) {
    gUnk_080CD234[GetNextFunction(this)](this);
}

void sub_0802B2C8(Entity* this) {
    gUnk_080CD24C[this->action](this);
}

void sub_0802B2E0(Entity* this) {
    Entity* ent;

    if (this->bitfield & 0x80) {
        if ((this->bitfield & 0x7f) == 0x14) {
            this->flags &= ~0x80;
            this->hurtBlinkTime = 0;
            this->spriteSettings.b.draw = 0;
            this->action = 2;
            ent = CreateFx(this, 2, 0);
            if (ent) {
                this->attachedEntity = ent;
                this->actionDelay = 14;
                CopyPosition(this, ent);
            }
        }
    }
}

void nullsub_15(Entity* this) {
    /* ... */
}

void sub_0802B33C(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->direction = (this->entityType).parameter;
    this->field_0xf = 0x78;
    InitializeAnimation(this, 0);
}

void sub_0802B35C(Entity* this) {
    bool32 is_head;

    GetNextFrame(this);
    ProcessMovement(this);
    is_head = this->entityType.form == 0;
    if (this->collisions == 0) {
        if (--this->field_0xf == 0) {
            this->field_0xf = 0x78;

            this->direction += is_head ? 0x08 : 0x18;
            this->direction = DirectionRound(this->direction);
        }
    } else {
        this->field_0xf = 0x78;
        switch (DirectionRound(this->direction)) {
            case DirectionNorth:
                if (this->collisions & 0xe) {
                    this->direction = is_head ? DirectionWest : DirectionEast;
                } else {
                    if ((this->collisions & 0xe000) == 0x4000 && is_head) {
                        this->direction = DirectionEast;
                    }
                    if ((this->collisions & 0xe00) == 0x400 && !is_head) {
                        this->direction = DirectionWest;
                    }
                }
                break;
            case DirectionSouth:
                if (this->collisions & 0xe0) {
                    this->direction = is_head ? DirectionEast : DirectionWest;
                } else {
                    if ((this->collisions & 0xe000) == 0x2000 && !is_head) {
                        this->direction = DirectionEast;
                    }
                    if ((this->collisions & 0xe00) == 0x200 && is_head) {
                        this->direction = DirectionWest;
                    }
                }
                break;
            case DirectionWest:
                if (this->collisions & 0xe00) {
                    this->direction = is_head ? DirectionSouth : DirectionNorth;
                } else {
                    if ((this->collisions & 0xe) == 4 && is_head) {
                        this->direction = DirectionNorth;
                    }
                    if ((this->collisions & 0xe0) == 0x40 && !is_head) {
                        this->direction = DirectionSouth;
                    }
                }
                break;
            case DirectionEast:
                if (this->collisions & 0xe000) {
                    this->direction = is_head ? DirectionNorth : DirectionSouth;
                } else {
                    if ((this->collisions & 0xe) == 2 && !is_head) {
                        this->direction = DirectionNorth;
                    }
                    if ((this->collisions & 0xe0) == 0x20 && is_head) {
                        this->direction = DirectionSouth;
                    }
                }
                break;
        }
    }
}

void sub_0802B4A8(Entity* this) {
    if (--this->actionDelay == 0) {
        Entity* ent = CreateObjectWithParent(this, 0, 0x60, 0);
        if (ent) {
            ent->y.HALF.HI -= 4;
        }
        DeleteEntity(this);
    }
}

// clang-format off
void (*const gUnk_080CD234[])(Entity*) = {
    sub_0802B2C8,
    sub_0802B2E0,
    sub_08001324,
    sub_0804A7D4,
    sub_08001242,
    nullsub_15,
};

void (*const gUnk_080CD24C[])(Entity*) = {
    sub_0802B33C,
    sub_0802B35C,
    sub_0802B4A8,
};
// clang-format on
