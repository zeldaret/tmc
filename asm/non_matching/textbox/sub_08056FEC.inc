
    .syntax unified

	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r5, r1, #0
	bl sub_0801D51C
	adds r2, r0, #0
	ldr r0, _08057040 @ =0x0FFFFFFF
	ands r2, r0
	movs r4, #0
	movs r3, #0xf
_08057002:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r2, #0
	ands r0, r3
	strb r0, [r1]
	adds r4, #1
	lsrs r2, r2, #4
	cmp r2, #0
	bne _08057002
	movs r3, #0
	subs r2, r4, #1
	cmp r2, #0
	blt _08057032
	movs r6, #0x30
_0805701E:
	adds r1, r5, r3
	mov r7, sp
	adds r0, r7, r2
	ldrb r0, [r0]
	orrs r0, r6
	strb r0, [r1]
	adds r3, #1
	subs r2, #1
	cmp r2, #0
	bge _0805701E
_08057032:
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057040: .4byte 0x0FFFFFFF

    .syntax divided
