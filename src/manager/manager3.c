#include "global.h"
#include "asm.h"
#include "manager.h"
#include "flags.h"
#include "area.h"
#include "room.h"
#include "player.h"
#include "sound.h"
#include "object.h"
#include "functions.h"

// Facilitates the usage of minish portals.

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
extern u32 sub_08057810(void);
extern u32 sub_080002C0(u16, u16, u8);

void Manager3_Main(Manager3* this) {
    s8 tmp;
    if (this->manager.action == 0) {
        this->manager.action = 1;
        this->unk_20 = this->unk_38 + gRoomControls.origin_x - 0x20;
        this->unk_24 = this->unk_3a + gRoomControls.origin_y - 0x20;
        return;
    }
    if (CheckPlayerProximity(this->unk_20, this->unk_24, 0x40, 0x40)) {
        gArea.curPortalX = this->unk_20 + 0x20;
        gArea.curPortalY = this->unk_24 + 0x20 + gUnk_08107C6C[this->manager.unk_0a];
        gArea.curPortalExitDirection = this->unk_34;
        gArea.curPortalType = this->manager.unk_0a;
        if (!CheckGlobalFlag(EZERO_1ST)) {
            gArea.field_0x18 = 1;
            gArea.curPortalType = 5;
        } else {
            if ((gPlayerState.flags & PL_USE_PORTAL) && gPlayerState.jump_status == 0) {
                gArea.field_0x18 = 2;
            } else {
                if (sub_08057810()) {
                    gArea.field_0x18 = 3;
                }
            }
            if (sub_080002C0(this->unk_38, this->unk_3a, this->manager.unk_0e) == 0x3d) {
                CreateMagicSparkles(this->unk_38 + gRoomControls.origin_x, this->unk_3a + gRoomControls.origin_y,
                                    this->manager.unk_0e);
                if (!this->manager.unk_0f) {
                    this->manager.unk_0f = 1;
                    SoundReq(SFX_NEAR_PORTAL);
                }
            }
        }

    } else {
        this->manager.unk_0f = 0;
    }
}

void CreateMagicSparkles(u32 baseX, u32 baseY, u32 layer) {
    u32 r;
    int offsetX, offsetY;
    Entity* spark;
    r = Random();
    if (r & 0x7)
        return;
    spark = CreateObject(SPECIAL_FX, 0x26, 0);
    if (spark == NULL)
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
    if ((gPlayerState.flags & PL_MINISH) && !gPlayerState.field_0xaa && (gArea.curPortalType != 0x6) &&
        (gPlayerState.heldObject == 0)) {
        switch (gPlayerState.framestate) {
            case PL_STATE_IDLE:
            case PL_STATE_WALK:
                return 1;
        }
    }
    return 0;
}
