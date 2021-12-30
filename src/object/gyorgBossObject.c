#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "object.h"
#include "area.h"
#include "room.h"
#include "screen.h"
#include "enemy/gyorg.h"

extern void sub_080A1DCC(GyorgBossObjectEntity*);
extern void sub_080A1C9C(GyorgBossObjectEntity*);

void sub_080A1FF0(GyorgBossObjectEntity*);
u32 sub_080A20B8(GyorgBossObjectEntity*, Entity*);
void sub_080A1D70(GyorgBossObjectEntity*, u32);

extern void (*const gUnk_08124ED0[])(GyorgBossObjectEntity*);

void GyorgBossObject(Entity* this) {
    gUnk_08124ED0[this->action]((GyorgBossObjectEntity*)this);
    sub_080A1DCC((GyorgBossObjectEntity*)this);
    sub_080A1C9C((GyorgBossObjectEntity*)this);
}

void sub_080A1704(GyorgBossObjectEntity* this) {
    GyorgFemaleHeap* heap;
    Entity* tmp;
    if (CheckFlags(0x7B)) {
        DeleteThisEntity();
    }
    if (gEntCount > 0x45)
        return;
    heap = zMalloc(sizeof(GyorgFemaleHeap));
    if (!heap)
        return;
    super->action = 1;
    super->myHeap = heap;
    this->unk_6e = 0x258;
    this->unk_6c = 0;
    heap->boss = this;
    tmp = CreateEnemy(GYORG_FEMALE, 0);
    tmp->myHeap = heap;
    heap->female = (GyorgFemaleEntity*)tmp;
    tmp = CreateEnemy(GYORG_MALE, 0);
    tmp->x.HALF.HI = gRoomControls.roomOriginX + 0x200;
#ifdef EU
    tmp->y.HALF.HI = gRoomControls.roomOriginY + 0x380;
#else
    tmp->y.HALF.HI = gRoomControls.roomOriginY + 0x330;
#endif
    tmp->myHeap = heap;
    heap->male1 = tmp;
    tmp = CreateEnemy(GYORG_MALE, 1);
    tmp->x.HALF.HI = gRoomControls.roomOriginX + 0x260;
#ifdef EU
    tmp->y.HALF.HI = gRoomControls.roomOriginY + 0x360;
#else
    tmp->y.HALF.HI = gRoomControls.roomOriginY + 0x310;
#endif
    tmp->myHeap = heap;
    heap->male2 = tmp;
    gScreen.bg3.control = 0x1E07;
    gScreen.lcd.displayControl |= 0x800;
    this->unk_70 = 0;
    this->unk_72 = 0;
    this->unk_74 = 0;
    this->unk_7a = 0;
    this->unk_76 = 0xc0;
    this->unk_78 = 0xc0;
    gScreenTransition.field_0x39 = 1;
    gPlayerState.flags |= 0x20000;
    gPlayerState.startPosX = gRoomControls.roomOriginX + 0x200;
    gPlayerState.startPosY = gRoomControls.roomOriginY + 0x210;
#ifndef EU
    SoundReq(0x80100000);
    gArea.musicIndex = gArea.pMusicIndex;
#endif
}

void sub_080A184C(GyorgBossObjectEntity* this) {
    if (--this->unk_6e == 0) {
        super->action = 2;
        this->unk_6c = 8;
        ((GyorgFemaleHeap*)super->myHeap)->female->base.health = 8;
    }
    gPlayerState.startPosX = gRoomControls.roomOriginX + 0x200;
    gPlayerState.startPosY = gRoomControls.roomOriginY + 0x210;
}

void sub_080A189C(GyorgBossObjectEntity* this) {
    if (((GyorgFemaleHeap*)super->myHeap)->female->base.health == 0) {
        super->action = 3;
        super->actionDelay = 0x23;
        this->unk_6c = 1;
        this->unk_78 = 0x400;
        this->unk_7b = 1;
        ((GyorgFemaleHeap*)super->myHeap)->male1->health = 0xC;
        SoundReq(0x128);
        sub_08080964(0x96, 1);
    }
    gPlayerState.startPosX = gRoomControls.roomOriginX + 0x200;
    gPlayerState.startPosY = gRoomControls.roomOriginY + 0x210;
}

void sub_080A190C(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgFemaleHeap*)super->myHeap)->male1->health == 0) {
        if (sub_080A20B8(this, ((GyorgFemaleHeap*)super->myHeap)->male1)) {
            super->action = 4;
            this->unk_6c = 0x10;
            this->unk_78 = 0xC0;
            sub_080A1D70(this, ((GyorgFemaleHeap*)super->myHeap)->female->base.animationState);
            ((GyorgFemaleHeap*)super->myHeap)->female->base.health = 0x18;
        }
        gPlayerState.startPosX = gRoomControls.roomOriginX + 0x200;
        gPlayerState.startPosY = gRoomControls.roomOriginY + 0x210;
    } else {
        gPlayerState.startPosX = ((GyorgFemaleHeap*)super->myHeap)->male1->x.HALF.HI;
        gPlayerState.startPosY = ((GyorgFemaleHeap*)super->myHeap)->male1->y.HALF.HI;
    }
}
