	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057CB4
sub_08057CB4: @ 0x08057CB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08057CD6
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	bl sub_0804B128
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _08057CD6
	adds r0, r4, #0
	bl sub_0805E900
	b _08057D42
_08057CD6:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _08057CE4
	ldr r0, _08057D44 @ =gLinkState
	ldrb r0, [r0, #0x12]
	cmp r0, #0x1e
	bne _08057D42
_08057CE4:
	ldr r4, [r4, #0x20]
	ldrh r0, [r4]
	ldr r1, _08057D48 @ =0x0000FFFF
	cmp r0, r1
	beq _08057D42
	ldr r5, _08057D4C @ =gLinkEntity
	adds r6, r1, #0
_08057CF2:
	ldrb r2, [r4, #7]
	movs r0, #3
	ands r0, r2
	adds r1, r5, #0
	adds r1, #0x38
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	beq _08057D3A
	ldr r0, _08057D44 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08057D18
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08057D3A
_08057D18:
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldrb r2, [r4, #4]
	ldrb r3, [r4, #5]
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _08057D3A
	movs r1, #0x36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08057D3A
	ldrb r0, [r4, #6]
	bl sub_0804B128
	bl DoExitTransition
_08057D3A:
	adds r4, #8
	ldrh r0, [r4]
	cmp r0, r6
	bne _08057CF2
_08057D42:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057D44: .4byte gLinkState
_08057D48: .4byte 0x0000FFFF
_08057D4C: .4byte gLinkEntity
