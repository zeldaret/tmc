	.syntax unified
	ldr r0, _080197C4 @ =gMapBottom
	ldr r1, _080197C8 @ =gBGAffSettings
	str r1, [r0]
	ldr r2, _080197CC @ =gUnk_080B77C0
	ldrh r0, [r2]
	strh r0, [r1]
	ldr r0, _080197D0 @ =gMapTop
	subs r1, #0xc
	str r1, [r0]
	ldrh r0, [r2, #2]
	strh r0, [r1]
	bx lr
	.align 2, 0
_080197C4: .4byte gMapBottom
_080197C8: .4byte gScreen + 0x20
_080197CC: .4byte gUnk_080B77C0
_080197D0: .4byte gMapTop
	.syntax divided
