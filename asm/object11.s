	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object11
Object11: @ 0x08084D34
	push {r4, lr}
	adds r4, r0, #0
	bl CheckDontUpdate
	cmp r0, #0
	bne _08084D50
	ldr r0, _08084D54 @ =gUnk_0812057C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_08084D50:
	pop {r4, pc}
	.align 2, 0
_08084D54: .4byte gUnk_0812057C

	thumb_func_start sub_08084D58
sub_08084D58: @ 0x08084D58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldrb r0, [r7, #0xa]
	cmp r0, #3
	bne _08084D6C
	adds r0, r7, #0
	bl sub_08084F8C
_08084D6C:
	adds r0, r7, #0
	bl sub_08004168
	ldrb r0, [r7, #0xa]
	cmp r0, #4
	bne _08084D7E
	adds r0, r7, #0
	bl sub_08084F8C
_08084D7E:
	movs r0, #2
	strb r0, [r7, #0xc]
	ldrb r0, [r7, #0x10]
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r7, #0x10]
	ldrb r1, [r7, #0x19]
	movs r5, #0x3f
	adds r0, r5, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r7, #0x19]
	ldr r0, _08084E48 @ =gUnk_08120588
	mov r8, r0
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #1]
	strb r0, [r7, #0x1d]
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1c]
	movs r2, #0
	movs r0, #0x80
	strh r0, [r7, #0x24]
	ldr r0, _08084E4C @ =gPlayerEntity
	adds r0, #0x38
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x38
	strb r0, [r6]
	adds r1, r7, #0
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	subs r1, #9
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x6e
	strb r0, [r1]
	subs r1, #4
	movs r0, #4
	strb r0, [r1]
	ldr r0, _08084E50 @ =gUnk_081205B4
	str r0, [r7, #0x48]
	adds r0, r7, #0
	adds r0, #0x72
	strb r2, [r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r4, _08084E54 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r5
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	lsls r1, r1, #6
	orrs r0, r1
	ldrb r1, [r6]
	bl sub_080001DA
	adds r1, r7, #0
	adds r1, #0x70
	strh r0, [r1]
	ldr r0, _08084E58 @ =0x00004022
	movs r3, #0x2e
	ldrsh r1, [r7, r3]
	ldrh r2, [r4, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r5
	movs r3, #0x32
	ldrsh r2, [r7, r3]
	ldrh r3, [r4, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r5
	lsls r2, r2, #6
	orrs r1, r2
	ldrb r2, [r6]
	bl SetTile
	ldrb r0, [r7, #0xa]
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0]
	adds r0, r7, #0
	bl InitializeAnimation
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08084E48: .4byte gUnk_08120588
_08084E4C: .4byte gPlayerEntity
_08084E50: .4byte gUnk_081205B4
_08084E54: .4byte gRoomControls
_08084E58: .4byte 0x00004022

	thumb_func_start sub_08084E5C
sub_08084E5C: @ 0x08084E5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08084EAC @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08084E7A
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08084EA8
_08084E7A:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08084EB0 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r1, [r1]
	bl sub_0807BA8C
	bl DeleteThisEntity
_08084EA8:
	pop {r4, r5, pc}
	.align 2, 0
_08084EAC: .4byte gPlayerState
_08084EB0: .4byte gRoomControls

	thumb_func_start sub_08084EB4
sub_08084EB4: @ 0x08084EB4
	push {lr}
	ldr r2, _08084EC8 @ =gUnk_0812059C
	ldrb r1, [r0, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084EC8: .4byte gUnk_0812059C

	thumb_func_start sub_08084ECC
sub_08084ECC: @ 0x08084ECC
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	bl sub_08084ED8
	pop {pc}

	thumb_func_start sub_08084ED8
sub_08084ED8: @ 0x08084ED8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08084E5C
	adds r0, r4, #0
	bl sub_0806F4E8
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _08084EFA
	subs r0, #1
	strb r0, [r4, #0x1d]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08084EFA
	movs r0, #2
	strb r0, [r4, #0xd]
_08084EFA:
	pop {r4, pc}

	thumb_func_start sub_08084EFC
sub_08084EFC: @ 0x08084EFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x72
	ldrb r1, [r2]
	cmp r1, #0
	bne _08084F42
	movs r0, #1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r0, #0xe
	ldrh r0, [r0]
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08084F7C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B9B8
_08084F42:
	ldr r0, _08084F80 @ =gPlayerState
	ldrb r1, [r0, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08084F5C
	adds r0, r5, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x13
	beq _08084F62
_08084F5C:
	adds r0, r5, #0
	bl sub_08084F8C
_08084F62:
	adds r0, r5, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08084F7A
	ldrb r1, [r5, #0x1c]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _08084F7A
	bl DeleteThisEntity
_08084F7A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08084F7C: .4byte gRoomControls
_08084F80: .4byte gPlayerState

	thumb_func_start sub_08084F84
sub_08084F84: @ 0x08084F84
	bx lr
	.align 2, 0

	thumb_func_start sub_08084F88
sub_08084F88: @ 0x08084F88
	bx lr
	.align 2, 0

	thumb_func_start sub_08084F8C
sub_08084F8C: @ 0x08084F8C
	push {lr}
	ldrb r1, [r0, #0xb]
	cmp r1, #0xf
	beq _08084FA4
	cmp r1, #0xf
	bgt _08084F9E
	cmp r1, #0
	beq _08084FB8
	b _08084FAE
_08084F9E:
	cmp r1, #0xff
	bne _08084FAE
	b _08084FB8
_08084FA4:
	ldrb r1, [r0, #0xe]
	movs r2, #0x80
	bl CreateFx
	b _08084FB8
_08084FAE:
	ldrb r1, [r0, #0xb]
	ldrb r2, [r0, #0xe]
	movs r3, #0
	bl CreateObjectWithParent
_08084FB8:
	bl DeleteThisEntity
	pop {pc}
	.align 2, 0
