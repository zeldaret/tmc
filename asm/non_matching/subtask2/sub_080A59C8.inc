	.syntax unified
	push {lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5A52
	ldr r1, _080A59EC @ =gMenu
	ldrb r2, [r1, #3]
	movs r3, #0
	ldr r0, _080A59F0 @ =gInput
	ldrh r0, [r0, #2]
	cmp r0, #2
	beq _080A5A02
	cmp r0, #2
	bgt _080A59F4
	cmp r0, #1
	beq _080A5A0A
	b _080A5A0C
	.align 2, 0
_080A59EC: .4byte gMenu
_080A59F0: .4byte gInput
_080A59F4:
	cmp r0, #0x40
	beq _080A59FE
	cmp r0, #0x80
	beq _080A5A06
	b _080A5A0C
_080A59FE:
	movs r2, #0
	b _080A5A0C
_080A5A02:
	cmp r2, #0
	bne _080A5A10
_080A5A06:
	movs r2, #1
	b _080A5A0C
_080A5A0A:
	movs r3, #1
_080A5A0C:
	cmp r3, #0
	beq _080A5A3C
_080A5A10:
	movs r0, #0xff
	strh r0, [r1, #8]
	cmp r2, #0
	bne _080A5A2E
	movs r0, #8
	movs r1, #0
	bl CreateDialogBox
	movs r0, #2
	bl SetMenuType
	movs r0, #0x6a
	bl SoundReq
	b _080A5A52
_080A5A2E:
	movs r0, #3
	bl SetMenuType
	movs r0, #0x6c
	bl SoundReq
	b _080A5A52
_080A5A3C:
	ldrb r0, [r1, #3]
	cmp r0, r2
	beq _080A5A52
	strb r2, [r1, #3]
	movs r0, #0
	adds r1, r2, #0
	bl SetPopupState
	movs r0, #0x69
	bl SoundReq
_080A5A52:
	pop {pc}
	.syntax divided
