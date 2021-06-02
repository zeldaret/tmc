#include "entity.h"
#include "player.h"
#include "coord.h"

extern Hitbox* gUnk_08129998[];
extern void sub_0803C0AC(Entity*);

void ProjectileB(Entity* this) {
    Entity* parent;

    if (this->action == 0) {
        this->action = 1;
    }
    parent = this->parent;
    if (((parent == NULL) || (parent->currentHealth == 0)) || (parent->next == NULL)) {
        if (((this->bitfield & 0x80) != 0) && (this->field_0x4c == &gPlayerEntity)) {
            sub_0803C0AC(this);
        }
        DeleteEntity(this);
    } else {
        this->hitbox = gUnk_08129998[parent->animationState];
        CopyPosition(parent, this);
        if ((parent->iframes != 0) && (this->iframes == 0)) {
            this->iframes = 0xff;
        }
    }
}
