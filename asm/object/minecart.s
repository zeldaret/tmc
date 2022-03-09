	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08091C0C
sub_08091C0C: @ 0x08091C0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004168
	ldr r1, _08091C30 @ =gPlayerEntity
	adds r0, r4, #0
	bl CopyPosition
	adds r0, r4, #0
	bl sub_080B1AA8
	cmp r0, #0x68
	beq _08091C46
	cmp r0, #0x68
	bhi _08091C34
	cmp r0, #0x67
	beq _08091C3E
	b _08091C80
	.align 2, 0
_08091C30: .4byte gPlayerEntity
_08091C34:
	cmp r0, #0x69
	beq _08091C4E
	cmp r0, #0x6a
	beq _08091C66
	b _08091C80
_08091C3E:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	beq _08091C54
	b _08091C76
_08091C46:
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08091C6C
	b _08091C5C
_08091C4E:
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	bne _08091C5C
_08091C54:
	movs r0, #0
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
	b _08091C86
_08091C5C:
	movs r0, #0x18
	strb r0, [r4, #0x15]
	movs r0, #3
	strb r0, [r4, #0x14]
	b _08091C86
_08091C66:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x18
	bne _08091C76
_08091C6C:
	movs r0, #0x10
	strb r0, [r4, #0x15]
	movs r0, #2
	strb r0, [r4, #0x14]
	b _08091C86
_08091C76:
	movs r0, #8
	strb r0, [r4, #0x15]
	movs r0, #1
	strb r0, [r4, #0x14]
	b _08091C86
_08091C80:
	movs r0, #3
	strb r0, [r4, #0xc]
	b _08091C92
_08091C86:
	movs r0, #3
	strb r0, [r4, #0xc]
	ldr r1, _08091C94 @ =gPlayerEntity
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	strb r0, [r1, #0x14]
_08091C92:
	pop {r4, pc}
	.align 2, 0
_08091C94: .4byte gPlayerEntity

	thumb_func_start sub_08091C98
sub_08091C98: @ 0x08091C98
	push {r4, r5, lr}
	adds r4, r0, #0
	bl LinearMoveUpdate
	ldr r5, _08091CC0 @ =gPlayerEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldr r1, _08091CC4 @ =gRoomControls
	ldrh r0, [r1]
	cmp r0, #0
	bne _08091CBE
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	str r5, [r1, #0x30]
_08091CBE:
	pop {r4, r5, pc}
	.align 2, 0
_08091CC0: .4byte gPlayerEntity
_08091CC4: .4byte gRoomControls

	thumb_func_start sub_08091CC8
sub_08091CC8: @ 0x08091CC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08091D58 @ =gPlayerState
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _08091D64
	movs r0, #1
	strb r0, [r6, #0xc]
	ldrb r0, [r6, #0x15]
	movs r1, #0x10
	eors r0, r1
	strb r0, [r6, #0x15]
	ldrb r0, [r6, #0x14]
	movs r1, #2
	eors r0, r1
	strb r0, [r6, #0x14]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x13
	eors r0, r1
	str r0, [r2, #0x30]
	adds r0, r6, #0
	adds r0, #0x84
	ldr r4, [r0]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r5, _08091D5C @ =gRoomControls
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	ldrh r2, [r5, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	strh r1, [r4]
	ldrb r0, [r5, #5]
	strb r0, [r4, #4]
	ldrb r0, [r6, #0x14]
	strb r0, [r4, #5]
	ldrb r1, [r6, #0x14]
	adds r1, #0x10
	adds r0, r6, #0
	bl InitAnimationForceUpdate
	ldr r0, _08091D60 @ =0x00004022
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r6, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	b _08091D8A
	.align 2, 0
_08091D58: .4byte gPlayerState
_08091D5C: .4byte gRoomControls
_08091D60: .4byte 0x00004022
_08091D64:
	adds r0, r6, #0
	bl UpdateAnimationSingleFrame
	ldr r3, _08091D8C @ =gPlayerEntity
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	adds r3, #0x29
	movs r0, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_08091D8A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08091D8C: .4byte gPlayerEntity

	thumb_func_start sub_08091D90
sub_08091D90: @ 0x08091D90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bge _08091DA0
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_08091DA0:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08091DD8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl GravityUpdate
	cmp r0, #0
	bne _08091DD8
	ldrb r1, [r4, #0xb]
	movs r0, #4
	eors r1, r0
	strb r1, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	strb r1, [r0, #6]
	movs r0, #0x9e
	lsls r0, r0, #1
	bl SoundReq
_08091DD8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08091DDC
sub_08091DDC: @ 0x08091DDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08091E30 @ =gUnk_081223D0
	ldrb r0, [r4, #0x14]
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080B1AF0
	cmp r0, #0xff
	bne _08091E5C
	ldr r0, _08091E34 @ =gPlayerEntity
	ldrb r1, [r4, #0x14]
	bl sub_0807BD14
	cmp r0, #0
	beq _08091E5C
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r4, #0x11]
	movs r0, #5
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08091E40
	cmp r0, #8
	bgt _08091E38
	cmp r0, #0
	beq _08091E40
	b _08091E44
	.align 2, 0
_08091E30: .4byte gUnk_081223D0
_08091E34: .4byte gPlayerEntity
_08091E38:
	cmp r0, #0x10
	beq _08091E40
	cmp r0, #0x18
	bne _08091E44
_08091E40:
	movs r0, #0xa0
	strh r0, [r4, #0x24]
_08091E44:
	ldr r0, _08091E54 @ =gPlayerEntity
	ldrb r1, [r4, #0x15]
	strb r1, [r0, #0x15]
	ldr r0, _08091E58 @ =gRoomControls
	str r4, [r0, #0x30]
	movs r0, #1
	b _08091E5E
	.align 2, 0
_08091E54: .4byte gPlayerEntity
_08091E58: .4byte gRoomControls
_08091E5C:
	movs r0, #0
_08091E5E:
	pop {r4, pc}
