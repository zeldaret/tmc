    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	adds r4, r1, #0
	movs r0, #0x6a
	movs r1, #0x1e
	movs r2, #1
	bl CreateObject
	adds r5, r0, #0
	cmp r5, #0
	beq _08095F2A
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _08095EE0
	movs r7, #0x10
	movs r6, #0x1f
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r0
	movs r2, #0
	mov r8, r2
	b _08095F02
_08095EE0:
	movs r7, #8
	movs r6, #0xf
	movs r0, #0x80
	lsls r0, r0, #0xb
	mov sl, r0
	ldr r4, _08095F34 @ =gUnk_08122B0E
	bl Random
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r0, #0
	ldrsh r2, [r1, r0]
	mov r8, r2
	movs r0, #0xff
	strb r0, [r5, #0xb]
_08095F02:
	bl Random
	adds r4, r0, #0
	ands r4, r6
	subs r4, r7, r4
	bl Random
	ands r6, r0
	subs r3, r7, r6
	lsls r4, r4, #0x10
	lsls r3, r3, #0x10
	mov r0, sb
	adds r1, r5, #0
	adds r2, r4, #0
	bl PositionRelative
	mov r2, sl
	str r2, [r5, #0x20]
	mov r0, r8
	strh r0, [r5, #0x24]
_08095F2A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08095F34: .4byte gUnk_08122B0E
    .syntax divided
