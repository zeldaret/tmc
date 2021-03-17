#include "global.h"
#include "entity.h"

Entity* CreateNPC(u32 subtype, u32 form, u32 parameter) {
    Entity* entity;

    entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = 7;
        entity->id = subtype;
        entity->type = form;
        entity->type2 = parameter;
        AppendEntityToList(entity, 7);
    }
    return entity;
}
