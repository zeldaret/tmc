#include "global.h"
#include "entity.h"
#include "flags.h"

extern void sub_080842D8(Entity*);
extern void sub_08078828(Entity*);
extern void sub_08083E20(Entity*);

extern void (*const gUnk_0811F7E8[])(Entity*);
extern void (*const gUnk_0811F808[])(Entity*);
extern void (*const gUnk_0811F818[])(Entity*);

extern u32 gUnk_0811F8B0;
void ChestSpawner(Entity* this) {
    gUnk_0811F7E8[this->entityType.form](this);
}

void sub_08083DF0(Entity* this) {
    gUnk_0811F808[this->action](this);
}

void sub_08083E08(Entity* this) {
    gUnk_0811F818[this->action](this);
}

void sub_08083E20(Entity* this) {
    this->action = 3;
    this->spriteSettings.b.draw = 1;
    this->spriteRendering.alphaBlend = 0;
    sub_080842D8(this);
    sub_08078828(this);
}
