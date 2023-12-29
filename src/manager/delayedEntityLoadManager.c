/**
 * @file delayedEntityLoadManager.c
 * @ingroup Managers
 *
 * @brief Delayed entity loader.
 */
#include "manager/delayedEntityLoadManager.h"
#include "room.h"
#include "npc.h"
#include "area.h"
#include "asm.h"

typedef struct {
    Manager base;
    u8 unk_20;
    u8 spawnedCount; /**< Count of entities spawned by this manager */
} DelayedEntityLoadManager;

extern u8 gUnk_020342F8[];

void DelayedEntityLoadManager_Main(DelayedEntityLoadManager* this) {
    NPCStruct* properties;
    NPCStruct* npcPtr;
    NPCStruct* npcPtr2;
    Entity* entity;
    u32 index1;
    u32 index2;
    u32 tmp;
    u32 progressMask;
    u8* bitfield;
    ScriptExecutionContext* context;

    properties = GetCurrentRoomProperty(super->type);
    if (properties == NULL) {
        DeleteThisEntity();
    }
    if (super->action == 0) {
        super->action++;
        this->unk_20 = gArea.filler[1];
        SetEntityPriority((Entity*)this, 6);
        npcPtr = gNPCData;
        npcPtr += (super->type2 + this->unk_20);
        index1 = 0;
        while (properties->id != 0xff) {
            *npcPtr = *properties;
            index1++;
            properties++;
            npcPtr++;
        }
        npcPtr->id = 0xff;
        this->spawnedCount = index1;
    }
    npcPtr2 = gNPCData;
    npcPtr2 = &npcPtr2[(super->type2 + this->unk_20)];
    progressMask = 1 << gSave.global_progress;
    bitfield = &gUnk_020342F8[(this->unk_20 + 7) / 8];
    index2 = super->type2;
    while (npcPtr2->id != 0xff) {
        if (!CheckRectOnScreen(npcPtr2->x, npcPtr2->y, 0x18, 0x20)) {
            ClearBit(bitfield, index2);
        } else if ((npcPtr2->progressBitfield & progressMask) && gEntCount < 0x47 && !WriteBit(bitfield, index2) &&
                   (npcPtr2->script == NULL || (context = CreateScriptExecutionContext(), context != NULL))) {
            if (super->timer == 0) {
                entity = CreateNPC(npcPtr2->id, npcPtr2->type, npcPtr2->type2);
            } else {
                entity = CreateObject(npcPtr2->id, npcPtr2->type, npcPtr2->type2);
            }
            tmp = this->unk_20 + 1;
            entity->health = index2 + tmp;
            entity->timer = npcPtr2->timer;
            entity->x.HALF.HI = npcPtr2->x + gRoomControls.origin_x;
            entity->y.HALF.HI = npcPtr2->y + gRoomControls.origin_y;
            entity->collisionLayer = npcPtr2->collisionLayer;
            if (npcPtr2->script != NULL) {
                InitScriptForEntity(entity, context, npcPtr2->script);
            }
        }
        npcPtr2++;
        index2++;
    }
}

u32 sub_0805ACC0(Entity* param_1) {
    u16* ptr;
    Entity* entity;
    Entity* list;
    s32 tmp;

    if (param_1->health == 0) {
        return 0;
    }
    tmp = (param_1->health & 0x7f) - 1;
    list = (Entity*)(gEntityLists + 6);

    for (entity = gEntityLists[6].first; entity != list; entity = entity->next) {
        if ((entity->kind == 9 && entity->id == 0x16) && entity->type2 <= tmp &&
            (entity->type2 + *(u8*)((u32)&entity->zVelocity + 1)) > tmp) {

            ptr = (u16*)GetCurrentRoomProperty(entity->type);
            if (ptr != NULL) {
                ptr += (tmp - entity->type2) * 8;
                return (((ptr[2] + gRoomControls.origin_x) * 0x10000) | ptr[3]) + gRoomControls.origin_y;
            }
        }
    }
    return 0;
}
