	.syntax unified
	push {r4, r5, r6, lr}
	ldr r6, _08053D20 @ =gMenu
	ldrb r4, [r6, #3]
	lsls r4, r4, #4
	ldr r0, _08053D24 @ =gUnk_080FCF04
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #8
	str r0, [r6, #0xc]
	ldr r0, [r4]
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #1
	bl GetRoomProperty
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r2, #2
	bl GetRoomProperty
	bl LoadRoomEntityList
	movs r5, #1
	strb r5, [r6, #6]
	ldr r2, _08053D28 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _08053D2C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08053D30 @ =gUpdateVisibleTiles
	strb r5, [r0]
	movs r0, #4
	movs r1, #0x10
	bl SetFade
	ldrb r0, [r4, #5]
	cmp r0, #0x1d
	bne _08053D1E
	strh r5, [r6, #0xa]
_08053D1E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08053D20: .4byte gMenu
_08053D24: .4byte gUnk_080FCF04
_08053D28: .4byte gScreen
_08053D2C: .4byte 0x0000FEFF
_08053D30: .4byte gUpdateVisibleTiles
	.syntax divided
