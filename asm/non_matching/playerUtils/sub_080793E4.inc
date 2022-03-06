	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _080793FC @ =gPlayerState
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08079408
	ldr r1, _08079400 @ =gUnk_0811C0F8
	ldr r0, _08079404 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	b _08079410
	.align 2, 0
_080793FC: .4byte gPlayerState
_08079400: .4byte gUnk_0811C0F8
_08079404: .4byte gPlayerEntity
_08079408:
	ldr r1, _08079448 @ =gUnk_0811C0F8
	ldr r0, _0807944C @ =gPlayerEntity
	ldrb r0, [r0, #0x15]
	lsrs r0, r0, #2
_08079410:
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0]
	bl sub_08079778
	cmp r0, #0
	beq _08079454
	ldr r0, _08079450 @ =gPlayerState
	adds r0, #0x90
	ldrh r0, [r0]
	ands r0, r4
	cmp r0, #0
	beq _08079454
	cmp r5, #0
	beq _08079442
	bl sub_0807A500
	ldr r1, _0807944C @ =gPlayerEntity
	adds r1, #0x38
	ldrb r1, [r1]
	adds r2, r5, #0
	bl sub_080B1BA4
	cmp r0, #0
	beq _08079454
_08079442:
	movs r0, #1
	b _08079456
	.align 2, 0
_08079448: .4byte gUnk_0811C0F8
_0807944C: .4byte gPlayerEntity
_08079450: .4byte gPlayerState
_08079454:
	movs r0, #0
_08079456:
	pop {r4, r5, pc}
	.syntax divided
