#include "global.h"
#include "entity.h"
#include "room.h"
#include "link.h"
#include "flags.h"

extern void sub_0809F7BC(Entity*);
extern void PlaySFX(u32);
extern void sub_0809F814(u32);
extern void sub_0809F7F4(Entity*);
extern void LoadRoomEntityList();
extern void DeleteThisEntity();
extern u32 CheckRoomFlag(u32);
extern void sub_08078A90(u32);
extern void sub_08078B48(void);
extern u32 Random(void);
extern void sub_0806F69C(Entity*);
extern void (*gUnk_08124798[])(Entity*);
extern void (*gUnk_081247A0[])(Entity*);
extern void (*gUnk_081247AC[])(Entity*);
extern Entity* CreateObject(u32, u32, u32);
extern void PositionEntityOnTop(Entity*, Entity*);
extern void sub_0807BB68(u32*, u32, u32);

extern u8 gUnk_02034490;
extern u32 gUnk_030010A0;
extern void* gUnk_080DD750;
extern Entity gLinkEntity;
extern LinkState gLinkState;
extern u8 gUnk_081247C0[];
extern u16 gUnk_081247C8[];
extern u32 gUnk_081247D0;

void Cloud(Entity* this) {
    gUnk_08124798[(this->entityType).form](this);
}

void sub_0809F4DC(Entity* this) {
    if ((this->entityType).parameter == 0) {
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
    gUnk_02034490 = 255;
    sub_0809F7BC(this);
}

void sub_0809F548(Entity* this) {

    if (--this->actionDelay == 0) {
        this->action = 2;
        this->actionDelay = 90;
        PlaySFX(285);
        sub_0809F814((((this->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 63) |
                     (((this->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 63) << 6);
    } else {
        if ((gUnk_030010A0 & 7) == 0) {
            sub_0809F7BC(this);
        }
        sub_0809F7F4(this);
    }
}

void sub_0809F5B0(Entity* this) {
    if (--this->actionDelay == 0) {
        PlaySFX(115);
        SetGlobalFlag(KUMOTATSUMAKI);
        LoadRoomEntityList(&gUnk_080DD750);
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
            SetLocalFlag(this->entityType.parameter);
        }
        if (--this->actionDelay == 0) {
            this->action = 3;
            this->actionDelay = 120;
            PlaySFX(285);
            sub_0809F814((((this->x.HALF.HI - gRoomControls.roomOriginX) >> 4) & 63) |
                         (((this->y.HALF.HI - gRoomControls.roomOriginY) >> 4) & 63) << 6);
        } else {
            if ((gUnk_030010A0 & 7) == 0) {
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
        gRoomControls.cameraTarget = &gLinkEntity;
        PlaySFX(115);
    }
}

void sub_0809F6CC(Entity* this) {

    if (((gRoomControls.unk6 & 4) == 0) && (--this->actionDelay == 0)) {
        gLinkState.field_0x8b = 1;
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
    if ((gUnk_030010A0 & 3) == 0) {
        uVar2 = Random();
        this->spriteOffsetX = gUnk_081247C0[uVar2 & 7];
        this->spriteOffsetY = gUnk_081247C0[uVar2 >> 4 & 7];
    }
    sub_0806F69C(this);
    if (--this->actionDelay == 0) {
        DeleteThisEntity();
    }
}

#ifdef NON_MATCHING
Entity* sub_0809F770(Entity* this) {
    Entity* cloud;
    s32 uVar1;

    cloud = CreateObject(163, 1, 0);
    if (cloud != NULL) {
        PositionEntityOnTop(this, cloud);
        uVar1 = Random();
        cloud->x.HALF.HI = ((cloud->x.HALF.HI - 16) + (uVar1 >> 0)) & 31;
        cloud->y.HALF.HI = ((cloud->y.HALF.HI - 16) + (uVar1 >> 8)) & 31;
        cloud->animationList = (u8)(uVar1 >> 16) & 3;
        cloud->direction = 255;
    }
    return cloud;
}
#else
NAKED
Entity* sub_0809F770(Entity* this) {
    asm(".include \"asm/non_matching/cloud/sub_0809F770.inc\"");
}
#endif

void sub_0809F7BC(Entity* this) {
    Entity* cloud;
    u32 uVar1;
    u32 uVar2;

    for (uVar2 = 0; uVar2 < 8; uVar2++) {
        cloud = sub_0809F770(this);
        if (cloud != NULL) {
            uVar1 = Random();
            cloud->nonPlanarMovement = gUnk_081247C8[uVar1 & 3];
            cloud->direction = (u8)(uVar1 >> 8) & 31;
        }
    }
}

void sub_0809F7F4(Entity* this) {
    if (--this->field_0x68.HALF.LO == 0) {
        this->field_0x68.HALF.LO = 12;
        PlaySFX(388);
    }
}

void sub_0809F814(u32 r0) {
    sub_0807BB68(&gUnk_081247D0, r0, 1);
}
