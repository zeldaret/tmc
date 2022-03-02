	.syntax unified
	push {r4, lr}
	ldr r1, _080A6640 @ =gUnk_08128E78
	ldr r4, _080A6644 @ =gMenu
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	ldrb r1, [r4, #3]
	lsls r1, r1, #3
	ldr r0, _080A6648 @ =gUnk_08128E94
	adds r1, r1, r0
	ldr r2, _080A664C @ =gScreen
	movs r0, #5
	ldrsb r0, [r1, r0]
	rsbs r0, r0, #0
	strh r0, [r2, #0x18]
	ldrb r1, [r1, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r2, #0x24]
	bl sub_080A66D0
	pop {r4, pc}
	.align 2, 0
_080A6640: .4byte gUnk_08128E78
_080A6644: .4byte gMenu
_080A6648: .4byte gUnk_08128E94
_080A664C: .4byte gScreen
	.syntax divided
