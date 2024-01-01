/**
 * @file spark.c
 * @ingroup Enemies
 *
 * @brief Spark enemy
 */
#include "collision.h"
#include "enemy.h"
#include "object.h"

extern void (*const Spark_Functions[])(Entity*);
extern void (*const gUnk_080CD24C[])(Entity*);

void Spark(Entity* this) {
    Spark_Functions[GetNextFunction(this)](this);
}

void Spark_OnTick(Entity* this) {
    gUnk_080CD24C[this->action](this);
}

void Spark_OnCollision(Entity* this) {
    Entity* entity;

    if (this->contactFlags & CONTACT_NOW) {
        if ((this->contactFlags & 0x7f) == 0x14) {
            COLLISION_OFF(this);
            this->iframes = 0;
            this->spriteSettings.draw = 0;
            this->action = 2;
            entity = CreateFx(this, FX_DEATH, 0);
            if (entity != NULL) {
                this->child = entity;
                this->timer = 14;
                CopyPosition(this, entity);
            }
        }
    }
}

void Spark_OnGrabbed(Entity* this) {
}

void sub_0802B33C(Entity* this) {
    sub_0804A720(this);
    this->action = 1;
    this->direction = this->type2;
    this->subtimer = 120;
    InitializeAnimation(this, 0);
}

void sub_0802B35C(Entity* this) {
    bool32 is_head;

    GetNextFrame(this);
    ProcessMovement0(this);
    is_head = this->type == 0;
    if (this->collisions == COL_NONE) {
        if (--this->subtimer == 0) {
            this->subtimer = 120;

            this->direction += is_head ? DirectionEast : DirectionWest;
            this->direction = DirectionRound(this->direction);
        }
    } else {
        this->subtimer = 120;
        switch (DirectionRound(this->direction)) {
            case DirectionNorth:
                if ((this->collisions & COL_NORTH_ANY) != COL_NONE) {
                    this->direction = is_head ? DirectionWest : DirectionEast;
                } else {
                    if (((this->collisions & COL_EAST_ANY) == COL_EAST_NORTH) && is_head) {
                        this->direction = DirectionEast;
                    }
                    if (((this->collisions & COL_WEST_ANY) == COL_WEST_NORTH) && !is_head) {
                        this->direction = DirectionWest;
                    }
                }
                break;
            case DirectionSouth:
                if ((this->collisions & COL_SOUTH_ANY) != COL_NONE) {
                    this->direction = is_head ? DirectionEast : DirectionWest;
                } else {
                    if (((this->collisions & COL_EAST_ANY) == COL_EAST_SOUTH) && !is_head) {
                        this->direction = DirectionEast;
                    }
                    if (((this->collisions & COL_WEST_ANY) == COL_WEST_SOUTH) && is_head) {
                        this->direction = DirectionWest;
                    }
                }
                break;
            case DirectionWest:
                if ((this->collisions & COL_WEST_ANY) != COL_NONE) {
                    this->direction = is_head ? DirectionSouth : DirectionNorth;
                } else {
                    if (((this->collisions & COL_NORTH_ANY) == COL_NORTH_EAST) && is_head) {
                        this->direction = DirectionNorth;
                    }
                    if (((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_EAST) && !is_head) {
                        this->direction = DirectionSouth;
                    }
                }
                break;
            case DirectionEast:
                if ((this->collisions & COL_EAST_ANY) != COL_NONE) {
                    this->direction = is_head ? DirectionNorth : DirectionSouth;
                } else {
                    if (((this->collisions & COL_NORTH_ANY) == COL_NORTH_WEST) && !is_head) {
                        this->direction = DirectionNorth;
                    }
                    if (((this->collisions & COL_SOUTH_ANY) == COL_SOUTH_WEST) && is_head) {
                        this->direction = DirectionSouth;
                    }
                }
                break;
        }
    }
}

void sub_0802B4A8(Entity* this) {
    if (--this->timer == 0) {
        Entity* entity = CreateObjectWithParent(this, GROUND_ITEM, 0x60, 0);
        if (entity != NULL) {
            entity->y.HALF.HI -= 4;
        }
        DeleteEntity(this);
    }
}

// clang-format off
void (*const Spark_Functions[])(Entity*) = {
    Spark_OnTick,
    Spark_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    Spark_OnGrabbed,
};

void (*const gUnk_080CD24C[])(Entity*) = {
    sub_0802B33C,
    sub_0802B35C,
    sub_0802B4A8,
};
// clang-format on
