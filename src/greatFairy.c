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

void GreatFairyBehaviors(Entity *ent)
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

void sub_08086B10(Entity *ent)
{
  u16 *pFrame; // r1@2
  s32 frame; // r1@4
  Entity *ripple; // r5@16
  u32 event;

    event = sub_0807CC3C(0);
    if (event == 0) {
        return;
    }
    pFrame = &ent->cutsceneBeh;
    if (*pFrame != 0) {
        *pFrame = *pFrame - 1;
    }
    frame = *pFrame;

    if ( frame == 0x96 ) 
    {
        goto LABEL_16;
    }
  
    if ( frame < 0x97 )
    {
        if (frame != 0)
        {
            if ( frame == 0x82 )
            {
                goto LABEL_16;
            }
            else {
                return;
            }
        }
        goto LABEL_17;
    }
    else {
        if (frame == 0xd2)
        {
            goto LABEL_16;
        }
        if (frame < 0xd3)
        {
            if (frame == 0xaa)
            {
                goto LABEL_16;
            }
            else return;
        }
        if ( frame == 289 )
        {
            goto LABEL_16;
        }
        else {
            return;
        }
    }

LABEL_17:
        ent->action = 2;
        return;
LABEL_16:
    ripple = sub_080873AC(ent, 6, 0);
    if ( ripple )
    {
        PositionRelative(
            ent,
            ripple,
            (s32)gGreatFairyRippleOffsets[ent->parameter3] << 16,
            (s32)gGreatFairyRippleOffsets[ent->parameter3 + 1] << 16);
        ent->parameter3 += 2;
    }
}