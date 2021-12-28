	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MinecartDoor
MinecartDoor: @ 0x08096AD4
	push {lr}
	ldr r2, _08096AE8 @ =gUnk_0812323C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08096AE8: .4byte gUnk_0812323C

	thumb_func_start sub_08096AEC
sub_08096AEC: @ 0x08096AEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_080837B0
	cmp r0, #0
	beq _08096BB6
	ldrb r1, [r4, #0xa]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08096B12
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #1
	strb r0, [r1]
	ldrb r1, [r4, #0xa]
	movs r0, #3
	ands r0, r1
	strb r0, [r4, #0xa]
_08096B12:
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08096B90 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r5, r4, #0
	adds r5, #0x76
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x74
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_08096CEC
	cmp r0, #0
	beq _08096B9C
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096B94
	bl DeleteThisEntity
	b _08096BB6
	.align 2, 0
_08096B90: .4byte gRoomControls
_08096B94:
	adds r0, r4, #0
	bl sub_08096E04
	b _08096BB6
_08096B9C:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldr r0, _08096BB8 @ =0x00004022
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl SetTile
_08096BB6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08096BB8: .4byte 0x00004022

	thumb_func_start sub_08096BBC
sub_08096BBC: @ 0x08096BBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08096CEC
	cmp r0, #0
	beq _08096BF2
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #7
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x76
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldr r0, _08096BF4 @ =0x0000010B
	bl EnqueueSFX
_08096BF2:
	pop {r4, pc}
	.align 2, 0
_08096BF4: .4byte 0x0000010B

	thumb_func_start sub_08096BF8
sub_08096BF8: @ 0x08096BF8
	push {r4, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08096C3A
	adds r0, r4, #0
	bl sub_08096E04
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096C3A
	bl DeleteThisEntity
_08096C3A:
	pop {r4, pc}

	thumb_func_start sub_08096C3C
sub_08096C3C: @ 0x08096C3C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096C56
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _08096CAE
_08096C56:
	ldr r0, _08096C80 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08096C92
	ldrb r2, [r4, #0xa]
	lsls r1, r2, #1
	ldr r0, _08096C84 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	cmp r1, r0
	bne _08096C88
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08083734
	cmp r0, #0
	beq _08096CAE
	b _08096C9C
	.align 2, 0
_08096C80: .4byte gPlayerState
_08096C84: .4byte gPlayerEntity
_08096C88:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	b _08096C98
_08096C92:
	adds r0, r4, #0
	bl sub_08096D84
_08096C98:
	cmp r0, #0
	bne _08096CAE
_08096C9C:
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r2, [r0]
	adds r0, r4, #0
	bl sub_080836DC
_08096CAE:
	pop {r4, pc}

	thumb_func_start sub_08096CB0
sub_08096CB0: @ 0x08096CB0
	push {r4, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08096CE6
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl sub_08083814
	ldr r0, _08096CE8 @ =0x0000010B
	bl EnqueueSFX
_08096CE6:
	pop {r4, pc}
	.align 2, 0
_08096CE8: .4byte 0x0000010B

	thumb_func_start sub_08096CEC
sub_08096CEC: @ 0x08096CEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x7e
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096D06
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _08096D60
_08096D06:
	ldr r0, _08096D40 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08096D64
	ldr r3, _08096D44 @ =gPlayerEntity
	ldrb r2, [r4, #0xa]
	lsls r0, r2, #1
	ldrb r1, [r3, #0x14]
	eors r0, r1
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08096D64
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08096D48
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	movs r5, #0x2e
	ldrsh r2, [r3, r5]
	movs r5, #0x2e
	ldrsh r3, [r4, r5]
	b _08096D58
	.align 2, 0
_08096D40: .4byte gPlayerState
_08096D44: .4byte gPlayerEntity
_08096D48:
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r5, #0x32
	ldrsh r2, [r3, r5]
	movs r5, #0x32
	ldrsh r3, [r4, r5]
_08096D58:
	bl sub_08096D68
	cmp r0, #0
	beq _08096D64
_08096D60:
	movs r0, #1
	b _08096D66
_08096D64:
	movs r0, #0
_08096D66:
	pop {r4, r5, pc}

	thumb_func_start sub_08096D68
sub_08096D68: @ 0x08096D68
	push {lr}
	subs r0, r0, r1
	adds r0, #8
	cmp r0, #0x10
	bhi _08096D7E
	subs r0, r2, r3
	adds r0, #0x30
	cmp r0, #0x60
	bhi _08096D7E
	movs r0, #1
	b _08096D80
_08096D7E:
	movs r0, #0
_08096D80:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08096D84
sub_08096D84: @ 0x08096D84
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	beq _08096DB4
	cmp r0, #1
	bgt _08096D98
	cmp r0, #0
	beq _08096DA2
	b _08096E00
_08096D98:
	cmp r0, #2
	beq _08096DC8
	cmp r0, #3
	beq _08096DE4
	b _08096E00
_08096DA2:
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	ldr r0, _08096DB0 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	b _08096DEE
	.align 2, 0
_08096DB0: .4byte gPlayerEntity
_08096DB4:
	ldr r0, _08096DC4 @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	adds r0, #0xa
	movs r2, #0x2e
	ldrsh r1, [r1, r2]
	b _08096DD4
	.align 2, 0
_08096DC4: .4byte gPlayerEntity
_08096DC8:
	ldr r0, _08096DE0 @ =gPlayerEntity
	movs r2, #0x32
	ldrsh r0, [r0, r2]
	adds r0, #0xa
	movs r2, #0x32
	ldrsh r1, [r1, r2]
_08096DD4:
	subs r0, r0, r1
	cmp r0, #0x64
	bhi _08096E00
	movs r0, #1
	b _08096E02
	.align 2, 0
_08096DE0: .4byte gPlayerEntity
_08096DE4:
	movs r0, #0x2e
	ldrsh r1, [r1, r0]
	ldr r0, _08096DFC @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
_08096DEE:
	subs r0, #0xa
	subs r1, r1, r0
	cmp r1, #0x64
	bhi _08096E00
	movs r0, #1
	b _08096E02
	.align 2, 0
_08096DFC: .4byte gPlayerEntity
_08096E00:
	movs r0, #0
_08096E02:
	pop {pc}

	thumb_func_start sub_08096E04
sub_08096E04: @ 0x08096E04
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0
