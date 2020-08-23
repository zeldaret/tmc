#include "global.h"
#include "entity.h"
#include "structures.h"
#include "functions.h"
#include "room.h"

extern void sub_0805E5A8();

extern RoomControls gRoomControls;
extern u32 gUnk_0200B650;
extern u32 gUnk_02025EB0;

extern void DoExitTransition(ScreenTransitionData*);
extern void sub_080809D4();

void sub_080808D8(void) {
    gScreenTransition.transitionType = 0;
}

void sub_080808E4(void) {

    if (sub_08052638(gScreenTransition.areaID)) {
        gScreenTransition.transitionType = 0;
    } else {
        gScreenTransition.transitionType = 5;
    }
}

void sub_08080904(void) {
    gScreenTransition.transitionType = 1;
}

void sub_08080910(void) {
    gScreenTransition.transitionType = 1;
}

void sub_0808091C(ScreenTransitionData* param_1, u32 param_2)
{
    DoExitTransition(param_1);
    gScreenTransition.transitionType = param_2;
    return;
}

void sub_08080930(void)

{
    gRoomControls.unk3 = 5;
    gRoomControls.unk4 = 0;
    gRoomControls.unk2 = 2;
    gRoomControls.filler[0] = 0;
    sub_0805E5A8();
    return;
}

u32* GetLayerByIndex(u32 param_1)

{

    if (param_1 == 2) {
        return &gUnk_0200B650;
    } else {
        return &gUnk_02025EB0;
    }
}

void sub_08080964(u16 time, u32 magnitude)

{
    gRoomControls.screenShakeTime = time;
    gRoomControls.screenShakeMagnitude = magnitude & 7;
    return;
}
