/**
 * @file emma.c
 * @ingroup NPCs
 *
 * @brief Emma NPC
 */
#include "entity.h"
#include "screenTransitions.h"
#include "room.h"
#include "script.h"

void Emma(Entity* this) {
    if (this->action == 0) {
        this->action++;
        SetEntityPriority(this, PRIO_MESSAGE);
        InitScriptForNPC(this);
    } else {
        ExecuteScriptAndHandleAnimation(this, NULL);
    }
}

void Emma_GoToWestRoom(void) {
    DoExitTransition(&gTransitionInnWestRoom);
}

void Emma_GoToMiddleRoom(void) {
    DoExitTransition(&gTransitionInnMiddleRoom);
}

void Emma_GoToEastRoom(void) {
    DoExitTransition(&gTransitionInnEastRoom);
}
