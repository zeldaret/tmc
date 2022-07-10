#include "global.h"
#include "entity.h"
#include "room.h"
#include "npc.h"

extern u32 gUnk_020342F8;
typedef struct {
    u16 unk0;
    u16 unk1;
    u16 x;
    u16 y;
} NPCStruct;
extern NPCStruct gNPCData[100];

extern void InitNPC(Entity*);

// NONMATCH("asm/non_matching/arm_proxy/NPCUpdate.inc", void NPCUpdate(Entity* this)) {
//     if ((this->health & 0x7f) && !ReadBit(&gUnk_020342F8, this->health - 1))
//         DeleteThisEntity();
//     if (this->action == 0 && (this->flags & ENT_DID_INIT) == 0)
//         InitNPC(this);
//     if (!EntityIsDeleted(this))
//         gNPCFunctions[this->id][0](this);
//     if (this->next != NULL) {
//         if (gNPCFunctions[this->id][1] != NULL)
//             gNPCFunctions[this->id][1](this);
//         if ((this->health & 0x7f) != 0) {
//             u32 temp = this->health & 0x7f;
//             gNPCData[temp * 2 - 2].x = this->x.HALF.HI - gRoomControls.origin_x;
//             gNPCData[temp * 2 - 2].y = this->y.HALF.HI - gRoomControls.origin_y;
//         }
//         DrawEntity(this);
//     }
// }
// END_NONMATCH

void NPCUpdate(Entity* this) {
    u32 health = this->health;
    u32 temp;
    if ((health & 0x7f) && !ReadBit(&gUnk_020342F8, health - 1))
        DeleteThisEntity();
    if (this->action == 0 && (this->flags & ENT_DID_INIT) == 0)
        NPCInit(this);
    if (!EntityIsDeleted(this))
        gNPCFunctions[this->id][0](this);
    if (this->next != NULL) {
        if (gNPCFunctions[this->id][1] != NULL)
            gNPCFunctions[this->id][1](this);

        if (this->health % 0x80) {
            NPCStruct* npc = gNPCData;
            npc += (this->health * 2 - 2);
            npc->x = this->x.HALF.HI - gRoomControls.origin_x;
            npc->y = this->y.HALF.HI - gRoomControls.origin_y;
        }
        DrawEntity(this);
    }
}
