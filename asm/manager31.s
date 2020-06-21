	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805D630
sub_0805D630: @ 0x0805D630
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	beq _0805D642
	b _0805D768
_0805D642:
	adds r0, #1
	strb r0, [r6, #0xc]
	movs r0, #0x42
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x43
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x44
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x3e
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D680
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x3e
	bl SetGlobalFlag
	b _0805D6D2
_0805D680:
	movs r0, #0x3f
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D69C
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x3f
	bl SetGlobalFlag
	b _0805D6D2
_0805D69C:
	movs r0, #0x40
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D6B8
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x40
	bl SetGlobalFlag
	b _0805D6D2
_0805D6B8:
	movs r0, #0x41
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D6E4
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0805D6E4
	movs r0, #0x41
	bl SetGlobalFlag
_0805D6D2:
	movs r0, #0x42
	bl ClearGlobalFlag
	movs r0, #0x43
	bl ClearGlobalFlag
	movs r0, #0x44
	bl ClearGlobalFlag
_0805D6E4:
	adds r1, r6, #0
	adds r1, #0x22
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r4, _0805D79C @ =gUnk_08108D5C
	movs r5, #0
	mov sb, r1
	movs r7, #1
	ldr r0, _0805D7A0 @ =gRoomControls
	mov r8, r0
_0805D700:
	adds r0, r5, #0
	adds r0, #0x42
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D760
	bl Random
	ldrh r1, [r4, #2]
	bl __modsi3
	adds r2, r0, #0
	ldrh r0, [r4]
	adds r2, r2, r0
	movs r0, #2
	movs r1, #0x5c
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0805D760
	strb r7, [r2, #0xe]
	strb r5, [r2, #0xf]
	mov r1, r8
	ldrh r0, [r1, #6]
	ldrh r1, [r4, #4]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	mov r1, r8
	ldrh r0, [r1, #8]
	ldrh r1, [r4, #6]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldrh r1, [r4, #4]
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldrh r0, [r4, #6]
	adds r1, r2, #0
	adds r1, #0x82
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x38
	strb r7, [r0]
	str r6, [r2, #0x50]
	mov r1, sb
	adds r0, r1, r5
	strb r7, [r0]
_0805D760:
	adds r5, #1
	adds r4, #8
	cmp r5, #2
	ble _0805D700
_0805D768:
	movs r5, #0
_0805D76A:
	adds r4, r5, #0
	adds r4, #0x42
	adds r0, r4, #0
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0805D78E
	adds r0, r6, #0
	adds r0, #0x20
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bge _0805D78E
	adds r0, r4, #0
	bl SetGlobalFlag
_0805D78E:
	adds r5, #1
	cmp r5, #2
	ble _0805D76A
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805D79C: .4byte gUnk_08108D5C
_0805D7A0: .4byte gRoomControls
