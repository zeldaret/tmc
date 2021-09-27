	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _080595C8
	movs r6, #1
	strb r6, [r4, #0xc]
	adds r0, #0x21
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
	bl sub_0805986C
	cmp r0, #0
	beq _080595A8
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080595A4 @ =gUnk_0200B650
	str r5, [r0]
	b _080595B8
	.align 2, 0
_080595A4: .4byte gUnk_0200B650
_080595A8:
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x1f
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #5
	strb r0, [r1]
_080595B8:
	ldr r0, _080595DC @ =gRoomVars
	movs r1, #0xff
	strb r1, [r0, #0x10]
	ldr r1, _080595E0 @ =sub_080595E4
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_080595C8:
	adds r0, r4, #0
	bl sub_08059608
	adds r0, r4, #0
	bl sub_08059690
	adds r0, r4, #0
	bl sub_080596E0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080595DC: .4byte gRoomVars
_080595E0: .4byte sub_080595E4
	.syntax divided
