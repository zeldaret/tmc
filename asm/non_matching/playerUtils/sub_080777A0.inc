	.syntax unified
	push {r4, lr}
	ldr r3, _080777D0 @ =gPlayerState
	adds r0, r3, #0
	adds r0, #0x92
	ldrh r1, [r0]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08077870
	ldr r1, [r3, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080777D4
	adds r1, r3, #0
	adds r1, #0xa0
	movs r0, #1
	strb r0, [r1]
	bl DeleteClones
_080777CC:
	movs r0, #1
	b _0807787C
	.align 2, 0
_080777D0: .4byte gPlayerState
_080777D4:
	ldr r2, _080777F4 @ =gArea
	ldrb r0, [r2, #0x18]
	cmp r0, #2
	beq _080777FC
	cmp r0, #3
	beq _08077810
	ldr r0, _080777F8 @ =gUnk_0200AF00
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _0807787A
	adds r2, r3, #0
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	bne _0807787A
	b _08077838
	.align 2, 0
_080777F4: .4byte gArea
_080777F8: .4byte gUnk_0200AF00
_080777FC:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _080777CC
	ldr r1, _0807780C @ =gPlayerEntity
	ldrb r0, [r1, #0xd]
	adds r0, #1
	strb r0, [r1, #0xd]
	b _080777CC
	.align 2, 0
_0807780C: .4byte gPlayerEntity
_08077810:
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	bne _0807787A
	ands r1, r4
	cmp r1, #0
	beq _0807787A
	ldr r0, _08077834 @ =gPlayerEntity
	ldrb r1, [r0, #0xd]
	adds r1, #1
	strb r1, [r0, #0xd]
	ldrb r2, [r0, #0x10]
	movs r1, #0x7f
	ands r1, r2
	strb r1, [r0, #0x10]
	movs r1, #0xb4
	bl RequestPriorityDuration
	b _080777CC
	.align 2, 0
_08077834: .4byte gPlayerEntity
_08077838:
	ldrb r0, [r2, #0x12]
	cmp r0, #0x11
	beq _0807787A
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807787A
	ldr r0, [r2, #0x30]
	ldr r1, _0807786C @ =0x00040400
	ands r0, r1
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0807787A
	ldrb r0, [r2, #4]
	cmp r0, #0
	bne _0807787A
	movs r0, #0x18
	strb r0, [r2, #0xc]
	b _0807787A
	.align 2, 0
_0807786C: .4byte 0x00040400
_08077870:
	ldr r0, [r3, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080777CC
_0807787A:
	movs r0, #0
_0807787C:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
