	.syntax unified
	push {r4, r5, r6, lr}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A5BB6
	ldr r1, _080A5B58 @ =gMenu
	ldrb r4, [r1, #3]
	movs r5, #0
	ldr r0, _080A5B5C @ =gInput
	ldrh r0, [r0, #2]
	adds r6, r1, #0
	cmp r0, #2
	beq _080A5B6C
	cmp r0, #2
	bgt _080A5B60
	cmp r0, #1
	beq _080A5B74
	b _080A5B76
	.align 2, 0
_080A5B58: .4byte gMenu
_080A5B5C: .4byte gInput
_080A5B60:
	cmp r0, #0x10
	beq _080A5B70
	cmp r0, #0x20
	bne _080A5B76
	movs r4, #0
	b _080A5B76
_080A5B6C:
	cmp r4, #0
	bne _080A5B74
_080A5B70:
	movs r4, #1
	b _080A5B76
_080A5B74:
	movs r5, #1
_080A5B76:
	adds r1, r6, #0
	ldrb r0, [r1, #3]
	cmp r0, r4
	beq _080A5B8E
	strb r4, [r1, #3]
	movs r0, #2
	adds r1, r4, #0
	bl SetPopupState
	movs r0, #0x69
	bl SoundReq
_080A5B8E:
	cmp r5, #0
	beq _080A5BB6
	cmp r4, #0
	bne _080A5BAA
	movs r0, #7
	movs r1, #0x20
	bl SetFade
	movs r0, #0x3c
	strh r0, [r6, #8]
	movs r0, #2
	bl SetMenuType
	b _080A5BB6
_080A5BAA:
	movs r0, #0x6c
	bl SoundReq
	movs r0, #2
	bl sub_080A4E84
_080A5BB6:
	pop {r4, r5, r6, pc}
	.syntax divided
