	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0807D494 @ =gRoomControls
	ldrb r2, [r0, #0x10]
	mov sb, r0
	cmp r2, #1
	bne _0807D488
	b _0807D5C4
_0807D488:
	cmp r2, #1
	bgt _0807D498
	cmp r2, #0
	beq _0807D4A4
	b _0807D6CC
	.align 2, 0
_0807D494: .4byte gRoomControls
_0807D498:
	cmp r2, #2
	beq _0807D4A4
	cmp r2, #3
	bne _0807D4A2
	b _0807D5C4
_0807D4A2:
	b _0807D6CC
_0807D4A4:
	mov r1, sb
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #6]
	subs r5, r0, r1
	cmp r5, #7
	ble _0807D4B4
	subs r5, #8
_0807D4B4:
	mov r3, sb
	ldr r0, [r3, #0x30]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	subs r0, r0, r1
	subs r3, r0, #4
	mov r8, r3
	cmp r3, #7
	ble _0807D4CA
	subs r0, #0xc
	mov r8, r0
_0807D4CA:
	mov r0, sb
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	mov ip, r1
	cmp r1, #7
	ble _0807D4E0
	movs r3, #8
	rsbs r3, r3, #0
	add ip, r3
_0807D4E0:
	mov r1, sb
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #3
	mov r2, r8
	subs r0, r2, r0
	adds r7, r5, #0
	adds r7, #0xf8
	cmp r0, r5
	blt _0807D548
	mov r1, ip
	asrs r3, r1, #3
	lsls r1, r3, #8
	ldr r2, [sp]
	adds r1, r2, r1
	asrs r0, r0, #3
	lsls r2, r0, #1
	adds r4, r1, r2
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #4]
	adds r6, r2, r0
	ands r3, r1
	lsls r2, r3, #5
	mov r3, sb
	ldrh r0, [r3, #0x20]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xaf
	bhi _0807D520
	lsrs r3, r1, #0x13
	b _0807D522
_0807D520:
	movs r3, #0x16
_0807D522:
	adds r7, r5, #0
	adds r7, #0xf8
	cmp r3, #0
	ble _0807D548
	ldr r0, _0807D55C @ =0x000003FF
	mov sl, r0
_0807D52E:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r2, #0x20
	mov r0, sl
	ands r2, r0
	subs r3, #1
	cmp r3, #0
	bgt _0807D52E
_0807D548:
	mov r1, sb
	ldrh r0, [r1, #0x18]
	adds r0, #1
	lsls r0, r0, #3
	add r0, r8
	ldrh r2, [r1, #0x1e]
	cmp r7, r2
	blt _0807D560
	adds r1, r7, #0
	b _0807D566
	.align 2, 0
_0807D55C: .4byte 0x000003FF
_0807D560:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r5, r3
_0807D566:
	cmp r0, r1
	blt _0807D56C
	b _0807D6CC
_0807D56C:
	mov r1, ip
	asrs r3, r1, #3
	lsls r1, r3, #8
	ldr r2, [sp]
	adds r1, r2, r1
	asrs r0, r0, #3
	lsls r2, r0, #1
	adds r4, r1, r2
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #4]
	adds r6, r2, r0
	ands r3, r1
	lsls r2, r3, #5
	mov r3, sb
	ldrh r0, [r3, #0x20]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xaf
	bhi _0807D59A
	lsrs r3, r1, #0x13
	b _0807D59C
_0807D59A:
	movs r3, #0x16
_0807D59C:
	cmp r3, #0
	bgt _0807D5A2
	b _0807D6CC
_0807D5A2:
	movs r7, #0x80
	lsls r7, r7, #1
	ldr r5, _0807D5C0 @ =0x000003FF
_0807D5A8:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, r4, r7
	adds r2, #0x20
	ands r2, r5
	subs r3, #1
	cmp r3, #0
	bgt _0807D5A8
	b _0807D6CC
	.align 2, 0
_0807D5C0: .4byte 0x000003FF
_0807D5C4:
	mov r1, sb
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r2, [r1, #8]
	subs r5, r0, r2
	cmp r5, #7
	ble _0807D5D4
	subs r5, #8
_0807D5D4:
	mov r3, sb
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	mov r8, r1
	cmp r1, #7
	ble _0807D5EA
	movs r1, #8
	rsbs r1, r1, #0
	add r8, r1
_0807D5EA:
	mov r3, sb
	ldr r0, [r3, #0x30]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	subs r0, r0, r2
	subs r2, r0, #4
	mov ip, r2
	cmp r2, #7
	ble _0807D600
	subs r0, #0xc
	mov ip, r0
_0807D600:
	mov r3, sb
	ldrh r0, [r3, #0x18]
	lsls r0, r0, #3
	mov r1, ip
	subs r0, r1, r0
	adds r7, r5, #0
	adds r7, #0xa8
	movs r2, #0xb0
	adds r2, r2, r5
	mov sl, r2
	cmp r0, r5
	blt _0807D66A
	asrs r2, r0, #3
	lsls r0, r2, #8
	ldr r3, [sp]
	adds r0, r3, r0
	mov r1, r8
	asrs r3, r1, #3
	lsls r1, r3, #1
	adds r4, r0, r1
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #6
	ldr r1, [sp, #4]
	adds r6, r1, r2
	adds r2, r0, #0
	ands r2, r3
	mov r3, sb
	ldrh r0, [r3, #0x1e]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bhi _0807D646
	lsrs r3, r1, #0x13
	b _0807D648
_0807D646:
	movs r3, #0x20
_0807D648:
	adds r7, r5, #0
	adds r7, #0xa8
	adds r5, #0xb0
	mov sl, r5
	cmp r3, #0
	ble _0807D66A
	movs r5, #0x1f
_0807D656:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, #2
	adds r2, #1
	ands r2, r5
	subs r3, #1
	cmp r3, #0
	bgt _0807D656
_0807D66A:
	mov r1, sb
	ldrh r0, [r1, #0x18]
	adds r0, #1
	lsls r0, r0, #3
	add r0, ip
	mov r2, sl
	ldrh r1, [r1, #0x20]
	cmp r7, r1
	blt _0807D67E
	adds r2, r7, #0
_0807D67E:
	cmp r0, r2
	bge _0807D6CC
	asrs r2, r0, #3
	lsls r0, r2, #8
	ldr r1, [sp]
	adds r0, r1, r0
	mov r1, r8
	asrs r3, r1, #3
	lsls r1, r3, #1
	adds r4, r0, r1
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #6
	ldr r1, [sp, #4]
	adds r6, r1, r2
	adds r2, r0, #0
	ands r2, r3
	mov r3, sb
	ldrh r0, [r3, #0x1e]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bhi _0807D6B0
	lsrs r3, r1, #0x13
	b _0807D6B2
_0807D6B0:
	movs r3, #0x20
_0807D6B2:
	cmp r3, #0
	ble _0807D6CC
	movs r5, #0x1f
_0807D6B8:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, #2
	adds r2, #1
	ands r2, r5
	subs r3, #1
	cmp r3, #0
	bgt _0807D6B8
_0807D6CC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
