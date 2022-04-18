#include "manager.h"
#include "sound.h"
#include "script.h"

typedef struct {
    u16 waitTime;
    u16 sound;
} Manager36_unk;

// Repeatedly plays the same sound with a fixed wait time
void Manager36_Main(Manager* manager) {
    static const Manager36_unk gUnk_08108DA8[] = {
        { 0x10, SFX_ELEMENT_INFUSE }, { 0x20, SFX_1C8 }, { 0x20, SFX_1C8 }, { 0x40, SFX_1A9 }, { 0x20, SFX_21F }
    };
    const Manager36_unk* unk = &gUnk_08108DA8[manager->unk_0a];
    if (manager->action == 0) {
        manager->action += 1;
        manager->unk_0e = 0;
    }
    if (manager->unk_0e == 0) {
        manager->unk_0e = unk->waitTime;
        SoundReq(unk->sound);
    } else {
        manager->unk_0e -= 1;
    }
}

void CreateManager36(Entity* entity, ScriptExecutionContext* context) {
    Manager* manager = GetEmptyManager();
    if (manager != NULL) {
        manager->type = 9;
        manager->subtype = 0x36;
        manager->unk_0a = context->intVariable;
        AppendEntityToList((Entity*)manager, 6);
        SetDefaultPriority((Entity*)manager, PRIO_PLAYER_EVENT);
    }
}

void DeleteManager36(Entity* entity, ScriptExecutionContext* context) {
    Entity* manager = FindEntity(MANAGER, 0x36, 6, context->intVariable, 0);
    if (manager != NULL) {
        DeleteEntityAny(manager);
    }
}
