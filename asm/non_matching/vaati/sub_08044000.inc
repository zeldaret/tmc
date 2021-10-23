    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _08044070 @ =gUnk_080D1400
	movs r3, #0
	ldr r2, _08044074 @ =gUnk_080D1414
	mov ip, r2
	movs r7, #8
	rsbs r7, r7, #0
	adds r5, r1, r0
	movs r6, #0x18
_0804401C:
	ldr r0, [r4, #0x64]
	lsls r1, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r2, #0x29
	ldrb r1, [r2]
	adds r0, r7, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0x64]
	adds r1, r1, r6
	ldrh r0, [r5]
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #7
	strh r0, [r1, #4]
	mov r2, ip
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	adds r5, #2
	adds r6, #0x10
	adds r3, #1
	cmp r3, #4
	bls _0804401C
	adds r0, r4, #0
	movs r1, #7
	bl InitAnimationForceUpdate
	ldr r1, [r4, #0x64]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl CopyPosition
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08044070: .4byte gUnk_080D1400
_08044074: .4byte gUnk_080D1414
    .syntax divided
