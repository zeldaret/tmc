	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080AB99C
	adds r0, r4, #0
	bl ProcessMovement
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	ldr r1, _080AB994 @ =gUnk_0812A6C4
	lsls r5, r0, #1
	adds r1, r5, r1
	ldrh r1, [r1]
	ldrh r0, [r4, #0x2a]
	ands r0, r1
	cmp r0, #0
	bne _080AB980
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	bl sub_080AB9FC
	cmp r0, #0
	beq _080AB9D4
_080AB980:
	bl Random
	ldr r2, _080AB998 @ =gUnk_0812A6BC
	movs r1, #1
	ands r1, r0
	adds r1, r1, r5
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r4, #0x15]
	b _080AB9D4
	.align 2, 0
_080AB994: .4byte gUnk_0812A6C4
_080AB998: .4byte gUnk_0812A6BC
_080AB99C:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _080AB9A6
	bl DeleteThisEntity
_080AB9A6:
	ldr r0, [r4, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080AB9B2
	bl DeleteThisEntity
_080AB9B2:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _080AB9D0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _080AB9D0
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r1, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	b _080AB9D4
_080AB9D0:
	bl DeleteThisEntity
_080AB9D4:
	adds r0, r4, #0
	bl GetNextFrame
	pop {r4, r5, pc}
	.syntax divided
