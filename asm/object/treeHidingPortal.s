	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0809E9A0
sub_0809E9A0: @ 0x0809E9A0
	push {r4, r5, r6, lr}
	ldr r5, _0809E9B0 @ =gPlayerEntity
	ldrb r2, [r5, #0xc]
	cmp r2, #6
	beq _0809E9B4
	movs r0, #0
	b _0809E9F0
	.align 2, 0
_0809E9B0: .4byte gPlayerEntity
_0809E9B4:
	ldrb r0, [r5, #0x14]
	ands r2, r0
	lsls r2, r2, #1
	ldr r0, _0809E9F4 @ =gUnk_080B4468
	adds r2, r2, r0
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	ldr r4, _0809E9F8 @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r6, #0x32
	ldrsh r1, [r5, r6]
	movs r5, #2
	ldrsh r2, [r2, r5]
	adds r1, r1, r2
	ldrh r2, [r4, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	movs r1, #1
	bl sub_080B1AE0
_0809E9F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809E9F4: .4byte gUnk_080B4468
_0809E9F8: .4byte gRoomControls
