    .syntax unified
	push {r4, r5, r6, r7, lr}
	ldr r1, _08051768 @ =gMapDataBottomSpecial
	movs r0, #4
	strb r0, [r1, #7]
	movs r4, #0
	movs r3, #0
	adds r5, r1, #0
	adds r7, r5, #0
	adds r7, #8
	ldr r6, _0805176C @ =gUnk_02000090
_0805174C:
	adds r0, r3, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08051770
	ldrb r1, [r5, #6]
	movs r2, #4
	eors r1, r3
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	ands r2, r0
	b _08051774
	.align 2, 0
_08051768: .4byte gMapDataBottomSpecial
_0805176C: .4byte gUnk_02000090
_08051770:
	adds r4, #1
	adds r2, r4, #0
_08051774:
	adds r0, r3, r6
	strb r2, [r0]
	adds r3, #1
	cmp r3, #2
	bls _0805174C
	cmp r4, #0
	bne _0805179C
	ldr r1, _08051798 @ =gMenu
	movs r0, #0x3c
	strh r0, [r1, #8]
	movs r0, #1
	movs r1, #0
	bl CreateDialogBox
	movs r0, #3
	bl SetMenuType
	b _080517A2
	.align 2, 0
_08051798: .4byte gMenu
_0805179C:
	movs r0, #1
	bl SetMenuType
_080517A2:
	adds r4, #1
	ldr r0, _080517B0 @ =gMenu
	strb r4, [r0, #0x16]
	movs r1, #4
	strb r1, [r0, #0x13]
	strb r4, [r0, #0x14]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080517B0: .4byte gMenu
    .syntax divided
