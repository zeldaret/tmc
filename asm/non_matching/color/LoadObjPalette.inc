    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r6, r1, #0
	adds r0, r6, #0
	bl FindPalette
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D0E8
	cmp r6, #0x15
	bhi _0801D064
	movs r4, #1
	b _0801D074
_0801D064:
	ldr r0, _0801D100 @ =gUnk_08133368
	adds r1, r6, #0
	subs r1, #0x16
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r4, [r1, #3]
	movs r0, #0xf
	ands r4, r0
_0801D074:
	adds r0, r4, #0
	bl FindFreeObjPalette
	adds r5, r0, #0
	cmp r5, #0
	bge _0801D090
	bl CleanUpObjPalettes
	adds r0, r4, #0
	bl FindFreeObjPalette
	adds r5, r0, #0
	cmp r5, #0
	blt _0801D0E8
_0801D090:
	lsls r1, r5, #2
	ldr r0, _0801D104 @ =gPaletteList
	adds r3, r1, r0
	movs r0, #0
	strh r6, [r3, #2]
	strb r0, [r3, #1]
	movs r2, #0x10
	rsbs r2, r2, #0
	lsls r0, r4, #4
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	beq _0801D0E0
	movs r0, #0
	mov sl, r0
	movs r1, #0
	mov r8, r1
	movs r0, #0xf
	mov sb, r0
	mov ip, r2
	movs r7, #2
_0801D0BE:
	adds r3, #4
	mov r1, r8
	strh r1, [r3, #2]
	mov r0, sl
	strb r0, [r3, #1]
	lsls r2, r4, #4
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	orrs r0, r2
	mov r1, ip
	ands r0, r1
	orrs r0, r7
	strb r0, [r3]
	subs r4, #1
	cmp r4, #0
	bne _0801D0BE
_0801D0E0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl LoadObjPaletteAtIndex
_0801D0E8:
	ldr r0, [sp]
	adds r1, r5, #0
	bl SetEntityObjPalette
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801D100: .4byte gUnk_08133368
_0801D104: .4byte gPaletteList
    .syntax divided
