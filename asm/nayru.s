	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08064890
sub_08064890: @ 0x08064890
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080648C2
	cmp r0, #1
	bgt _080648A4
	cmp r0, #0
	beq _080648AA
	b _08064924
_080648A4:
	cmp r0, #2
	beq _0806490A
	b _08064924
_080648AA:
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
	b _08064924
_080648C2:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _08064900
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
	ldr r1, _080648FC @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	b _08064924
	.align 2, 0
_080648FC: .4byte gLinkEntity
_08064900:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _08064924
_0806490A:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08064924
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	bl LoadAnimation
_08064924:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08064928
sub_08064928: @ 0x08064928
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r5, r0, #0
	ldr r6, _08064958 @ =gUnk_02002A40
	adds r0, r4, #0
	bl sub_08002632
	ldr r2, _0806495C @ =0x00000141
	adds r1, r6, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0806494E
	ldrb r0, [r6, #8]
	cmp r0, #6
	bhi _0806494E
	movs r5, #0
_0806494E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08078784
	pop {r4, r5, r6, pc}
	.align 2, 0
_08064958: .4byte gUnk_02002A40
_0806495C: .4byte 0x00000141

	thumb_func_start sub_08064960
sub_08064960: @ 0x08064960
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _08064986
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
	bl LoadAnimation
	b _0806498C
_08064986:
	adds r0, r2, #0
	bl sub_080042B8
_0806498C:
	pop {pc}
	.align 2, 0
