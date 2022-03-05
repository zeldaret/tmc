	.syntax unified
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r3, #0
	bl sub_080A69E0
	adds r4, r0, #0
	cmp r4, #0
	ble _080A69D4
	ldr r2, _080A69D8 @ =gMenu
	adds r2, #0x2d
	ldrb r0, [r2]
	lsls r0, r0, #3
	ldr r3, _080A69DC @ =gMapDataBottomSpecial
	adds r0, r0, r3
	lsrs r1, r5, #8
	strb r1, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strb r5, [r0, #1]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r6, [r0, #2]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	strh r4, [r0, #4]
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r3
	asrs r1, r4, #0x10
	strh r1, [r0, #6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080A69D4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A69D8: .4byte gMenu
_080A69DC: .4byte gMapDataBottomSpecial
	.syntax divided
