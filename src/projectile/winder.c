#define NENT_DEPRECATED
#include "entity.h"
#include "asm.h"
#include "functions.h"
#include "common.h"
#include "projectile.h"
#include "projectile/winder.h"

// #define WINDER_NUM_SEGMENTS 8

extern s16 gUnk_080B4488[];

// typedef struct {
//     Entity base;
//     u16 positions[2 * WINDER_NUM_SEGMENTS];
// } WinderEntity;

typedef enum {
    /* 0 */ WINDER_TYPE_HEAD,
    /* 4 */ WINDER_TYPE_4 = 4,
} WinderType;

void Winder_Init(WinderEntity* this);
void sub_080AB950(WinderEntity* this);

void Winder_SetPositions(WinderEntity*);
bool32 sub_080AB9FC(WinderEntity* this, u32 dir);

void Winder(Entity* thisx) {
    static void (*const Winder_Actions[])(WinderEntity*) = {
        Winder_Init,
        sub_080AB950,
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
    if (super->type < 4) {
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

void sub_080AB950(WinderEntity* this) {
    static const u8 nextDirections[][2] = {
        { DirectionEast, DirectionWest },
        { DirectionNorth, DirectionSouth },
        { DirectionEast, DirectionWest },
        { DirectionNorth, DirectionSouth },
    };
    static const u16 gUnk_0812A6C4[] = { 0x000E, 0xE000, 0x00E0, 0x0E00 };

    if (super->type == 0) {
        u8 dir;

        ProcessMovement0(super);

        dir = super->direction >> 3;
        if ((gUnk_0812A6C4[dir] & super->collisions) || sub_080AB9FC(this, super->direction)) {
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
    //! positions[4] and positions[5], and so on. A safer way to do this would be a manual loop as in sub_080AB950.
    MemCopy(&this->positions[2], &this->positions[0], sizeof(u16) * (ARRAY_COUNT(this->positions) - 2));

    this->positions[2 * (WINDER_NUM_SEGMENTS - 1)] = super->x.HALF.HI;
    this->positions[2 * (WINDER_NUM_SEGMENTS - 1) + 1] = super->y.HALF.HI;
}

bool32 sub_080AB9FC(WinderEntity* this, u32 dir) {
    u32 val;
    LayerStruct* layer = GetLayerByIndex(super->collisionLayer);
    u32 tmp;

    val = (((super->x.HALF.HI - gRoomControls.origin_x) >> 4) & 0x3F) |
          ((((super->y.HALF.HI - gRoomControls.origin_y) >> 4) & 0x3F) << 6);
    val += gUnk_080B4488[dir >> 3];
    tmp = layer->collisionData[val];

    if (tmp <= 0x1F) {
        return FALSE;
    }

    if (tmp > 0x3F) {
        return FALSE;
    }

    return TRUE;
}
