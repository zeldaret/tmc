#include "global.h"
#include "entity.h"
#include "room.h"

extern u32 __modsi3(u32, u32);
extern void UpdateSprite(Entity *, u32);
extern void sub_08087380();
extern u32 sub_0807CC3C();
extern Entity *sub_080873AC(Entity*, u32, u32);
extern void PositionRelative();

extern void (*gGreatFairy[11])(Entity*);
extern void (*gGreatFairyBehaviors[6])(Entity*);

extern u32 gUnk_0810C2E4;
extern RoomControls gRoomControls;
extern Entity gLinkEntity;
extern s16 gGreatFairyRippleOffsets[10];

void sub_08086A90(Entity *ent)

{
    u8 bVar1;
    
    if (ent->action == 0) {
        bVar1 = __modsi3((ent->entityType).parameter1, 11);
        (ent->entityType).parameter2 = bVar1;
    }
    gGreatFairy[(ent->entityType).parameter2](ent);
}

void sub_08086ABC(Entity *ent)
{
    gGreatFairyBehaviors[ent->action](ent);


    if ((gLinkEntity.y.HALF.HI - gRoomControls.roomOriginY) < 168) {
        
        gRoomControls.cameraTarget = ent;
        gRoomControls.unk5 = 2;
    }
    else {
        gRoomControls.cameraTarget = &gLinkEntity;
        gRoomControls.unk5 = 2;
    }
}

void sub_08086AF8(Entity *ent)
{
    sub_08087380();
    ent->parameter3 = 0;
    ent->cutsceneBeh = 290;
    return;
}