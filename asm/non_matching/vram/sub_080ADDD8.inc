	.syntax unified
	push {lr}
	adds r2, r1, #0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _080ADDFC @ =gUnk_02024494
	adds r3, r1, r0
	ldr r0, _080ADE00 @ =0x00FFFFFC
	ands r0, r2
	ldr r1, _080ADE04 @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	str r0, [r3, #8]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ADE0C
	ldr r0, _080ADE08 @ =0x0000FFFF
	b _080ADE14
	.align 2, 0
_080ADDFC: .4byte gUnk_02024494
_080ADE00: .4byte 0x00FFFFFC
_080ADE04: .4byte gGlobalGfxAndPalettes
_080ADE08: .4byte 0x0000FFFF
_080ADE0C:
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r2
	lsrs r0, r0, #0x14
_080ADE14:
	strh r0, [r3, #6]
	ldrb r0, [r3]
	movs r1, #0xf
	ands r1, r0
	movs r0, #0x30
	orrs r1, r0
	strb r1, [r3]
	pop {pc}
	.syntax divided
