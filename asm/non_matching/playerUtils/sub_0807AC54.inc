	.syntax unified
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807AC74 @ =gPlayerState
	ldrb r1, [r0, #0x11]
	adds r3, r0, #0
	cmp r1, #0
	beq _0807ACC6
	ldrb r0, [r3, #0x12]
	cmp r0, #0x2a
	beq _0807ACA8
	cmp r0, #0x2a
	bgt _0807AC78
	cmp r0, #0x1e
	beq _0807AC82
	b _0807ACC6
	.align 2, 0
_0807AC74: .4byte gPlayerState
_0807AC78:
	cmp r0, #0x2b
	beq _0807AC90
	cmp r0, #0x2c
	beq _0807ACB6
	b _0807ACC6
_0807AC82:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
_0807AC90:
	movs r0, #0
	movs r1, #0x1d
	strb r1, [r2, #0xc]
	strb r0, [r2, #0xd]
	strh r0, [r2, #0x30]
	ldr r0, _0807ACA4 @ =0x000002CF
	strh r0, [r3, #8]
	movs r0, #1
	b _0807ACC8
	.align 2, 0
_0807ACA4: .4byte 0x000002CF
_0807ACA8:
	ldrh r0, [r2, #0x2e]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strh r1, [r2, #0x2e]
_0807ACB6:
	movs r0, #0
	movs r1, #0x1d
	strb r1, [r2, #0xc]
	movs r1, #1
	strb r1, [r2, #0xd]
	strh r0, [r2, #0x30]
	movs r0, #1
	b _0807ACC8
_0807ACC6:
	movs r0, #0
_0807ACC8:
	pop {pc}
	.align 2, 0
	.syntax divided
