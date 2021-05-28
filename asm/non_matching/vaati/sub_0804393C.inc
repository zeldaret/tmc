    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r0, [r5, #0x64]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	cmp r2, #0
	beq _0804397C
	adds r0, r1, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	bhi _0804397C
	ldr r4, _08043978 @ =gUnk_080D1362
	ldrb r3, [r5, #0xa]
	lsls r1, r3, #4
	lsrs r0, r2, #0x1b
	movs r2, #0xf
	ands r0, r2
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r4, [r1]
	adds r6, r3, #0
	b _08043980
	.align 2, 0
_08043978: .4byte gUnk_080D1362
_0804397C:
	movs r4, #0
	ldrb r6, [r5, #0xa]
_08043980:
	lsls r0, r6, #4
	adds r0, #0x18
	ldr r2, [r5, #0x64]
	mov ip, r2
	adds r2, r2, r0
	ldrb r0, [r2, #0xc]
	adds r0, r4, r0
	lsls r4, r0, #8
	ldr r3, _08043A0C @ =gSineTable
	ldrb r1, [r2, #5]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r7, #0
	ldrsh r0, [r0, r7]
	rsbs r0, r0, #0
	adds r7, r0, #0
	muls r7, r4, r7
	mov r8, r7
	movs r0, #0x7f
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r7, #0
	ldrsh r0, [r1, r7]
	muls r0, r4, r0
	cmp r0, #0
	bge _080439BC
	adds r0, #0xff
_080439BC:
	asrs r4, r0, #8
	ldrb r1, [r2, #1]
	lsls r0, r1, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r2, r0, #0
	muls r2, r4, r2
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r3, #0
	ldrsh r0, [r1, r3]
	rsbs r0, r0, #0
	adds r3, r0, #0
	muls r3, r4, r3
	adds r0, r6, #1
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0]
	adds r1, r5, #0
	bl PositionRelative
	ldr r0, [r5, #0x34]
	add r0, r8
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x64]
	ldrb r0, [r5, #0xa]
	adds r0, #1
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #0x63
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08043A0C: .4byte gSineTable
    .syntax divided
