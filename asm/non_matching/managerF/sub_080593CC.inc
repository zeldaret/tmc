	.syntax unified
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, _08059418 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08059420
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _08059420
	ldr r4, _0805941C @ =gPlayerEntity
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _08059420
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r0, r1
	bne _08059420
	movs r0, #0x38
	ldrsh r1, [r3, r0]
	movs r0, #0x3a
	ldrsh r2, [r3, r0]
	adds r2, #0xc
	adds r0, r4, #0
	movs r3, #6
	bl sub_0806FCB8
	b _08059422
	.align 2, 0
_08059418: .4byte gPlayerState
_0805941C: .4byte gPlayerEntity
_08059420:
	movs r0, #0
_08059422:
	pop {r4, pc}
	.syntax divided
