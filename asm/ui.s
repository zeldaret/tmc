	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C1D4
sub_0801C1D4: @ 0x0801C1D4
	push {r4, lr}
	movs r4, #0
_0801C1D8:
	lsls r1, r4, #5
	ldr r0, _0801C200 @ =gUnk_0200AF34
	adds r2, r1, r0
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801C1F8
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	ldr r1, _0801C204 @ =gUnk_080C8F8C
	adds r0, r0, r1
	ldr r1, [r0, #8]
	adds r0, r2, #0
	bl _call_via_r1
_0801C1F8:
	adds r4, #1
	cmp r4, #0x17
	bls _0801C1D8
	pop {r4, pc}
	.align 2, 0
_0801C200: .4byte gUnk_0200AF34
_0801C204: .4byte gUnk_080C8F8C

	thumb_func_start DrawOAMCmd
DrawOAMCmd: @ 0x0801C208
	push {r4, r5, lr}
	movs r5, #0
	ldr r4, _0801C250 @ =gOamCmd
_0801C20E:
	lsls r1, r5, #5
	ldr r0, _0801C254 @ =gUnk_0200AF34
	adds r3, r1, r0
	ldrb r1, [r3]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C248
	ldrh r0, [r3, #0xc]
	strh r0, [r4]
	ldrh r0, [r3, #0xe]
	strh r0, [r4, #2]
	ldrb r2, [r3, #1]
	lsls r2, r2, #4
	ldr r0, _0801C258 @ =gUnk_080C8F8C
	adds r2, r2, r0
	ldrh r0, [r2]
	strh r0, [r4, #4]
	ldrh r0, [r2, #2]
	strh r0, [r4, #6]
	ldrb r0, [r3, #0x18]
	lsls r0, r0, #0xc
	ldrh r1, [r3, #0x1a]
	orrs r0, r1
	strh r0, [r4, #8]
	ldrh r0, [r2, #6]
	ldrb r1, [r3, #0x10]
	bl DrawDirect
_0801C248:
	adds r5, #1
	cmp r5, #0x17
	bls _0801C20E
	pop {r4, r5, pc}
	.align 2, 0
_0801C250: .4byte gOamCmd
_0801C254: .4byte gUnk_0200AF34
_0801C258: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801C25C
sub_0801C25C: @ 0x0801C25C
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r5, _0801C2E4 @ =gUnk_0200AF34
	adds r6, r5, #0
	subs r6, #0x34
	movs r7, #0xd
	rsbs r7, r7, #0
	ldr r3, _0801C2E8 @ =0x040000D4
_0801C26C:
	lsls r0, r4, #5
	adds r2, r0, r5
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0801C2A8
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne _0801C2A8
	adds r0, r7, #0
	ands r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r2, #0x1c]
	str r0, [r3]
	ldrh r0, [r2, #0x1a]
	lsls r0, r0, #5
	ldr r1, _0801C2EC @ =0x06010000
	adds r0, r0, r1
	str r0, [r3, #4]
	ldrb r0, [r2, #0x19]
	lsls r0, r0, #3
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0801C2A8:
	adds r4, #1
	cmp r4, #0x17
	ble _0801C26C
	adds r2, r6, #0
	ldrb r3, [r2, #0x13]
	movs r0, #0x13
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0801C2C8
	movs r1, #0x7f
	ands r1, r3
	strb r1, [r2, #0x13]
	movs r0, #0x8d
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2C8:
	ldrb r2, [r6, #0x14]
	movs r0, #0x14
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bge _0801C2E0
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r6, #0x14]
	movs r0, #0x93
	lsls r0, r0, #1
	bl sub_0801C2F0
_0801C2E0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C2E4: .4byte gUnk_0200AF34
_0801C2E8: .4byte 0x040000D4
_0801C2EC: .4byte 0x06010000

	thumb_func_start sub_0801C2F0
sub_0801C2F0: @ 0x0801C2F0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	lsls r5, r4, #5
	ldr r1, _0801C330 @ =0x06010000
	adds r4, r5, r1
	movs r1, #0xa
	bl Div
	cmp r0, #9
	bls _0801C308
	movs r0, #9
_0801C308:
	ldr r2, _0801C334 @ =0x040000D4
	lsls r0, r0, #5
	ldr r3, _0801C338 @ =gUnk_085C4620
	adds r0, r0, r3
	str r0, [r2]
	str r4, [r2, #4]
	ldr r4, _0801C33C @ =0x84000008
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	adds r1, #0xa
	lsls r1, r1, #5
	adds r1, r1, r3
	str r1, [r2]
	ldr r1, _0801C340 @ =0x06010020
	adds r0, r5, r1
	str r0, [r2, #4]
	str r4, [r2, #8]
	ldr r0, [r2, #8]
	pop {r4, r5, pc}
	.align 2, 0
_0801C330: .4byte 0x06010000
_0801C334: .4byte 0x040000D4
_0801C338: .4byte gUnk_085C4620
_0801C33C: .4byte 0x84000008
_0801C340: .4byte 0x06010020

	thumb_func_start DrawUI
DrawUI: @ 0x0801C344
	push {r4, r5, lr}
	ldr r4, _0801C36C @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	ldrb r0, [r4]
	bics r0, r1
	movs r5, #0
	strb r0, [r4]
	bl sub_0801C6B0
	bl sub_0801C85C
	bl sub_0801C4B0
	bl sub_0801C99C
	strb r5, [r4]
	bl sub_0801C1D4
	pop {r4, r5, pc}
	.align 2, 0
_0801C36C: .4byte gUnk_0200AF00

	thumb_func_start InitUI
InitUI: @ 0x0801C370
	push {r4, r5, r6, lr}
	cmp r0, #0
	bne _0801C390
	ldr r0, _0801C388 @ =gSave
	adds r1, r0, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsrs r6, r1, #1
	adds r0, #0xc0
	ldrh r4, [r0]
	ldr r5, _0801C38C @ =gUnk_0200AF00
	b _0801C398
	.align 2, 0
_0801C388: .4byte gSave
_0801C38C: .4byte gUnk_0200AF00
_0801C390:
	ldr r0, _0801C470 @ =gUnk_0200AF00
	ldrb r6, [r0, #3]
	ldrh r4, [r0, #0xe]
	adds r5, r0, #0
_0801C398:
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r5, #0
	bl MemClear
	strb r6, [r5, #3]
	strh r4, [r5, #0xe]
	ldr r0, _0801C474 @ =gSave
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r0, r0, #1
	strb r0, [r5, #4]
	movs r0, #0xc
	bl LoadPaletteGroup
	movs r0, #0x10
	bl LoadGfxGroup
	ldr r4, _0801C478 @ =gBG0Buffer
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl MemClear
	ldr r1, _0801C47C @ =gScreen
	str r4, [r1, #0x10]
	ldr r0, _0801C480 @ =0x00001F0C
	strh r0, [r1, #8]
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _0801C484 @ =gOAMControls
	ldr r2, _0801C488 @ =0x00000427
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r3, _0801C48C @ =0x00000426
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0801C490 @ =0x0000042E
	adds r1, r1, r0
	strb r2, [r1]
	movs r0, #0x7f
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x14]
	strb r0, [r5, #8]
	bl sub_0801C6B0
	bl sub_0801C4B0
	bl sub_0801C85C
	bl sub_0801C99C
	movs r0, #0xd0
	strh r0, [r5, #0x16]
	movs r0, #0xb8
	strh r0, [r5, #0x18]
	movs r0, #0xd8
	strh r0, [r5, #0x1a]
	movs r0, #0x1c
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x1e]
	movs r0, #0xe
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xc0
	lsls r1, r1, #2
	bl MemClear
	movs r0, #5
	movs r1, #9
	bl sub_0801CA6C
	movs r0, #3
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #4
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #2
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #1
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #0
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #7
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #6
	movs r1, #0
	bl sub_0801CA6C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C470: .4byte gUnk_0200AF00
_0801C474: .4byte gSave
_0801C478: .4byte gBG0Buffer
_0801C47C: .4byte gScreen
_0801C480: .4byte 0x00001F0C
_0801C484: .4byte gOAMControls
_0801C488: .4byte 0x00000427
_0801C48C: .4byte 0x00000426
_0801C490: .4byte 0x0000042E

	thumb_func_start RefreshUI
RefreshUI: @ 0x0801C494
	ldr r1, _0801C49C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_0801C49C: .4byte gScreen

	thumb_func_start RecoverUI
RecoverUI: @ 0x0801C4A0
	ldr r1, _0801C4AC @ =gUnk_0200AF00
	movs r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_0801C4AC: .4byte gUnk_0200AF00

	thumb_func_start sub_0801C4B0
sub_0801C4B0: @ 0x0801C4B0
	push {r4, r5, r6, lr}
	ldr r2, _0801C4F0 @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x40
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0801C4FC
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0801C4C8
	b _0801C5D0
_0801C4C8:
	movs r0, #0
	strb r0, [r6, #0xa]
	ldr r3, _0801C4F4 @ =gUnk_02035160
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	adds r4, r3, #0
	adds r4, #0x40
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	ldr r1, _0801C4F8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801C5D0
	.align 2, 0
_0801C4F0: .4byte gUnk_0200AF00
_0801C4F4: .4byte gUnk_02035160
_0801C4F8: .4byte gScreen
_0801C4FC:
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0801C560
	movs r0, #2
	strb r0, [r6, #0xa]
	ldr r3, _0801C54C @ =gUnk_02035160
	adds r4, r3, #0
	adds r4, #0x40
	ldr r1, _0801C550 @ =gWalletSizes
	ldr r2, _0801C554 @ =gSave
	adds r0, r2, #0
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	strh r1, [r3]
	adds r0, r1, #1
	strh r0, [r3, #2]
	adds r0, r1, #2
	strh r0, [r4]
	adds r0, r1, #3
	strh r0, [r4, #2]
	ldr r1, _0801C558 @ =0x0000F070
	strh r1, [r3, #4]
	adds r0, r1, #1
	strh r0, [r4, #4]
	adds r0, r1, #2
	strh r0, [r3, #6]
	adds r0, r1, #3
	strh r0, [r4, #6]
	adds r0, r1, #4
	strh r0, [r3, #8]
	adds r0, r1, #5
	strh r0, [r4, #8]
	ldr r1, _0801C55C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	movs r4, #1
	b _0801C564
	.align 2, 0
_0801C54C: .4byte gUnk_02035160
_0801C550: .4byte gWalletSizes
_0801C554: .4byte gSave
_0801C558: .4byte 0x0000F070
_0801C55C: .4byte gScreen
_0801C560:
	movs r4, #0
	ldr r2, _0801C580 @ =gSave
_0801C564:
	adds r5, r6, #0
	adds r0, r2, #0
	adds r0, #0xc0
	ldrh r1, [r5, #0xe]
	adds r3, r1, #0
	ldrh r0, [r0]
	cmp r3, r0
	beq _0801C58A
	cmp r3, r0
	bhs _0801C584
	adds r0, r1, #1
	strh r0, [r5, #0xe]
	b _0801C588
	.align 2, 0
_0801C580: .4byte gSave
_0801C584:
	subs r0, r1, #1
	strh r0, [r6, #0xe]
_0801C588:
	movs r4, #2
_0801C58A:
	cmp r4, #1
	beq _0801C5A4
	cmp r4, #2
	bne _0801C5CC
	ldr r0, _0801C5D4 @ =gUnk_0200AF00
	ldrb r0, [r0, #0xc]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0801C5A4
	movs r0, #0x6f
	bl SoundReq
_0801C5A4:
	ldr r4, _0801C5D4 @ =gUnk_0200AF00
	ldrh r3, [r4, #0xe]
	movs r2, #0
	ldr r1, _0801C5D8 @ =gWalletSizes
	ldr r0, _0801C5DC @ =gSave
	adds r0, #0xa8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r3
	bhi _0801C5BE
	movs r2, #1
_0801C5BE:
	movs r0, #0x70
	adds r1, r3, #0
	movs r3, #3
	bl sub_0801C5E0
	ldrb r0, [r4, #0xc]
	adds r4, r0, #1
_0801C5CC:
	ldr r0, _0801C5D4 @ =gUnk_0200AF00
	strb r4, [r0, #0xc]
_0801C5D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C5D4: .4byte gUnk_0200AF00
_0801C5D8: .4byte gWalletSizes
_0801C5DC: .4byte gSave

	thumb_func_start sub_0801C5E0
sub_0801C5E0: @ 0x0801C5E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r7, _0801C650 @ =gUnk_085C4B20
	cmp r2, #0
	bne _0801C5F0
	ldr r0, _0801C654 @ =0xFFFFFD80
	adds r7, r7, r0
_0801C5F0:
	ldr r0, _0801C658 @ =0x000003FF
	ands r0, r4
	lsls r6, r0, #5
	ldr r0, _0801C65C @ =0x0600C000
	adds r4, r6, r0
	cmp r3, #2
	beq _0801C620
	cmp r3, #3
	bne _0801C63C
	adds r0, r5, #0
	movs r1, #0x64
	bl Div
	adds r5, r1, #0
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r0, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _0801C668 @ =0x0600C040
	adds r4, r6, r0
_0801C620:
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	adds r5, r1, #0
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r0, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, #0x40
_0801C63C:
	ldr r1, _0801C660 @ =0x040000D4
	lsls r0, r5, #6
	adds r0, r7, r0
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C664 @ =0x84000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C650: .4byte gUnk_085C4B20
_0801C654: .4byte 0xFFFFFD80
_0801C658: .4byte 0x000003FF
_0801C65C: .4byte 0x0600C000
_0801C660: .4byte 0x040000D4
_0801C664: .4byte 0x84000010
_0801C668: .4byte 0x0600C040

	thumb_func_start sub_0801C66C
sub_0801C66C: @ 0x0801C66C
	push {lr}
	ldr r1, _0801C6A4 @ =gUnk_0200AF00
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0801C6A2
	movs r0, #0
	strb r0, [r1, #2]
	ldrb r0, [r1, #4]
	movs r2, #1
	cmp r0, #0x28
	bls _0801C684
	movs r2, #2
_0801C684:
	ldr r0, _0801C6A8 @ =gUnk_02034CF0
	ldr r3, _0801C6AC @ =gScreen
	movs r1, #0
_0801C68A:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, #0x40
	subs r2, #1
	cmp r2, #0
	bgt _0801C68A
	movs r0, #1
	strh r0, [r3, #0xe]
_0801C6A2:
	pop {pc}
	.align 2, 0
_0801C6A4: .4byte gUnk_0200AF00
_0801C6A8: .4byte gUnk_02034CF0
_0801C6AC: .4byte gScreen

	thumb_func_start sub_0801C6B0
sub_0801C6B0: @ 0x0801C6B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0801C6CC @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801C6D0
	bl sub_0801C824
	bl sub_0801C66C
	b _0801C802
	.align 2, 0
_0801C6CC: .4byte gUnk_0200AF00
_0801C6D0:
	ldr r5, _0801C6F8 @ =gSave
	adds r0, r5, #0
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r4, r0, #1
	ldrb r0, [r2, #4]
	cmp r4, r0
	beq _0801C6EA
	strb r4, [r2, #4]
	bl sub_0801C824
	bl sub_0801C66C
_0801C6EA:
	adds r1, r5, #0
	adds r1, #0xaa
	ldrb r0, [r1]
	cmp r0, #1
	beq _0801C6FC
	lsrs r1, r0, #1
	b _0801C6FE
	.align 2, 0
_0801C6F8: .4byte gSave
_0801C6FC:
	movs r1, #1
_0801C6FE:
	cmp r1, r4
	ble _0801C704
	adds r1, r4, #0
_0801C704:
	movs r4, #0
	ldr r0, _0801C748 @ =gUnk_0200AF00
	ldrb r2, [r0, #3]
	adds r7, r0, #0
	cmp r1, r2
	beq _0801C718
	movs r4, #1
	cmp r1, r2
	ble _0801C718
	movs r4, #2
_0801C718:
	cmp r4, #1
	beq _0801C750
	cmp r4, #2
	bne _0801C756
	ldrb r0, [r7, #5]
	adds r1, r0, #1
	strb r1, [r7, #5]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801C74C
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0801C740
	movs r0, #0x71
	bl SoundReq
_0801C740:
	ldrb r0, [r7, #3]
	adds r0, #1
	strb r0, [r7, #3]
	b _0801C75A
	.align 2, 0
_0801C748: .4byte gUnk_0200AF00
_0801C74C:
	movs r4, #0
	b _0801C75A
_0801C750:
	ldrb r0, [r7, #3]
	subs r0, #1
	strb r0, [r7, #3]
_0801C756:
	movs r0, #0
	strb r0, [r7, #5]
_0801C75A:
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0801C764
	cmp r4, #0
	beq _0801C802
_0801C764:
	movs r0, #2
	strb r0, [r7, #2]
	ldrb r0, [r7, #3]
	lsrs r3, r0, #2
	cmp r3, #0xa
	ble _0801C77A
	movs r1, #0xa
	mov r8, r1
	adds r6, r3, #0
	subs r6, #0xa
	b _0801C77E
_0801C77A:
	mov r8, r3
	movs r6, #0
_0801C77E:
	ldrb r0, [r7, #4]
	lsrs r4, r0, #2
	adds r1, r4, #0
	cmp r4, #0xa
	ble _0801C78A
	movs r4, #0xa
_0801C78A:
	adds r2, r1, #0
	subs r2, #0xa
	ldr r0, _0801C808 @ =gUnk_080C8F2C
	mov ip, r0
	cmp r2, #0
	ble _0801C7B8
	ldr r5, _0801C80C @ =gUnk_02034D30
	ldr r1, _0801C810 @ =0x0000F010
	adds r0, r1, #0
	strh r0, [r5]
	ldr r1, _0801C814 @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r6
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r5, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [r1, #8]
	ldr r0, [r1, #8]
_0801C7B8:
	ldr r5, _0801C818 @ =gUnk_02034CF0
	ldr r2, _0801C810 @ =0x0000F010
	adds r0, r2, #0
	strh r0, [r5]
	ldr r1, _0801C814 @ =0x040000D4
	movs r0, #0xa
	mov r2, r8
	subs r0, r0, r2
	lsls r0, r0, #1
	add r0, ip
	str r0, [r1]
	adds r0, r5, #2
	str r0, [r1, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r4, r0
	str r4, [r1, #8]
	ldr r0, [r1, #8]
	ldrb r0, [r7, #3]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	beq _0801C7FC
	cmp r3, #9
	ble _0801C7EE
	subs r3, #0xa
	adds r5, #0x40
_0801C7EE:
	lsls r0, r3, #1
	adds r0, r0, r5
	adds r1, #0x11
	ldr r3, _0801C81C @ =0xFFFFF000
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #2]
_0801C7FC:
	ldr r1, _0801C820 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801C802:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801C808: .4byte gUnk_080C8F2C
_0801C80C: .4byte gUnk_02034D30
_0801C810: .4byte 0x0000F010
_0801C814: .4byte 0x040000D4
_0801C818: .4byte gUnk_02034CF0
_0801C81C: .4byte 0xFFFFF000
_0801C820: .4byte gScreen

	thumb_func_start sub_0801C824
sub_0801C824: @ 0x0801C824
	push {lr}
	ldr r1, _0801C850 @ =gUnk_0200AF00
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0801C84E
	movs r2, #0
	strb r2, [r1, #6]
	ldrb r0, [r1, #4]
	ldr r1, _0801C854 @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C83C
	adds r1, #0x40
_0801C83C:
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	ldr r1, _0801C858 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801C84E:
	pop {pc}
	.align 2, 0
_0801C850: .4byte gUnk_0200AF00
_0801C854: .4byte gUnk_02034D30
_0801C858: .4byte gScreen

	thumb_func_start sub_0801C85C
sub_0801C85C: @ 0x0801C85C
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, _0801C884 @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0801C878
	ldr r0, _0801C888 @ =gPlayerState
	adds r0, #0xa0
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
_0801C878:
	cmp r2, #0
	bne _0801C88C
	bl sub_0801C824
	b _0801C984
	.align 2, 0
_0801C884: .4byte gUnk_0200AF00
_0801C888: .4byte gPlayerState
_0801C88C:
	ldrb r0, [r5, #4]
	ldr r4, _0801C92C @ =gUnk_02034D30
	cmp r0, #0x28
	bls _0801C896
	adds r4, #0x40
_0801C896:
	ldr r0, _0801C930 @ =gPlayerState
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x13
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r1, #0x28
	bls _0801C8AE
	movs r1, #0x28
_0801C8AE:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0801C8BA
	ldrb r0, [r5, #7]
	cmp r0, r1
	beq _0801C910
_0801C8BA:
	movs r6, #1
	strb r6, [r5, #6]
	strb r1, [r5, #7]
	adds r0, r1, #0
	movs r1, #4
	bl Div
	adds r3, r0, #0
	adds r5, r1, #0
	ldr r1, _0801C934 @ =0x0000F016
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, _0801C938 @ =0x0000F416
	adds r0, r1, #0
	strh r0, [r4, #0x16]
	ldr r2, _0801C93C @ =0x040000D4
	movs r0, #0xa
	subs r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _0801C940 @ =gUnk_080C8F54
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #2
	str r0, [r2, #4]
	ldr r0, _0801C944 @ =0x8000000A
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	cmp r5, #0
	beq _0801C90C
	lsls r2, r3, #1
	adds r2, r2, r4
	adds r0, r5, #0
	adds r0, #0x17
	ldr r3, _0801C948 @ =0x000003FF
	adds r1, r3, #0
	ands r0, r1
	movs r3, #0xf0
	lsls r3, r3, #8
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #2]
_0801C90C:
	ldr r0, _0801C94C @ =gScreen
	strh r6, [r0, #0xe]
_0801C910:
	ldr r0, _0801C930 @ =gPlayerState
	adds r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #5
	bgt _0801C962
	cmp r0, #4
	blt _0801C962
	ldr r2, _0801C950 @ =gUnk_0200AF00
	ldrb r1, [r2, #9]
	adds r4, r2, #0
	cmp r0, #4
	bne _0801C954
	adds r0, r1, #2
	b _0801C956
	.align 2, 0
_0801C92C: .4byte gUnk_02034D30
_0801C930: .4byte gPlayerState
_0801C934: .4byte 0x0000F016
_0801C938: .4byte 0x0000F416
_0801C93C: .4byte 0x040000D4
_0801C940: .4byte gUnk_080C8F54
_0801C944: .4byte 0x8000000A
_0801C948: .4byte 0x000003FF
_0801C94C: .4byte gScreen
_0801C950: .4byte gUnk_0200AF00
_0801C954:
	adds r0, r1, #1
_0801C956:
	strb r0, [r2, #9]
	ldrb r0, [r4, #9]
	lsrs r3, r0, #4
	movs r0, #3
	ands r3, r0
	b _0801C966
_0801C962:
	movs r3, #0
	ldr r4, _0801C988 @ =gUnk_0200AF00
_0801C966:
	ldrb r0, [r4, #8]
	cmp r3, r0
	beq _0801C984
	strb r3, [r4, #8]
	ldr r4, _0801C98C @ =0x0600C2C0
	ldr r1, _0801C990 @ =0x040000D4
	ldr r2, _0801C994 @ =gUnk_080C8F7C
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	str r4, [r1, #4]
	ldr r0, _0801C998 @ =0x84000030
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0801C984:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C988: .4byte gUnk_0200AF00
_0801C98C: .4byte 0x0600C2C0
_0801C990: .4byte 0x040000D4
_0801C994: .4byte gUnk_080C8F7C
_0801C998: .4byte 0x84000030

	thumb_func_start sub_0801C99C
sub_0801C99C: @ 0x0801C99C
	push {r4, r5, lr}
	ldr r4, _0801C9E0 @ =gUnk_0200AF00
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801C9B2
	bl AreaHasKeys
	cmp r0, #0
	bne _0801C9EC
_0801C9B2:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _0801CA50
	movs r0, #0
	strb r0, [r4, #0x10]
	ldr r2, _0801C9E4 @ =gUnk_020350E2
	strh r0, [r2]
	strh r0, [r2, #2]
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	adds r1, r2, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r1, _0801C9E8 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	b _0801CA50
	.align 2, 0
_0801C9E0: .4byte gUnk_0200AF00
_0801C9E4: .4byte gUnk_020350E2
_0801C9E8: .4byte gScreen
_0801C9EC:
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA1E
	ldr r2, _0801CA54 @ =gUnk_020350E2
	adds r1, r2, #0
	adds r1, #0x40
	ldr r3, _0801CA58 @ =0x0000F01C
	strh r3, [r2]
	adds r0, r3, #1
	strh r0, [r2, #2]
	adds r0, r3, #2
	strh r0, [r1]
	adds r0, r3, #3
	strh r0, [r1, #2]
	adds r3, #0x5a
	strh r3, [r2, #4]
	adds r0, r3, #1
	strh r0, [r1, #4]
	adds r0, r3, #2
	strh r0, [r2, #6]
	adds r0, r3, #3
	strh r0, [r1, #6]
	ldr r1, _0801CA5C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
_0801CA1E:
	ldr r0, _0801CA60 @ =gSave
	ldr r3, _0801CA64 @ =gArea
	ldrb r1, [r3, #3]
	ldr r5, _0801CA68 @ =0x0000045C
	adds r2, r0, r5
	adds r1, r1, r2
	ldrb r0, [r4, #0x12]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0801CA38
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CA50
_0801CA38:
	movs r0, #2
	strb r0, [r4, #0x10]
	ldrb r0, [r3, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x12]
	movs r0, #0x76
	movs r2, #0
	movs r3, #2
	bl sub_0801C5E0
_0801CA50:
	pop {r4, r5, pc}
	.align 2, 0
_0801CA54: .4byte gUnk_020350E2
_0801CA58: .4byte 0x0000F01C
_0801CA5C: .4byte gScreen
_0801CA60: .4byte gSave
_0801CA64: .4byte gArea
_0801CA68: .4byte 0x0000045C

	thumb_func_start sub_0801CA6C
sub_0801CA6C: @ 0x0801CA6C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r3, #0
	ldr r7, _0801CAA8 @ =gUnk_0200AF34
	movs r0, #1
	mov ip, r0
	ldr r1, _0801CAAC @ =gUnk_080C8F8C
	lsls r0, r5, #4
	adds r4, r0, r1
_0801CA80:
	lsls r0, r3, #5
	adds r1, r0, r7
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801CAB0
	strb r5, [r1, #1]
	strb r6, [r1, #2]
	movs r0, #0xff
	strb r0, [r1, #0x10]
	mov r0, ip
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x1a]
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #3]
	b _0801CAB6
	.align 2, 0
_0801CAA8: .4byte gUnk_0200AF34
_0801CAAC: .4byte gUnk_080C8F8C
_0801CAB0:
	adds r3, #1
	cmp r3, #0x17
	bls _0801CA80
_0801CAB6:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0801CAB8
sub_0801CAB8: @ 0x0801CAB8
	push {lr}
	str r1, [r0, #0x14]
	ldrb r2, [r1, #1]
	strb r2, [r0, #0x11]
	ldrb r2, [r1, #2]
	strb r2, [r0, #0x12]
	ldrb r2, [r1, #3]
	strb r2, [r0, #0x13]
	ldrb r1, [r1]
	bl sub_0801CAFC
	pop {pc}

	thumb_func_start sub_0801CAD0
sub_0801CAD0: @ 0x0801CAD0
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x11]
	subs r0, #1
	strb r0, [r2, #0x11]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CAF8
	ldr r1, [r2, #0x14]
	movs r0, #3
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801CAF0
	ldrb r0, [r1, #4]
	lsls r0, r0, #2
	subs r1, r1, r0
_0801CAF0:
	adds r1, #4
	adds r0, r2, #0
	bl sub_0801CAB8
_0801CAF8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0801CAFC
sub_0801CAFC: @ 0x0801CAFC
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrb r0, [r2, #1]
	lsls r0, r0, #4
	ldr r1, _0801CB1C @ =gUnk_080C8F8C
	adds r1, r0, r1
	ldrb r0, [r2, #0x10]
	cmp r3, r0
	beq _0801CB18
	strb r3, [r2, #0x10]
	adds r0, r2, #0
	bl sub_0801CB20
_0801CB18:
	pop {pc}
	.align 2, 0
_0801CB1C: .4byte gUnk_080C8F8C

	thumb_func_start sub_0801CB20
sub_0801CB20: @ 0x0801CB20
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	bne _0801CB76
	ldrh r1, [r1, #6]
	lsls r1, r1, #4
	ldr r0, _0801CB54 @ =gSpritePtrs
	adds r1, r1, r0
	ldrb r0, [r3, #0x10]
	lsls r0, r0, #2
	ldr r2, [r1, #4]
	adds r2, r2, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #5
	ldr r1, [r1, #8]
	adds r1, r1, r0
	ldrb r2, [r2]
	cmp r2, #0
	bne _0801CB58
	ldrb r1, [r3]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r3]
	b _0801CB74
	.align 2, 0
_0801CB54: .4byte gSpritePtrs
_0801CB58:
	ldrb r0, [r3, #0x19]
	cmp r0, r2
	bne _0801CB64
	ldr r0, [r3, #0x1c]
	cmp r0, r1
	beq _0801CB74
_0801CB64:
	str r1, [r3, #0x1c]
	ldrb r0, [r3]
	movs r1, #0xd
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r3]
_0801CB74:
	strb r2, [r3, #0x19]
_0801CB76:
	pop {pc}

	thumb_func_start sub_0801CB78
sub_0801CB78: @ 0x0801CB78
	push {lr}
	ldr r2, _0801CB8C @ =gUnk_080C903C
	ldrb r1, [r0, #4]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0801CB8C: .4byte gUnk_080C903C

	thumb_func_start sub_0801CB90
sub_0801CB90: @ 0x0801CB90
	push {lr}
	ldr r3, _0801CBC4 @ =gUnk_0200AF00
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	adds r2, r3, #0
	adds r2, #0x16
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrb r1, [r0, #1]
	lsls r1, r1, #1
	adds r3, #0x1c
	adds r1, r1, r3
	ldrh r1, [r1]
	subs r1, #0x20
	strh r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #4]
	ldrb r1, [r0]
	movs r2, #2
	orrs r1, r2
	strb r1, [r0]
	ldrb r1, [r0, #1]
	bl sub_0801CAFC
	pop {pc}
	.align 2, 0
_0801CBC4: .4byte gUnk_0200AF00

	thumb_func_start sub_0801CBC8
sub_0801CBC8: @ 0x0801CBC8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	movs r6, #8
	cmp r0, #0
	bne _0801CC10
	movs r6, #4
	cmp r0, #0
	bne _0801CC10
	ldr r3, _0801CC08 @ =gUnk_0200AF00
	ldrb r0, [r3, #1]
	ldrb r2, [r5, #1]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CBF6
	ldr r0, _0801CC0C @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0801CC10
_0801CBF6:
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x1c
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	subs r1, #0x28
	b _0801CC1E
	.align 2, 0
_0801CC08: .4byte gUnk_0200AF00
_0801CC0C: .4byte gMessage
_0801CC10:
	ldr r1, _0801CC7C @ =gUnk_0200AF00
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	adds r1, #0x1c
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
_0801CC1E:
	movs r2, #0xe
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC2C
	rsbs r4, r4, #0
_0801CC2C:
	cmp r6, r4
	bgt _0801CC32
	adds r4, r6, #0
_0801CC32:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC44
	ldrh r0, [r5, #0xe]
	adds r0, r0, r4
	strh r0, [r5, #0xe]
_0801CC44:
	ldr r0, _0801CC7C @ =gUnk_0200AF00
	ldrb r1, [r5, #1]
	lsls r1, r1, #1
	adds r0, #0x16
	adds r1, r1, r0
	movs r0, #0
	ldrsh r1, [r1, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r1, r4, #0
	cmp r4, #0
	bge _0801CC60
	rsbs r4, r4, #0
_0801CC60:
	cmp r6, r4
	bgt _0801CC66
	adds r4, r6, #0
_0801CC66:
	adds r0, r1, #0
	bl sub_08000E44
	muls r4, r0, r4
	cmp r4, #0
	beq _0801CC78
	ldrh r0, [r5, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0xc]
_0801CC78:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801CC7C: .4byte gUnk_0200AF00

	thumb_func_start sub_0801CC80
sub_0801CC80: @ 0x0801CC80
	push {r4, r5, lr}
	ldrb r1, [r0, #1]
	movs r0, #3
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r5, _0801CCAC @ =gSave
	adds r1, r5, #0
	adds r1, #0xb4
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl ItemIsBottle
	cmp r0, #0
	beq _0801CCA8
	adds r0, r5, r4
	adds r0, #0x9a
	ldrb r4, [r0]
_0801CCA8:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
_0801CCAC: .4byte gSave

	thumb_func_start sub_0801CCB0
sub_0801CCB0: @ 0x0801CCB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CC80
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrb r0, [r4, #8]
	cmp r0, r1
	beq _0801CCE0
	strb r1, [r4, #8]
	ldr r0, _0801CD1C @ =gSpriteAnimations_322
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl sub_0801CAB8
_0801CCE0:
	ldrb r0, [r4, #1]
	movs r1, #3
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	ldr r3, _0801CD20 @ =gUnk_0200AF13
	cmp r6, #0
	beq _0801CCF4
	adds r3, #1
_0801CCF4:
	ldrb r0, [r4, #8]
	cmp r0, #7
	blt _0801CD60
	cmp r0, #8
	ble _0801CD28
	cmp r0, #0xa
	bgt _0801CD60
	ldr r1, _0801CD24 @ =gSave
	adds r0, r1, #0
	adds r0, #0xad
	ldrb r2, [r0]
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, r2
	beq _0801CD4C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
	b _0801CD4C
	.align 2, 0
_0801CD1C: .4byte gSpriteAnimations_322
_0801CD20: .4byte gUnk_0200AF13
_0801CD24: .4byte gSave
_0801CD28:
	ldr r5, _0801CD44 @ =gSave
	adds r0, r5, #0
	adds r0, #0xac
	ldrb r2, [r0]
	ldrb r0, [r3]
	cmp r0, r2
	beq _0801CD3C
	adds r0, r2, #0
	adds r0, #0x80
	strb r0, [r3]
_0801CD3C:
	ldr r1, _0801CD48 @ =gBombBagSizes
	adds r0, r5, #0
	adds r0, #0xae
	b _0801CD52
	.align 2, 0
_0801CD44: .4byte gSave
_0801CD48: .4byte gBombBagSizes
_0801CD4C:
	ldr r1, _0801CD5C @ =gQuiverSizes
	adds r0, r5, #0
	adds r0, #0xaf
_0801CD52:
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0801CD64
	.align 2, 0
_0801CD5C: .4byte gQuiverSizes
_0801CD60:
	movs r0, #1
	movs r2, #0
_0801CD64:
	movs r1, #3
	cmp r0, r2
	bhi _0801CD6C
	movs r1, #4
_0801CD6C:
	strb r1, [r4, #0x18]
	adds r0, r6, #0
	bl sub_0801CE24
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CD90
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
	adds r0, r4, #0
	bl sub_0801CAD0
_0801CD90:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801CD94
sub_0801CD94: @ 0x0801CD94
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	ldr r1, _0801CDC0 @ =gUnk_0200AF00
	cmp r0, #9
	bne _0801CDD4
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	cmp r2, #0
	bne _0801CDCE
	ldr r0, _0801CDC4 @ =gArea
	ldrb r0, [r0, #0x18]
	cmp r0, #2
	beq _0801CDC8
	cmp r0, #3
	beq _0801CDCC
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	b _0801CDCE
	.align 2, 0
_0801CDC0: .4byte gUnk_0200AF00
_0801CDC4: .4byte gArea
_0801CDC8:
	movs r2, #0xb
	b _0801CDCE
_0801CDCC:
	movs r2, #0xa
_0801CDCE:
	adds r0, r1, #0
	adds r0, #0x32
	strb r2, [r0]
_0801CDD4:
	adds r0, r1, #0
	adds r0, #0x30
	ldrb r1, [r4, #3]
	adds r0, r0, r1
	ldrb r2, [r0]
	ldrb r1, [r4]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	cmp r2, #0
	beq _0801CE1E
	ldr r1, _0801CE20 @ =gUnk_080C9044
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0801CAFC
	ldrb r0, [r4, #3]
	bl sub_0801CE24
	adds r1, r0, #0
	cmp r1, #0
	beq _0801CE1E
	ldrh r0, [r1, #0xc]
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #0xe]
	strh r0, [r4, #0xe]
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_0801CE1E:
	pop {r4, pc}
	.align 2, 0
_0801CE20: .4byte gUnk_080C9044

	thumb_func_start sub_0801CE24
sub_0801CE24: @ 0x0801CE24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #1
	ldr r3, _0801CE44 @ =gUnk_0200AF34
	adds r2, r3, #0
_0801CE30:
	ldrb r1, [r2]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0801CE48
	ldrb r0, [r2, #1]
	cmp r5, r0
	bne _0801CE48
	adds r0, r3, #0
	b _0801CE54
	.align 2, 0
_0801CE44: .4byte gUnk_0200AF34
_0801CE48:
	adds r2, #0x20
	adds r3, #0x20
	adds r4, #1
	cmp r4, #0x17
	bls _0801CE30
	movs r0, #0
_0801CE54:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0801CE58
sub_0801CE58: @ 0x0801CE58
	push {r4, lr}
	adds r3, r0, #0
	ldrb r0, [r3]
	movs r4, #3
	rsbs r4, r4, #0
	ands r4, r0
	strb r4, [r3]
	ldr r2, _0801CEB8 @ =gUnk_0200AF00
	ldrb r1, [r2, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801CEB4
	ldr r0, _0801CEBC @ =gMessage
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0801CEB4
	ldrb r2, [r2, #3]
	cmp r2, #0
	beq _0801CEB4
	movs r0, #2
	adds r1, r4, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r2, #3
	lsrs r0, r0, #2
	lsls r0, r0, #3
	adds r1, r0, #3
	movs r4, #0xc
	cmp r2, #0x28
	bls _0801CE9E
	movs r4, #0x14
	subs r1, #0x50
_0801CE9E:
	strh r1, [r3, #0xc]
	strh r4, [r3, #0xe]
	movs r1, #3
	ands r1, r2
	cmp r1, #0
	bne _0801CEAC
	movs r1, #4
_0801CEAC:
	adds r1, #0x71
	adds r0, r3, #0
	bl sub_0801CAFC
_0801CEB4:
	pop {r4, pc}
	.align 2, 0
_0801CEB8: .4byte gUnk_0200AF00
_0801CEBC: .4byte gMessage

