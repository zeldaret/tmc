#include "manager.h"
#include "room.h"
#include "functions.h"

typedef struct {
    struct Manager manager;
    u8 field_0x20[0x18];
    s16 field_0x38;
    s16 field_0x3a;
} Manager25;

void Manager25_Main(Manager25* this) {
    if (this->manager.action == 0) {
        this->field_0x38 = TILE(this->field_0x38, this->field_0x3a);
        if (GetTileType(this->field_0x38, 2) == 0x75) {
            this->manager.action = 1;
            SetTile(0x406a, this->field_0x38, 1);
        } else {
            DeleteThisEntity();
        }
    }
    if (GetTileType(this->field_0x38, 1) == 0x406b) {
        sub_0807B7D8(0x76, this->field_0x38, 2);
        DeleteThisEntity();
    }
    if (GetTileType(this->field_0x38, 2) == 0x76) {
        SetTile(0x406b, this->field_0x38, 1);
        DeleteThisEntity();
    }
}
