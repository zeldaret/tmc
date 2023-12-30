/**
 * @file cloud.c
 * @ingroup Objects
 *
 * @brief Cloud object
 */
#include "functions.h"
#include "object.h"
#include "structures.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unk_68;
} CloudEntity;

void sub_0809F814(u32 r0);

void sub_0809F7BC(CloudEntity* this);
void sub_0809F7F4(CloudEntity* this);
void Cloud_Type0(CloudEntity* this);
void Cloud_Type1(CloudEntity* this);
void sub_0809F514(CloudEntity* this);
void sub_0809F548(CloudEntity* this);
void sub_0809F5B0(CloudEntity* this);
void sub_0809F6CC(CloudEntity* this);
void sub_0809F69C(CloudEntity* this);
void sub_0809F61C(CloudEntity* this);
void sub_0809F5F0(CloudEntity* this);
void sub_0809F5DC(CloudEntity* this);

extern void* gUnk_080DD750;

void Cloud(CloudEntity* this) {
    static void (*const Cloud_Types[])(CloudEntity*) = {
        Cloud_Type0,
        Cloud_Type1,
    };
    Cloud_Types[super->type](this);
}

void Cloud_Type0(CloudEntity* this) {
    static void (*const gUnk_081247A0[])(CloudEntity*) = {
        sub_0809F514,
        sub_0809F548,
        sub_0809F5B0,
    };
    static void (*const gUnk_081247AC[])(CloudEntity*) = {
        sub_0809F5DC, sub_0809F5F0, sub_0809F61C, sub_0809F69C, sub_0809F6CC,
    };
    if (super->type2 == 0) {
        gUnk_081247A0[super->action](this);
    } else {
        gUnk_081247AC[super->action](this);
    }
}

void sub_0809F514(CloudEntity* this) {
    super->action = 1;
    super->timer = 120;
    super->spriteSettings.draw = 0;
    this->unk_68 = 12;
    gRoomControls.camera_target = super;
    gPauseMenuOptions.disabled = 255;
    sub_0809F7BC(this);
}

void sub_0809F548(CloudEntity* this) {

    if (--super->timer == 0) {
        super->action = 2;
        super->timer = 90;
        SoundReq(SFX_11D);
        sub_0809F814((((super->x.HALF.HI - gRoomControls.origin_x) >> 4) & 63) |
                     (((super->y.HALF.HI - gRoomControls.origin_y) >> 4) & 63) << 6);
    } else {
        if ((gRoomTransition.frameCount & 7) == 0) {
            sub_0809F7BC(this);
        }
        sub_0809F7F4(this);
    }
}

void sub_0809F5B0(CloudEntity* this) {
    if (--super->timer == 0) {
        SoundReq(SFX_SECRET_BIG);
        SetGlobalFlag(KUMOTATSUMAKI);
        LoadRoomEntityList((EntityData*)&gUnk_080DD750);
        DeleteThisEntity();
    }
}

void sub_0809F5DC(CloudEntity* this) {
    super->action = 1;
    super->spriteSettings.draw = 0;
    this->unk_68 = 12;
}

void sub_0809F5F0(CloudEntity* this) {
    u32 iVar1;

    iVar1 = CheckRoomFlag(super->timer);
    if (iVar1 != 0) {
        super->action = 2;
        super->timer = 120;
        SetPlayerControl(3);
        PausePlayer();
        gRoomControls.camera_target = super;
    }
}

void sub_0809F61C(CloudEntity* this) {

    if ((gRoomControls.scroll_flags & 4) == 0) {
        if (super->timer == 30) {
            SetLocalFlag(super->type2);
        }
        if (--super->timer == 0) {
            super->action = 3;
            super->timer = 120;
            SoundReq(SFX_11D);
            sub_0809F814((((super->x.HALF.HI - gRoomControls.origin_x) >> 4) & 63) |
                         (((super->y.HALF.HI - gRoomControls.origin_y) >> 4) & 63) << 6);
        } else {
            if ((gRoomTransition.frameCount & 7) == 0) {
                sub_0809F7BC(this);
            }
            sub_0809F7F4(this);
        }
    }
}

void sub_0809F69C(CloudEntity* this) {

    if (--super->timer == 0) {
        super->timer = 30;
        super->action = 4;
        gRoomControls.camera_target = &gPlayerEntity.base;
        SoundReq(SFX_SECRET_BIG);
    }
}

void sub_0809F6CC(CloudEntity* this) {

    if (((gRoomControls.scroll_flags & 4) == 0) && (--super->timer == 0)) {
        gPlayerState.controlMode = CONTROL_1;
        DeleteThisEntity();
    }
}

void Cloud_Type1(CloudEntity* this) {
    static const s8 gUnk_081247C0[] = {
        -1, 1, 2, -2, 0, 1, 0, -1,
    };
    u8 bVar1;
    u32 uVar2;

    if (super->action == 0) {
        super->action = 1;
        super->timer = (Random() & 30) + 8;
        super->flags = super->flags | 12;
    }
    if ((gRoomTransition.frameCount & 3) == 0) {
        uVar2 = Random();
        super->spriteOffsetX = gUnk_081247C0[uVar2 & 7];
        super->spriteOffsetY = gUnk_081247C0[uVar2 >> 4 & 7];
    }
    LinearMoveUpdate(super);
    if (--super->timer == 0) {
        DeleteThisEntity();
    }
}

Entity* sub_0809F770(CloudEntity* this) {
    Entity* cloud;
    int uVar1;

    cloud = CreateObject(CLOUD, 1, 0);
    if (cloud) {
        PositionEntityOnTop(super, cloud);
        uVar1 = Random();
        cloud->x.HALF.HI += ((uVar1 >> 0) & 31) - 16;
        cloud->y.HALF.HI += ((uVar1 >> 8) & 31) - 16;
        cloud->frameIndex = (uVar1 >> 16) & 3;
        cloud->direction = 0xFF;
    }
    return cloud;
}

void sub_0809F7BC(CloudEntity* this) {
    static const u16 gUnk_081247C8[] = { 0x100, 0x180, 0x200, 0x280 };
    Entity* cloud;
    u32 uVar1;
    u32 uVar2;

    for (uVar2 = 0; uVar2 < 8; uVar2++) {
        cloud = sub_0809F770(this);
        if (cloud != NULL) {
            uVar1 = Random();
            cloud->speed = gUnk_081247C8[uVar1 & 3];
            cloud->direction = (u8)(uVar1 >> 8) & 31;
        }
    }
}

void sub_0809F7F4(CloudEntity* this) {
    if (--this->unk_68 == 0) {
        this->unk_68 = 12;
        SoundReq(SFX_184);
    }
}

void sub_0809F814(u32 r0) {
    static const s16 gUnk_081247D0[] = { 0x257, -0x41, 0x258, -0x40, 0x259, -0x3f, 0x25a, -0x1, 0x25b, 0x0,
                                         0x25c, 0x1,   0x25d, 0x3f,  0x25e, 0x40,  0x25f, 0x41, -0x1,  0x0 };
    sub_0807BB68(gUnk_081247D0, r0, 1);
}
