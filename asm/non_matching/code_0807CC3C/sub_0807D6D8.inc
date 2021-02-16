	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp]
	str r1, [sp, #4]
	ldr r5, _0807D8BC @ =gRoomControls
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _0807D6F2
	b _0807DA62
_0807D6F2:
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	bne _0807D6FA
	b _0807DA62
_0807D6FA:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	movs r4, #0x10
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [sp, #0x24]
	ldr r3, [r5, #0x30]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	subs r0, r0, r1
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ands r0, r4
	str r0, [sp, #0x28]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	subs r0, r0, r1
	ands r0, r2
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	subs r0, r0, r1
	str r0, [sp, #0x20]
	ldrh r0, [r5, #0x18]
	adds r2, r0, #0
	muls r2, r0, r2
	str r2, [sp, #0xc]
	ldrh r3, [r5, #0x1a]
	str r3, [sp, #8]
	adds r4, r3, #0
	muls r4, r3, r4
	str r4, [sp, #0x10]
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	lsls r0, r4, #1
	rsbs r0, r0, #0
	adds r0, #1
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	lsls r6, r2, #1
	adds r7, r0, r6
	adds r2, r4, #0
	muls r2, r1, r2
	mov r8, r2
	mov r0, r8
	ldr r1, [sp, #0xc]
	bl __divsi3
	mov ip, r0
	cmp sb, ip
	ble _0807D778
	b _0807D8D8
_0807D778:
	mov sl, r5
	ldr r3, [sp, #0xc]
	adds r0, r6, r3
	lsls r0, r0, #1
	str r0, [sp, #0x3c]
	mov r0, r8
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x14]
	subs r1, r1, r4
	mov r8, r1
	ldr r2, [sp, #0x14]
	adds r6, r4, r2
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, [sp, #0x24]
	adds r0, r3, r0
	str r0, [sp, #0x2c]
_0807D79A:
	ldr r0, [sp, #0x28]
	adds r0, #0xb0
	ldr r1, [sp, #0x18]
	add r1, sb
	cmp r0, r1
	ble _0807D812
	ldr r0, [sp, #0x20]
	add r0, sb
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807D812
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x2c]
	cmp r0, r6
	ble _0807D7EA
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #1
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D7EA:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807D812
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807D812:
	ldr r0, [sp, #0x18]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r1, #0
	adds r0, #8
	ldr r3, [sp, #0x28]
	cmp r3, r0
	bge _0807D88E
	ldr r3, [sp, #0x20]
	subs r0, r3, r2
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807D88E
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x2c]
	cmp r0, r6
	ble _0807D866
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #4
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D866:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807D88E
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #8
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807D88E:
	cmp r7, #0
	ble _0807D8C0
	lsls r0, r4, #2
	rsbs r0, r0, #0
	adds r0, #4
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, [sp, #0x3c]
	adds r0, r0, r2
	adds r7, r7, r0
	ldr r3, [sp, #0x40]
	subs r3, r3, r1
	str r3, [sp, #0x40]
	movs r0, #1
	add r8, r0
	subs r6, #1
	subs r4, #1
	adds r0, r3, #0
	ldr r1, [sp, #0xc]
	bl __divsi3
	mov ip, r0
	b _0807D8C4
	.align 2, 0
_0807D8BC: .4byte gRoomControls
_0807D8C0:
	ldr r1, [sp, #0x3c]
	adds r7, r7, r1
_0807D8C4:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #2
	ldr r3, [sp, #0x3c]
	adds r3, r3, r0
	str r3, [sp, #0x3c]
	movs r0, #1
	add sb, r0
	cmp sb, ip
	bgt _0807D8D8
	b _0807D79A
_0807D8D8:
	movs r4, #0
	ldr r1, [sp, #8]
	mov sb, r1
	ldr r2, [sp, #0x10]
	lsls r6, r2, #1
	lsls r0, r1, #1
	rsbs r0, r0, #0
	adds r0, #1
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	adds r7, r6, r0
	mov r5, sb
	muls r5, r3, r5
	adds r0, r5, #0
	adds r1, r2, #0
	bl __divsi3
	mov ip, r0
	cmp r4, ip
	ble _0807D902
	b _0807DA62
_0807D902:
	ldr r0, _0807DA40 @ =gRoomControls
	mov sl, r0
	ldr r1, [sp, #0x10]
	adds r0, r6, r1
	lsls r0, r0, #1
	str r0, [sp, #0x34]
	ldr r6, [sp, #0x14]
	mov r8, r6
	str r5, [sp, #0x38]
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r2, [sp, #0x24]
	adds r3, r2, r3
	str r3, [sp, #0x30]
_0807D91E:
	ldr r0, [sp, #0x28]
	adds r0, #0xb0
	ldr r1, [sp, #0x18]
	add r1, sb
	cmp r0, r1
	ble _0807D996
	ldr r0, [sp, #0x20]
	add r0, sb
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807D996
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x30]
	cmp r0, r6
	ble _0807D96E
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #0x10
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D96E:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807D996
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807D996:
	ldr r0, [sp, #0x18]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r1, #0
	adds r0, #8
	ldr r3, [sp, #0x28]
	cmp r3, r0
	bge _0807DA12
	ldr r3, [sp, #0x20]
	subs r0, r3, r2
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807DA12
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x30]
	cmp r0, r6
	ble _0807D9EA
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #0x40
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D9EA:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807DA12
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807DA12:
	cmp r7, #0
	ble _0807DA44
	mov r1, sb
	lsls r0, r1, #2
	rsbs r0, r0, #0
	adds r0, #4
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
	ldr r3, [sp, #0x34]
	adds r0, r3, r0
	adds r7, r7, r0
	ldr r0, [sp, #0x38]
	subs r0, r0, r2
	str r0, [sp, #0x38]
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	ldr r1, [sp, #0x10]
	bl __divsi3
	mov ip, r0
	b _0807DA48
	.align 2, 0
_0807DA40: .4byte gRoomControls
_0807DA44:
	ldr r2, [sp, #0x34]
	adds r7, r7, r2
_0807DA48:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #2
	ldr r1, [sp, #0x34]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r6, #1
	adds r4, #1
	cmp r4, ip
	bgt _0807DA62
	b _0807D91E
_0807DA62:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	.syntax divided
