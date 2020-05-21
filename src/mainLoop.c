/*
#include "global.h"
#include "mainLoop.h"


void MainLoop()
{
  s32 v0; // r0@1
  s32 v1; // r0@1
  s32 v2; // r0@1
  s32 v3; // r0@1
  s32 v4; // r0@1
  s32 v5; // r0@1
  s32 v6; // r0@1
  s32 i; // r0@1
  s32 v8; // r0@2
  s32 v9; // r0@6
  s32 v10; // r4@10
  s32 v11; // r0@12
  s32 v12; // r0@13
  s32 v13; // r0@13
  s32 v14; // r0@13
  s32 * v15;
  u32 in_r2;
  
  v0 = sub_08055F70();
  v1 = sub_080A3204(v0);
  v2 = sub_0805616C(v1);
  v3 = sub_0807CE90(v2);
  v4 = sub_080560B8(v3);
  sub_08056208(v4);
  
  v15 = &gUnk_02000010;
  *(u8 *)(v15 + 1) = 193;
  sub_0804FFE4();
  DmaSet(3, 83886080, 33650336, -2080374656);
  v5 = sub_0804FF84(1);
  v6 = sub_08056418(v5);
  sub_080ADD30(v6);
  gUnk_03001150 = 19088743;
  v9 = sub_0801D630(50335744, in_r2, 16);
  for ( i = sub_08056010(0); ; i = sub_08016E78(v9) )
  {
    v8 = ReadKeyInput();
    if ( sub_08055FF4(v8) )
      sub_080560A8();
    if ( gUnk_03001000.field_0x1 && gUnk_03001000.field_0x1 == 1 )
    {
      v9 = sub_08056260();
    }
    else
    {
      for ( ; gUnk_03001000.field_0x8; --gUnk_03001000.field_0x8 )
        VBlankIntrWait();
      if ( gUnk_03001000.field_0x9 )
      {
        --gUnk_03001000.field_0x9;
        v10 = gUnk_03001000.field_0xa;
        while ( 1 )
        {
          v11 = v10--;
          if ( v11 <= 0 )
            break;
          VBlankIntrWait();
        }
      }
      ++gUnk_03001000.ticks;
      v12 = _call_via_r0((u32)*(&gUnk_08100CBC + gUnk_03001000.field_0x2));
      v13 = sub_08056458(v12);
      v14 = sub_08050154(v13);
      v9 = sub_080A3480(v14);
    }
  }
}

 */