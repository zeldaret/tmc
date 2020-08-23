	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectAB
ObjectAB: @ 0x080A00E0
	push {lr}
	ldr r2, _080A00F4 @ =gUnk_0812486C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A00F4: .4byte gUnk_0812486C

	thumb_func_start sub_080A00F8
sub_080A00F8: @ 0x080A00F8
	push {lr}
	ldrb r1, [r0, #0xc]
	adds r1, #1
	movs r3, #0
	strb r1, [r0, #0xc]
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #1
	strb r1, [r2]
	ldrb r1, [r0, #0x19]
	movs r2, #0xc0
	orrs r1, r2
	strb r1, [r0, #0x19]
	movs r1, #0x29
	adds r1, r1, r0
	mov ip, r1
	ldrb r1, [r1]
	movs r2, #7
	orrs r1, r2
	mov r2, ip
	strb r1, [r2]
	strb r3, [r0, #0xd]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_080A012C
sub_080A012C: @ 0x080A012C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl CheckRoomFlag
	cmp r0, #0
	beq _080A0154
	adds r0, r4, #0
	bl GetNextFrame
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A0154
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
_080A0154:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0158
sub_080A0158: @ 0x080A0158
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl CheckRoomFlag
	cmp r0, #0
	beq _080A018A
	adds r0, r4, #0
	bl sub_080A0190
	adds r0, r4, #0
	movs r1, #0x1e
	bl sub_0805E4E0
	ldr r1, _080A018C @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0x10
	movs r3, #0x10
	bl sub_080041A0
	cmp r0, #0
	beq _080A018A
	movs r0, #0x37
	bl sub_0805B390
_080A018A:
	pop {r4, pc}
	.align 2, 0
_080A018C: .4byte gPlayerEntity

	thumb_func_start sub_080A0190
sub_080A0190: @ 0x080A0190
	push {r4, lr}
	movs r4, #0
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, _080A01B8 @ =gPlayerEntity
	bl CopyPosition
	ldr r2, _080A01BC @ =gPlayerState
	movs r0, #3
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x38
	strb r4, [r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r2, #0x30]
	pop {r4, pc}
	.align 2, 0
_080A01B8: .4byte gPlayerEntity
_080A01BC: .4byte gPlayerState
