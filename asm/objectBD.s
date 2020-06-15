	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectBD
ObjectBD: @ 0x080A225C
	push {lr}
	ldr r2, _080A2270 @ =gUnk_0812503C
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A2270: .4byte gUnk_0812503C

	thumb_func_start sub_080A2274
sub_080A2274: @ 0x080A2274
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080A22AE
	adds r0, r1, #0
	bl sub_080A2340
	movs r0, #0xbd
	movs r1, #1
	movs r2, #0
	bl CreateObject
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	movs r1, #3
	cmp r0, #1
	bne _080A229C
	movs r1, #2
_080A229C:
	movs r0, #0xbd
	movs r2, #0
	bl CreateObject
	movs r0, #0xbd
	movs r1, #4
	movs r2, #0
	bl CreateObject
_080A22AE:
	pop {pc}

	thumb_func_start sub_080A22B0
sub_080A22B0: @ 0x080A22B0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080A22C0
	adds r0, r1, #0
	bl sub_080A2340
_080A22C0:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080A22C4
sub_080A22C4: @ 0x080A22C4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	beq _080A22FC
	cmp r5, #1
	beq _080A231C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A233E
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0xf]
	ldrb r1, [r4, #0xd]
	adds r0, r1, r0
	strb r0, [r4, #0x1e]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _080A233E
	b _080A233A
_080A22FC:
	adds r0, r4, #0
	bl sub_080A2340
	movs r0, #8
	strb r0, [r4, #0xe]
	strb r5, [r4, #0xf]
	ldrb r0, [r4, #0x1e]
	strb r0, [r4, #0xd]
	bl Random
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #0x1e
	strh r0, [r4, #0x24]
	b _080A233E
_080A231C:
	ldrh r0, [r4, #0x24]
	subs r0, #1
	strh r0, [r4, #0x24]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A233E
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #4
	adds r0, #0x1e
	strh r0, [r4, #0x24]
	movs r0, #2
	b _080A233C
_080A233A:
	movs r0, #1
_080A233C:
	strb r0, [r4, #0xc]
_080A233E:
	pop {r4, r5, pc}

	thumb_func_start sub_080A2340
sub_080A2340: @ 0x080A2340
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #3
	ldr r2, _080A239C @ =gUnk_08125014
	adds r1, r1, r2
	ldrh r2, [r1]
	strh r2, [r0, #0x2e]
	ldrh r2, [r1, #2]
	strh r2, [r0, #0x32]
	ldrh r2, [r1, #4]
	strb r2, [r0, #0x1e]
	ldrb r1, [r1, #6]
	movs r2, #0x29
	adds r2, r2, r0
	mov ip, r2
	movs r2, #7
	ands r2, r1
	mov r1, ip
	ldrb r3, [r1]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	ldrb r3, [r0, #0x19]
	movs r2, #0x3f
	adds r1, r2, #0
	ands r1, r3
	movs r3, #0x40
	orrs r1, r3
	strb r1, [r0, #0x19]
	ldrb r1, [r0, #0x1b]
	ands r2, r1
	orrs r2, r3
	strb r2, [r0, #0x1b]
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	movs r2, #2
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0
_080A239C: .4byte gUnk_08125014
