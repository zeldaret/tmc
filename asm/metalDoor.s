	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A066C
sub_080A066C: @ 0x080A066C
	push {lr}
	ldr r2, _080A0680 @ =gUnk_0812493C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A0680: .4byte gUnk_0812493C

	thumb_func_start sub_080A0684
sub_080A0684: @ 0x080A0684
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r1, [r2]
	ldr r0, _080A070C @ =0x0000FFFF
	cmp r1, r0
	beq _080A06A2
	adds r0, r1, #0
	bl CheckFlags
	cmp r0, #0
	beq _080A06A2
	bl DeleteThisEntity
_080A06A2:
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r2, [r4, #0x1e]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r0, _080A0710 @ =gUnk_080FD180
	str r0, [r4, #0x48]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r2]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080A0714 @ =gRoomControls
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
	adds r0, #0x74
	strh r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_080A070C: .4byte 0x0000FFFF
_080A0710: .4byte gUnk_080FD180
_080A0714: .4byte gRoomControls

	thumb_func_start sub_080A0718
sub_080A0718: @ 0x080A0718
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_08083734
	cmp r0, #0
	beq _080A074A
	movs r2, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x10
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	strb r2, [r4, #0x15]
	ldrh r0, [r4, #0x32]
	adds r0, #0x24
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080A080C
_080A074A:
	pop {r4, pc}

	thumb_func_start sub_080A074C
sub_080A074C: @ 0x080A074C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080A07B6
	movs r0, #3
	strb r0, [r4, #0xc]
	strh r1, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080A0794
	ldrh r0, [r1, #0x2e]
	adds r0, #0xc
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0xc
	strh r0, [r1, #0x32]
_080A0794:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _080A07B0
	ldrh r0, [r1, #0x2e]
	subs r0, #0xc
	strh r0, [r1, #0x2e]
	ldrh r0, [r1, #0x32]
	subs r0, #0xc
	strh r0, [r1, #0x32]
_080A07B0:
	ldr r0, _080A07B8 @ =0x0000010B
	bl sub_08004488
_080A07B6:
	pop {r4, pc}
	.align 2, 0
_080A07B8: .4byte 0x0000010B

	thumb_func_start sub_080A07BC
sub_080A07BC: @ 0x080A07BC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080A07EA
	movs r0, #4
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	movs r0, #0x10
	strb r0, [r4, #0x15]
	ldrh r0, [r4, #0x32]
	adds r0, #2
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_080A0870
	ldr r0, _080A07EC @ =0x0000010B
	bl PlaySFX
_080A07EA:
	pop {r4, pc}
	.align 2, 0
_080A07EC: .4byte 0x0000010B

	thumb_func_start sub_080A07F0
sub_080A07F0: @ 0x080A07F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0808
	bl DeleteThisEntity
_080A0808:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A080C
sub_080A080C: @ 0x080A080C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r0, [r6]
	subs r0, #1
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x76
	strh r0, [r1]
	ldrh r0, [r6]
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldr r4, _080A086C @ =0x00004022
	ldrh r1, [r6]
	subs r1, #1
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #1
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A086C: .4byte 0x00004022

	thumb_func_start sub_080A0870
sub_080A0870: @ 0x080A0870
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x74
	ldrh r1, [r5]
	subs r1, #1
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x78
	ldrh r0, [r0]
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r1, #1
	ldrb r2, [r4]
	bl SetTile
	pop {r4, r5, r6, pc}
	.align 2, 0
