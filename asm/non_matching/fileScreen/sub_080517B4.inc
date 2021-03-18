    .syntax unified
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _080517E4 @ =gUnk_02019EE0
	ldrb r1, [r0, #7]
	adds r4, r0, #0
	cmp r2, #0
	beq _080517DE
	adds r1, r1, r2
	cmp r1, #4
	bhi _080517DC
	ldr r3, _080517E8 @ =gUnk_02000090
_080517CA:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080517D6
	cmp r0, #4
	bne _080517DE
_080517D6:
	adds r1, r1, r2
	cmp r1, #4
	bls _080517CA
_080517DC:
	ldrb r1, [r4, #7]
_080517DE:
	adds r0, r1, #0
	pop {r4, pc}
	.align 2, 0
_080517E4: .4byte gUnk_02019EE0
_080517E8: .4byte gUnk_02000090
    .syntax divided
