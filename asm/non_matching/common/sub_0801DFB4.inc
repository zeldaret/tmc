    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r7, _0801E004 @ =gFuseInfo
	adds r0, r7, #0
	movs r1, #0x10
	bl MemClear
	strh r4, [r7, #6]
	strh r5, [r7, #8]
	strh r6, [r7, #0xa]
	mov r0, r8
	str r0, [r7, #0xc]
	ldr r0, _0801E008 @ =gUnk_03003DF0
	ldrb r0, [r0, #2]
	strb r0, [r7, #3]
	mov r1, r8
	cmp r1, #0
	beq _0801DFF8
	ldrb r1, [r1, #0x11]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	strb r0, [r7, #4]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, r8
	strb r0, [r1, #0x11]
_0801DFF8:
	movs r0, #0
	strb r0, [r7]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E004: .4byte gFuseInfo
_0801E008: .4byte gUnk_03003DF0
    .syntax divided
