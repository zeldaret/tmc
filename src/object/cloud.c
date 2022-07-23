/**
 * @file cloud.c
 * @ingroup Objects
 *
 * @brief Cloud object
 */
#include "functions.h"
#include "object.h"
#include "structures.h"

void sub_0809F814(u32 r0);

void sub_0809F7BC(Entity*);
void sub_0809F7F4(Entity*);
void Cloud_Type0(Entity*);
void Cloud_Type1(Entity*);
void sub_0809F514(Entity*);
void sub_0809F548(Entity*);
void sub_0809F5B0(Entity*);
void sub_0809F6CC(Entity*);
void sub_0809F69C(Entity*);
void sub_0809F61C(Entity*);
void sub_0809F5F0(Entity*);
void sub_0809F5DC(Entity*);

extern void* gUnk_080DD750;

void Cloud(Entity* this) {
    static void (*const Cloud_Types[])(Entity*) = {
        Cloud_Type0,
        Cloud_Type1,
    };
    Cloud_Types[this->type](this);
}

void Cloud_Type0(Entity* this) {
    static void (*const gUnk_081247A0[])(Entity*) = {
        sub_0809F514,
        sub_0809F548,
        sub_0809F5B0,
    };
    static void (*const gUnk_081247AC[])(Entity*) = {
        sub_0809F5DC, sub_0809F5F0, sub_0809F61C, sub_0809F69C, sub_0809F6CC,
    };
    if (this->type2 == 0) {
        gUnk_081247A0[this->action](this);
    } else {
        gUnk_081247AC[this->action](this);
    }
}

void sub_0809F514(Entity* this) {
    this->action = 1;
    this->timer = 120;
    this->spriteSettings.draw = 0;
    this->field_0x68.HALF.LO = 12;
    gRoomControls.camera_target = this;
    gPauseMenuOptions.disabled = 255;
    sub_0809F7BC(this);
}

void sub_0809F548(Entity* this) {

    if (--this->timer == 0) {
        this->action = 2;
        this->timer = 90;
        SoundReq(SFX_11D);
        sub_0809F814((((this->x.HALF.HI - gRoomControls.origin_x) >> 4) & 63) |
                     (((this->y.HALF.HI - gRoomControls.origin_y) >> 4) & 63) << 6);
    } else {
        if ((gRoomTransition.frameCount & 7) == 0) {
            sub_0809F7BC(this);
        }
        sub_0809F7F4(this);
    }
}

void sub_0809F5B0(Entity* this) {
    if (--this->timer == 0) {
        SoundReq(SFX_SECRET_BIG);
        SetGlobalFlag(KUMOTATSUMAKI);
        LoadRoomEntityList((EntityData*)&gUnk_080DD750);
        DeleteThisEntity();
    }
}

void sub_0809F5DC(Entity* this) {
    this->action = 1;
    this->spriteSettings.draw = 0;
    this->field_0x68.HALF.LO = 12;
}

void sub_0809F5F0(Entity* this) {
    u32 iVar1;

    iVar1 = CheckRoomFlag(this->timer);
    if (iVar1 != 0) {
        this->action = 2;
        this->timer = 120;
        SetPlayerControl(3);
        sub_08078B48();
        gRoomControls.camera_target = this;
    }
}

void sub_0809F61C(Entity* this) {

    if ((gRoomControls.scroll_flags & 4) == 0) {
        if (this->timer == 30) {
            SetLocalFlag(this->type2);
        }
        if (--this->timer == 0) {
            this->action = 3;
            this->timer = 120;
            SoundReq(SFX_11D);
            sub_0809F814((((this->x.HALF.HI - gRoomControls.origin_x) >> 4) & 63) |
                         (((this->y.HALF.HI - gRoomControls.origin_y) >> 4) & 63) << 6);
        } else {
            if ((gRoomTransition.frameCount & 7) == 0) {
                sub_0809F7BC(this);
            }
            sub_0809F7F4(this);
        }
    }
}

void sub_0809F69C(Entity* this) {

    if (--this->timer == 0) {
        this->timer = 30;
        this->action = 4;
        gRoomControls.camera_target = &gPlayerEntity;
        SoundReq(SFX_SECRET_BIG);
    }
}

void sub_0809F6CC(Entity* this) {

    if (((gRoomControls.scroll_flags & 4) == 0) && (--this->timer == 0)) {
        gPlayerState.controlMode = CONTROL_1;
        DeleteThisEntity();
    }
}

void Cloud_Type1(Entity* this) {
    static const s8 gUnk_081247C0[] = {
        -1, 1, 2, -2, 0, 1, 0, -1,
    };
    u8 bVar1;
    u32 uVar2;

    if (this->action == 0) {
        this->action = 1;
        this->timer = (Random() & 30) + 8;
        this->flags = this->flags | 12;
    }
    if ((gRoomTransition.frameCount & 3) == 0) {
        uVar2 = Random();
        this->spriteOffsetX = gUnk_081247C0[uVar2 & 7];
        this->spriteOffsetY = gUnk_081247C0[uVar2 >> 4 & 7];
    }
    LinearMoveUpdate(this);
    if (--this->timer == 0) {
        DeleteThisEntity();
    }
}

Entity* sub_0809F770(Entity* this) {
    Entity* cloud;
    int uVar1;

    cloud = CreateObject(CLOUD, 1, 0);
    if (cloud) {
        PositionEntityOnTop(this, cloud);
        uVar1 = Random();
        cloud->x.HALF.HI += ((uVar1 >> 0) & 31) - 16;
        cloud->y.HALF.HI += ((uVar1 >> 8) & 31) - 16;
        cloud->frameIndex = (uVar1 >> 16) & 3;
        cloud->direction = 0xFF;
    }
    return cloud;
}

void sub_0809F7BC(Entity* this) {
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

void sub_0809F7F4(Entity* this) {
    if (--this->field_0x68.HALF.LO == 0) {
        this->field_0x68.HALF.LO = 12;
        SoundReq(SFX_184);
    }
}

void sub_0809F814(u32 r0) {
    static const s16 gUnk_081247D0[] = { 0x257, -0x41, 0x258, -0x40, 0x259, -0x3f, 0x25a, -0x1, 0x25b, 0x0,
                                         0x25c, 0x1,   0x25d, 0x3f,  0x25e, 0x40,  0x25f, 0x41, -0x1,  0x0 };
    sub_0807BB68(gUnk_081247D0, r0, 1);
}
