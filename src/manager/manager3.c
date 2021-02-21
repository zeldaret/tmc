#include "global.h"
#include "manager.h"
#include "flags.h"
#include "area.h"
#include "room.h"
#include "player.h"
#include "functions.h"

typedef struct {
    Manager manager;
    u32 unk_20;
    u32 unk_24;
    u8 unk_28[0xC];
    u8 unk_34;
    u8 unk_35;
    u16 unk_36;
    u16 unk_38;
    u16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} Manager3;

extern s8 gUnk_08107C6C[];
extern u32 sub_0806FBFC(u32, u32, u32, u32);
extern u32 sub_08057810(void);
extern u32 sub_080002C0(u16, u16, u8);
extern void sub_080577AC(u32, u32, u32);

void sub_080576C0(Manager3* this) {
    s8 tmp;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->unk_20 = this->unk_38 + gRoomControls.roomOriginX - 0x20;
        this->unk_24 = this->unk_3a + gRoomControls.roomOriginY - 0x20;
        return;
    }
    if (sub_0806FBFC(this->unk_20, this->unk_24, 0x40, 0x40)) {
        gArea.field_0x12 = this->unk_20 + 0x20;
        gArea.field_0x14 = this->unk_24 + 0x20 + gUnk_08107C6C[this->manager.unk_0a];
        gArea.field_0x16 = this->unk_34;
        gArea.field_0x17 = this->manager.unk_0a;
        if (!CheckGlobalFlag(EZERO_1ST)) {
            gArea.field_0x18 = 1;
            gArea.field_0x17 = 5;
        } else {
            if ((gPlayerState.flags.all & 0x20) && gPlayerState.jumpStatus == 0) {
                gArea.field_0x18 = 2;
            } else {
                if (sub_08057810()) {
                    gArea.field_0x18 = 3;
                }
            }
            if (sub_080002C0(this->unk_38, this->unk_3a, this->manager.unk_0e) == 0x3d) {
                sub_080577AC(this->unk_38 + gRoomControls.roomOriginX, this->unk_3a + gRoomControls.roomOriginY,
                             this->manager.unk_0e);
                if (!this->manager.unk_0f) {
                    this->manager.unk_0f = 1;
                    PlaySFX(0x152);
                }
            }
        }

    } else {
        this->manager.unk_0f = 0;
    }
}

void sub_080577AC(u32 baseX, u32 baseY, u32 layer) {
    u32 r;
    int offsetX, offsetY;
    Entity* spark;
    r = Random();
    if ((r & 0x7) != 0)
        return;
    spark = CreateObject(0xF, 0x26, 0);
    if (!spark)
        return;
    offsetX = (r >> 0x8) & 0xF;
    offsetY = ((r >> 0x10) & 0xF);
    if (offsetY > 0x4) {
        offsetY = -offsetY;
    }
    if ((r >> 0x18) & 0x1) {
        offsetX = -offsetX;
    }
    spark->x.HALF.HI = baseX + offsetX;
    spark->y.HALF.HI = baseY + offsetY;
    spark->collisionLayer = layer;
    UpdateSpriteForCollisionLayer(spark);
}

u32 sub_08057810(void) {
    if ((gPlayerState.flags.all & 0x80) && !gPlayerState.field_0xaa && (gArea.field_0x17 != 0x6) &&
        (gPlayerState.heldObject == 0)) {
        switch (gPlayerState.field_0xa8) {
            case 0:
            case 1:
                return 1;
        }
    }
    return 0;
}
