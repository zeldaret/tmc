	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08084458
sub_08084458: @ 0x08084458
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08084472
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08004168
	b _080844C2
_08084472:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080844C2
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080844C4 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r5, #0x32
	ldrsh r0, [r4, r5]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r2, [r0]
	movs r0, #0x35
	bl sub_0807B7D8
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x40
	bl CreateFx
	movs r0, #0x93
	lsls r0, r0, #1
	bl PlaySFX
	bl sub_0805E780
_080844C2:
	pop {r4, r5, pc}
	.align 2, 0
_080844C4: .4byte gRoomControls
