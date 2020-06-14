#include "global.h"
#include "entityData.h"

void extern CreateEntity(EntityData*);

void LoadRoomEntityList(EntityData* listPtr) {
    if (listPtr != NULL) {
        while (listPtr->entityType != 0xFF) {
            CreateEntity(listPtr++);
        }
    }
}
