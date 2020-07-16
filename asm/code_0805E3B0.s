	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0805E3B0
sub_0805E3B0: @ 0x0805E3B0
	push {lr}
	adds r3, r0, #0
	ldrb r1, [r3, #0x10]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805E3C2
	movs r0, #1
	b _0805E404
_0805E3C2:
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _0805E3CC
	movs r0, #0
	b _0805E404
_0805E3CC:
	ldr r1, _0805E3DC @ =gUnk_03003DC0
	ldrb r0, [r1]
	ldrb r2, [r1, #1]
	cmp r0, r2
	bls _0805E3E0
	adds r2, r0, #0
	b _0805E3E2
	.align 2, 0
_0805E3DC: .4byte gUnk_03003DC0
_0805E3E0:
	ldrb r2, [r1, #1]
_0805E3E2:
	ldr r0, _0805E408 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0805E3F4
	cmp r2, #2
	bhs _0805E3F4
	movs r2, #2
_0805E3F4:
	movs r1, #0
	ldrb r0, [r3, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r2, r0
	bls _0805E402
	movs r1, #1
_0805E402:
	adds r0, r1, #0
_0805E404:
	pop {pc}
	.align 2, 0
_0805E408: .4byte gTextBox

	thumb_func_start sub_0805E40C
sub_0805E40C: @ 0x0805E40C
	push {lr}
	ldr r1, _0805E424 @ =gUnk_03003DC0
	ldrb r0, [r1]
	ldrb r2, [r1, #1]
	cmp r0, r2
	bhi _0805E41A
	ldrb r0, [r1, #1]
_0805E41A:
	cmp r0, #0
	beq _0805E420
	movs r0, #1
_0805E420:
	pop {pc}
	.align 2, 0
_0805E424: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E428
sub_0805E428: @ 0x0805E428
	push {lr}
	bl sub_0805E524
	ldr r2, _0805E440 @ =gUnk_03003DC0
	ldrb r3, [r2, #2]
	adds r1, r3, #0
	cmp r1, #0
	beq _0805E444
	movs r0, #0
	strb r3, [r2, #1]
	strb r0, [r2, #2]
	b _0805E44E
	.align 2, 0
_0805E440: .4byte gUnk_03003DC0
_0805E444:
	ldrb r0, [r2, #3]
	cmp r0, #0
	beq _0805E44E
	strb r1, [r2, #3]
	strb r1, [r2, #1]
_0805E44E:
	pop {pc}

	thumb_func_start sub_0805E450
sub_0805E450: @ 0x0805E450
	push {lr}
	ldr r1, _0805E464 @ =gUnk_03003DC0
	ldrb r2, [r1, #2]
	cmp r0, r2
	blo _0805E460
	ldrb r2, [r1, #1]
	cmp r0, r2
	bhs _0805E468
_0805E460:
	movs r0, #0
	b _0805E46C
	.align 2, 0
_0805E464: .4byte gUnk_03003DC0
_0805E468:
	strb r0, [r1, #2]
	movs r0, #1
_0805E46C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805E470
sub_0805E470: @ 0x0805E470
	ldr r1, _0805E478 @ =gUnk_03003DC0
	movs r0, #1
	strb r0, [r1, #3]
	bx lr
	.align 2, 0
_0805E478: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E47C
sub_0805E47C: @ 0x0805E47C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #2
	bl sub_0805E450
	cmp r0, #0
	beq _0805E49A
	ldr r0, _0805E49C @ =gUnk_03003DC0
	str r4, [r0, #4]
_0805E49A:
	pop {r4, pc}
	.align 2, 0
_0805E49C: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E4A0
sub_0805E4A0: @ 0x0805E4A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08078A90
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #1
	bl sub_0805E450
	cmp r0, #0
	beq _0805E4C4
	ldr r0, _0805E4C8 @ =gUnk_03003DC0
	str r4, [r0, #4]
_0805E4C4:
	pop {r4, pc}
	.align 2, 0
_0805E4C8: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E4CC
sub_0805E4CC: @ 0x0805E4CC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08078A90
	adds r0, r4, #0
	bl sub_0805E584
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0805E4E0
sub_0805E4E0: @ 0x0805E4E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0
	beq _0805E4F6
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
_0805E4F6:
	movs r0, #1
	bl sub_0805E450
	cmp r0, #0
	beq _0805E504
	ldr r0, _0805E50C @ =gUnk_03003DC0
	str r4, [r0, #4]
_0805E504:
	adds r0, r5, #0
	bl sub_0805E510
	pop {r4, r5, pc}
	.align 2, 0
_0805E50C: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E510
sub_0805E510: @ 0x0805E510
	push {lr}
	adds r1, r0, #0
	ldr r2, _0805E520 @ =gUnk_03003DC0
	ldrh r0, [r2, #8]
	cmp r0, r1
	bhs _0805E51E
	strh r1, [r2, #8]
_0805E51E:
	pop {pc}
	.align 2, 0
_0805E520: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E524
sub_0805E524: @ 0x0805E524
	push {lr}
	ldr r1, _0805E540 @ =gUnk_03003DC0
	ldrh r0, [r1, #8]
	cmp r0, #0
	beq _0805E53C
	subs r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0805E53C
	bl sub_0805E470
_0805E53C:
	pop {pc}
	.align 2, 0
_0805E540: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E544
sub_0805E544: @ 0x0805E544
	ldr r1, _0805E55C @ =gUnk_03003DC0
	movs r3, #6
	movs r0, #6
	strb r0, [r1]
	ldr r2, _0805E560 @ =gLinkEntity
	ldrb r1, [r2, #0x11]
	subs r0, #0x16
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x11]
	bx lr
	.align 2, 0
_0805E55C: .4byte gUnk_03003DC0
_0805E560: .4byte gLinkEntity

	thumb_func_start UnfreezeTime
UnfreezeTime: @ 0x0805E564
	ldr r1, _0805E57C @ =gUnk_03003DC0
	movs r0, #0
	strb r0, [r1]
	ldr r2, _0805E580 @ =gLinkEntity
	ldrb r1, [r2, #0x11]
	subs r0, #0x10
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x11]
	bx lr
	.align 2, 0
_0805E57C: .4byte gUnk_03003DC0
_0805E580: .4byte gLinkEntity

	thumb_func_start sub_0805E584
sub_0805E584: @ 0x0805E584
	push {lr}
	ldrb r2, [r0, #0x11]
	lsrs r3, r2, #4
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #0x11]
	bl sub_0805E470
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0805E59C
sub_0805E59C: @ 0x0805E59C
	ldr r1, _0805E5A4 @ =gUnk_03003DC0
	movs r0, #6
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805E5A4: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E5A8
sub_0805E5A8: @ 0x0805E5A8
	ldr r1, _0805E5B0 @ =gUnk_03003DC0
	movs r0, #7
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805E5B0: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E5B4
sub_0805E5B4: @ 0x0805E5B4
	ldr r1, _0805E5BC @ =gUnk_03003DC0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0805E5BC: .4byte gUnk_03003DC0

	thumb_func_start sub_0805E5C0
sub_0805E5C0: @ 0x0805E5C0
	push {lr}
	ldr r0, _0805E5F0 @ =gRoomVars
	ldrb r1, [r0, #4]
	movs r2, #0
	strb r1, [r0, #5]
	strb r2, [r0, #4]
	bl sub_0805ED30
	bl sub_0805E428
	bl sub_080175E8
	bl sub_0806F0A4
	ldr r1, _0805E5F4 @ =gUnk_03005F40
	movs r0, #0
	bl _call_via_r1
	bl sub_0805E84C
	bl sub_0805EE88
	pop {pc}
	.align 2, 0
_0805E5F0: .4byte gRoomVars
_0805E5F4: .4byte gUnk_03005F40

	thumb_func_start sub_0805E5F8
sub_0805E5F8: @ 0x0805E5F8
	push {lr}
	ldr r1, _0805E608 @ =gUnk_03005F40
	movs r0, #1
	bl _call_via_r1
	bl sub_0805E84C
	pop {pc}
	.align 2, 0
_0805E608: .4byte gUnk_03005F40

	thumb_func_start sub_0805E60C
sub_0805E60C: @ 0x0805E60C
	push {lr}
	bl sub_0805E89C
	ldr r0, _0805E654 @ =gUnk_03003DC0
	movs r1, #0xc
	bl _DmaZero
	ldr r0, _0805E658 @ =gLinkEntity
	movs r1, #0xaa
	lsls r1, r1, #6
	bl _DmaZero
	ldr r0, _0805E65C @ =gUnk_02033290
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	bl sub_0805E98C
	ldr r0, _0805E660 @ =gUnk_03003DBC
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0805E664 @ =gUnk_020354B4
	strb r1, [r0]
	ldr r1, _0805E668 @ =gUnk_03000000
	ldr r2, _0805E66C @ =0x00000427
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r3, _0805E670 @ =0x00000426
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0805E674 @ =0x0000042E
	adds r1, r1, r0
	strb r2, [r1]
	pop {pc}
	.align 2, 0
_0805E654: .4byte gUnk_03003DC0
_0805E658: .4byte gLinkEntity
_0805E65C: .4byte gUnk_02033290
_0805E660: .4byte gUnk_03003DBC
_0805E664: .4byte gUnk_020354B4
_0805E668: .4byte gUnk_03000000
_0805E66C: .4byte 0x00000427
_0805E670: .4byte 0x00000426
_0805E674: .4byte 0x0000042E
