.syntax unified
	push {r4, r5, r6, lr}
	ldr r0, _080A4894 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A4926
	ldr r0, _080A4898 @ =gMenu
	movs r5, #0x1f
	ldrsb r5, [r0, r5]
	ldrb r4, [r0, #0x1c]
	ldr r0, _080A489C @ =gInput
	ldrh r1, [r0, #4]
	cmp r1, #0x20
	beq _080A48DC
	cmp r1, #0x20
	bgt _080A48A0
	cmp r1, #2
	beq _080A48C0
	cmp r1, #2
	ble _080A48DE
	cmp r1, #8
	beq _080A48C0
	cmp r1, #0x10
	beq _080A48D8
	b _080A48DE
	.align 2, 0
_080A4894: .4byte gFadeControl
_080A4898: .4byte gMenu
_080A489C: .4byte gInput
_080A48A0:
	cmp r1, #0x80
	beq _080A48D4
	cmp r1, #0x80
	bgt _080A48AE
	cmp r1, #0x40
	beq _080A48D0
	b _080A48DE
_080A48AE:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	beq _080A48CC
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	beq _080A48C8
	b _080A48DE
_080A48C0:
	movs r0, #3
	bl sub_080A7114
	b _080A48DE
_080A48C8:
	subs r4, #5
	b _080A48DE
_080A48CC:
	adds r4, #5
	b _080A48DE
_080A48D0:
	subs r4, #1
	b _080A48DE
_080A48D4:
	adds r4, #1
	b _080A48DE
_080A48D8:
	adds r5, #8
	b _080A48DE
_080A48DC:
	subs r5, #8
_080A48DE:
	ldr r0, _080A4928 @ =gSave
	ldrb r0, [r0, #6]
	movs r1, #0x88
	cmp r0, #0
	bne _080A48EA
	movs r1, #0x82
_080A48EA:
	cmp r4, #0
	bgt _080A48F0
	movs r4, #1
_080A48F0:
	cmp r1, r4
	bge _080A48F6
	adds r4, r1, #0
_080A48F6:
	ldr r6, _080A492C @ =gMenu
	ldrb r0, [r6, #0x1c]
	cmp r0, r4
	beq _080A490E
	strb r4, [r6, #0x1c]
	movs r0, #0x69
	bl SoundReq
	movs r0, #2
	bl sub_080A7114
	movs r5, #0
_080A490E:
	ldrb r0, [r6, #0x1e]
	cmp r5, #0
	bge _080A4916
	movs r5, #0
_080A4916:
	cmp r0, r5
	bge _080A491C
	adds r5, r0, #0
_080A491C:
	strb r5, [r6, #0x1f]
	ldr r1, _080A4930 @ =gScreen
	adds r0, r5, #0
	subs r0, #0x70
	strh r0, [r1, #0x18]
_080A4926:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A4928: .4byte gSave
_080A492C: .4byte gMenu
_080A4930: .4byte gScreen
.syntax divided
