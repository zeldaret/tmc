	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemLantern
ItemLantern: @ 0x080759F4
	push {lr}
	ldr r3, _08075A08 @ =gUnk_0811BD68
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08075A08: .4byte gUnk_0811BD68

	thumb_func_start sub_08075A0C
sub_08075A0C: @ 0x08075A0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r4, #1]
	bl IsItemEquipped
	adds r6, r0, #0
	ldr r1, _08075A64 @ =gPlayerState
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne _08075A3E
	ldrb r0, [r1, #0xc]
	cmp r0, #0x18
	beq _08075A3E
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08075A3E
	ldr r0, [r1, #0x2c]
	cmp r0, #0
	bne _08075A3E
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075A6C
_08075A3E:
	movs r0, #0xf
	adds r1, r6, #0
	bl ForceEquipItem
	ldr r0, _08075A64 @ =gPlayerState
	ldr r1, [r0, #0x30]
	ldr r2, _08075A68 @ =0xFF7FFFFF
	ands r1, r2
	str r1, [r0, #0x30]
	movs r0, #0xf
	adds r1, r6, #0
	bl ForceEquipItem
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
	b _08075AD0
	.align 2, 0
_08075A64: .4byte gPlayerState
_08075A68: .4byte 0xFF7FFFFF
_08075A6C:
	ldrb r1, [r4, #9]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #9]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077D38
	adds r0, r4, #0
	bl sub_08077BD4
	ldr r5, _08075AD4 @ =gPlayerEntity
	adds r0, r5, #0
	bl sub_0806F948
	movs r0, #0x10
	strb r0, [r4, #1]
	adds r1, r6, #0
	bl ForceEquipItem
	ldrb r1, [r5, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08075AD8 @ =gUnk_08126EEC
	adds r4, r0, r1
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _08075AD0
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r4, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08075AD0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08075AD4: .4byte gPlayerEntity
_08075AD8: .4byte gUnk_08126EEC

	thumb_func_start sub_08075ADC
sub_08075ADC: @ 0x08075ADC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r2, _08075B44 @ =gPlayerState
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _08075B08
	ldrb r1, [r4, #0xe]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08075B08
	ldr r0, [r2, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08075B08
	bl sub_08079D48
	cmp r0, #0
	bne _08075B4C
_08075B08:
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	ldr r3, _08075B44 @ =gPlayerState
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r3, #0x30]
	movs r2, #8
	asrs r2, r5
	lsls r1, r2, #4
	orrs r1, r2
	ldrb r0, [r3, #4]
	bics r0, r1
	strb r0, [r3, #4]
	mvns r2, r2
	ldrb r1, [r3, #0xa]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	ands r2, r0
	strb r2, [r3, #0xb]
	ldr r0, _08075B48 @ =0x0000013D
	bl SoundReq
	b _08075B52
	.align 2, 0
_08075B44: .4byte gPlayerState
_08075B48: .4byte 0x0000013D
_08075B4C:
	adds r0, r4, #0
	bl UpdateItemAnim
_08075B52:
	pop {r4, r5, pc}

	thumb_func_start sub_08075B54
sub_08075B54: @ 0x08075B54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	ldr r5, _08075BB0 @ =gPlayerState
	ldr r0, [r5, #0x30]
	movs r1, #0x88
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08075B70
	b _08075C80
_08075B70:
	ldrb r0, [r6, #1]
	bl IsItemEquipped
	adds r4, r0, #0
	adds r0, r6, #0
	bl sub_08077F10
	cmp r0, #0
	bne _08075B86
	cmp r4, #1
	bls _08075BB8
_08075B86:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _08075BB8
	movs r0, #0xf
	adds r1, r4, #0
	bl ForceEquipItem
	ldr r0, [r5, #0x30]
	ldr r1, _08075BB4 @ =0xFF7FFFFF
	ands r0, r1
	str r0, [r5, #0x30]
	adds r0, r6, #0
	mov r1, sb
	bl sub_08077E78
	movs r0, #0x9f
	lsls r0, r0, #1
	bl SoundReq
	b _08075C80
	.align 2, 0
_08075BB0: .4byte gPlayerState
_08075BB4: .4byte 0xFF7FFFFF
_08075BB8:
	ldr r0, _08075C88 @ =gPlayerState
	mov r8, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #0x18
	beq _08075C80
	ldr r5, _08075C8C @ =gPlayerEntity
	ldrb r0, [r5, #0x1e]
	cmp r0, #0x36
	bhi _08075C80
	ldrh r1, [r5, #0x12]
	cmp r1, #6
	bne _08075C80
	ldrb r0, [r5, #0x14]
	ands r1, r0
	ldr r0, _08075C90 @ =gUnk_08126EEC
	adds r7, r1, r0
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08075C80
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	movs r1, #0
	ldrsb r1, [r7, r1]
	adds r0, r0, r1
	ldr r4, _08075C94 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r2, #0x32
	ldrsh r1, [r5, r2]
	movs r2, #1
	ldrsb r2, [r7, r2]
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	movs r2, #0x40
	bl sub_080002F0
	cmp r0, #0
	beq _08075C80
	movs r0, #0xf
	strb r0, [r6, #0xf]
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x7a
	movs r0, #2
	strh r0, [r1]
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _08075C60
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x60
	strh r1, [r0]
	movs r0, #0
	ldrsb r0, [r7, r0]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	movs r0, #1
	ldrsb r0, [r7, r0]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_08075C60:
	ldr r1, _08075C98 @ =0x0000060C
	adds r0, r6, #0
	bl sub_08077DF4
	movs r1, #8
	mov r2, sb
	asrs r1, r2
	mov r0, r8
	ldrb r2, [r0, #0xa]
	adds r0, r1, #0
	orrs r0, r2
	mov r2, r8
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	orrs r1, r0
	strb r1, [r2, #0xb]
_08075C80:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08075C88: .4byte gPlayerState
_08075C8C: .4byte gPlayerEntity
_08075C90: .4byte gUnk_08126EEC
_08075C94: .4byte gRoomControls
_08075C98: .4byte 0x0000060C

	thumb_func_start sub_08075C9C
sub_08075C9C: @ 0x08075C9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08075CCA
	ldr r0, _08075CF8 @ =gPlayerEntity
	ldrb r1, [r0, #0x14]
	movs r2, #6
	ands r2, r1
	ldr r1, _08075CFC @ =gUnk_08126EEC
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bl sub_0807AB44
_08075CCA:
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08075D04
	movs r0, #0
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #4]
	subs r0, #1
	strb r0, [r4, #4]
	ldr r2, _08075D00 @ =gPlayerState
	movs r1, #8
	asrs r1, r5
	mvns r1, r1
	ldrb r3, [r2, #0xa]
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #0xa]
	ldrb r0, [r2, #0xb]
	ands r1, r0
	strb r1, [r2, #0xb]
	b _08075D0E
	.align 2, 0
_08075CF8: .4byte gPlayerEntity
_08075CFC: .4byte gUnk_08126EEC
_08075D00: .4byte gPlayerState
_08075D04:
	ldr r1, _08075D10 @ =gPlayerEntity
	adds r1, #0x7a
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08075D0E:
	pop {r4, r5, pc}
	.align 2, 0
_08075D10: .4byte gPlayerEntity
