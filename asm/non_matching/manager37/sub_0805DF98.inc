	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _0805DFB4 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0805DFCA
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0805DFB8
	subs r0, #1
	strb r0, [r2, #0xe]
	b _0805DFCA
	.align 2, 0
_0805DFB4: .4byte gTextBox
_0805DFB8:
	movs r0, #4
	strb r0, [r2, #0xc]
	movs r0, #7
	movs r1, #4
	bl DoFade
	movs r0, #0xf6
	bl SoundReq
_0805DFCA:
	pop {pc}
	.syntax divided
