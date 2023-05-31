/**
 * @file specialChest.c
 * @ingroup Objects
 *
 * @brief Special Chest object
 */
#define NENT_DEPRECATED
#include "entity.h"
#include "flags.h"
#include "room.h"

extern void AddInteractableChest(Entity*);
extern void OpenSmallChest(u32 pos, u32 layer);

void SpecialChest(Entity* this) {
    if (this->action == 0) {
        if (CheckLocalFlag(this->type)) {
            DeleteThisEntity();
        }
        this->action = 1;
        this->collisionLayer = 1;
        AddInteractableChest(this);
    }
    if (this->interactType != 0) {
        OpenSmallChest(COORD_TO_TILE(this), 2);
        DeleteThisEntity();
    }
}
