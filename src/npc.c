#include "global.h"
#include "entity.h"
#include "room.h"
#include "npc.h"

extern u32 gUnk_020342F8;

extern void InitNPC(Entity*);

void NPCUpdate(Entity* this) {
    u32 health = this->health;
    u32 temp;
    if ((health & 0x7f) && !ReadBit(&gUnk_020342F8, health - 1))
        DeleteThisEntity();
    if (this->action == 0 && (this->flags & ENT_DID_INIT) == 0)
        NPCInit(this);
    if (!EntityDisabled(this))
        gNPCFunctions[this->id][0](this);
    if (this->next != NULL) {
        if (gNPCFunctions[this->id][1] != NULL)
            gNPCFunctions[this->id][1](this);

        if (this->health % 0x80) { // If this NPC was created by DelayedEntityLoadManager_Main, we need to update the
                                   // location in gNPCData.
            NPCStruct* npc = gNPCData;
            npc += (this->health - 1);
            npc->x = this->x.HALF.HI - gRoomControls.origin_x;
            npc->y = this->y.HALF.HI - gRoomControls.origin_y;
        }
        DrawEntity(this);
    }
}
