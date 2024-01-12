/**
 * @file lightDoor.c
 * @ingroup Objects
 *
 * @brief Light Door object
 */
#include "functions.h"
#include "object.h"
#include "screen.h"
#include "tiles.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68[30];
    /*0x86*/ u16 unk_86;
} LightDoorEntity;

void LightDoor_Init(LightDoorEntity*);
void LightDoor_Action1(LightDoorEntity*);
void LightDoor_Action2(LightDoorEntity*);
void LightDoor_Action3(LightDoorEntity*);
void LightDoor_Action4(LightDoorEntity*);
void sub_080850FC(LightDoorEntity*);

void LightDoor(LightDoorEntity* this) {
    static void (*const LightDoor_Actions[])(LightDoorEntity*) = {
        LightDoor_Init, LightDoor_Action1, LightDoor_Action2, LightDoor_Action3, LightDoor_Action4,
    };
    LightDoor_Actions[super->action](this);
}

void LightDoor_Init(LightDoorEntity* this) {
    if (super->type == 0) {
        if (CheckFlags(this->unk_86)) {
            DeleteThisEntity();
        }
        super->action = 1;
        super->spritePriority.b0 = 7;
        sub_080850FC(this);
    } else {
        super->action = 2;
        super->timer = 240;
        super->speed = 0x80;
        super->direction = 0x18;
    }
    super->frameIndex = 0;
}

void LightDoor_Action1(LightDoorEntity* this) {
}

void LightDoor_Action2(LightDoorEntity* this) {
    u32 tmp;
    u32 tmp2;
    if (--super->timer == 0) {
        super->action = 3;
        super->timer = 30;
        super->spriteOffsetY = 4;
        gScreen.lcd.displayControl |= 0x2000;
        gScreen.controls.windowInsideControl = 0x1f;
        gScreen.controls.windowOutsideControl = 0xf;
        tmp2 = super->x.HALF.HI;
        tmp = gRoomControls.scroll_x;
        tmp2 = tmp2 - tmp;
        gScreen.controls.window0HorizontalDimensions = (((tmp2 - 0x18) & 0xff) << 8) | ((tmp2 + 0x18) & 0xff);
        tmp2 = super->y.HALF.HI;
        tmp = gRoomControls.scroll_y;
        tmp2 = tmp2 - tmp;
        gScreen.controls.window0VerticalDimensions = (((tmp2 - 0x18) & 0xff) << 8) | ((tmp2 + 0x18) & 0xff);
    }
}

void LightDoor_Action3(LightDoorEntity* this) {
    if (--super->timer == 0) {
        super->action = 4;
        super->timer = 96;
    }
}

void LightDoor_Action4(LightDoorEntity* this) {
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        gScreen.lcd.displayControl &= 0xdfff;
        DeleteEntity(super);
    }
}

void sub_080850FC(LightDoorEntity* this) {
    u32 tilePos = COORD_TO_TILE(super);
    u32 layer = super->collisionLayer;
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(-1, -1), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(0, -1), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(1, -1), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(-1, 0), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(0, 0), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(1, 0), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(-1, 1), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(0, 1), layer);
    SetTile(SPECIAL_TILE_61, tilePos + TILE_POS(1, 1), layer);
}
