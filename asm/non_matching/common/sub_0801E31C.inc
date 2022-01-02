    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	mov sl, r2
	mov sb, r3
	ldr r0, _0801E3AC @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E3B0 @ =gUnk_02017AA0
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #4
	bl MemClear
	cmp sl, sb
	bge _0801E3DC
	movs r6, #0
	mov r8, sl
	mov r7, r8
	mov r0, r8
	lsls r1, r0, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	ble _0801E35E
	b _0801E45E
_0801E35E:
	mov r1, r8
	lsls r0, r1, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r0, r0, r4
	str r0, [sp, #0x10]
	mov r1, sb
	mov r0, r8
	muls r0, r1, r0
	str r0, [sp, #0x14]
	movs r3, #0
_0801E372:
	adds r0, r3, #0
	mov r1, sl
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E3B4 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E3B8
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E3D2
	.align 2, 0
_0801E3AC: .4byte gUnk_03003DE4
_0801E3B0: .4byte gUnk_02017AA0
_0801E3B4: .4byte gUnk_02018EE0
_0801E3B8:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #0x10]
	subs r4, #4
	str r4, [sp, #0x10]
	ldr r0, [sp, #0x14]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x14]
	subs r7, #1
_0801E3D2:
	add r3, sb
	adds r6, #1
	cmp r6, r7
	ble _0801E372
	b _0801E45E
_0801E3DC:
	movs r6, #0
	mov r8, sb
	mov r7, r8
	mov r4, r8
	lsls r1, r4, #1
	movs r0, #3
	subs r5, r0, r1
	cmp r6, r8
	bgt _0801E45E
	lsls r0, r4, #2
	ldr r1, _0801E438 @ =gUnk_02018EE0
	adds r0, r0, r1
	str r0, [sp, #8]
	mov r0, sl
	mov r4, r8
	muls r4, r0, r4
	str r4, [sp, #0xc]
	movs r3, #0
_0801E400:
	adds r0, r3, #0
	mov r1, sb
	str r3, [sp, #0x18]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r1, sb
	bl Div
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r6, #2
	ldr r4, _0801E438 @ =gUnk_02018EE0
	adds r1, r2, r4
	str r0, [r1]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r3, [sp, #0x18]
	cmp r5, #0
	bge _0801E43C
	adds r0, r5, #6
	adds r5, r0, r2
	b _0801E456
	.align 2, 0
_0801E438: .4byte gUnk_02018EE0
_0801E43C:
	adds r1, r5, #0
	adds r1, #0xa
	subs r0, r6, r7
	lsls r0, r0, #2
	adds r5, r1, r0
	ldr r4, [sp, #8]
	subs r4, #4
	str r4, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0xc]
	subs r7, #1
_0801E456:
	add r3, sl
	adds r6, #1
	cmp r6, r7
	ble _0801E400
_0801E45E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mov r2, r8
	bl sub_0801E290
	ldr r0, _0801E48C @ =gUnk_03003DE4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0801E490 @ =gUnk_02017AA0
	adds r0, r0, r1
	ldr r1, _0801E494 @ =0x04000040
	ldr r2, _0801E498 @ =0xA2600001
	bl sub_0805622C
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801E48C: .4byte gUnk_03003DE4
_0801E490: .4byte gUnk_02017AA0
_0801E494: .4byte 0x04000040
_0801E498: .4byte 0xA2600001
    .syntax divided
