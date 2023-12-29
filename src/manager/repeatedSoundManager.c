/**
 * @file repeatedSoundManager.c
 * @ingroup Managers
 *
 * @brief Repeatedly plays the same sound with a fixed wait time.
 */
#include "manager/repeatedSoundManager.h"
#include "script.h"
#include "sound.h"

typedef struct {
    u16 waitTime;
    u16 sound;
} RepeatedSoundManager_unk;

void RepeatedSoundManager_Main(RepeatedSoundManager* this) {
    static const RepeatedSoundManager_unk gUnk_08108DA8[] = {
        { 0x10, SFX_ELEMENT_INFUSE }, { 0x20, SFX_1C8 }, { 0x20, SFX_1C8 }, { 0x40, SFX_1A9 }, { 0x20, SFX_21F }
    };
    const RepeatedSoundManager_unk* unk = &gUnk_08108DA8[super->type];
    if (super->action == 0) {
        super->action++;
        super->timer = 0;
    }
    if (super->timer == 0) {
        super->timer = unk->waitTime;
        SoundReq(unk->sound);
    } else {
        super->timer--;
    }
}

void CreateRepeatedSoundManager(Entity* entity, ScriptExecutionContext* context) {
    Manager* manager = GetEmptyManager();
    if (manager != NULL) {
        manager->kind = MANAGER;
        manager->id = REPEATED_SOUND_MANAGER;
        manager->type = context->intVariable;
        AppendEntityToList((Entity*)manager, 6);
        SetEntityPriority((Entity*)manager, PRIO_PLAYER_EVENT);
    }
}

void DeleteRepeatedSoundManager(Entity* entity, ScriptExecutionContext* context) {
    Entity* manager = FindEntity(MANAGER, REPEATED_SOUND_MANAGER, 6, context->intVariable, 0);
    if (manager != NULL) {
        DeleteEntityAny(manager);
    }
}
