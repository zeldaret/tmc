/**
 * @file moblinLady.c
 * @ingroup NPCs
 *
 * @brief Moblin Lady NPC
 */
#include "entity.h"
#include "npc.h"

void MoblinLady(Entity* this) {
    if (this->action == 0) {
        this->action++;
        InitScriptForNPC(this);
    } else {
        ExecuteScriptAndHandleAnimation(this, NULL);
    }
}
