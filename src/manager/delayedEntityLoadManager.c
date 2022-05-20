/**
 * @file delayedEntityLoadManager.c
 * @ingroup Managers
 *
 * @brief Delayed entity loader.
 */
#include "manager/delayedEntityLoadManager.h"
#include "room.h"

ASM_FUNC("asm/non_matching/delayedEntityLoadManager/DelayedEntityLoadManager_Main.inc",
         void DelayedEntityLoadManager_Main())

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
