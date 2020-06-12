	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809EC4C
sub_0809EC4C: @ 0x0809EC4C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r3, [r6, #0xc]
	cmp r3, #0
	bne _0809ED14
	movs r4, #1
	strb r4, [r6, #0xc]
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r6, #0xa]
	cmp r0, #0
	bne _0809ED04
	ldrb r0, [r6, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r6, #0x10]
	strb r4, [r6, #0x1e]
	adds r5, r6, #0
	adds r5, #0x38
	strb r4, [r5]
	adds r1, r6, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x7a
	strb r0, [r1]
	adds r0, r6, #0
	adds r0, #0x3b
	strb r4, [r0]
	ldr r0, _0809ECF4 @ =gUnk_080FD168
	str r0, [r6, #0x48]
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	ldr r1, _0809ECF8 @ =gRoomControls
	ldrh r0, [r1, #6]
	subs r4, r4, r0
	asrs r4, r4, #4
	movs r2, #0x3f
	ands r4, r2
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r4, r0
	ldr r0, _0809ECFC @ =0x00004066
	subs r1, r4, #1
	ldrb r2, [r5]
	bl SetTile
	ldr r0, _0809ED00 @ =0x00004065
	ldrb r2, [r5]
	adds r1, r4, #0
	bl SetTile
	adds r0, r6, #0
	bl InitializeAnimationOrderAndFlip
	movs r0, #0x9e
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0809ED14
	str r1, [r6, #0x54]
	adds r0, r6, #0
	bl CopyPosition
	b _0809ED14
	.align 2, 0
_0809ECF4: .4byte gUnk_080FD168
_0809ECF8: .4byte gRoomControls
_0809ECFC: .4byte 0x00004066
_0809ED00: .4byte 0x00004065
_0809ED04:
	strb r3, [r6, #0x1e]
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r6, #0
	bl InitializeAnimationOrderAndFlip
_0809ED14:
	pop {r4, r5, r6, pc}
	.align 2, 0
