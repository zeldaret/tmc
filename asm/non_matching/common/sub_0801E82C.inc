    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r1, _0801E8AC @ =gUnk_02002B54
	movs r5, #0
	adds r2, r1, #4
_0801E83C:
	ldrb r0, [r2, #0x13]
	adds r3, r1, #4
	mov sl, r3
	cmp r0, #0
	bne _0801E848
	strb r0, [r2]
_0801E848:
	adds r2, #1
	adds r5, #1
	cmp r5, #0x12
	bls _0801E83C
	movs r0, #0
	strb r0, [r1, #0x16]
	adds r2, r1, #0
	adds r2, #0x29
	strb r0, [r2]
	movs r5, #0
	movs r0, #0x17
	adds r0, r0, r1
	mov sb, r0
	movs r3, #0x18
	adds r3, r3, r1
	mov r8, r3
	adds r7, r1, #4
	adds r6, r1, #5
_0801E86C:
	mov r1, sl
	adds r0, r1, r5
	ldrb r0, [r0]
	subs r0, #0x65
	cmp r0, #0x10
	bls _0801E890
	movs r4, #0x12
	subs r4, r4, r5
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl MemCopy
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl MemCopy
_0801E890:
	movs r3, #1
	add sb, r3
	add r8, r3
	adds r7, #1
	adds r6, #1
	adds r5, #1
	cmp r5, #0x11
	bls _0801E86C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E8AC: .4byte gUnk_02002B54
    .syntax divided
