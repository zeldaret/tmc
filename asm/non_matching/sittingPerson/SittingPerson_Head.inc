	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xa]
	lsls r5, r5, #2
	ldr r0, _080639C8 @ =gUnk_0810CBC0
	adds r5, r5, r0
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r2, #0xf
	ands r2, r0
	ldrb r0, [r5]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r1, #0
	bl SetExtraSpriteFrame
	ldr r2, _080639CC @ =gUnk_0810CD88
	ldrb r1, [r4, #0x1e]
	movs r0, #3
	ands r0, r1
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r5, #1]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r1, #1
	bl SetExtraSpriteFrame
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl SetSpriteSubEntryOffsetData1
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0
_080639C8: .4byte gUnk_0810CBC0
_080639CC: .4byte gUnk_0810CD88
	.syntax divided
