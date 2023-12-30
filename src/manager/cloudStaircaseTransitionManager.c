/**
 * @file cloudStaircaseTransitionManager.c
 * @ingroup Managers
 *
 * @brief Manages the transition on top of a cloud staircase.
 */
#include "manager/cloudStaircaseTransitionManager.h"
#include "asm.h"
#include "common.h"
#include "functions.h"

void CloudStaircaseTransitionManager_Main(CloudStaircaseTransitionManager* this) {
    if (super->action == 0) {
        super->action = 1;
        this->y = 0;
    }
    if (((CheckPlayerInRegion(this->x, this->y, 0x14, 0x40) != 0) &&
         (((gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y) + gPlayerEntity.base.z.HALF.HI) < 0)) &&
        (gRoomControls.scroll_y == gRoomControls.origin_y)) {
        MemClear(&gRoomTransition.player_status, sizeof(PlayerRoomStatus));
        gRoomTransition.transitioningOut = 1;
        gRoomTransition.type = TRANSITION_DEFAULT;
        gRoomTransition.player_status.spawn_type = PL_SPAWN_PARACHUTE_UP;
        gRoomTransition.player_status.area_next = super->type2;
        gRoomTransition.player_status.room_next = super->timer;
        gRoomTransition.player_status.start_anim = this->field_0x37;
        gRoomTransition.player_status.start_pos_x = this->field_0x3c;
        gRoomTransition.player_status.start_pos_y = this->field_0x3e;
        gRoomTransition.player_status.layer = this->field_0x36;
    }
}
