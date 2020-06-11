	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806C204
sub_0806C204: @ 0x0806C204
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0806C21A
	adds r0, #1
	strb r0, [r1, #0xc]
	adds r0, r1, #0
	bl sub_0807DD50
	b _0806C222
_0806C21A:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0807DD94
_0806C222:
	pop {pc}

	thumb_func_start sub_0806C224
sub_0806C224: @ 0x0806C224
	push {lr}
	ldr r0, _0806C234 @ =gUnk_0813AD60
	bl sub_08080840
	ldr r1, _0806C238 @ =gUnk_030010A0
	movs r0, #6
	strb r0, [r1, #9]
	pop {pc}
	.align 2, 0
_0806C234: .4byte gUnk_0813AD60
_0806C238: .4byte gUnk_030010A0

	thumb_func_start sub_0806C23C
sub_0806C23C: @ 0x0806C23C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0xf
	movs r2, #0x43
	movs r3, #0
	bl CreateObjectWithParent
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0806C27C @ =gRoomControls
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
	adds r4, #0x38
	ldrb r2, [r4]
	movs r0, #0x73
	bl SetTileType
	movs r0, #0x73
	bl PlaySFX
	pop {r4, r5, pc}
	.align 2, 0
_0806C27C: .4byte gRoomControls

	thumb_func_start sub_0806C280
sub_0806C280: @ 0x0806C280
	push {lr}
	movs r0, #0x50
	bl sub_0807CD04
	ldr r0, _0806C298 @ =gUnk_0813AD74
	bl sub_08080840
	ldr r1, _0806C29C @ =gUnk_030010A0
	movs r0, #6
	strb r0, [r1, #9]
	pop {pc}
	.align 2, 0
_0806C298: .4byte gUnk_0813AD74
_0806C29C: .4byte gUnk_030010A0

	thumb_func_start sub_0806C2A0
sub_0806C2A0: @ 0x0806C2A0
	push {lr}
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0806C2AE
	cmp r0, #1
	beq _0806C2B8
	b _0806C2C0
_0806C2AE:
	movs r0, #0xd
	movs r1, #4
	bl DoFade
	b _0806C2C0
_0806C2B8:
	movs r0, #0xc
	movs r1, #4
	bl DoFade
_0806C2C0:
	pop {pc}
	.align 2, 0
