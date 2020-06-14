#include "global.h"
/* called when loading any room */

void LoadRoomEntityList();
s32 CheckGlobalFlag(u32 flag);
extern s32* sub_0804B128(u8 unk);
extern void sub_0804B058(s32* unk);
extern void sub_0804B1AC();
extern void sub_0801AC98();

void LoadRoom(void)

{

    s32 iVar1;
    s32* dat;

    sub_0804B128(1);
    LoadRoomEntityList();
    sub_0804B128(0);
    LoadRoomEntityList();

    iVar1 = CheckGlobalFlag(21);
    if (iVar1 != 0) {
        dat = sub_0804B128(2);
        sub_0804B058(dat);
    }
    sub_0804B128(3);
    sub_0804B1AC();
    sub_0801AC98();
    return;
}
