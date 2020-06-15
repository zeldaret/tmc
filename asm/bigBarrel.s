	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BigBarrel
BigBarrel: @ 0x08088A50
	push {lr}
	ldr r2, _08088A64 @ =gUnk_08120C34
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08088A64: .4byte gUnk_08120C34

	thumb_func_start sub_08088A68
sub_08088A68: @ 0x08088A68
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08088AE4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r2, #3
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x11]
	movs r0, #0x17
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08088AA0
	ldr r0, _08088A9C @ =gUnk_02002A40
	ldrb r0, [r0, #7]
	adds r0, #1
	b _08088AA4
	.align 2, 0
_08088A9C: .4byte gUnk_02002A40
_08088AA0:
	ldr r0, _08088AD8 @ =gUnk_02002A40
	ldrb r0, [r0, #7]
_08088AA4:
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl sub_08088BE0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08088ADC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r4, r3]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	movs r2, #0x80
	movs r3, #0x60
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08088B82
	ldr r0, _08088AE0 @ =gRoomVars
	ldr r1, [r0, #0x68]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #0x68]
	b _08088B82
	.align 2, 0
_08088AD8: .4byte gUnk_02002A40
_08088ADC: .4byte gRoomControls
_08088AE0: .4byte gRoomVars
_08088AE4:
	ldr r5, _08088B70 @ =gRoomVars
	ldr r1, [r5, #0x68]
	movs r6, #1
	adds r0, r1, #0
	ands r0, r6
	cmp r0, #0
	beq _08088B06
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x68]
	strb r6, [r4, #0xe]
	ldr r0, _08088B74 @ =gUnk_08120C1C
	str r0, [r4, #0x68]
	movs r0, #0x8a
	bl PlaySFX
_08088B06:
	ldr r1, [r5, #0x68]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08088B24
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x68]
	strb r6, [r4, #0xe]
	ldr r0, _08088B78 @ =gUnk_08120C25
	str r0, [r4, #0x68]
	movs r0, #0x89
	bl PlaySFX
_08088B24:
	ldr r1, [r5, #0x68]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08088B42
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0x68]
	strb r6, [r4, #0xe]
	ldr r0, _08088B7C @ =gUnk_08120C2E
	str r0, [r4, #0x68]
	movs r0, #0x8a
	bl PlaySFX
_08088B42:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08088B82
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _08088B82
	ldr r1, [r4, #0x68]
	ldrb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x63
	strb r0, [r2]
	adds r1, #1
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08088B80
	movs r0, #8
	strb r0, [r4, #0xe]
	str r1, [r4, #0x68]
	b _08088B82
	.align 2, 0
_08088B70: .4byte gRoomVars
_08088B74: .4byte gUnk_08120C1C
_08088B78: .4byte gUnk_08120C25
_08088B7C: .4byte gUnk_08120C2E
_08088B80:
	strb r3, [r2]
_08088B82:
	adds r5, r4, #0
	adds r5, #0x29
	ldrb r1, [r5]
	movs r6, #8
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5]
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	subs r0, #0x50
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	subs r1, #0x50
	movs r2, #0xa0
	movs r3, #0x30
	bl sub_0806FBFC
	cmp r0, #0
	beq _08088BBA
	ldrb r0, [r5]
	adds r1, r6, #0
	ands r1, r0
	movs r0, #5
	orrs r1, r0
	strb r1, [r5]
_08088BBA:
	movs r3, #0x2e
	ldrsh r0, [r4, r3]
	subs r0, #0x50
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	adds r1, #0x30
	movs r2, #0xa0
	movs r3, #0x30
	bl sub_0806FBFC
	cmp r0, #0
	beq _08088BDE
	ldrb r0, [r5]
	adds r1, r6, #0
	ands r1, r0
	movs r0, #5
	orrs r1, r0
	strb r1, [r5]
_08088BDE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08088BE0
sub_08088BE0: @ 0x08088BE0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x15
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088C1C
	movs r3, #0x78
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl sub_08088C78
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x15
	movs r3, #0
	bl sub_08088C78
	adds r2, r0, #0
	cmp r2, #0
	beq _08088C1C
	ldr r0, _08088C74 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, #0x48
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, #0xc8
	strh r0, [r2, #0x32]
_08088C1C:
	movs r0, #0x16
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088C58
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	movs r3, #0x78
	bl sub_08088C78
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x16
	movs r3, #0
	bl sub_08088C78
	adds r2, r0, #0
	cmp r2, #0
	beq _08088C58
	ldr r0, _08088C74 @ =gRoomControls
	movs r3, #0xc4
	lsls r3, r3, #1
	adds r1, r3, #0
	ldrh r3, [r0, #6]
	adds r1, r1, r3
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, #0xc8
	strh r0, [r2, #0x32]
_08088C58:
	movs r3, #0x78
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_08088C78
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #0x78
	bl sub_08088C78
	pop {r4, pc}
	.align 2, 0
_08088C74: .4byte gRoomControls

	thumb_func_start sub_08088C78
sub_08088C78: @ 0x08088C78
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	movs r0, #0x25
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _08088C96
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r5
	strh r0, [r1, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0x32]
	str r4, [r1, #0x50]
_08088C96:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08088C9C
sub_08088C9C: @ 0x08088C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08088CEC @ =gUnk_08120C48
	ldr r0, [r4, #0x50]
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r4, #0x50]
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08088D4C
	cmp r0, #1
	bgt _08088CF0
	cmp r0, #0
	beq _08088CFA
	b _08088DB0
	.align 2, 0
_08088CEC: .4byte gUnk_08120C48
_08088CF0:
	cmp r0, #2
	beq _08088D5A
	cmp r0, #3
	beq _08088D7A
	b _08088DB0
_08088CFA:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0xb]
	adds r0, r2, #4
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	lsls r2, r2, #0x18
	movs r0, #0x16
	cmp r2, #0
	bne _08088D28
	movs r0, #0x15
_08088D28:
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xf]
	bl CheckLocalFlag
	cmp r0, #0
	beq _08088DB0
	ldr r1, _08088D48 @ =gUnk_08120C50
	ldrb r0, [r4, #0xb]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	b _08088DAC
	.align 2, 0
_08088D48: .4byte gUnk_08120C50
_08088D4C:
	ldrb r0, [r4, #0xf]
	bl CheckLocalFlag
	cmp r0, #0
	beq _08088DB0
	movs r0, #2
	b _08088DAE
_08088D5A:
	ldr r2, _08088D98 @ =gRoomVars
	ldr r1, [r2, #0x68]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08088DB0
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0x68]
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #0xd]
	movs r0, #1
	strb r0, [r4, #0xe]
_08088D7A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088DB0
	movs r0, #8
	strb r0, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08088D9C
	subs r0, r1, #2
	b _08088D9E
	.align 2, 0
_08088D98: .4byte gRoomVars
_08088D9C:
	adds r0, r1, #2
_08088D9E:
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088DB0
_08088DAC:
	movs r0, #4
_08088DAE:
	strb r0, [r4, #0xc]
_08088DB0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08088DB4
sub_08088DB4: @ 0x08088DB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08088E28
	cmp r0, #1
	bgt _08088DC8
	cmp r0, #0
	beq _08088DEC
	b _08088E50
_08088DC8:
	cmp r0, #4
	bgt _08088E50
	ldr r0, _08088DE8 @ =gRoomVars
	ldr r0, [r0, #0x68]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08088E6E
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088E6E
	b _08088E3E
	.align 2, 0
_08088DE8: .4byte gRoomVars
_08088DEC:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #2
	adds r0, #6
	strb r0, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	ldrb r0, [r4, #0xb]
	movs r1, #0x16
	cmp r0, #0
	bne _08088E1E
	movs r1, #0x15
_08088E1E:
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	b _08088E6E
_08088E28:
	ldrb r0, [r4, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	beq _08088E6E
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0xe]
	b _08088E6E
_08088E3E:
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0x1e]
	adds r0, #1
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _08088E6E
_08088E50:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08088E6E
	ldr r0, _08088E70 @ =gRoomVars
	ldr r1, [r0, #0x68]
	movs r2, #9
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r0, #0x68]
	adds r0, r4, #0
	bl DeleteEntity
_08088E6E:
	pop {r4, pc}
	.align 2, 0
_08088E70: .4byte gRoomVars

	thumb_func_start sub_08088E74
sub_08088E74: @ 0x08088E74
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08088E94
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	ldr r2, _08088EB0 @ =gRoomVars
	ldr r0, [r2, #0x68]
	movs r1, #8
	orrs r0, r1
	str r0, [r2, #0x68]
_08088E94:
	adds r0, r4, #0
	bl sub_0806FB38
	cmp r0, #0
	beq _08088EB4
	ldr r0, _08088EB0 @ =gRoomVars
	ldr r1, [r0, #0x68]
	movs r2, #0x10
	orrs r1, r2
	str r1, [r0, #0x68]
	adds r0, r4, #0
	bl DeleteEntity
	b _08088F14
	.align 2, 0
_08088EB0: .4byte gRoomVars
_08088EB4:
	ldr r0, _08088F18 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08088F14
	adds r0, r4, #0
	movs r1, #0x2a
	movs r2, #0
	movs r3, #0x1e
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08088F14
	ldrb r1, [r4, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	strb r1, [r4, #0x1b]
	bl Random
	ldr r2, _08088F1C @ =gUnk_08120C52
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
_08088F14:
	pop {r4, pc}
	.align 2, 0
_08088F18: .4byte gUnk_030010A0
_08088F1C: .4byte gUnk_08120C52

	thumb_func_start sub_08088F20
sub_08088F20: @ 0x08088F20
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _08088F62
	cmp r0, #1
	bgt _08088F34
	cmp r0, #0
	beq _08088F3E
	b _08089020
_08088F34:
	cmp r0, #2
	beq _08088FEC
	cmp r0, #3
	beq _08089004
	b _08089020
_08088F3E:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x11]
	subs r0, #0x11
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088F5A
	b _0808908E
_08088F5A:
	adds r0, r4, #0
	bl DeleteEntity
	b _0808908E
_08088F62:
	ldrb r0, [r4, #0xb]
	bl CheckLocalFlag
	cmp r0, #0
	bne _08088F6E
	b _0808908E
_08088F6E:
	movs r5, #2
	strb r5, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
	movs r1, #0x87
	lsls r1, r1, #1
	adds r0, r4, #0
	bl sub_0805E4E0
	movs r0, #0x2a
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _08088FBC
	ldrb r1, [r2, #0x11]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2, #0x11]
	ldrh r0, [r4, #0x2e]
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #0x32]
	strh r0, [r2, #0x32]
	adds r0, r2, #0
	adds r0, #0x38
	strb r5, [r0]
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
_08088FBC:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08088FE8 @ =gRoomControls
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
	movs r0, #0x76
	movs r2, #2
	bl SetTileType
	b _0808908E
	.align 2, 0
_08088FE8: .4byte gRoomControls
_08088FEC:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808908E
	adds r0, r4, #0
	bl sub_08089094
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0808908E
_08089004:
	ldr r0, _0808901C @ =gRoomVars
	ldr r0, [r0, #0x68]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808908E
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0x78
	strb r0, [r4, #0xe]
	b _0808908E
	.align 2, 0
_0808901C: .4byte gRoomVars
_08089020:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x5a
	bne _0808905C
	movs r0, #0x15
	movs r1, #2
	bl CheckLocalFlags
	cmp r0, #0
	beq _08089048
	ldr r0, _08089044 @ =gRoomVars
	ldr r1, [r0, #0x68]
	movs r2, #2
	b _0808904E
	.align 2, 0
_08089044: .4byte gRoomVars
_08089048:
	ldr r0, _08089090 @ =gRoomVars
	ldr r1, [r0, #0x68]
	movs r2, #1
_0808904E:
	orrs r1, r2
	str r1, [r0, #0x68]
	adds r2, r0, #0
	ldr r0, [r2, #0x68]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0x68]
_0808905C:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _0808908E
	ldr r2, _08089090 @ =gRoomVars
	ldr r0, [r2, #0x68]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #0x68]
	movs r0, #0x15
	movs r1, #2
	bl CheckLocalFlags
	cmp r0, #0
	beq _08089088
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_0805E4E0
	movs r0, #0x72
	bl PlaySFX
_08089088:
	adds r0, r4, #0
	bl DeleteEntity
_0808908E:
	pop {r4, r5, pc}
	.align 2, 0
_08089090: .4byte gRoomVars

	thumb_func_start sub_08089094
sub_08089094: @ 0x08089094
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r1, _080890C4 @ =gRoomControls
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	cmp r0, #0xff
	bgt _080890CC
	ldr r4, _080890C8 @ =gUnk_08120C56
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080890EC
	adds r4, #4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_080890EC
	b _080890E6
	.align 2, 0
_080890C4: .4byte gRoomControls
_080890C8: .4byte gUnk_08120C56
_080890CC:
	ldr r4, _080890E8 @ =gUnk_08120C5E
	movs r2, #8
	rsbs r2, r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080890EC
	adds r4, #4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl sub_080890EC
_080890E6:
	pop {r4, r5, pc}
	.align 2, 0
_080890E8: .4byte gUnk_08120C5E

	thumb_func_start sub_080890EC
sub_080890EC: @ 0x080890EC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r0, #0x25
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _08089132
	movs r1, #3
	bl sub_0805E3A0
	ldrh r0, [r5, #0x2e]
	strh r0, [r4, #0x2e]
	ldrh r0, [r5, #0x32]
	adds r0, r0, r6
	strh r0, [r4, #0x32]
	str r5, [r4, #0x50]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r2, #0
	ldrsh r0, [r7, r2]
	adds r1, r1, r0
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r3, #2
	ldrsh r0, [r7, r3]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0x5a
	bl sub_0806FB00
_08089132:
	pop {r4, r5, r6, r7, pc}
