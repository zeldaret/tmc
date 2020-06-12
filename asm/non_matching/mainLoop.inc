	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	push {r4, r5, r6, lr}
	bl sub_08055F70
	bl sub_080A3204
	bl sub_0805616C
	bl sub_0807CE90
	bl sub_080560B8
	bl sub_08056208
	ldr r1, _08055EEC @ =gUnk_02000010
	movs r0, #0xc1
	strb r0, [r1, #4]
	bl sub_0804FFE4
	ldr r1, _08055EF0 @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _08055EF4 @ =gUnk_020176A0
	str r0, [r1, #4]
	ldr r0, _08055EF8 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	bl sub_0804FF84
	bl sub_08056418
	bl sub_080ADD30
	ldr r1, _08055EFC @ =gRand
	ldr r0, _08055F00 @ =0x01234567
	str r0, [r1]
	ldr r4, _08055F04 @ =gUnk_03001000
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0801D630
	movs r0, #0
	bl sub_08056010
	adds r6, r4, #0
_08055EC8:
	bl ReadKeyInput
	bl sub_08055FF4
	cmp r0, #0
	beq _08055ED8
	bl sub_080560A8
_08055ED8:
	ldrb r0, [r6, #1]
	ldr r1, _08055F04 @ =gUnk_03001000
	cmp r0, #0
	beq _08055F08
	cmp r0, #1
	bne _08055F08
	bl sub_08056260
	b _08055F64
	.align 2, 0
_08055EEC: .4byte gUnk_02000010
_08055EF0: .4byte 0x040000D4
_08055EF4: .4byte gUnk_020176A0
_08055EF8: .4byte 0x84000080
_08055EFC: .4byte gRand
_08055F00: .4byte 0x01234567
_08055F04: .4byte gUnk_03001000
_08055F08:
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _08055F22
	ldr r4, _08055F34 @ =gUnk_03001000
	movs r5, #0xff
_08055F12:
	bl VBlankIntrWait
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	ands r0, r5
	cmp r0, #0
	bne _08055F12
_08055F22:
	ldr r1, _08055F34 @ =gUnk_03001000
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _08055F44
	subs r0, #1
	strb r0, [r1, #9]
	ldrb r4, [r1, #0xa]
	b _08055F3C
	.align 2, 0
_08055F34: .4byte gUnk_03001000
_08055F38:
	bl VBlankIntrWait
_08055F3C:
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bgt _08055F38
_08055F44:
	ldrh r0, [r6, #0xc]
	adds r0, #1
	strh r0, [r6, #0xc]
	ldr r1, _08055F6C @ =gUnk_08100CBC
	ldrb r0, [r6, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_08056458
	bl sub_08050154
	bl sub_080A3480
_08055F64:
	bl sub_08016E78
	b _08055EC8
	.align 2, 0
_08055F6C: .4byte gUnk_08100CBC
	.syntax divided