	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080910A0
sub_080910A0: @ 0x080910A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080910C8
	ldrb r0, [r4, #0xa]
	bl sub_0807CBD0
	cmp r0, #0
	beq _080910B8
	bl sub_0805E780
_080910B8:
	movs r1, #1
	strb r1, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, r4, #0
	bl sub_08078828
_080910C8:
	adds r0, r4, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08091100
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _08091104 @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #2
	bl sub_080A7C8C
	bl sub_0805E780
_08091100:
	pop {r4, r5, pc}
	.align 2, 0
_08091104: .4byte gRoomControls
