// #include "entity.h"
// #include "entityData.h"
// #include "global.h"

// extern Entity * FindEntityBySubtype(u32, u32);
// extern Entity * GetEmptyEntityByType();
// extern void RegisterRoomEntity(Entity *, EntityData *);
// extern u32 sub_0804AF0C(Entity *, EntityData *);
// extern void sub_08016A30(Entity *);
// extern u32 gRoomControls;

// Entity * LoadRoomEntity(EntityData *param_1)
// {
// Entity *preexisting;
// Entity *entity;
// s32 type;

// type = param_1->entityType & 15;
// if (((param_1->field_0x1 & 240) == 80) &&
// (preexisting = FindEntityBySubtype(type,param_1->entitySubtype), preexisting != NULL)) {
// entity = NULL;
// }
// else {
// entity = GetEmptyEntityByType(); //Get empty entity
// if (entity != NULL) {
// (entity->entityType).type = type;
// (entity->entityType).subtype = param_1->entitySubtype;
// (entity->entityType).form = param_1->entityform;
// RegisterRoomEntity(entity,param_1);
// if ((param_1->field_0x1 & 240) != 16) {
// (entity->entityType).parameter = *(u8 *)&param_1->entityparameter;
// entity->actionDelay = (u8)((u32)param_1->entityparameter >> 8);
// if ((type != 9) && (sub_0804AF0C(entity,param_1), entity->field_0x4 != NULL)) {
// if ((param_1->entityType & 16) == 0) {
// if ((param_1->entityType & 32) != 0) {
// entity->collisionLayer = 2;
// return entity;
// }
// if ((gRoomControls & 2) == 0) {
// sub_08016A30(entity);
// return entity;
// }
// }
// entity->collisionLayer = 1;
// }
// }
// }
// }
// return entity;
// }
