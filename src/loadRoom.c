#include "global.h"
/* called when loading any room */

void LoadRoomEntityList();
s32 CheckGlobalFlag(u32 flag);
extern s32* GetCurrentRoomProperty(u8 unk);
extern void sub_0804B058(s32* unk);
extern void sub_0804B1AC();
extern void sub_0801AC98();

void LoadRoom(void)

{

    s32 iVar1;
    s32* dat;

    GetCurrentRoomProperty(1);
    LoadRoomEntityList();
    GetCurrentRoomProperty(0);
    LoadRoomEntityList();

    if (CheckGlobalFlag(21)) sub_0804B058(GetCurrentRoomProperty(2));
    GetCurrentRoomProperty(3);
    sub_0804B1AC();
    sub_0801AC98();
}
