	.syntax unified
	.text

sub_080611D4: @ 0x080611D4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x14]
	movs r0, #6
	ands r0, r1
	ldr r1, _08061218 @ =gUnk_0810AC4C
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r2, #1
	ldrsb r2, [r0, r2]
	adds r0, r4, #0
	bl sub_080002B4
	adds r3, r0, #0
	ldr r2, _0806121C @ =gUnk_0810AC54
_080611F4:
	ldrb r0, [r2]
	cmp r0, r3
	bne _08061220
	ldrb r0, [r2, #1]
	ldrb r1, [r4, #0x14]
	lsrs r0, r0, #2
	cmp r1, r0
	bne _08061220
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0806122A
	ldrb r0, [r2, #1]
	b _0806122C
	.align 2, 0
_08061218: .4byte gUnk_0810AC4C
_0806121C: .4byte gUnk_0810AC54
_08061220:
	adds r2, #2
	ldrb r0, [r2]
	cmp r0, #0
	bne _080611F4
	strb r0, [r4, #0xf]
_0806122A:
	movs r0, #0xff
_0806122C:
	pop {r4, pc}
	.align 2, 0


	.syntax divided
