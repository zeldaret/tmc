	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A09A4
sub_080A09A4: @ 0x080A09A4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080A09D4
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x10
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r1, _080A0A2C @ =gUnk_02027EB4
	cmp r0, #2
	bne _080A09CA
	ldr r1, _080A0A30 @ =gUnk_0200D654
_080A09CA:
	str r1, [r4, #0x54]
	ldrb r1, [r4, #0xa]
	adds r0, r4, #0
	bl InitializeAnimation
_080A09D4:
	ldr r0, [r4, #0x50]
	ldrh r0, [r0, #0x24]
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0806F69C
	ldr r0, [r4, #0x54]
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r3, #0x32
	ldrsh r2, [r4, r3]
	movs r3, #9
	bl sub_080AE4CC
	cmp r0, #0
	beq _080A09F8
	bl DeleteThisEntity
_080A09F8:
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, #0x40
	bgt _080A0A22
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0A22
	bl DeleteThisEntity
_080A0A22:
	adds r0, r4, #0
	bl sub_08004274
	pop {r4, pc}
	.align 2, 0
_080A0A2C: .4byte gUnk_02027EB4
_080A0A30: .4byte gUnk_0200D654
