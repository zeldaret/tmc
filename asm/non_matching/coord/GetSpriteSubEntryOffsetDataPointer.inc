    .syntax unified
    lsls r0, r0, #1
	ldr r2, _080700E4 @ =gUnk_089FB780
	adds r0, r0, r2
	ldrh r0, [r0]
	subs r2, #0x10
	adds r0, r0, r2
	adds r1, r0, r1
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r2]
	adds r0, r1, r0
	bx lr
	.align 2, 0
_080700E4: .4byte gExtraFrameOffsets+0x10
    .syntax divided
