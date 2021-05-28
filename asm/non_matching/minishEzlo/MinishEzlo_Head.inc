	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08063006
	movs r6, #1
	movs r5, #0
	b _0806300A
_08063006:
	movs r6, #0
	movs r5, #1
_0806300A:
	adds r0, r4, #0
	adds r0, #0x5b
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	movs r7, #0x8e
	lsls r7, r7, #1
	cmp r0, #0
	beq _0806301E
	movs r7, #0x16
_0806301E:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r2, [r0]
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r2, r0
	subs r2, #1
	adds r0, r4, #0
	adds r1, r6, #0
	bl SetExtraSpriteFrame
	ldrb r2, [r4, #0x1e]
	adds r0, r4, #0
	adds r1, r5, #0
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl sub_0806FF10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
