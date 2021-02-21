	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x63
	bl CheckLocalFlag
	cmp r0, #0
	beq _080862CA
	bl DeleteThisEntity
_080862CA:
	movs r3, #1
	strb r3, [r4, #0xc]
	ldr r1, _08086350 @ =gUnk_08120678
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x76
	strh r0, [r2]
	ldrh r0, [r1]
	subs r1, #2
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08086354
	adds r1, #6
	ldr r0, [r4, #0x2c]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r4, #0x30]
	str r0, [r1]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r4, #0x19]
	str r4, [r4, #0x50]
	ldrb r0, [r4, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x3f
	strb r3, [r0]
	subs r1, #1
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
_08086324:
	adds r5, r2, #1
	adds r0, r4, #0
	movs r1, #0x18
	adds r2, r5, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r1, r0, #0
	str r1, [r4, #0x54]
	cmp r1, #0
	beq _08086346
	ldr r0, [r4, #0x50]
	str r0, [r1, #0x50]
	ldr r0, [r4, #0x54]
	str r4, [r0, #0x54]
	ldr r0, [r4, #0x54]
	str r0, [r4, #0x50]
_08086346:
	adds r2, r5, #0
	cmp r2, #3
	bls _08086324
	b _08086360
	.align 2, 0
_08086350: .4byte gUnk_08120678
_08086354:
	ldrb r0, [r4, #0x19]
	movs r1, #0x3f
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	strb r1, [r4, #0x19]
_08086360:
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08086370
	pop {r4, r5, pc}
	.syntax divided
