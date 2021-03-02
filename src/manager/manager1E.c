#include "global.h"
#include "manager.h"
#include "flags.h"
#include "player.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u8 unk_20[0x14]; // unused
    u16 radiusX;
    u16 radiusY;
    s16 posX;
    s16 posY;
    u8 unk_3c[2]; // unused
    u16 playerInRegionFlag;
} Manager1E;

enum Manager1E_State { Init, ObserveRegion };

void Manager1E_Handler(Manager1E*);
void Manager1E_Init(Manager1E*);
void Manager1E_ObserveRegion(Manager1E*);

void (*const Manager1E_ActionFuncs[2])(Manager1E*) = { Manager1E_Init, Manager1E_ObserveRegion };

void Manager1E_Handler(Manager1E* this) {
    Manager1E_ActionFuncs[this->manager.action](this);
}

void Manager1E_Init(Manager1E* this) {
    this->manager.action = ObserveRegion;
    this->radiusX >>= 1;
    this->posX += this->radiusX;
    this->radiusY >>= 1;
    this->posY += this->radiusY;
    if (!this->manager.unk_0a) {
        if (CheckFlags(this->playerInRegionFlag)) {
            DeleteManager(&this->manager);
            return;
        }
    }
    Manager1E_ObserveRegion(this);
}

void Manager1E_ObserveRegion(Manager1E* this) {
    if (CheckPlayerInRegion(this->posX, this->posY, this->radiusX, this->radiusY)) {
        SetFlag(this->playerInRegionFlag);
        if (!this->manager.unk_0a) {
            DeleteManager(&this->manager);
            return;
        }
    } else {
        ClearFlag(this->playerInRegionFlag);
    }
}
