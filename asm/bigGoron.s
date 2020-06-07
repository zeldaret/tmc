	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806CF18
sub_0806CF18: @ 0x0806CF18
	push {lr}
	ldr r2, _0806CF2C @ =gUnk_081140D4
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0806CF2C: .4byte gUnk_081140D4

	thumb_func_start sub_0806CF30
sub_0806CF30: @ 0x0806CF30
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0806CF5E
	movs r0, #1
	strb r0, [r5, #0xc]
	strb r0, [r5, #0xd]
	ldrh r1, [r5, #0x2e]
	adds r0, r5, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r5, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r5, #0
	bl sub_0806D0B0
	adds r0, r5, #0
	bl sub_0807DD64
	b _0806CF6C
_0806CF5E:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
_0806CF6C:
	ldrb r0, [r5, #0xd]
	cmp r0, #2
	beq _0806CFD4
	cmp r0, #2
	bgt _0806D000
	cmp r0, #0
	blt _0806D000
	ldr r0, _0806CFCC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806D000
	ldr r0, _0806CFD0 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldrh r3, [r5, #0x2e]
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	adds r4, r0, #0
	cmp r2, r1
	bge _0806CFA8
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	subs r0, #0x20
	cmp r0, r1
	bge _0806CFA8
	subs r0, r3, #1
	strh r0, [r5, #0x2e]
_0806CFA8:
	movs r3, #0x2e
	ldrsh r1, [r4, r3]
	ldrh r2, [r5, #0x2e]
	movs r4, #0x2e
	ldrsh r0, [r5, r4]
	cmp r1, r0
	ble _0806D000
	adds r0, r5, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r0, #0x20
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	cmp r0, r1
	ble _0806D000
	adds r0, r2, #1
	strh r0, [r5, #0x2e]
	b _0806D000
	.align 2, 0
_0806CFCC: .4byte gUnk_030010A0
_0806CFD0: .4byte gLinkEntity
_0806CFD4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D000
	bl Random
	adds r4, r0, #0
	ldr r1, _0806D008 @ =gUnk_081140CC
	movs r0, #3
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bl PlaySFX
	movs r0, #7
	ands r4, r0
	lsls r4, r4, #4
	adds r4, #0x80
	strb r4, [r5, #0xe]
_0806D000:
	adds r0, r5, #0
	bl sub_0806D02C
	pop {r4, r5, pc}
	.align 2, 0
_0806D008: .4byte gUnk_081140CC

	thumb_func_start sub_0806D00C
sub_0806D00C: @ 0x0806D00C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #0
	bl sub_0805EB2C
	cmp r0, #0
	beq _0806D028
	str r0, [r4, #0x50]
_0806D028:
	add sp, #4
	pop {r4, pc}

	thumb_func_start sub_0806D02C
sub_0806D02C: @ 0x0806D02C
	push {lr}
	bl sub_0806D164
	ldr r2, _0806D0A8 @ =gLCDControls
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	adds r1, #0x60
	ldr r0, _0806D0AC @ =0x00003F3F
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x3d
	strh r0, [r1]
	movs r1, #0x16
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r0, r3
	cmp r0, #0
	bge _0806D060
	movs r0, #0
_0806D060:
	cmp r0, #0xf0
	ble _0806D066
	movs r0, #0xf0
_0806D066:
	cmp r1, #0
	bge _0806D06C
	movs r1, #0
_0806D06C:
	cmp r1, #0xf0
	ble _0806D072
	movs r1, #0xf0
_0806D072:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x5a
	strh r0, [r1]
	movs r1, #0x18
	ldrsh r0, [r2, r1]
	rsbs r0, r0, #0
	adds r1, r0, r3
	cmp r0, #0
	bge _0806D08A
	movs r0, #0
_0806D08A:
	cmp r0, #0xa0
	ble _0806D090
	movs r0, #0xa0
_0806D090:
	cmp r1, #0
	bge _0806D096
	movs r1, #0
_0806D096:
	cmp r1, #0xa0
	ble _0806D09C
	movs r1, #0xa0
_0806D09C:
	lsls r0, r0, #8
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1]
	pop {pc}
	.align 2, 0
_0806D0A8: .4byte gLCDControls
_0806D0AC: .4byte 0x00003F3F

	thumb_func_start sub_0806D0B0
sub_0806D0B0: @ 0x0806D0B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0806D0E8 @ =gUnk_0200B650
	movs r1, #0
	str r1, [r0]
	movs r0, #0x30
	bl sub_0801D7EC
	bl sub_0806D110
	ldr r5, _0806D0EC @ =gUnk_02002F00
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r5, #0
	bl sub_0801D630
	cmp r4, #0
	beq _0806D0DA
	adds r0, r4, #0
	bl sub_0806D164
_0806D0DA:
	ldr r0, _0806D0F0 @ =gLCDControls
	ldr r1, _0806D0F4 @ =0x00001D47
	strh r1, [r0, #0x14]
	str r5, [r0, #0x1c]
	movs r1, #1
	strh r1, [r0, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_0806D0E8: .4byte gUnk_0200B650
_0806D0EC: .4byte gUnk_02002F00
_0806D0F0: .4byte gLCDControls
_0806D0F4: .4byte 0x00001D47

	thumb_func_start sub_0806D0F8
sub_0806D0F8: @ 0x0806D0F8
	push {lr}
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	bl sub_0805EB00
	cmp r0, #0
	beq _0806D10C
	bl sub_0806D0B0
_0806D10C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D110
sub_0806D110: @ 0x0806D110
	push {r4, r5, lr}
	ldr r4, _0806D134 @ =gUnk_02002F00
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D138
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r5, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0806D138
	pop {r4, r5, pc}
	.align 2, 0
_0806D134: .4byte gUnk_02002F00

	thumb_func_start sub_0806D138
sub_0806D138: @ 0x0806D138
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, _0806D15C @ =0x040000D4
	ldr r6, _0806D160 @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_0806D146:
	str r3, [r2]
	str r1, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	adds r3, #0x40
	adds r1, r1, r5
	cmp r4, #0x1f
	bls _0806D146
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806D15C: .4byte 0x040000D4
_0806D160: .4byte 0x80000020

	thumb_func_start sub_0806D164
sub_0806D164: @ 0x0806D164
	push {r4, r5, r6, r7, lr}
	ldr r5, _0806D1B8 @ =gRoomControls
	movs r1, #0xa
	ldrsh r2, [r5, r1]
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	subs r2, r2, r1
	adds r2, #0xa0
	ldr r4, _0806D1BC @ =gLCDControls
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	strh r1, [r4, #0x16]
	ldrh r1, [r5, #0xc]
	ldrh r0, [r0, #0x32]
	subs r1, r1, r0
	adds r1, #0xb0
	strh r1, [r4, #0x18]
	ldr r3, _0806D1C0 @ =gUnk_02006F00
	ldr r0, _0806D1C4 @ =0xFFFFC000
	adds r6, r3, r0
	movs r5, #0x20
	lsrs r2, r2, #4
	lsls r2, r2, #2
	adds r3, r2, r3
	adds r7, r4, #0
	ldr r1, _0806D1C8 @ =0x040000D4
	ldr r4, _0806D1CC @ =0x80000020
	movs r2, #0x80
	lsls r2, r2, #1
_0806D1A0:
	str r3, [r1]
	str r6, [r1, #4]
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	adds r3, r3, r2
	adds r6, #0x40
	subs r5, #1
	cmp r5, #0
	bne _0806D1A0
	movs r0, #1
	strh r0, [r7, #0x1a]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806D1B8: .4byte gRoomControls
_0806D1BC: .4byte gLCDControls
_0806D1C0: .4byte gUnk_02006F00
_0806D1C4: .4byte 0xFFFFC000
_0806D1C8: .4byte 0x040000D4
_0806D1CC: .4byte 0x80000020

	thumb_func_start sub_0806D1D0
sub_0806D1D0: @ 0x0806D1D0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _0806D21A
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D1E6
	bl sub_0805E780
_0806D1E6:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r5, [r4, #0x1e]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806D21A:
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	beq _0806D25A
	cmp r0, #1
	ble _0806D228
	cmp r0, #2
	beq _0806D25E
_0806D228:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r5, #0xff
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D24A
	bl Random
	movs r1, #0x7f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r4, #0xe]
	movs r0, #8
	strb r0, [r4, #0xf]
	movs r0, #1
	strb r0, [r4, #0x1e]
_0806D24A:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _0806D268
	subs r0, #1
	strb r0, [r4, #0xf]
	ands r0, r5
	cmp r0, #0
	bne _0806D268
_0806D25A:
	strb r0, [r4, #0x1e]
	b _0806D268
_0806D25E:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0806D268:
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x32]
	pop {r4, r5, pc}

	thumb_func_start sub_0806D274
sub_0806D274: @ 0x0806D274
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D2CA
	adds r0, r4, #0
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D28C
	bl sub_0805E780
_0806D28C:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r4, #0x1e]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	movs r0, #0x4c
	movs r1, #3
	movs r2, #0
	bl CreateNPC
	cmp r0, #0
	beq _0806D2CA
	str r4, [r0, #0x54]
_0806D2CA:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhi _0806D2F4
	lsls r0, r0, #2
	ldr r1, _0806D2DC @ =_0806D2E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0806D2DC: .4byte _0806D2E0
_0806D2E0: @ jump table
	.4byte _0806D2F4 @ case 0
	.4byte _0806D2F4 @ case 1
	.4byte _0806D31C @ case 2
	.4byte _0806D334 @ case 3
	.4byte _0806D338 @ case 4
_0806D2F4:
	ldr r0, _0806D318 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0806D338
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D33C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	movs r1, #1
	eors r0, r1
	b _0806D33A
	.align 2, 0
_0806D318: .4byte gTextBox
_0806D31C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D33C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	movs r1, #1
	eors r0, r1
	b _0806D33A
_0806D334:
	movs r0, #4
	b _0806D33A
_0806D338:
	movs r0, #2
_0806D33A:
	strb r0, [r4, #0x1e]
_0806D33C:
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x32]
	pop {r4, pc}

	thumb_func_start sub_0806D348
sub_0806D348: @ 0x0806D348
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D39A
	adds r0, r4, #0
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D360
	bl sub_0805E780
_0806D360:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #5
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806D39A:
	ldr r0, [r4, #0x54]
	ldrb r0, [r0, #0x1e]
	cmp r0, #4
	bne _0806D3AA
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	b _0806D3B2
_0806D3AA:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
_0806D3B2:
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #0x32]
	pop {r4, pc}

	thumb_func_start sub_0806D3C0
sub_0806D3C0: @ 0x0806D3C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D3F4
	adds r0, r4, #0
	bl sub_0806D00C
	cmp r0, #0
	bne _0806D3D8
	bl sub_0805E780
_0806D3D8:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0806D3F0 @ =gUnk_080FD180
	str r0, [r4, #0x48]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD64
	b _0806D408
	.align 2, 0
_0806D3F0: .4byte gUnk_080FD180
_0806D3F4:
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x2e]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
_0806D408:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D40C
sub_0806D40C: @ 0x0806D40C
	push {lr}
	ldrb r1, [r0, #0x18]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x18]
	bl sub_0806D41C
	pop {pc}

	thumb_func_start sub_0806D41C
sub_0806D41C: @ 0x0806D41C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D45E
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #6
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #3
	bl sub_0806D4C0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	b _0806D46C
_0806D45E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
_0806D46C:
	ldr r0, _0806D4A8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806D4BE
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r0, #0x20
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x40
	movs r3, #0x40
	bl sub_0806FBFC
	cmp r0, #0
	beq _0806D4AC
	adds r2, r4, #0
	adds r2, #0x63
	ldrb r3, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #8
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0806D4BE
	subs r0, r3, #1
	strb r0, [r2]
	b _0806D4BE
	.align 2, 0
_0806D4A8: .4byte gUnk_030010A0
_0806D4AC:
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0806D4BE
	adds r0, r2, #1
	strb r0, [r1]
_0806D4BE:
	pop {r4, pc}

	thumb_func_start sub_0806D4C0
sub_0806D4C0: @ 0x0806D4C0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, #6
	movs r0, #0x4c
	movs r2, #0
	bl CreateNPC
	adds r4, r0, #0
	cmp r4, #0
	beq _0806D4EE
	str r5, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_0806D4EE:
	pop {r4, r5, pc}

	thumb_func_start sub_0806D4F0
sub_0806D4F0: @ 0x0806D4F0
	push {lr}
	movs r1, #0
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D4FC
sub_0806D4FC: @ 0x0806D4FC
	push {lr}
	movs r1, #1
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D508
sub_0806D508: @ 0x0806D508
	push {lr}
	movs r1, #2
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D514
sub_0806D514: @ 0x0806D514
	push {lr}
	movs r1, #3
	bl sub_0806D520
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D520
sub_0806D520: @ 0x0806D520
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806D540
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _0806D5B0 @ =gUnk_08114100
	adds r0, r3, r0
	ldrb r0, [r0]
	adds r0, #6
	strb r0, [r4, #0xf]
	strb r0, [r4, #0x1e]
	movs r0, #8
	strb r0, [r4, #0xe]
_0806D540:
	ldr r0, [r4, #0x50]
	ldrh r1, [r0, #0x2e]
	strh r1, [r4, #0x2e]
	ldrh r1, [r0, #0x32]
	strh r1, [r4, #0x32]
	adds r0, #0x62
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	adds r0, #0x63
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #0x50]
	ldrb r1, [r0, #0x1b]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x1b]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0806D590
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	lsls r1, r3, #4
	subs r0, r0, r1
	adds r0, #0xc
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r2, #0x18
	movs r3, #0x40
	bl sub_0806FBFC
	cmp r0, #0
	beq _0806D5B4
_0806D590:
	ldrb r1, [r4, #0x1e]
	ldrb r0, [r4, #0xf]
	adds r0, #2
	cmp r1, r0
	bge _0806D5D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D5D0
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	b _0806D5CE
	.align 2, 0
_0806D5B0: .4byte gUnk_08114100
_0806D5B4:
	ldrb r1, [r4, #0x1e]
	ldrb r0, [r4, #0xf]
	cmp r1, r0
	bls _0806D5D0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0806D5D0
	movs r0, #8
	strb r0, [r4, #0xe]
	subs r0, r1, #1
_0806D5CE:
	strb r0, [r4, #0x1e]
_0806D5D0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D5D4
sub_0806D5D4: @ 0x0806D5D4
	push {lr}
	bl sub_08053500
	movs r0, #0xd
	bl sub_0805436C
	adds r1, r0, #0
	cmp r1, #2
	beq _0806D5F0
	ldr r0, _0806D5FC @ =gUnk_02002A40
	adds r0, #0xb4
	adds r0, r1, r0
	movs r1, #0
	strb r1, [r0]
_0806D5F0:
	movs r0, #0xd
	movs r1, #0
	bl sub_0807CAA0
	pop {pc}
	.align 2, 0
_0806D5FC: .4byte gUnk_02002A40

	thumb_func_start sub_0806D600
sub_0806D600: @ 0x0806D600
	push {lr}
	movs r2, #0
	ldr r0, _0806D618 @ =gUnk_02002A40
	ldr r3, _0806D61C @ =0x00000494
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _0806D612
	movs r2, #1
_0806D612:
	str r2, [r1, #0x14]
	pop {pc}
	.align 2, 0
_0806D618: .4byte gUnk_02002A40
_0806D61C: .4byte 0x00000494

	thumb_func_start sub_0806D620
sub_0806D620: @ 0x0806D620
	push {lr}
	movs r0, #0xd
	movs r1, #0
	bl sub_0807CAA0
	movs r0, #0xe
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806D638
sub_0806D638: @ 0x0806D638
	ldrh r1, [r0, #0x32]
	subs r1, #0x20
	strh r1, [r0, #0x32]
	bx lr

	thumb_func_start sub_0806D640
sub_0806D640: @ 0x0806D640
	ldrh r1, [r0, #0x32]
	adds r1, #0x20
	movs r2, #0
	strh r1, [r0, #0x32]
	adds r0, #0x39
	strb r2, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D650
sub_0806D650: @ 0x0806D650
	movs r1, #2
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D658
sub_0806D658: @ 0x0806D658
	ldr r1, [r1, #4]
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D660
sub_0806D660: @ 0x0806D660
	ldrb r1, [r0, #0x1b]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D66C
sub_0806D66C: @ 0x0806D66C
	ldrb r2, [r0, #0x1b]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r0, #0x1b]
	bx lr
	.align 2, 0

	thumb_func_start sub_0806D67C
sub_0806D67C: @ 0x0806D67C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0806D6CC @ =gUnk_08114104
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0806D6CA
	adds r6, r1, #0
_0806D690:
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r0, r5, #0
	movs r2, #0x40
	bl CreateFX
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D6C0
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #2
	ldrsb r0, [r4, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	ldrb r0, [r4, #3]
	strb r0, [r1, #0x15]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x24]
_0806D6C0:
	adds r4, #4
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, r6
	bne _0806D690
_0806D6CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806D6CC: .4byte gUnk_08114104

	thumb_func_start sub_0806D6D0
sub_0806D6D0: @ 0x0806D6D0
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D6EE
	movs r0, #2
	strb r0, [r1, #0xd]
_0806D6EE:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D706
	movs r0, #1
	strb r0, [r1, #0xd]
_0806D706:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D70C
sub_0806D70C: @ 0x0806D70C
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r2, r0, #0
	cmp r2, #0
	beq _0806D728
	strb r4, [r2, #0xd]
_0806D728:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r2, r0, #0
	cmp r2, #0
	beq _0806D746
	strb r4, [r2, #0xd]
	ldrb r0, [r2, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x18]
_0806D746:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D74C
sub_0806D74C: @ 0x0806D74C
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D76A
	movs r0, #3
	strb r0, [r1, #0xd]
_0806D76A:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D782
	movs r0, #2
	strb r0, [r1, #0xd]
_0806D782:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D788
sub_0806D788: @ 0x0806D788
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D7A6
	movs r0, #4
	strb r0, [r1, #0xd]
_0806D7A6:
	str r4, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #1
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D7BE
	movs r0, #1
	strb r0, [r1, #0xd]
_0806D7BE:
	add sp, #4
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806D7C4
sub_0806D7C4: @ 0x0806D7C4
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, _0806D800 @ =gLinkEntity
	ldrh r0, [r1, #0x2e]
	movs r2, #0
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0x18
	strh r0, [r4, #0x32]
	str r2, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	cmp r0, #0
	beq _0806D7FC
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DEDC
_0806D7FC:
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_0806D800: .4byte gLinkEntity

	thumb_func_start sub_0806D804
sub_0806D804: @ 0x0806D804
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	movs r1, #0x4c
	movs r2, #7
	movs r3, #2
	bl sub_0805EB2C
	adds r1, r0, #0
	cmp r1, #0
	beq _0806D83A
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_0806D83A:
	ldr r0, _0806D854 @ =gLinkEntity
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	subs r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0807DEDC
	add sp, #4
	pop {r4, r5, pc}
	.align 2, 0
_0806D854: .4byte gLinkEntity

	thumb_func_start sub_0806D858
sub_0806D858: @ 0x0806D858
	adds r0, #0x29
	ldrb r2, [r0]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #8
	orrs r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0
