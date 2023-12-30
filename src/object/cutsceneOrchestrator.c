/**
 * @file cutsceneOrchestrator.c
 * @ingroup Objects
 *
 * @brief Cutscene Orchestrator object
 */
#include "entity.h"
#include "functions.h"
#include "hitbox.h"

void CutsceneOrchestrator(Entity* this) {
    if ((this->flags & ENT_SCRIPTED) != 0) {
        if (this->action == 0) {
            this->action = 1;
            this->hitbox = (Hitbox*)&gHitbox_2;
            InitScriptForNPC(this);
        } else {
            ExecuteScriptAndHandleAnimation(this, NULL);
        }
    } else {
        this->action = 1;
    }
}
