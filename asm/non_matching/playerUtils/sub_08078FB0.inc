	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _08078FE0 @ =gPlayerState
	ldrb r1, [r5, #6]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08078FCA
	adds r1, r5, #0
	adds r1, #0x35
	movs r0, #0xff
	strb r0, [r1]
_08078FCA:
	adds r0, r4, #0
	bl sub_08079064
	ldr r1, [r5, #0x30]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08078FE4
	movs r2, #0x58
	b _08078FFA
	.align 2, 0
_08078FE0: .4byte gPlayerState
_08078FE4:
	ands r1, r6
	cmp r1, #0
	beq _08078FEE
	movs r2, #0x18
	b _08078FFA
_08078FEE:
	ldrh r0, [r5, #8]
	lsrs r0, r0, #8
	movs r2, #0xb8
	cmp r0, #7
	bne _08078FFA
	movs r2, #0x34
_08078FFA:
	ldr r0, _08079014 @ =gPlayerState
	adds r3, r0, #0
	ldrb r1, [r0, #8]
	cmp r2, r1
	bls _08079040
	ldrb r0, [r4, #0x14]
	adds r2, r0, #0
	cmp r2, #4
	bls _08079018
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08079020
	.align 2, 0
_08079014: .4byte gPlayerState
_08079018:
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08079020:
	strb r0, [r4, #0x18]
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08079036
	ldrh r1, [r3, #8]
	ldrb r0, [r4, #0x14]
	adds r2, r1, r0
	b _08079042
_08079036:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x19
	ldrh r3, [r3, #8]
	adds r2, r0, r3
	b _08079042
_08079040:
	ldrh r2, [r0, #8]
_08079042:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r1, [r1]
	orrs r0, r1
	cmp r2, r0
	beq _08079062
	lsrs r0, r2, #8
	strh r0, [r4, #0x12]
	movs r0, #0xff
	ands r2, r0
	adds r0, r4, #0
	adds r1, r2, #0
	bl InitAnimationForceUpdate
_08079062:
	pop {r4, r5, r6, pc}
	.syntax divided
