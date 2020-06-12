	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809E824
sub_0809E824: @ 0x0809E824
	push {lr}
	ldr r2, _0809E838 @ =gUnk_08124354
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809E838: .4byte gUnk_08124354

	thumb_func_start sub_0809E83C
sub_0809E83C: @ 0x0809E83C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0809E856
	adds r0, r4, #0
	bl sub_0809E96C
	bl DeleteThisEntity
_0809E856:
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E86C
sub_0809E86C: @ 0x0809E86C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809E8B4 @ =gLinkEntity
	movs r2, #0x30
	movs r3, #0x30
	bl sub_0800419C
	cmp r0, #0
	beq _0809E89A
	movs r0, #0x14
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0809E89A
	ldr r0, _0809E8B8 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809E89A
	adds r0, r4, #0
	bl sub_080A2B80
_0809E89A:
	bl sub_0809E9A0
	cmp r0, #0x54
	bne _0809E8B0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
	movs r0, #1
	bl sub_08078A90
_0809E8B0:
	pop {r4, pc}
	.align 2, 0
_0809E8B4: .4byte gLinkEntity
_0809E8B8: .4byte gUnk_030010A0

	thumb_func_start sub_0809E8BC
sub_0809E8BC: @ 0x0809E8BC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809E8E8
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x40
	ands r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0809E96C
	adds r0, r4, #0
	bl sub_0809E918
_0809E8E8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809E8EC
sub_0809E8EC: @ 0x0809E8EC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809E916
	adds r0, r1, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	movs r0, #0
	bl sub_08078A90
	movs r0, #0x73
	bl PlaySFX
	bl DeleteThisEntity
_0809E916:
	pop {pc}

	thumb_func_start sub_0809E918
sub_0809E918: @ 0x0809E918
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, _0809E964 @ =gUnk_08124364
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _0809E968 @ =0xFFFFFC18
	cmp r0, r1
	beq _0809E962
	adds r6, r1, #0
_0809E92A:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0809E958
	ldrh r0, [r4]
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	ldrh r0, [r4, #2]
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	adds r1, r2, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r2, #0
	bl UpdateSpriteOrderAndFlip
_0809E958:
	adds r4, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, r6
	bne _0809E92A
_0809E962:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809E964: .4byte gUnk_08124364
_0809E968: .4byte 0xFFFFFC18

	thumb_func_start sub_0809E96C
sub_0809E96C: @ 0x0809E96C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r2, _0809E99C @ =gRoomControls
	ldrh r1, [r2, #6]
	adds r1, #0x20
	subs r0, r0, r1
	asrs r0, r0, #4
	movs r3, #0x3f
	ands r0, r3
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	ldrh r2, [r2, #8]
	adds r2, #8
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r3
	lsls r1, r1, #6
	orrs r0, r1
	bl sub_08018C1C
	pop {r4, r5, pc}
	.align 2, 0
_0809E99C: .4byte gRoomControls

	thumb_func_start sub_0809E9A0
sub_0809E9A0: @ 0x0809E9A0
	push {r4, r5, r6, lr}
	ldr r5, _0809E9B0 @ =gLinkEntity
	ldrb r2, [r5, #0xc]
	cmp r2, #6
	beq _0809E9B4
	movs r0, #0
	b _0809E9F0
	.align 2, 0
_0809E9B0: .4byte gLinkEntity
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
	bl sub_080002C8
_0809E9F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809E9F4: .4byte gUnk_080B4468
_0809E9F8: .4byte gRoomControls
