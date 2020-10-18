	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806B540
sub_0806B540: @ 0x0806B540
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x84
	ldr r4, [r0]
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0806B588
	cmp r0, #1
	bgt _0806B558
	cmp r0, #0
	beq _0806B562
	b _0806B600
_0806B558:
	cmp r0, #2
	beq _0806B5AC
	cmp r0, #3
	beq _0806B5EE
	b _0806B600
_0806B562:
	ldr r0, _0806B584 @ =0x00002312
	adds r1, r2, #0
	bl TextboxNoOverlap
	movs r0, #0x3f
	bl CheckLocalFlag
	cmp r0, #0
	bne _0806B606
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0x3f
	bl SetLocalFlag
	b _0806B600
	.align 2, 0
_0806B584: .4byte 0x00002312
_0806B588:
	ldr r0, _0806B5A4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806B600
	movs r0, #2
	strb r0, [r4, #0x18]
	ldr r0, _0806B5A8 @ =0x00002315
	adds r1, r2, #0
	bl TextboxNoOverlap
	b _0806B600
	.align 2, 0
_0806B5A4: .4byte gTextBox
_0806B5A8: .4byte 0x00002315
_0806B5AC:
	ldr r0, _0806B5D4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0806B600
	movs r0, #3
	strb r0, [r4, #0x18]
	ldr r0, _0806B5D8 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806B5DC
	movs r0, #0x58
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	b _0806B5E6
	.align 2, 0
_0806B5D4: .4byte gTextBox
_0806B5D8: .4byte gUnk_02002A40
_0806B5DC:
	movs r0, #0x3f
	movs r1, #0x64
	movs r2, #0
	bl sub_080A7C18
_0806B5E6:
	movs r0, #0xf
	bl SetRoomFlag
	b _0806B600
_0806B5EE:
	ldr r0, _0806B5FC @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _0806B600
	movs r0, #0x2d
	strh r0, [r4, #0x10]
	b _0806B606
	.align 2, 0
_0806B5FC: .4byte gPlayerEntity
_0806B600:
	ldr r1, _0806B608 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0806B606:
	pop {r4, pc}
	.align 2, 0
_0806B608: .4byte gUnk_02033280

	thumb_func_start sub_0806B60C
sub_0806B60C: @ 0x0806B60C
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

	thumb_func_start Percy_Fusion
Percy_Fusion: @ 0x0806B624
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0806B65C
	ldr r1, _0806B658 @ =gUnk_08112E1C
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _0806B662
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
	movs r1, #2
	bl InitializeAnimation
	b _0806B662
	.align 2, 0
_0806B658: .4byte gUnk_08112E1C
_0806B65C:
	adds r0, r4, #0
	bl GetNextFrame
_0806B662:
	pop {r4, pc}
