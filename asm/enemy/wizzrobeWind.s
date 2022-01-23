	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start WizzrobeWind
WizzrobeWind: @ 0x0802F4A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0802F4C8 @ =gUnk_080CDF50
	bl GetNextFunction
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_0802F4C8: .4byte gUnk_080CDF50

	thumb_func_start sub_0802F4CC
sub_0802F4CC: @ 0x0802F4CC
	push {lr}
	ldr r2, _0802F4E0 @ =gUnk_080CDF68
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802F4E0: .4byte gUnk_080CDF68

	thumb_func_start sub_0802F4E4
sub_0802F4E4: @ 0x0802F4E4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802F4F8
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_0802F4F8:
	ldr r1, _0802F558 @ =gUnk_080CDF50
	adds r0, r4, #0
	bl sub_0804AA30
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x87
	bne _0802F536
	movs r0, #0x2a
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r2, r0, #0
	cmp r2, #0
	beq _0802F536
	adds r3, r2, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r3]
	adds r1, r2, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	str r4, [r2, #0x50]
_0802F536:
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F556
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0802F556:
	pop {r4, pc}
	.align 2, 0
_0802F558: .4byte gUnk_080CDF50

	thumb_func_start sub_0802F55C
sub_0802F55C: @ 0x0802F55C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802F594
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r2, #0
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x80
	strb r2, [r0]
	ldrb r0, [r4, #0xe]
	bl GetCurrentRoomProperty
	str r0, [r4, #0x54]
	adds r0, r4, #0
	bl sub_0802FA48
	adds r0, r4, #0
	bl sub_0802FA88
	b _0802F5B8
_0802F594:
	adds r0, r4, #0
	bl sub_0804A720
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #0xff
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0x60
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl sub_0802F888
_0802F5B8:
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	bl CreateProjectileWithParent
	adds r1, r0, #0
	cmp r1, #0
	beq _0802F5D0
	str r1, [r4, #0x50]
	str r4, [r1, #0x50]
	ldrb r0, [r4, #0x15]
	strb r0, [r1, #0x15]
_0802F5D0:
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
	pop {r4, pc}

	thumb_func_start sub_0802F5DC
sub_0802F5DC: @ 0x0802F5DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0x82
	ldrb r3, [r2]
	cmp r3, #1
	beq _0802F62A
	cmp r3, #1
	bgt _0802F5F4
	cmp r3, #0
	beq _0802F60A
	b _0802F660
_0802F5F4:
	cmp r3, #0xff
	bne _0802F660
	ldrb r0, [r5, #0xf]
	subs r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0802F660
	strb r0, [r2]
	b _0802F660
_0802F60A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F660
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x10
	strb r0, [r5, #0xe]
	ldrb r0, [r5, #0x10]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	b _0802F660
_0802F62A:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802F660
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r2]
	movs r0, #0x28
	strb r0, [r5, #0xe]
	ldrb r1, [r5, #0x15]
	lsrs r1, r1, #3
	ldr r2, [r5, #0x50]
	movs r4, #1
	strb r3, [r2, #0xe]
	ldrb r3, [r2, #0x18]
	subs r0, #0x2c
	ands r0, r3
	orrs r0, r4
	strb r0, [r2, #0x18]
	movs r0, #4
	orrs r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
_0802F660:
	adds r0, r5, #0
	bl sub_0802F9C8
	pop {r4, r5, pc}

	thumb_func_start sub_0802F668
sub_0802F668: @ 0x0802F668
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r0, [r2]
	cmp r0, #1
	beq _0802F6F0
	cmp r0, #1
	bgt _0802F680
	cmp r0, #0
	beq _0802F68A
	b _0802F7A2
_0802F680:
	cmp r0, #2
	beq _0802F742
	cmp r0, #3
	beq _0802F76C
	b _0802F7A2
_0802F68A:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0802F69E
	cmp r1, #8
	beq _0802F6B6
	b _0802F7A2
_0802F69E:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x38
	strb r0, [r4, #0xe]
	strb r1, [r4, #0xf]
	ldr r2, [r4, #0x50]
	ldrb r1, [r2, #0x18]
	subs r0, #0x3c
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0802F7A2
_0802F6B6:
	ldr r1, _0802F6EC @ =gPlayerEntity
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0xa0
	bl EntityInRectRadius
	cmp r0, #0
	beq _0802F7A2
	adds r0, r4, #0
	bl CheckOnScreen
	cmp r0, #0
	beq _0802F7A2
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl CreateProjectileWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _0802F7A2
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r2, #0x15]
	b _0802F7A2
	.align 2, 0
_0802F6EC: .4byte gPlayerEntity
_0802F6F0:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	bne _0802F7A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r1, [r4, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xab
	lsls r0, r0, #1
	bl EnqueueSFX
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
	b _0802F7A2
_0802F742:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F7A2
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0802F7A2
_0802F76C:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0802F7A2
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r2]
	adds r1, r4, #0
	adds r1, #0x81
	movs r0, #0x28
	strb r0, [r1]
	strb r0, [r4, #0xe]
	movs r0, #0xab
	lsls r0, r0, #1
	bl EnqueueSFX
	adds r0, r4, #0
	bl sub_0802F8E4
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #3
	adds r0, r4, #0
	bl InitializeAnimation
_0802F7A2:
	adds r0, r4, #0
	bl sub_0802F9C8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802F7AC
sub_0802F7AC: @ 0x0802F7AC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0802FA88
	adds r0, r4, #0
	bl sub_0802F9C8
	ldr r5, [r4, #0x50]
	adds r0, r4, #0
	adds r0, #0x81
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802F86E
	adds r2, r4, #0
	adds r2, #0x82
	ldrb r1, [r2]
	cmp r1, #1
	beq _0802F7EA
	cmp r1, #1
	bgt _0802F7DA
	cmp r1, #0
	beq _0802F7E0
	b _0802F884
_0802F7DA:
	cmp r1, #2
	beq _0802F818
	b _0802F884
_0802F7E0:
	movs r0, #1
	strb r0, [r2]
	movs r0, #0x40
	strb r0, [r4, #0xe]
	b _0802F884
_0802F7EA:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802F884
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	movs r0, #0x28
	strb r0, [r4, #0xe]
	movs r2, #1
	strb r1, [r5, #0xe]
	ldrb r1, [r5, #0x18]
	subs r0, #0x2c
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
	movs r0, #4
	orrs r1, r0
	b _0802F844
_0802F818:
	ldrb r0, [r4, #0xe]
	subs r1, r0, #1
	strb r1, [r4, #0xe]
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0802F84C
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x30
	strb r0, [r4, #0xe]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	ldrb r1, [r4, #0x14]
	lsrs r1, r1, #1
_0802F844:
	adds r0, r4, #0
	bl InitializeAnimation
	b _0802F884
_0802F84C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bne _0802F884
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl CreateProjectileWithParent
	adds r5, r0, #0
	cmp r5, #0
	beq _0802F884
	ldrb r1, [r4, #0x15]
	movs r0, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
	b _0802F884
_0802F86E:
	adds r1, r4, #0
	adds r1, #0x82
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802F884
	movs r0, #0
	strb r0, [r1]
	ldrb r1, [r5, #0x18]
	subs r0, #4
	ands r0, r1
	strb r0, [r5, #0x18]
_0802F884:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802F888
sub_0802F888: @ 0x0802F888
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_08049F84
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0802F8DC @ =gRoomControls
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
	adds r5, r4, #0
	adds r5, #0x84
	strh r1, [r5]
	ldrh r0, [r5]
	adds r6, r4, #0
	adds r6, #0x38
	ldrb r1, [r6]
	bl sub_080001DA
	adds r4, #0x86
	strh r0, [r4]
	ldr r0, _0802F8E0 @ =0x00004071
	ldrh r1, [r5]
	ldrb r2, [r6]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_0802F8DC: .4byte gRoomControls
_0802F8E0: .4byte 0x00004071

	thumb_func_start sub_0802F8E4
sub_0802F8E4: @ 0x0802F8E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldrb r0, [r7, #0xb]
	cmp r0, #0
	bne _0802F9AE
	movs r0, #1
	str r0, [sp]
	adds r1, r7, #0
	adds r1, #0x70
	str r1, [sp, #0xc]
	adds r2, r7, #0
	adds r2, #0x6e
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x72
	str r0, [sp, #0x10]
	subs r1, #1
	str r1, [sp, #8]
	movs r2, #0x38
	adds r2, r2, r7
	mov r8, r2
	movs r0, #8
	mov sl, r0
	ldr r1, _0802F9BC @ =gRoomControls
	mov sb, r1
_0802F920:
	bl Random
	adds r4, r0, #0
	ldr r2, [sp, #0xc]
	ldrh r5, [r2]
	ldr r1, _0802F9C0 @ =0x00007FF0
	ands r0, r1
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	lsls r1, r1, #3
	bl __modsi3
	adds r6, r5, r0
	mov r0, sl
	orrs r6, r0
	lsrs r4, r4, #0x10
	ldr r1, [sp, #0x10]
	ldrh r5, [r1]
	ldr r2, _0802F9C0 @ =0x00007FF0
	ands r4, r2
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	lsls r1, r1, #3
	adds r0, r4, #0
	bl __modsi3
	adds r5, r5, r0
	mov r1, sl
	orrs r5, r1
	mov r2, sb
	ldrh r0, [r2, #6]
	subs r0, r6, r0
	lsrs r4, r0, #4
	movs r1, #0x3f
	ands r4, r1
	ldrh r0, [r2, #8]
	subs r0, r5, r0
	lsrs r0, r0, #4
	ands r0, r1
	lsls r0, r0, #6
	orrs r4, r0
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080002E0
	cmp r0, #0
	bne _0802F9A2
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl sub_080001DA
	ldr r1, _0802F9C4 @ =0x00004071
	cmp r0, r1
	beq _0802F9A2
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
	adds r0, r7, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _0802F9A2
	movs r0, #0
	str r0, [sp]
_0802F9A2:
	ldr r1, [sp]
	cmp r1, #0
	bne _0802F920
	adds r0, r7, #0
	bl sub_0802F888
_0802F9AE:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0802F9BC: .4byte gRoomControls
_0802F9C0: .4byte 0x00007FF0
_0802F9C4: .4byte 0x00004071

	thumb_func_start sub_0802F9C8
sub_0802F9C8: @ 0x0802F9C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0802FA44
	adds r5, r4, #0
	adds r5, #0x81
	ldrb r0, [r5]
	adds r6, r5, #0
	cmp r0, #0
	beq _0802FA20
	subs r0, #1
	strb r0, [r5]
	movs r1, #0xff
	ands r0, r1
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0802F9F8
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	b _0802FA02
_0802F9F8:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
_0802FA02:
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802FA3E
	adds r0, r4, #0
	bl LinearMoveUpdate
	ldrb r0, [r6]
	cmp r0, #0
	bne _0802FA3E
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _0802FA3E
_0802FA20:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0802FA3E
	adds r0, r4, #0
	bl ProcessMovement
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _0802FA3E
	ldrb r0, [r4, #0x10]
	movs r1, #0x7f
	ands r1, r0
	strb r1, [r4, #0x10]
	movs r0, #0x28
	strb r0, [r5]
_0802FA3E:
	adds r0, r4, #0
	bl GetNextFrame
_0802FA44:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0802FA48
sub_0802FA48: @ 0x0802FA48
	push {r4, lr}
	mov ip, r0
	ldr r4, [r0, #0x54]
	mov r2, ip
	adds r2, #0x80
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r3, r4, r0
	ldrh r1, [r3]
	ldr r0, _0802FA80 @ =0x0000FFFF
	cmp r1, r0
	bne _0802FA66
	movs r0, #0
	strb r0, [r2]
	adds r3, r4, #0
_0802FA66:
	ldr r2, _0802FA84 @ =gRoomControls
	ldrh r0, [r3]
	ldrh r1, [r2, #6]
	adds r0, r0, r1
	mov r1, ip
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r3, #2]
	ldrh r2, [r2, #8]
	adds r0, r0, r2
	adds r1, #2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0802FA80: .4byte 0x0000FFFF
_0802FA84: .4byte gRoomControls

	thumb_func_start sub_0802FA88
sub_0802FA88: @ 0x0802FA88
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	adds r5, r4, #0
	adds r5, #0x78
	ldrh r1, [r5]
	adds r6, r4, #0
	adds r6, #0x7a
	ldrh r2, [r6]
	movs r3, #2
	bl isEntityWithinDistance
	cmp r0, #0
	beq _0802FAF6
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0802FA48
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	adds r2, r0, #0
	strb r2, [r4, #0x15]
	adds r0, r2, #4
	movs r1, #0x18
	ands r0, r1
	lsrs r0, r0, #2
	strb r0, [r4, #0x14]
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x1e
	cmp r0, #0
	beq _0802FAEA
	lsrs r1, r2, #3
	movs r0, #4
	orrs r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	b _0802FAF2
_0802FAEA:
	lsrs r1, r2, #3
	adds r0, r4, #0
	bl InitializeAnimation
_0802FAF2:
	movs r7, #1
	b _0802FB2A
_0802FAF6:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	ldrh r2, [r5]
	ldrh r3, [r6]
	bl sub_080045D4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08004596
	ldrb r0, [r4, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r2, r0, #2
	ldrb r0, [r4, #0x14]
	cmp r2, r0
	beq _0802FB2A
	strb r2, [r4, #0x14]
	lsrs r1, r2, #1
	adds r0, r4, #0
	bl InitializeAnimation
_0802FB2A:
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
