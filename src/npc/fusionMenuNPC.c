#include "global.h"
#include "entity.h"
#include "npc.h"

void FusionMenuNPC(Entity* this) {
    if (gNPCFunctions[this->field_0xf][2] != NULL) {
        gNPCFunctions[this->field_0xf][2](this);
    } else {
        DeleteThisEntity();
    }
}

void FusionMenuNPC_Head(Entity* this) {
    if (gNPCFunctions[this->field_0xf][1] != NULL) {
        gNPCFunctions[this->field_0xf][1](this);
    }
}
