	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #1
	beq _080ABBC4
	cmp r0, #1
	bgt _080ABBDC
	cmp r0, #0
	bne _080ABBDC
	ldr r0, _080ABBC0 @ =gUnk_0812A7EC
	b _080ABBC6
	.align 2, 0
_080ABBC0: .4byte gUnk_0812A7EC
_080ABBC4:
	ldr r0, _080ABBD8 @ =gUnk_0812A7F8
_080ABBC6:
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _080ABBEC
	.align 2, 0
_080ABBD8: .4byte gUnk_0812A7F8
_080ABBDC:
	ldr r0, _080ABBF0 @ =gUnk_0812A800
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_080ABBEC:
	pop {pc}
	.align 2, 0
_080ABBF0: .4byte gUnk_0812A800
	.syntax divided
