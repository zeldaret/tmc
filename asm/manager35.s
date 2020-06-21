	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805DC84
sub_0805DC84: @ 0x0805DC84
	push {lr}
	ldr r2, _0805DC98 @ =gUnk_08108D98
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805DC98: .4byte gUnk_08108D98

	thumb_func_start sub_0805DC9C
sub_0805DC9C: @ 0x0805DC9C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _0805DCAE
	bl DeleteThisEntity
_0805DCAE:
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805DCC2
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	bl DeleteThisEntity
_0805DCC2:
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start sub_0805DCC8
sub_0805DCC8: @ 0x0805DCC8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	beq _0805DD1E
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DCEC
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_0805DCEC:
	ldr r5, _0805DD20 @ =gRoomControls
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x14]
	movs r0, #0x69
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DD1E
	ldrh r0, [r5, #6]
	ldrh r2, [r4, #0x38]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #8]
	ldrh r2, [r4, #0x3a]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
	str r1, [r4, #0x18]
	str r1, [r5, #0x30]
	adds r0, r1, #0
	movs r1, #0x1e
	bl sub_0805E4E0
_0805DD1E:
	pop {r4, r5, pc}
	.align 2, 0
_0805DD20: .4byte gRoomControls

	thumb_func_start sub_0805DD24
sub_0805DD24: @ 0x0805DD24
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	ldr r0, _0805DD64 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805DD60
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DD60
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	bl SetFlag
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	bne _0805DD60
	movs r0, #1
	strb r0, [r1]
_0805DD60:
	pop {r4, pc}
	.align 2, 0
_0805DD64: .4byte gRoomControls

	thumb_func_start sub_0805DD68
sub_0805DD68: @ 0x0805DD68
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #8
	bl sub_0805E4E0
	adds r1, r4, #0
	adds r1, #0x36
	ldrb r0, [r1]
	cmp r0, #0
	beq _0805DD94
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DDAE
	ldr r1, _0805DD90 @ =gRoomControls
	ldr r0, [r4, #0x14]
	str r0, [r1, #0x30]
	b _0805DDAE
	.align 2, 0
_0805DD90: .4byte gRoomControls
_0805DD94:
	ldr r0, _0805DDB0 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0805DDAE
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0805DDAA
	bl DeleteEntity
_0805DDAA:
	bl DeleteThisEntity
_0805DDAE:
	pop {r4, pc}
	.align 2, 0
_0805DDB0: .4byte gRoomControls
