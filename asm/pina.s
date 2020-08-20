	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Pina
Pina: @ 0x08063A60
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08063A76
	adds r0, r2, #0
	bl sub_08063B68
	b _08063A7C
_08063A76:
	adds r0, r2, #0
	bl sub_08063A80
_08063A7C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063A80
sub_08063A80: @ 0x08063A80
	push {lr}
	ldr r2, _08063A94 @ =gUnk_0810CDF8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08063A94: .4byte gUnk_0810CDF8

	thumb_func_start sub_08063A98
sub_08063A98: @ 0x08063A98
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #4
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_08063AC0
sub_08063AC0: @ 0x08063AC0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	cmp r0, #0
	blt _08063AEE
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08063AF4
	bl Random
	movs r1, #0x3f
	ands r1, r0
	cmp r1, #0
	bne _08063AEE
	adds r0, r4, #0
	movs r1, #0
	bl InitAnimationForceUpdate
	movs r0, #1
	strb r0, [r4, #0xf]
_08063AEE:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	beq _08063B0C
_08063AF4:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08063B0C
	movs r0, #0
	strb r0, [r4, #0xf]
_08063B0C:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08063B38
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl GetAnimationState
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	ldrb r0, [r4, #0xe]
	ldr r1, _08063B40 @ =0x00000A01
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
_08063B38:
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_08063B40: .4byte 0x00000A01

	thumb_func_start sub_08063B44
sub_08063B44: @ 0x08063B44
	push {lr}
	adds r2, r0, #0
	ldr r0, _08063B64 @ =gTextBox
	ldrb r0, [r0]
	movs r1, #0x7f
	ands r1, r0
	cmp r1, #0
	bne _08063B62
	movs r0, #1
	strb r0, [r2, #0xc]
	strb r1, [r2, #0xf]
	adds r0, r2, #0
	movs r1, #4
	bl InitAnimationForceUpdate
_08063B62:
	pop {pc}
	.align 2, 0
_08063B64: .4byte gTextBox

	thumb_func_start sub_08063B68
sub_08063B68: @ 0x08063B68
	push {r4, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xc]
	cmp r3, #1
	beq _08063B9E
	cmp r3, #1
	bgt _08063B7C
	cmp r3, #0
	beq _08063B82
	b _08063C10
_08063B7C:
	cmp r3, #2
	beq _08063BF6
	b _08063C10
_08063B82:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x69
	strb r3, [r0]
	adds r0, r4, #0
	bl sub_0807DD64
_08063B9E:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08063BE0
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _08063BDC @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r1, #4
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
	b _08063C10
	.align 2, 0
_08063BDC: .4byte gPlayerEntity
_08063BE0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
	b _08063C10
_08063BF6:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08063C10
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08063C10:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08063C14
sub_08063C14: @ 0x08063C14
	push {lr}
	movs r0, #7
	movs r1, #0x14
	bl FindEntityBySubtype
	cmp r0, #0
	beq _08063C28
	movs r1, #8
	bl InitAnimationForceUpdate
_08063C28:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063C2C
sub_08063C2C: @ 0x08063C2C
	push {lr}
	movs r0, #7
	movs r1, #0x14
	bl FindEntityBySubtype
	cmp r0, #0
	beq _08063C40
	movs r1, #4
	bl InitAnimationForceUpdate
_08063C40:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063C44
sub_08063C44: @ 0x08063C44
	push {lr}
	movs r0, #7
	movs r1, #0x14
	bl FindEntityBySubtype
	cmp r0, #0
	beq _08063C58
	movs r1, #0
	bl InitAnimationForceUpdate
_08063C58:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063C5C
sub_08063C5C: @ 0x08063C5C
	push {lr}
	movs r0, #7
	movs r1, #0x14
	bl FindEntityBySubtype
	cmp r0, #0
	beq _08063C70
	movs r1, #9
	bl InitAnimationForceUpdate
_08063C70:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063C74
sub_08063C74: @ 0x08063C74
	push {lr}
	movs r0, #7
	movs r1, #0x14
	bl FindEntityBySubtype
	cmp r0, #0
	beq _08063C8C
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl sub_080A2CFC
_08063C8C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08063C90
sub_08063C90: @ 0x08063C90
	push {lr}
	ldr r1, _08063CA4 @ =gUnk_02002A40
	ldrb r1, [r1, #8]
	lsls r1, r1, #3
	ldr r2, _08063CA8 @ =gUnk_0810CE04
	adds r1, r1, r2
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0
_08063CA4: .4byte gUnk_02002A40
_08063CA8: .4byte gUnk_0810CE04

	thumb_func_start sub_08063CAC
sub_08063CAC: @ 0x08063CAC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	ldrb r1, [r1]
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}

	thumb_func_start Pina_Fusion
Pina_Fusion: @ 0x08063CC4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08063CF0
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrh r0, [r2, #0x32]
	subs r0, #4
	strh r0, [r2, #0x32]
	adds r0, r2, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _08063CF6
_08063CF0:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_08063CF6:
	pop {pc}
