	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xe]
	subs r1, r0, #1
	strb r1, [r5, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _08099896
	bl DeleteThisEntity
	b _0809990E
_08099896:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x30
	bne _080998A4
	adds r0, r5, #0
	bl sub_08099C18
_080998A4:
	ldrb r0, [r5, #0xe]
	movs r4, #0x3c
	subs r4, r4, r0
	lsls r4, r4, #5
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_0806FCF4
	movs r0, #0xf
	movs r1, #0x11
	movs r2, #0x40
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _0809990E
	bl Random
	adds r4, r0, #0
	asrs r0, r4, #0x10
	movs r1, #0x21
	bl __modsi3
	adds r2, r0, #0
	subs r2, #0x10
	movs r0, #0xf
	ands r0, r4
	subs r4, r0, #4
	adds r3, r6, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	lsls r2, r2, #0x10
	lsls r3, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl PositionRelative
_0809990E:
	pop {r4, r5, r6, pc}
	.syntax divided
