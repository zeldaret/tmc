	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809E9FC
sub_0809E9FC: @ 0x0809E9FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0809EA18 @ =gUnk_081243B4
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0809EB30
	pop {r4, pc}
	.align 2, 0
_0809EA18: .4byte gUnk_081243B4

	thumb_func_start sub_0809EA1C
sub_0809EA1C: @ 0x0809EA1C
	push {lr}
	ldr r2, _0809EA30 @ =gUnk_081243BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809EA30: .4byte gUnk_081243BC

	thumb_func_start sub_0809EA34
sub_0809EA34: @ 0x0809EA34
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	strb r2, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809EA7C @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0809EAD8
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	adds r0, r4, #0
	bl sub_0809EABC
	pop {r4, pc}
	.align 2, 0
_0809EA7C: .4byte gUnk_080FD150

	thumb_func_start sub_0809EA80
sub_0809EA80: @ 0x0809EA80
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809EAB4
	adds r4, r5, #0
	adds r4, #0x86
	ldrh r0, [r4]
	bl CheckFlags
	cmp r0, #0
	beq _0809EAA6
	ldrh r0, [r4]
	bl ClearFlag
	b _0809EAAC
_0809EAA6:
	ldrh r0, [r4]
	bl SetFlag
_0809EAAC:
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08004488
_0809EAB4:
	adds r0, r5, #0
	bl sub_0809EABC
	pop {r4, r5, pc}

	thumb_func_start sub_0809EABC
sub_0809EABC: @ 0x0809EABC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	ldrb r0, [r4, #0x1e]
	cmp r0, r1
	beq _0809EAD6
	strb r1, [r4, #0x1e]
_0809EAD6:
	pop {r4, pc}

	thumb_func_start sub_0809EAD8
sub_0809EAD8: @ 0x0809EAD8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	beq _0809EAF8
	bl sub_0804B128
	str r0, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x54
	adds r2, r5, #0
	adds r2, #0x74
	adds r0, r5, #0
	bl sub_080A2CC0
	b _0809EB24
_0809EAF8:
	ldr r0, _0809EB28 @ =0x00004050
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0809EB2C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl SetTile
_0809EB24:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0809EB28: .4byte 0x00004050
_0809EB2C: .4byte gRoomControls

	thumb_func_start sub_0809EB30
sub_0809EB30: @ 0x0809EB30
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0809EB64
	ldrb r1, [r4, #0x15]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0809EB4A
	adds r0, r4, #0
	bl sub_0806F69C
_0809EB4A:
	adds r2, r4, #0
	adds r2, #0x74
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0809EB64
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_0809EB64:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809EB68
sub_0809EB68: @ 0x0809EB68
	push {lr}
	ldr r2, _0809EB7C @ =gUnk_081243C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809EB7C: .4byte gUnk_081243C4

	thumb_func_start sub_0809EB80
sub_0809EB80: @ 0x0809EB80
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r5, #3
	strb r5, [r4, #0x1e]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #4
	movs r0, #0x48
	strb r0, [r1]
	subs r1, #1
	movs r0, #0x28
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0809EBD4 @ =gUnk_080FD150
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl sub_0809EAD8
	adds r0, r4, #0
	bl InitializeAnimationOrderAndFlip
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0809EBD2
	strb r5, [r4, #0xc]
	movs r0, #2
	strb r0, [r4, #0x1e]
_0809EBD2:
	pop {r4, r5, pc}
	.align 2, 0
_0809EBD4: .4byte gUnk_080FD150

	thumb_func_start sub_0809EBD8
sub_0809EBD8: @ 0x0809EBD8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809EC04
	movs r1, #2
	strb r1, [r2, #0xc]
	movs r0, #0x10
	strb r0, [r2, #0xe]
	strb r1, [r2, #0x1e]
	adds r0, r2, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08004488
_0809EC04:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0809EC08
sub_0809EC08: @ 0x0809EC08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0809EC1E
	movs r0, #3
	strb r0, [r4, #0xc]
	b _0809EC44
_0809EC1E:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809EC44
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl ClearFlag
	movs r0, #0x88
	lsls r0, r0, #1
	bl sub_08004488
_0809EC44:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start nullsub_126
nullsub_126: @ 0x0809EC48
	bx lr
	.align 2, 0
