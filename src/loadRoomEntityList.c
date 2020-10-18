#include "global.h"
#include "room.h"

void extern LoadRoomEntity(EntityData*);

void LoadRoomEntityList(EntityData* listPtr) {
    if (listPtr != NULL) {
        while (*(u8*)listPtr != 0xFF) {
            LoadRoomEntity(listPtr++);
        }
    }
}
