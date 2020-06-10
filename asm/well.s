	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A0E98
sub_080A0E98: @ 0x080A0E98
	push {lr}
	ldr r2, _080A0EAC @ =gUnk_08124C08
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A0EAC: .4byte gUnk_08124C08

	thumb_func_start sub_080A0EB0
sub_080A0EB0: @ 0x080A0EB0
	push {r4, r5, lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	ldr r3, _080A0EE8 @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r2, r2, r1
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldrh r3, [r3, #8]
	subs r1, r1, r3
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r2, r1
	adds r0, #0x80
	strh r2, [r0]
	ldr r2, _080A0EEC @ =0x0000407D
	ldrh r1, [r0]
	adds r0, r2, #0
	movs r2, #1
	bl UpdateCollisionLayer
	pop {r4, r5, pc}
	.align 2, 0
_080A0EE8: .4byte gRoomControls
_080A0EEC: .4byte 0x0000407D

	thumb_func_start sub_080A0EF0
sub_080A0EF0: @ 0x080A0EF0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r0, [r0]
	movs r1, #1
	bl sub_080002B0
	ldr r1, _080A0F1C @ =0x0000407D
	cmp r0, r1
	beq _080A0F18
	bl sub_08078B48
	ldr r1, _080A0F20 @ =gLinkEntity
	ldr r0, [r4, #0x2c]
	str r0, [r1, #0x2c]
	ldrh r0, [r4, #0x32]
	adds r0, #4
	strh r0, [r1, #0x32]
	bl sub_0805E780
_080A0F18:
	pop {r4, pc}
	.align 2, 0
_080A0F1C: .4byte 0x0000407D
_080A0F20: .4byte gLinkEntity
