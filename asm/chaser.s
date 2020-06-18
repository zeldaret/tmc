	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Chaser
Chaser: @ 0x0802B4D8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080012DC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802B4FC
	ldr r0, _0802B4F8 @ =gUnk_080012C8
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r5, #0
	bl _call_via_r1
	b _0802B510
	.align 2, 0
_0802B4F8: .4byte gUnk_080012C8
_0802B4FC:
	ldr r4, _0802B514 @ =gUnk_080CD27C
	adds r0, r5, #0
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_0802B510:
	pop {r4, r5, pc}
	.align 2, 0
_0802B514: .4byte gUnk_080CD27C

	thumb_func_start sub_0802B518
sub_0802B518: @ 0x0802B518
	push {lr}
	ldr r2, _0802B52C @ =gUnk_080CD298
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B52C: .4byte gUnk_080CD298

	thumb_func_start sub_0802B530
sub_0802B530: @ 0x0802B530
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802B540
sub_0802B540: @ 0x0802B540
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0802B550
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0802B56A
_0802B550:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xc
	bl sub_0804A024
	adds r1, r0, #0
	cmp r1, #0xff
	beq _0802B56A
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x40
	strh r0, [r4, #0x24]
	strb r1, [r4, #0x15]
_0802B56A:
	pop {r4, pc}

	thumb_func_start sub_0802B56C
sub_0802B56C: @ 0x0802B56C
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B586
	movs r0, #0x40
	strh r0, [r4, #0x24]
_0802B586:
	adds r0, r4, #0
	bl sub_080AF038
	cmp r0, #0
	beq _0802B5B8
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #1
	beq _0802B5A2
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_0802B5A2:
	ldrh r2, [r4, #0x24]
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0802B5B4 @ =0x0000021F
	cmp r1, r0
	bgt _0802B5C4
	adds r0, r2, #4
	strh r0, [r4, #0x24]
	b _0802B5C4
	.align 2, 0
_0802B5B4: .4byte 0x0000021F
_0802B5B8:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl InitializeAnimation
_0802B5C4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802B5C8
sub_0802B5C8: @ 0x0802B5C8
	push {r4, lr}
	adds r4, r0, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802B5EE
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_0802B5EE:
	pop {r4, pc}
