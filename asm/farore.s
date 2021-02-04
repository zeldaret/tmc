	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Farore
Farore: @ 0x08064990
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080649C2
	cmp r0, #1
	bgt _080649A4
	cmp r0, #0
	beq _080649AA
	b _08064A24
_080649A4:
	cmp r0, #2
	beq _08064A0A
	b _08064A24
_080649AA:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0807DD50
	b _08064A24
_080649C2:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08064A00
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0806F118
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	ldr r1, _080649FC @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	b _08064A24
	.align 2, 0
_080649FC: .4byte gPlayerEntity
_08064A00:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _08064A24
_08064A0A:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08064A24
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_08064A24:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08064A28
sub_08064A28: @ 0x08064A28
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r5, r0, #0
	ldr r6, _08064A58 @ =gSave
	adds r0, r4, #0
	bl sub_08002632
	ldr r2, _08064A5C @ =0x00000141
	adds r1, r6, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08064A4E
	ldrb r0, [r6, #8]
	cmp r0, #6
	bhi _08064A4E
	movs r5, #0
_08064A4E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078784
	pop {r4, r5, r6, pc}
	.align 2, 0
_08064A58: .4byte gSave
_08064A5C: .4byte 0x00000141

	thumb_func_start Farore_Fusion
Farore_Fusion: @ 0x08064A60
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08064A86
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #6
	bl InitAnimationForceUpdate
	b _08064A8C
_08064A86:
	adds r0, r2, #0
	bl UpdateAnimationSingleFrame
_08064A8C:
	pop {pc}
	.align 2, 0
