/**
 * @file bladeTrap.c
 * @ingroup Enemies
 *
 * @brief Blade Trap enemy
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "object.h"
#include "room.h"
#include "sound.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u16 unk_74;
} BladeTrapEntity;

void BladeTrap(BladeTrapEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->child = GetCurrentRoomProperty(super->type);
        UpdateRailMovement(super, (u16**)&super->child, &this->unk_74);
    }
    if (!(super->direction & 0x80)) {
        LinearMoveUpdate(super);
    }

    if (!(--this->unk_74)) {
        if (!(super->direction & 0x80)) {
            EnqueueSFX(SFX_METAL_CLINK);
        }
        UpdateRailMovement(super, (u16**)&super->child, &this->unk_74);
    }
}
