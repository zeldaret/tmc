#include "global.h"
#include "audio.h"
#include "entity.h"
#include "room.h"
#include "player.h"
#include "flags.h"
#include "random.h"
#include "functions.h"
#include "structures.h"

extern void sub_0809F7BC(Entity*);
extern void sub_0809F7F4(Entity*);
extern void (*gUnk_08124798[])(Entity*);
extern void (*gUnk_081247A0[])(Entity*);
extern void (*gUnk_081247AC[])(Entity*);

extern void* gUnk_080DD750;
extern u8 gUnk_081247C0[];
extern u16 gUnk_081247C8[];
extern u32 gUnk_081247D0;

void Cloud(Entity* this) {
    gUnk_08124798[this->type](this);
}

void sub_0809F4DC(Entity* this) {
    if (this->type2 == 0) {
        gUnk_081247A0[this->action](this);
    } else {
        gUnk_081247AC[this->action](this);
    }
}

void sub_0809F514(Entity* this) {
    this->action = 1;
    this->actionDelay = 120;
    this->spriteSettings.b.draw = 0;
    this->field_0x68.HALF.LO = 12;
    gRoomControls.cameraTarget = this;
    gUnk_02034490[0] = 255;
    sub_0809F7BC(this);
}

void sub_0809F548(Entity* this) {

    if (--this->actionDelay == 0) {
        this->action = 2;
        this->actionDelay = 90;
        SoundReq(SFX_11D);
        sub_0809F814((((this->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 63) |
                     (((this->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 63) << 6);
    } else {
        if ((gScreenTransition.frameCount & 7) == 0) {
            sub_0809F7BC(this);
        }
        sub_0809F7F4(this);
    }
}

void sub_0809F5B0(Entity* this) {
    if (--this->actionDelay == 0) {
        SoundReq(SFX_SECRET_BIG);
        SetGlobalFlag(KUMOTATSUMAKI);
        LoadRoomEntityList((EntityData*)&gUnk_080DD750);
        DeleteThisEntity();
    }
}

void sub_0809F5DC(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 0;
    this->field_0x68.HALF.LO = 12;
}

void sub_0809F5F0(Entity* this) {
    u32 iVar1;

    iVar1 = CheckRoomFlag(this->actionDelay);
    if (iVar1 != 0) {
        this->action = 2;
        this->actionDelay = 120;
        sub_08078A90(3);
        sub_08078B48();
        gRoomControls.cameraTarget = this;
    }
}

void sub_0809F61C(Entity* this) {

    if ((gRoomControls.unk6 & 4) == 0) {
        if (this->actionDelay == 30) {
            SetLocalFlag(this->type2);
        }
        if (--this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = 120;
            SoundReq(SFX_11D);
            sub_0809F814((((this->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 63) |
                         (((this->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 63) << 6);
        } else {
            if ((gScreenTransition.frameCount & 7) == 0) {
                sub_0809F7BC(this);
            }
            sub_0809F7F4(this);
        }
    }
}

void sub_0809F69C(Entity* this) {

    if (--this->actionDelay == 0) {
        this->actionDelay = 30;
        this->action = 4;
        gRoomControls.cameraTarget = &gPlayerEntity;
        SoundReq(SFX_SECRET_BIG);
    }
}

void sub_0809F6CC(Entity* this) {

    if (((gRoomControls.unk6 & 4) == 0) && (--this->actionDelay == 0)) {
        gPlayerState.field_0x8b = 1;
        DeleteThisEntity();
    }
}

void sub_0809F700(Entity* this) {
    u8 bVar1;
    u32 uVar2;

    if (this->action == 0) {
        this->action = 1;
        this->actionDelay = (Random() & 30) + 8;
        this->flags = this->flags | 12;
    }
    if ((gScreenTransition.frameCount & 3) == 0) {
        uVar2 = Random();
        this->spriteOffsetX = gUnk_081247C0[uVar2 & 7];
        this->spriteOffsetY = gUnk_081247C0[uVar2 >> 4 & 7];
    }
    sub_0806F69C(this);
    if (--this->actionDelay == 0) {
        DeleteThisEntity();
    }
}

Entity* sub_0809F770(Entity* this) {
    Entity* cloud;
    int uVar1;

    cloud = CreateObject(163, 1, 0);
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
    sub_0807BB68(&gUnk_081247D0, r0, 1);
}
