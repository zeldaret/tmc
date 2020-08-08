#include "global.h"
#include "entity.h"
#include "link.h"
#include "structures.h"
#include "functions.h"
#include "room.h"
#include "flags.h"

extern u32 gUnk_03000B80;
extern u32 gUnk_03003FC0;

extern Entity gLinkEntity;

extern u8 gUnk_080FCAC8[];

void InitializeLink(void)
{
    Entity* pl;

    sub_080784C8();
    _DmaZero((void *)&gUnk_03000B80, 0x70);
    _DmaZero((void *)&gLinkState, 0xb0);

    _DmaFill32(0xffffffff, &gLinkState.field_0x40, 0x40);
    pl = &gLinkEntity;
    _DmaZero((void *)pl, 0x88);
    gRoomControls.cameraTarget = pl;
    gLinkState.linkAction = gUnk_080FCAC8[gScreenTransition.field_0xf];
    if (!CheckGlobalFlag(0x14)) {
        gLinkState.flags.all |= 8;
    }
    switch (gScreenTransition.field_0xf) {
        case 0x2:
        case 0x6:
            pl->height.HALF.HI = -0xc0;
            break;
        case 0x4:
            gLinkState.field_0x34[4] = 0x10;
            pl->direction = gScreenTransition.playerState << 2;
        case 0x3:
            pl->nonPlanarMovement = 0xe0;
            break;
        case 0x7:
        case 0x8:
            gLinkState.field_0x34[4] = 1;
            gLinkState.field_0x34[5] = gScreenTransition.field_0xf;
            break;
        case 0xa:
            gLinkState.field_0x34[4] = 1;
            break;
        case 0xb:
            gLinkState.field_0x34[4] = 3;
            break;
        case 0xc:
            gLinkState.field_0x34[4] = 4;
    }
  pl->entityType.type = 1;
  pl->flags |= 0xa0;
  pl->spritePriority.b0 = 4;
  pl->currentHealth = gUnk_02002A40.stats.health;
  pl->x.HALF.HI = gScreenTransition.playerStartPos.HALF.x;
  pl->y.HALF.HI = gScreenTransition.playerStartPos.HALF.y;
  pl->animationState = gScreenTransition.playerState;
  pl->collisionLayer = gScreenTransition.playerLayer;
  UpdateSpriteForCollisionLayer(pl);
  sub_0805EA2C(pl, 1);
  sub_08017640();
}