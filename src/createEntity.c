#include "entity.h"
#include "entityData.h"
#include "global.h"

extern Entity * sub_0805EB9C(u32, u32); 
extern Entity * sub_0805E768();
extern void sub_0804AEB0(Entity *, EntityData *);
extern u32 sub_0804AF0C(Entity *, EntityData *);
extern void sub_08016A30(Entity *);
extern u32 gUnk_03000BF0;

Entity * CreateEntity(EntityData *param_1)
{
    Entity *preexisting;
    Entity *entity;
    s32 type;
    
    type = param_1->entityType & 15;
    if (((param_1->field_0x1 & 240) == 80) &&
       (preexisting = sub_0805EB9C(type,param_1->entitySubtype), preexisting != NULL)) {
        entity = NULL;
    }
    else {
        entity = sub_0805E768(); //Get empty entity
        if (entity != NULL) {
            (entity->entityType).type = type;
            (entity->entityType).subtype = param_1->entitySubtype;
            (entity->entityType).parameter1 = param_1->entityParameter1;
            sub_0804AEB0(entity,param_1);
            if ((param_1->field_0x1 & 240) != 16) {
                (entity->entityType).parameter2 = *(u8 *)&param_1->entityParameter2;
                    /* i suspect this is where the entity's behavior is defined. Not sure. */
                entity->parameter3 = (u8)((u32)param_1->entityParameter2 >> 8);
                if ((type != 9) && (sub_0804AF0C(entity,param_1), entity->field_0x4 != NULL)) {
                    if ((param_1->entityType & 16) == 0) {
                        if ((param_1->entityType & 32) != 0) {
                            entity->collisionLayer = 2;
                            return entity;
                        }
                        if ((gUnk_03000BF0 & 2) == 0) {
                            sub_08016A30(entity);
                            return entity;
                        }
                    }
                    entity->collisionLayer = 1;
                }
            }
        }
    }
    return entity;
}