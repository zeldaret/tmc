/**
 * @file winder.c
 * @ingroup Projectiles
 *
 * @brief Winder Projectile
 */
#include "projectile/winder.h"
#include "asm.h"
#include "collision.h"
#include "common.h"
#include "entity.h"
#include "functions.h"
#include "projectile.h"

extern s16 gUnk_080B4488[];

typedef enum {
    /* 0 */ WINDER_TYPE_HEAD,
    /* 4 */ WINDER_TYPE_TAIL = 4,
} WinderType;

void Winder_Init(WinderEntity* this);
void Winder_Move(WinderEntity* this);

void Winder_SetPositions(WinderEntity*);
bool32 Winder_CheckForRailings(WinderEntity* this, u32 dir);

void Winder(Entity* thisx) {
    static void (*const Winder_Actions[])(WinderEntity*) = {
        Winder_Init,
        Winder_Move,
    };
    WinderEntity* this = (WinderEntity*)thisx;

    Winder_Actions[super->action](this);
    Winder_SetPositions(this);
}

void Winder_Init(WinderEntity* this) {
    Entity* nextSegment;
    u16* posPtr;
    s32 i;

    super->action++;
    super->speed = 0x140;
    super->z.WORD = 0;
    if (super->type == 0) {
        super->direction = Random() & 0x18;
        super->parent = super;
    }
    InitializeAnimation(super, 0);
    if (super->type < WINDER_TYPE_TAIL) {
        nextSegment = CreateProjectile(WINDER);
        nextSegment->type = super->type + 1;
        nextSegment->parent = super->parent;
        nextSegment->child = super;
        CopyPosition(super, nextSegment);
    }

    posPtr = this->positions;
    for (i = 0; i < WINDER_NUM_SEGMENTS; i++) {
        *posPtr++ = super->x.HALF.HI;
        *posPtr++ = super->y.HALF.HI;
    }
}

void Winder_Move(WinderEntity* this) {
    static const u8 nextDirections[][2] = {
        { DirectionEast, DirectionWest },
        { DirectionNorth, DirectionSouth },
        { DirectionEast, DirectionWest },
        { DirectionNorth, DirectionSouth },
    };
    static const u16 collisionChecks[] = { COL_NORTH_ANY, COL_EAST_ANY, COL_SOUTH_ANY, COL_WEST_ANY };

    if (super->type == WINDER_TYPE_HEAD) {
        u8 dir;

        ProcessMovement0(super);

        dir = super->direction >> 3;
        if ((collisionChecks[dir] & super->collisions) || Winder_CheckForRailings(this, super->direction)) {
            super->direction = nextDirections[dir][Random() & 0x1];
        }
    } else {
        WinderEntity* child;

        if (super->parent == NULL) {
            DeleteThisEntity();
        }

        if (super->parent->next == NULL) {
            DeleteThisEntity();
        }

        child = (WinderEntity*)super->child;
        if ((child != NULL) && (child->base.next != NULL)) {
            super->x.HALF.HI = child->positions[0];
            super->y.HALF.HI = child->positions[1];
        } else {
            DeleteThisEntity();
        }
    }

    GetNextFrame(super);
}

void Winder_SetPositions(WinderEntity* this) {
    //! @bug Undefined behaviour for source and destination to overlap in a memcpy. In this case it is okay because the
    //! copy will always be sequential, incremental and in chunks of <= 4 bytes, so it will copy the contents of
    //! positions[0] and positions[1] to positions[2] and positions[3], then that of positions[2] and positions[3] to
    //! positions[4] and positions[5], and so on. A safer way to do this would be a manual loop as in Winder_Move.
    MemCopy(&this->positions[2], &this->positions[0], sizeof(u16) * (ARRAY_COUNT(this->positions) - 2));

    this->positions[2 * (WINDER_NUM_SEGMENTS - 1)] = super->x.HALF.HI;
    this->positions[2 * (WINDER_NUM_SEGMENTS - 1) + 1] = super->y.HALF.HI;
}

bool32 Winder_CheckForRailings(WinderEntity* this, u32 dir) {
    u32 tilePos;
    u32 val;
    MapLayer* mapLayer = GetLayerByIndex(super->collisionLayer);
    u32 collisionData;

    tilePos = TILE(super->x.HALF.HI, super->y.HALF.HI);
    tilePos += gUnk_080B4488[dir >> 3];
    collisionData = mapLayer->collisionData[tilePos];

    if (collisionData <= 0x1F) {
        return FALSE;
    }

    if (collisionData > 0x3F) {
        return FALSE;
    }

    return TRUE;
}
