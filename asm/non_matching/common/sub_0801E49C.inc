    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r1, [sp, #4]
	mov sb, r2
	adds r5, r3, #0
	ldr r0, _0801E5E4 @ =0x0000FFFF
	movs r2, #0xf0
	lsls r2, r2, #3
	ldr r1, _0801E5E8 @ =gUnk_02018EE0
	bl MemFill16
	adds r3, r5, #0
	subs r3, #0x40
	movs r2, #0xff
	ands r3, r2
	ldr r1, _0801E5EC @ =gSineTable
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r7, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r3, r3, r0
	mov sl, r3
	adds r3, r5, #0
	adds r3, #0x68
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	mov r4, r8
	adds r6, r4, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sb
	muls r4, r0, r4
	adds r0, r4, #0
	asrs r0, r0, #8
	ldr r3, [sp, #4]
	adds r4, r3, r0
	adds r3, r5, #0
	subs r3, #0xe8
	ands r3, r2
	adds r0, r3, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	mov r2, r8
	adds r5, r2, r0
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	ldr r2, [sp, #4]
	adds r2, r2, r0
	mov r8, r2
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0801E64C
	movs r0, #1
	str r0, [sp]
	adds r0, r7, #0
	mov r1, sl
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	movs r0, #2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0801E64C
	ldr r5, _0801E5F0 @ =gUnk_03003DE4
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r6, _0801E5F4 @ =gUnk_02017AA0
	adds r0, r0, r6
	movs r1, #0xa0
	lsls r1, r1, #4
	bl MemClear
	ldr r2, _0801E5E8 @ =gUnk_02018EE0
	ldrb r1, [r5]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	adds r1, r0, r6
	movs r3, #0xa0
	mov sl, r3
_0801E5B0:
	ldr r7, [r2]
	ldr r6, [r2, #4]
	ldr r5, [r2, #8]
	adds r2, #0xc
	cmp r7, r6
	ble _0801E5C2
	adds r4, r7, #0
	adds r7, r6, #0
	adds r6, r4, #0
_0801E5C2:
	cmp r7, r5
	ble _0801E5CC
	adds r4, r7, #0
	adds r7, r5, #0
	adds r5, r4, #0
_0801E5CC:
	cmp r6, r5
	ble _0801E5D6
	adds r4, r6, #0
	adds r6, r5, #0
	adds r5, r4, #0
_0801E5D6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq _0801E5F8
	strb r5, [r1]
	strb r7, [r1, #1]
	b _0801E60A
	.align 2, 0
_0801E5E4: .4byte 0x0000FFFF
_0801E5E8: .4byte gUnk_02018EE0
_0801E5EC: .4byte gSineTable
_0801E5F0: .4byte gUnk_03003DE4
_0801E5F4: .4byte gUnk_02017AA0
_0801E5F8:
	cmp r6, r7
	beq _0801E602
	strb r5, [r1]
	strb r6, [r1, #1]
	b _0801E60A
_0801E602:
	cmp r5, r7
	beq _0801E60A
	strb r7, [r1, #1]
	strb r7, [r1]
_0801E60A:
	movs r4, #1
	rsbs r4, r4, #0
	add sl, r4
	adds r1, #2
	mov r0, sl
	cmp r0, #0
	bgt _0801E5B0
	ldr r0, _0801E63C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E640 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E644 @ =0x04000040
	ldr r2, _0801E648 @ =0xA2600001
	bl sub_0805622C
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E63C: .4byte gUnk_03003DE4
_0801E640: .4byte gUnk_02017AA0
_0801E644: .4byte 0x04000040
_0801E648: .4byte 0xA2600001
    .syntax divided
