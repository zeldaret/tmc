	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Mask
Mask: @ 0x0809298C
	push {lr}
	ldr r2, _080929A0 @ =gUnk_081227A4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080929A0: .4byte gUnk_081227A4

	thumb_func_start sub_080929A4
sub_080929A4: @ 0x080929A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xb]
	movs r6, #0xc0
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08092A08
	adds r4, r5, #0
	adds r4, #0x86
	ldrh r0, [r4]
	bl CheckFlags
	cmp r0, #0
	beq _08092A08
	ldrb r0, [r5, #0xb]
	adds r1, r6, #0
	ands r1, r0
	cmp r1, #0x40
	beq _080929D2
	cmp r1, #0x80
	beq _08092A04
	b _08092A08
_080929D2:
	ldr r0, _080929F4 @ =gUnk_030010A0
	ldrh r1, [r0, #0xa]
	movs r0, #0xc1
	lsls r0, r0, #1
	cmp r1, r0
	beq _080929EE
	cmp r1, r0
	blt _080929FC
	ldr r0, _080929F8 @ =0x0000044F
	cmp r1, r0
	bgt _080929FC
	subs r0, #2
	cmp r1, r0
	blt _080929FC
_080929EE:
	bl DeleteThisEntity
	b _08092A08
	.align 2, 0
_080929F4: .4byte gUnk_030010A0
_080929F8: .4byte 0x0000044F
_080929FC:
	ldrh r0, [r4]
	bl ClearFlag
	b _08092A08
_08092A04:
	bl DeleteThisEntity
_08092A08:
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #0xa
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	adds r2, r5, #0
	adds r2, #0x78
	movs r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldrb r0, [r5, #0xe]
	lsrs r0, r0, #1
	strb r0, [r5, #0xf]
	strb r3, [r5, #0xe]
	ldrb r1, [r5, #0xb]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r5, #0x1e]
	movs r4, #0x2e
	ldrsh r1, [r5, r4]
	ldr r2, _08092A8C @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r5, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r5, #0
	adds r4, #0x7e
	strh r1, [r4]
	ldrh r0, [r4]
	movs r1, #1
	bl sub_080001DA
	adds r1, r5, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldrh r0, [r4]
	movs r1, #1
	bl sub_080002E0
	adds r1, r5, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldr r0, _08092A90 @ =0x00004022
	ldrh r1, [r4]
	movs r2, #1
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_08092A8C: .4byte gRoomControls
_08092A90: .4byte 0x00004022

	thumb_func_start sub_08092A94
sub_08092A94: @ 0x08092A94
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08092B08 @ =gLinkEntity
	ldrb r0, [r2, #0xc]
	cmp r0, #6
	bne _08092B04
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _08092B04
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r0, #0x28
	movs r3, #0x32
	ldrsh r1, [r2, r3]
	cmp r0, r1
	blt _08092B04
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	movs r3, #0x2e
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	ldrb r0, [r4, #0xf]
	cmp r1, r0
	bge _08092B04
	cmn r1, r0
	ble _08092B04
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	adds r5, r4, #0
	adds r5, #0x7e
	ldrh r1, [r5]
	movs r2, #1
	bl SetTile
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r1, [r5]
	movs r2, #1
	bl sub_08000148
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x36]
	subs r0, #0x20
	strh r0, [r4, #0x36]
	ldrh r0, [r4, #0x32]
	adds r0, #0x20
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x19]
_08092B04:
	pop {r4, r5, pc}
	.align 2, 0
_08092B08: .4byte gLinkEntity

	thumb_func_start sub_08092B0C
sub_08092B0C: @ 0x08092B0C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _08092B50
	movs r0, #0
	movs r1, #3
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xb]
	movs r1, #0xc0
	ands r1, r0
	cmp r1, #0x40
	beq _08092B32
	cmp r1, #0x80
	bne _08092B3C
	movs r0, #0x72
	bl sub_08004488
_08092B32:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
_08092B3C:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl CreateFx
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805457C
	b _08092B6A
_08092B50:
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r1, [r0]
	adds r0, r4, #0
	bl sub_080044EC
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08092B6A
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_08092B6A:
	pop {r4, pc}

	thumb_func_start sub_08092B6C
sub_08092B6C: @ 0x08092B6C
	push {lr}
	bl DeleteThisEntity
	pop {pc}
