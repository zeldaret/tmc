    .syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r3
	movs r1, #0x20
	mov ip, r1
	cmp r0, #0
	beq _0801D8B2
	movs r0, #0x40
	mov ip, r0
_0801D8B2:
	ldr r0, _0801D8D8 @ =0x00007FFF
	ands r3, r0
	ldr r1, _0801D8DC @ =0x040000D4
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r2, r6
	lsls r7, r6, #1
	mov r0, ip
	lsls r6, r0, #1
_0801D8C4:
	str r4, [r1]
	str r5, [r1, #4]
	str r2, [r1, #8]
	ldr r0, [r1, #8]
	adds r4, r4, r7
	adds r5, r5, r6
	subs r3, #1
	cmp r3, #0
	bne _0801D8C4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D8D8: .4byte 0x00007FFF
_0801D8DC: .4byte 0x040000D4
    .syntax divided
