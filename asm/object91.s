	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object91
Object91: @ 0x0809C3C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809C3E8 @ =gUnk_08123DD4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_0809C3E8: .4byte gUnk_08123DD4

	thumb_func_start sub_0809C3EC
sub_0809C3EC: @ 0x0809C3EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #7
	bls _0809C400
	b _0809C5A4
_0809C400:
	lsls r0, r0, #2
	ldr r1, _0809C40C @ =_0809C410
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C40C: .4byte _0809C410
_0809C410: @ jump table
	.4byte _0809C430 @ case 0
	.4byte _0809C53E @ case 1
	.4byte _0809C53E @ case 2
	.4byte _0809C53E @ case 3
	.4byte _0809C53E @ case 4
	.4byte _0809C586 @ case 5
	.4byte _0809C440 @ case 6
	.4byte _0809C5BA @ case 7
_0809C430:
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	adds r1, r4, #0
	adds r1, #0x7e
	movs r0, #0
	strh r0, [r1]
_0809C440:
	movs r0, #1
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0xf0
	strb r0, [r1]
	ldr r1, _0809C4B4 @ =gRoomControls
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r2, [r1, #6]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0xa0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x7b
	movs r0, #0x80
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0809C52E
	subs r1, #0x19
	movs r0, #0x29
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe0
	strb r0, [r1]
	movs r0, #0x30
	bl sub_0801D8E0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r2, [r0]
	mov r8, r0
	cmp r2, #0
	bne _0809C4B8
	bl DeleteThisEntity
	b _0809C5BA
	.align 2, 0
_0809C4B4: .4byte gRoomControls
_0809C4B8:
	str r2, [r4, #0x64]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #5
	strb r0, [r1, #1]
	movs r5, #0
	mov r7, r8
_0809C4C6:
	adds r6, r5, #1
	adds r0, r4, #0
	movs r1, #0x91
	adds r2, r6, #0
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0809C4EE
	adds r1, r0, #0
	adds r1, #0x84
	ldr r0, [r7]
	str r0, [r1]
	ldr r1, [r7]
	lsls r0, r5, #2
	adds r1, #0x20
	adds r1, r1, r0
	ldr r0, [r4, #0x54]
	str r0, [r1]
_0809C4EE:
	adds r5, r6, #0
	cmp r5, #3
	bls _0809C4C6
	adds r0, r4, #0
	movs r1, #0x91
	movs r2, #5
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x54]
	cmp r0, #0
	beq _0809C510
	adds r1, r0, #0
	adds r1, #0x84
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
_0809C510:
	adds r0, r4, #0
	movs r1, #0x91
	movs r2, #6
	movs r3, #0
	bl CreateObjectWithParent
	str r0, [r4, #0x50]
	cmp r0, #0
	beq _0809C5A4
	adds r1, r0, #0
	adds r1, #0x84
	mov r2, r8
	ldr r0, [r2]
	str r0, [r1]
	b _0809C5A4
_0809C52E:
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0xd7
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xe0
	strb r0, [r1]
	b _0809C5A4
_0809C53E:
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x79
	strb r1, [r0]
	ldrb r1, [r4, #0xa]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0809C55A
	strb r2, [r4, #0xf]
	b _0809C55E
_0809C55A:
	movs r0, #0xfe
	strb r0, [r4, #0xf]
_0809C55E:
	adds r0, r4, #0
	adds r0, #0x74
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	ldrb r1, [r4, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0809C57E
	adds r1, r4, #0
	adds r1, #0x76
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _0809C5A4
_0809C57E:
	adds r0, r4, #0
	adds r0, #0x76
	strh r2, [r0]
	b _0809C5A4
_0809C586:
	adds r0, r4, #0
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x79
	movs r0, #0x1c
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	str r4, [r0, #8]
_0809C5A4:
	ldr r0, _0809C5C0 @ =gUnk_08123DDC
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r1, [r1]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0809C5C4
_0809C5BA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809C5C0: .4byte gUnk_08123DDC

	thumb_func_start sub_0809C5C4
sub_0809C5C4: @ 0x0809C5C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #7
	bls _0809C5D0
	b _0809C7DE
_0809C5D0:
	lsls r0, r0, #2
	ldr r1, _0809C5DC @ =_0809C5E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809C5DC: .4byte _0809C5E0
_0809C5E0: @ jump table
	.4byte _0809C738 @ case 0
	.4byte _0809C600 @ case 1
	.4byte _0809C600 @ case 2
	.4byte _0809C600 @ case 3
	.4byte _0809C600 @ case 4
	.4byte _0809C6B8 @ case 5
	.4byte _0809C7B4 @ case 6
	.4byte _0809C7D2 @ case 7
_0809C600:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r6, r5, #0
	adds r6, #0x84
	cmp r0, #6
	bne _0809C630
	movs r0, #0xf
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _0809C624
	ldr r0, [r6]
	ldrb r0, [r0]
	rsbs r0, r0, #0
	b _0809C628
_0809C624:
	ldr r0, [r6]
	ldrb r0, [r0]
_0809C628:
	strb r0, [r5, #0xf]
	adds r0, r5, #0
	bl sub_0809CBE4
_0809C630:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x76
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	lsls r0, r3, #0xd
	lsrs r3, r0, #8
	ldr r0, _0809C660 @ =0xFFFFE000
	adds r3, r3, r0
	ldr r0, [r6]
	ldr r0, [r0, #8]
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	bne _0809C664
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r3, r1
	b _0809C66C
	.align 2, 0
_0809C660: .4byte 0xFFFFE000
_0809C664:
	lsrs r0, r3, #1
	movs r1, #0x88
	lsls r1, r1, #6
	adds r3, r0, r1
_0809C66C:
	adds r2, r4, #0
	adds r2, #0x7b
	ldr r1, _0809C6B0 @ =gUnk_08123E18
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	ldrb r2, [r2]
	adds r0, r0, r2
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_0809CB70
	ldr r2, [r5, #0x50]
	adds r2, #0x7b
	ldr r1, _0809C6B4 @ =gUnk_08123E1C
	ldrb r0, [r5, #0xa]
	subs r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r2, [r2]
	adds r1, r1, r2
	adds r0, r5, #0
	adds r0, #0x79
	ldrb r0, [r0]
	adds r0, r0, r1
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	b _0809C7BC
	.align 2, 0
_0809C6B0: .4byte gUnk_08123E18
_0809C6B4: .4byte gUnk_08123E1C
_0809C6B8:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl sub_0806FAD8
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #0xd]
	adds r6, r5, #0
	adds r6, #0x79
	adds r7, r5, #0
	adds r7, #0x76
	cmp r0, #4
	beq _0809C6F6
	adds r0, r5, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809C6F6
	ldrb r0, [r6]
	cmp r0, #0x1c
	bls _0809C6E4
	subs r0, #1
	strb r0, [r6]
_0809C6E4:
	ldrh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	bls _0809C6F4
	subs r0, #1
	strh r0, [r7]
	b _0809C6F6
_0809C6F4:
	strh r1, [r7]
_0809C6F6:
	ldr r4, [r5, #0x50]
	adds r0, r4, #0
	adds r0, #0x74
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #9
	bl __divsi3
	adds r3, r0, #0
	ldrb r0, [r6]
	lsls r0, r0, #8
	muls r0, r3, r0
	lsrs r3, r0, #8
	adds r4, #0x7b
	ldrb r0, [r4]
	adds r0, #0x80
	rsbs r0, r0, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r0, r5, #0
	adds r2, r3, #0
	bl sub_0809CB70
	ldr r0, [r5, #0x50]
	adds r0, #0x7b
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrh r1, [r7]
	adds r0, r5, #0
	adds r0, #0x74
	b _0809C7C4
_0809C738:
	movs r0, #0x37
	bl CheckFlags
	cmp r0, #0
	beq _0809C74A
	adds r0, r5, #0
	movs r1, #0x1e
	bl sub_0805E4E0
_0809C74A:
	ldr r1, _0809C7A8 @ =gUnk_08123DF8
	ldrb r0, [r5, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0809C7BC
	ldr r0, _0809C7AC @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809C772
	ldr r0, [r5, #0x54]
	bl sub_080A2B80
_0809C772:
	adds r3, r5, #0
	adds r3, #0x7e
	ldrh r0, [r3]
	cmp r0, #0
	beq _0809C7BC
	ldr r2, [r5, #0x54]
	movs r1, #0
	ldrsh r0, [r3, r1]
	ldr r1, [r2, #0x20]
	subs r1, r1, r0
	str r1, [r2, #0x20]
	ldr r0, [r2, #0x34]
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r0, [r5, #0x54]
	ldr r1, [r0, #0x20]
	movs r0, #0xc0
	lsls r0, r0, #6
	cmp r1, r0
	beq _0809C7A0
	ldr r0, _0809C7B0 @ =0xFFFFD000
	cmp r1, r0
	bne _0809C7BC
_0809C7A0:
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	b _0809C7BC
	.align 2, 0
_0809C7A8: .4byte gUnk_08123DF8
_0809C7AC: .4byte gUnk_030010A0
_0809C7B0: .4byte 0xFFFFD000
_0809C7B4:
	ldr r0, [r5, #0x50]
	adds r1, r5, #0
	bl CopyPosition
_0809C7BC:
	adds r0, r5, #0
	adds r0, #0x76
	ldrh r1, [r0]
	subs r0, #2
_0809C7C4:
	ldrh r2, [r0]
	adds r0, #6
	ldrh r3, [r0]
	adds r0, r5, #0
	bl sub_0805EC9C
	b _0809C7DE
_0809C7D2:
	ldr r0, _0809C7E0 @ =gRoomControls
	ldr r0, [r0, #0x30]
	cmp r0, r5
	beq _0809C7DE
	bl DeleteThisEntity
_0809C7DE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809C7E0: .4byte gRoomControls

	thumb_func_start sub_0809C7E4
sub_0809C7E4: @ 0x0809C7E4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0809C84A
	adds r3, r5, #0
	adds r3, #0x7e
	ldrh r0, [r3]
	cmp r0, #0
	bne _0809C82A
	ldr r2, [r5, #0x54]
	movs r0, #0x36
	ldrsh r1, [r2, r0]
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0809C814
	ldr r0, [r2, #0x34]
	ldr r1, _0809C810 @ =0xFFFFC000
	adds r0, r0, r1
	str r0, [r2, #0x34]
	b _0809C82A
	.align 2, 0
_0809C810: .4byte 0xFFFFC000
_0809C814:
	ldr r0, [r2, #0x34]
	ldr r1, _0809C84C @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r2, #0x34]
	ldr r1, [r5, #0x54]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r1, #0x20]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3]
_0809C82A:
	adds r4, r5, #0
	adds r4, #0x79
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0809C84A
	ldr r0, _0809C850 @ =0x00000B43
	bl TextboxNoOverlapFollow
	movs r0, #1
	strb r0, [r5, #0xd]
	movs r0, #8
	strb r0, [r4]
_0809C84A:
	pop {r4, r5, pc}
	.align 2, 0
_0809C84C: .4byte 0xFFFFF000
_0809C850: .4byte 0x00000B43

	thumb_func_start sub_0809C854
sub_0809C854: @ 0x0809C854
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809C8A8 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0809C8B8
	adds r5, r4, #0
	adds r5, #0x79
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0809C8B8
	adds r0, r4, #0
	movs r1, #0x91
	movs r2, #7
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0809C892
	ldrh r0, [r1, #0x32]
	subs r0, #0x50
	strh r0, [r1, #0x32]
	ldr r0, _0809C8AC @ =gRoomControls
	str r1, [r0, #0x30]
_0809C892:
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	bhi _0809C8B0
	movs r0, #2
	strb r0, [r4, #0xd]
	movs r0, #0x1e
	strb r0, [r5]
	movs r0, #0xe6
	bl PlaySFX
	b _0809C8B8
	.align 2, 0
_0809C8A8: .4byte gTextBox
_0809C8AC: .4byte gRoomControls
_0809C8B0:
	movs r0, #3
	strb r0, [r4, #0xd]
	movs r0, #0x78
	strb r0, [r5]
_0809C8B8:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809C8BC
sub_0809C8BC: @ 0x0809C8BC
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r3]
	subs r1, r0, #1
	strb r1, [r3]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0809C8E2
	movs r0, #1
	strb r0, [r2, #0xd]
	movs r0, #0x1e
	strb r0, [r3]
	ldrb r0, [r2, #0xf]
	adds r0, #1
	strb r0, [r2, #0xf]
	b _0809C922
_0809C8E2:
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _0809C90A
	cmp r0, #1
	bgt _0809C8F4
	cmp r0, #0
	beq _0809C8FE
	b _0809C922
_0809C8F4:
	cmp r0, #2
	beq _0809C8FE
	cmp r0, #3
	beq _0809C916
	b _0809C922
_0809C8FE:
	ldrh r1, [r2, #0x2e]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	adds r0, #8
	b _0809C920
_0809C90A:
	ldrh r1, [r2, #0x2e]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	adds r0, #4
	b _0809C920
_0809C916:
	ldrh r1, [r2, #0x2e]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	subs r0, #4
_0809C920:
	strh r0, [r2, #0x2e]
_0809C922:
	pop {pc}

	thumb_func_start sub_0809C924
sub_0809C924: @ 0x0809C924
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _0809C948
	adds r0, r5, #0
	movs r1, #0x87
	movs r2, #6
	movs r3, #0
	bl CreateObjectWithParent
	b _0809C980
_0809C948:
	movs r0, #4
	strb r0, [r5, #0xd]
	movs r0, #0x3c
	strb r0, [r1]
	ldr r4, _0809C984 @ =0x00000115
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080ADF80
	ldr r0, [r5, #0x50]
	adds r1, r4, #0
	bl sub_080ADF80
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_0801D2B4
	ldr r0, [r5, #0x50]
	movs r1, #0xef
	bl sub_0801D2B4
	adds r0, r5, #0
	movs r1, #0xef
	bl sub_0809CC30
	movs r0, #0xe8
	bl PlaySFX
_0809C980:
	pop {r4, r5, pc}
	.align 2, 0
_0809C984: .4byte 0x00000115

	thumb_func_start sub_0809C988
sub_0809C988: @ 0x0809C988
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x79
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0809C9AC
	movs r0, #5
	strb r0, [r2, #0xd]
	movs r0, #0xb4
	strb r0, [r1]
	movs r0, #3
	strb r0, [r2, #0xb]
	b _0809C9DC
_0809C9AC:
	ldr r0, _0809C9C8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0809C9CC
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #4
	b _0809C9DA
	.align 2, 0
_0809C9C8: .4byte gUnk_030010A0
_0809C9CC:
	adds r0, r2, #0
	adds r0, #0x84
	ldr r0, [r0]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #4
_0809C9DA:
	strh r0, [r1]
_0809C9DC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809C9E0
sub_0809C9E0: @ 0x0809C9E0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _0809CA04 @ =gUnk_030010A0
	ldr r1, [r0]
	movs r2, #2
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _0809CA08
	adds r2, r4, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	subs r0, #8
	b _0809CA16
	.align 2, 0
_0809CA04: .4byte gUnk_030010A0
_0809CA08:
	adds r2, r4, #0
	adds r2, #0x84
	ldr r0, [r2]
	ldr r1, [r0, #8]
	adds r1, #0x76
	ldrh r0, [r1]
	adds r0, #8
_0809CA16:
	strh r0, [r1]
	adds r5, r2, #0
	ldr r0, [r7]
	movs r6, #3
	ands r0, r6
	cmp r0, #0
	bne _0809CA30
	adds r0, r4, #0
	movs r1, #0x87
	movs r2, #2
	movs r3, #0
	bl CreateObjectWithParent
_0809CA30:
	adds r2, r4, #0
	adds r2, #0x79
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _0809CA92
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	strb r1, [r0]
	ldr r0, [r4, #0x54]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r2, #2
	ldrb r2, [r2]
	rsbs r2, r2, #0
	bl sub_0806F62C
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	movs r2, #0x48
	bl sub_0806FC80
	cmp r0, #0
	beq _0809CAC4
	movs r0, #6
	strb r0, [r4, #0xd]
	movs r1, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	strb r1, [r4, #0xb]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x54]
	ldrb r1, [r2, #0x18]
	subs r0, #0xc4
	ands r0, r1
	strb r0, [r2, #0x18]
	ldr r0, [r5]
	ldr r0, [r0, #8]
	adds r0, #0x76
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0]
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xed
	bl PlaySFX
	b _0809CAC4
_0809CA92:
	subs r0, #1
	strb r0, [r2]
	ldr r0, [r7]
	ands r0, r6
	cmp r0, #1
	beq _0809CAB4
	cmp r0, #1
	blo _0809CAAC
	cmp r0, #2
	beq _0809CAAC
	cmp r0, #3
	beq _0809CABC
	b _0809CAC4
_0809CAAC:
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #0
	b _0809CAC2
_0809CAB4:
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #0xfc
	b _0809CAC2
_0809CABC:
	ldr r0, [r4, #0x54]
	adds r0, #0x62
	movs r1, #4
_0809CAC2:
	strb r1, [r0]
_0809CAC4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0809CAC8
sub_0809CAC8: @ 0x0809CAC8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0806F69C
	ldr r2, _0809CB3C @ =gRoomControls
	ldrh r0, [r2, #8]
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bge _0809CB26
	movs r0, #4
	strb r0, [r2, #0xe]
	ldr r0, _0809CB40 @ =gLinkEntity
	str r0, [r2, #0x30]
	movs r0, #0x9b
	bl SetLocalFlag
	ldr r0, [r5, #0x50]
	bl DeleteEntity
	adds r4, r5, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl DeleteEntity
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	bl DeleteEntity
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl DeleteEntity
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl DeleteEntity
	ldr r0, [r4]
	ldr r0, [r0, #0x2c]
	bl DeleteEntity
	movs r0, #7
	strb r0, [r5, #0xd]
_0809CB26:
	ldr r0, _0809CB44 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0809CB38
	ldr r0, _0809CB48 @ =0x00000163
	bl PlaySFX
_0809CB38:
	pop {r4, r5, pc}
	.align 2, 0
_0809CB3C: .4byte gRoomControls
_0809CB40: .4byte gLinkEntity
_0809CB44: .4byte gUnk_030010A0
_0809CB48: .4byte 0x00000163

	thumb_func_start sub_0809CB4C
sub_0809CB4C: @ 0x0809CB4C
	push {lr}
	ldr r0, _0809CB68 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809CB66
	ldr r0, _0809CB6C @ =0x00000B44
	movs r1, #0
	bl sub_08078AA8
	bl DeleteThisEntity
_0809CB66:
	pop {pc}
	.align 2, 0
_0809CB68: .4byte gRoomControls
_0809CB6C: .4byte 0x00000B44

	thumb_func_start sub_0809CB70
sub_0809CB70: @ 0x0809CB70
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r0, _0809CBE0 @ =gSineTable
	mov sb, r0
	lsls r0, r4, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r1, r5, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	mov r8, r1
	bl sub_0806FA04
	ldr r1, [r6, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r1, #0x2c]
	adds r1, r1, r0
	str r1, [r6, #0x2c]
	adds r4, #0x40
	lsls r4, r4, #1
	add r4, sb
	movs r1, #0
	ldrsh r0, [r4, r1]
	adds r1, r5, #0
	bl sub_0806F9EC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	bl sub_0806FA04
	ldr r2, [r6, #0x50]
	lsls r0, r0, #0x10
	asrs r0, r0, #8
	ldr r1, [r2, #0x30]
	subs r1, r1, r0
	str r1, [r6, #0x30]
	ldr r0, [r2, #0x34]
	str r0, [r6, #0x34]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809CBE0: .4byte gSineTable

	thumb_func_start sub_0809CBE4
sub_0809CBE4: @ 0x0809CBE4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x79
	ldrb r0, [r2, #0xf]
	ldrb r4, [r3]
	adds r1, r0, r4
	strb r1, [r3]
	ldrb r4, [r2, #0xf]
	movs r0, #0xf
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bge _0809CC16
	ldrb r0, [r2, #0xe]
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	cmn r1, r0
	bge _0809CC2C
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl PlaySFX
	b _0809CC2C
_0809CC16:
	movs r0, #0
	ldrsb r0, [r3, r0]
	ldrb r1, [r2, #0xe]
	cmp r0, r1
	ble _0809CC2C
	rsbs r0, r4, #0
	strb r0, [r2, #0xf]
	movs r0, #0xcf
	lsls r0, r0, #1
	bl PlaySFX
_0809CC2C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809CC30
sub_0809CC30: @ 0x0809CC30
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r4, #0x84
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl sub_0801D2B4
	movs r5, #0
_0809CC42:
	ldr r0, [r4]
	lsls r1, r5, #2
	adds r0, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl sub_0801D2B4
	adds r5, #1
	cmp r5, #3
	bls _0809CC42
	pop {r4, r5, r6, pc}
	.align 2, 0
