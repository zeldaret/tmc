#include "entity.h"
#include "projectile.h"
#include "asm.h"

extern void (*const gProjectileFunctions[])(Entity*);
extern bool32 ProjectileInit(Entity*);

void ProjectileUpdate(Entity* this) {
    if (this->action == 0) {
        if (!ProjectileInit(this)) {
            DeleteThisEntity();
        } else {
            goto run;
        }
    }
    if (!EntityDisabled(this)) {
        sub_080028E0(this);
run:
        gProjectileFunctions[this->id](this);
        this->contactFlags &= ~CONTACT_NOW;
    }
    DrawEntity(this);
}
