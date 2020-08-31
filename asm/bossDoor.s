	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BossDoor
BossDoor: @ 0x0808C1E4
	push {lr}
	ldr r2, _0808C1F8 @ =gUnk_081214D8
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808C1F8: .4byte gUnk_081214D8

	thumb_func_start sub_0808C1FC
sub_0808C1FC: @ 0x0808C1FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x84
	ldrh r1, [r2]
	ldr r0, _0808C2B0 @ =0x0000FFFF
	cmp r1, r0
	beq _0808C21A
	adds r0, r1, #0
	bl CheckFlags
	cmp r0, #0
	beq _0808C21A
	bl DeleteThisEntity
_0808C21A:
	adds r1, r4, #0
	adds r1, #0x86
	ldrh r0, [r1]
	cmp r0, #0
	beq _0808C230
	bl CheckFlags
	cmp r0, #0
	beq _0808C230
	bl DeleteThisEntity
_0808C230:
	ldrb r0, [r4, #0xa]
	lsrs r0, r0, #2
	strb r0, [r4, #0xb]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	ldrh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x70
	strh r1, [r0]
	ldrh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	ldr r0, _0808C2B4 @ =gUnk_080FD180
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
	ldrb r1, [r4, #0xa]
	movs r0, #3
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0x76
	strh r0, [r5]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _0808C2B8 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrb r0, [r4, #0xa]
	movs r1, #0x1f
	ands r1, r0
	adds r0, r4, #0
	bl InitializeAnimation
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _0808C2F8
	cmp r0, #1
	bgt _0808C2BC
	cmp r0, #0
	beq _0808C2C2
	b _0808C31C
	.align 2, 0
_0808C2B0: .4byte 0x0000FFFF
_0808C2B4: .4byte gUnk_080FD180
_0808C2B8: .4byte gRoomControls
_0808C2BC:
	cmp r0, #2
	beq _0808C306
	b _0808C31C
_0808C2C2:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0808C500
	adds r0, r4, #0
	bl sub_08078800
	ldr r1, _0808C2F4 @ =gUnk_0811F740
	ldrh r0, [r5]
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_08078850
	b _0808C31C
	.align 2, 0
_0808C2F4: .4byte gUnk_0811F740
_0808C2F8:
	movs r0, #4
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #8
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0808C31C
_0808C306:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0808C500
_0808C31C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0808C320
sub_0808C320: @ 0x0808C320
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0808C344
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_080788E0
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
_0808C344:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808C348
sub_0808C348: @ 0x0808C348
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808C37C
	ldr r0, _0808C374 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0808C36A
	ldr r0, _0808C378 @ =0x00000185
	bl PlaySFX
_0808C36A:
	adds r0, r4, #0
	bl GetNextFrame
	b _0808C382
	.align 2, 0
_0808C374: .4byte gScreenTransition
_0808C378: .4byte 0x00000185
_0808C37C:
	adds r0, r4, #0
	bl sub_0808C4BC
_0808C382:
	pop {r4, pc}

	thumb_func_start sub_0808C384
sub_0808C384: @ 0x0808C384
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808C3B4
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bhi _0808C3B0
	movs r0, #0x40
	movs r1, #0
	movs r2, #1
	bl sub_08078AC0
	ldr r1, _0808C3B8 @ =gPlayerEntity
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	strb r0, [r1, #0x15]
_0808C3B0:
	bl DeleteThisEntity
_0808C3B4:
	pop {r4, pc}
	.align 2, 0
_0808C3B8: .4byte gPlayerEntity

	thumb_func_start sub_0808C3BC
sub_0808C3BC: @ 0x0808C3BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x76
	ldrh r1, [r5]
	bl sub_08083734
	cmp r0, #0
	beq _0808C40E
	movs r0, #5
	strb r0, [r4, #0xc]
	movs r0, #0xc
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x18]
	subs r0, #0x10
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #3
	movs r1, #0x10
	eors r0, r1
	strb r0, [r4, #0x15]
	ldrh r1, [r5]
	lsls r1, r1, #1
	ldr r0, _0808C410 @ =gUnk_081214F4
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r2, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r4, #0x2e]
	movs r0, #1
	ldrsb r0, [r1, r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	bl sub_0808C500
_0808C40E:
	pop {r4, r5, pc}
	.align 2, 0
_0808C410: .4byte gUnk_081214F4

	thumb_func_start sub_0808C414
sub_0808C414: @ 0x0808C414
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808C49A
	movs r0, #6
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
	adds r0, #0x76
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _0808C49C @ =gUnk_081214FC
	adds r5, r0, r1
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0808C470
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #1
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
_0808C470:
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _0808C494
	movs r0, #2
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x2e]
	adds r0, r0, r2
	strh r0, [r1, #0x2e]
	movs r0, #3
	ldrsb r0, [r5, r0]
	ldrh r2, [r1, #0x32]
	adds r0, r0, r2
	strh r0, [r1, #0x32]
_0808C494:
	ldr r0, _0808C4A0 @ =0x0000010B
	bl EnqueSFX
_0808C49A:
	pop {r4, r5, pc}
	.align 2, 0
_0808C49C: .4byte gUnk_081214FC
_0808C4A0: .4byte 0x0000010B

	thumb_func_start sub_0808C4A4
sub_0808C4A4: @ 0x0808C4A4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808C4B8
	movs r0, #2
	strb r0, [r4, #0xc]
_0808C4B8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808C4BC
sub_0808C4BC: @ 0x0808C4BC
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0xe]
	adds r2, r0, #0
	adds r2, #0x76
	ldrh r1, [r2]
	lsls r1, r1, #3
	strb r1, [r0, #0x15]
	ldrh r2, [r2]
	lsls r2, r2, #1
	ldr r1, _0808C4F8 @ =gUnk_0812150C
	adds r2, r2, r1
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrh r3, [r0, #0x2e]
	adds r1, r1, r3
	strh r1, [r0, #0x2e]
	movs r1, #1
	ldrsb r1, [r2, r1]
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
	bl sub_0808C5D0
	ldr r0, _0808C4FC @ =0x0000010B
	bl PlaySFX
	pop {pc}
	.align 2, 0
_0808C4F8: .4byte gUnk_0812150C
_0808C4FC: .4byte 0x0000010B

	thumb_func_start sub_0808C500
sub_0808C500: @ 0x0808C500
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0808C510
	cmp r0, #2
	bne _0808C570
_0808C510:
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r0, [r6]
	subs r0, #1
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r6]
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #1
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldr r4, _0808C56C @ =0x00004022
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
	b _0808C5CA
	.align 2, 0
_0808C56C: .4byte 0x00004022
_0808C570:
	adds r6, r4, #0
	adds r6, #0x74
	ldrh r0, [r6]
	subs r0, #0x40
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	ldrh r0, [r6]
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
	ldrh r0, [r6]
	adds r0, #0x40
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	ldr r4, _0808C5CC @ =0x00004022
	ldrh r1, [r6]
	subs r1, #0x40
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
	ldrh r1, [r6]
	adds r1, #0x40
	ldrb r2, [r5]
	adds r0, r4, #0
	bl SetTile
_0808C5CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808C5CC: .4byte 0x00004022

	thumb_func_start sub_0808C5D0
sub_0808C5D0: @ 0x0808C5D0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x76
	ldrh r0, [r0]
	cmp r0, #0
	beq _0808C5E0
	cmp r0, #2
	bne _0808C618
_0808C5E0:
	adds r0, r6, #0
	adds r0, #0x78
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
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r1, #1
	ldrb r2, [r4]
	bl SetTile
	b _0808C64E
_0808C618:
	adds r0, r6, #0
	adds r0, #0x78
	ldrh r0, [r0]
	adds r5, r6, #0
	adds r5, #0x74
	ldrh r1, [r5]
	subs r1, #0x40
	adds r4, r6, #0
	adds r4, #0x38
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	ldrh r1, [r5]
	ldrb r2, [r4]
	bl SetTile
	adds r0, r6, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrh r1, [r5]
	adds r1, #0x40
	ldrb r2, [r4]
	bl SetTile
_0808C64E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808C650
sub_0808C650: @ 0x0808C650
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	movs r0, #0x3a
	movs r1, #0
	bl CreateObject
	cmp r0, #0
	beq _0808C670
	str r4, [r0, #0x50]
	ldr r1, _0808C66C @ =gUnk_02036BB8
	movs r0, #0
	b _0808C674
	.align 2, 0
_0808C66C: .4byte gUnk_02036BB8
_0808C670:
	ldr r1, _0808C678 @ =gUnk_02036BB8
	movs r0, #1
_0808C674:
	str r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0808C678: .4byte gUnk_02036BB8

	thumb_func_start sub_0808C67C
sub_0808C67C: @ 0x0808C67C
	ldr r0, _0808C684 @ =gUnk_02036BB8
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0808C684: .4byte gUnk_02036BB8

	thumb_func_start sub_0808C688
sub_0808C688: @ 0x0808C688
	push {lr}
	bl sub_0801E104
	ldr r1, _0808C698 @ =gUnk_02036BB8
	movs r0, #1
	str r0, [r1]
	pop {pc}
	.align 2, 0
_0808C698: .4byte gUnk_02036BB8
