#ifndef MAIN_H
#define MAIN_H
typedef struct { //0x03001000
	u8 field_0x0;
	u8 field_0x1;
	u8 field_0x2;
	u8 field_0x3;
	u8 field_0x4;
	u16 field_0x6;
	u8 field_0x8;
	u8 field_0x9;
	u8 field_0xa;
	u8 field_0xb;
	u32 ticks;
} MainStruct;

extern s32 sub_08055F70();
extern s32 sub_080A3204(s32);
extern s32 sub_0805616C(s32);
extern s32 sub_0807CE90(s32);
extern s32 sub_080560B8(s32);
extern void sub_08056208(s32);
extern void sub_0804FFE4();
extern s32 sub_0804FF84(s32);
extern s32 sub_08056418(s32);
extern void sub_080ADD30(s32);
extern s32 sub_0801D630(s32, u32, u32);
extern s32 sub_08056010(s32);
extern s32 sub_08016E78(s32);
extern s32 ReadKeyInput();
extern s32 sub_08055FF4(u8);
extern void sub_080560A8();
extern s32 sub_08056260();
extern void VBlankIntrWait();
extern s32 _call_via_r0(s32);
extern s32 sub_08056458(s32);
extern s32 sub_08050154(s32);
extern s32 sub_080A3480(s32);

extern s32 gUnk_02000010;
extern s32 gUnk_03001150;
extern MainStruct gUnk_03001000;
extern s32 gUnk_08100CBC;
#endif