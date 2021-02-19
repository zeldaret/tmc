    .syntax unified
	push {lr}
	adds r2, r0, #0
	adds r0, #0x29
	ldrb r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017720
	movs r0, #1
	b _0801773A
_080176F8:
	str r2, [r3, #8]
	movs r0, #1
	strb r0, [r3, #0xc]
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0801771C @ =gUnk_02018EA0
	ldr r0, [r2]
	str r0, [r3, #4]
	ldr r1, [r0]
	str r1, [r3]
	str r3, [r1, #4]
	str r3, [r0]
	str r3, [r2]
	movs r0, #1
	b _0801773A
	.align 2, 0
_0801771C: .4byte gUnk_02018EA0
_08017720:
	ldr r3, _08017740 @ =gUnk_03003C70
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r3, r0
	cmp r1, r3
	bls _08017738
_0801772C:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _080176F8
	adds r3, #0x10
	cmp r1, r3
	bhi _0801772C
_08017738:
	movs r0, #0
_0801773A:
	pop {r1}
	bx r1
	.align 2, 0
_08017740: .4byte gUnk_03003C70
    .syntax divided