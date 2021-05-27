	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x5a
	ldrb r4, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r4, r0
	ldrb r2, [r5, #0x1e]
	adds r0, r5, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08068226
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r2, r4, #4
	adds r0, r5, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	b _08068268
_08068226:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08068254
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl SetExtraSpriteFrame
	movs r0, #0xe1
	rsbs r0, r0, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl SetSpriteSubEntryOffsetData1
	b _08068268
_08068254:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xff
	bl SetExtraSpriteFrame
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0xff
	bl SetExtraSpriteFrame
_08068268:
	adds r0, r5, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.syntax divided
