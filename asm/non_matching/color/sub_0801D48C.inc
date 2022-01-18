    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r3, r1, #0
	ldr r0, _0801D50C @ =gPaletteList
	mov r8, r0
	lsls r0, r6, #2
	mov r1, r8
	adds r4, r0, r1
	ldrb r0, [r4]
	lsrs r5, r0, #4
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	beq _0801D4F8
	ldr r2, _0801D510 @ =gPaletteBuffer
	lsls r0, r3, #5
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r7, r0, r2
	lsls r0, r3, #2
	add r8, r0
	lsls r0, r6, #5
	adds r0, r0, r1
	adds r6, r0, r2
	movs r3, #0
_0801D4C8:
	ldr r0, [r4]
	mov r1, r8
	adds r1, #4
	mov r8, r1
	subs r1, #4
	stm r1!, {r0}
	strb r3, [r4]
	strb r3, [r4, #1]
	strh r3, [r4, #2]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0x20
	str r3, [sp]
	bl MemCopy
	adds r6, #0x20
	adds r4, #4
	adds r7, #0x20
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	ldr r3, [sp]
	cmp r5, r0
	bne _0801D4C8
_0801D4F8:
	ldr r0, _0801D514 @ =gUsedPalettes
	ldr r1, [r0]
	ldr r2, _0801D518 @ =0xFFFF0000
	orrs r1, r2
	str r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D50C: .4byte gPaletteList
_0801D510: .4byte gPaletteBuffer
_0801D514: .4byte gUsedPalettes
_0801D518: .4byte 0xFFFF0000
    .syntax divided
