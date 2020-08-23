	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805D7A4
sub_0805D7A4: @ 0x0805D7A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805D7D4 @ =gUnk_08108D7C
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0805D7D8 @ =gScreenTransition
	ldr r0, [r0]
	lsls r0, r0, #4
	str r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0805D9D8
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x24]
	bl sub_0805DA08
	pop {r4, pc}
	.align 2, 0
_0805D7D4: .4byte gUnk_08108D7C
_0805D7D8: .4byte gScreenTransition

	thumb_func_start sub_0805D7DC
sub_0805D7DC: @ 0x0805D7DC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xa]
	movs r2, #2
	cmp r0, #0
	bne _0805D7EA
	movs r2, #1
_0805D7EA:
	movs r0, #0
	strb r2, [r1, #0xc]
	str r0, [r1, #0x20]
	str r0, [r1, #0x24]
	ldr r0, _0805D80C @ =gRoomControls
	ldrb r0, [r0, #4]
	cmp r0, #0x78
	beq _0805D83C
	cmp r0, #0x78
	bgt _0805D816
	cmp r0, #7
	beq _0805D828
	cmp r0, #7
	bgt _0805D810
	cmp r0, #3
	beq _0805D82C
	b _0805D828
	.align 2, 0
_0805D80C: .4byte gRoomControls
_0805D810:
	cmp r0, #0x38
	beq _0805D840
	b _0805D828
_0805D816:
	cmp r0, #0x81
	beq _0805D830
	cmp r0, #0x81
	bgt _0805D824
	cmp r0, #0x80
	beq _0805D834
	b _0805D828
_0805D824:
	cmp r0, #0x88
	beq _0805D838
_0805D828:
	movs r1, #0
	b _0805D842
_0805D82C:
	movs r1, #1
	b _0805D842
_0805D830:
	movs r1, #2
	b _0805D842
_0805D834:
	movs r1, #3
	b _0805D842
_0805D838:
	movs r1, #4
	b _0805D842
_0805D83C:
	movs r1, #5
	b _0805D842
_0805D840:
	movs r1, #6
_0805D842:
	ldr r0, _0805D854 @ =gUnk_08108D74
	adds r0, r1, r0
	ldrb r0, [r0]
	bl LoadGfxGroup
	ldr r1, _0805D858 @ =gScreen
	ldr r0, _0805D85C @ =0x00001E04
	strh r0, [r1, #0x2c]
	pop {pc}
	.align 2, 0
_0805D854: .4byte gUnk_08108D74
_0805D858: .4byte gScreen
_0805D85C: .4byte 0x00001E04

	thumb_func_start sub_0805D860
sub_0805D860: @ 0x0805D860
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xd]
	cmp r0, #1
	beq _0805D89C
	cmp r0, #1
	bgt _0805D874
	cmp r0, #0
	beq _0805D87E
	b _0805D8D6
_0805D874:
	cmp r0, #2
	beq _0805D8B0
	cmp r0, #3
	beq _0805D8C2
	b _0805D8D6
_0805D87E:
	movs r0, #1
	strb r0, [r1, #0xd]
	movs r0, #0x80
	str r0, [r1, #0x20]
	ldr r2, _0805D898 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805D8F4
	.align 2, 0
_0805D898: .4byte gScreen
_0805D89C:
	ldr r0, [r1, #0x20]
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0x10
	bne _0805D8F4
	movs r0, #2
	strb r0, [r1, #0xd]
	movs r0, #0x2d
	strb r0, [r1, #0xe]
	b _0805D8F4
_0805D8B0:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D8F4
	movs r0, #3
	strb r0, [r1, #0xd]
	b _0805D8F4
_0805D8C2:
	ldr r0, [r1, #0x20]
	subs r0, #1
	str r0, [r1, #0x20]
	cmp r0, #0
	bne _0805D8F4
	movs r0, #4
	strb r0, [r1, #0xd]
	movs r0, #0x3c
	strb r0, [r1, #0xe]
	b _0805D8F4
_0805D8D6:
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D8F4
	bl sub_0801E104
	ldr r2, _0805D8F8 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805D8FC @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805D8F4:
	pop {pc}
	.align 2, 0
_0805D8F8: .4byte gScreen
_0805D8FC: .4byte 0x0000F7FF

	thumb_func_start sub_0805D900
sub_0805D900: @ 0x0805D900
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xd]
	cmp r0, #1
	beq _0805D938
	cmp r0, #1
	bgt _0805D914
	cmp r0, #0
	beq _0805D91A
	b _0805D966
_0805D914:
	cmp r0, #2
	beq _0805D94E
	b _0805D966
_0805D91A:
	movs r1, #1
	strb r1, [r2, #0xd]
	movs r0, #0x2d
	strb r0, [r2, #0xe]
	str r1, [r2, #0x20]
	ldr r2, _0805D934 @ =gScreen
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	b _0805D982
	.align 2, 0
_0805D934: .4byte gScreen
_0805D938:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D982
	movs r0, #2
	strb r0, [r2, #0xd]
	movs r0, #0x14
	strb r0, [r2, #0xe]
	b _0805D982
_0805D94E:
	ldr r0, [r2, #0x20]
	adds r0, #1
	str r0, [r2, #0x20]
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805D982
	movs r0, #3
	strb r0, [r2, #0xd]
	b _0805D982
_0805D966:
	ldr r0, [r2, #0x20]
	adds r0, #4
	str r0, [r2, #0x20]
	cmp r0, #0x80
	bls _0805D982
	bl sub_0801E104
	ldr r2, _0805D984 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805D988 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl DeleteThisEntity
_0805D982:
	pop {pc}
	.align 2, 0
_0805D984: .4byte gScreen
_0805D988: .4byte 0x0000F7FF

	thumb_func_start sub_0805D98C
sub_0805D98C: @ 0x0805D98C
	push {lr}
	adds r2, r0, #0
	ldr r3, _0805D9D4 @ =gUnk_03000FF0
	ldrh r1, [r3]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0805D9A2
	ldr r0, [r2, #0x20]
	subs r0, #1
	str r0, [r2, #0x20]
_0805D9A2:
	ldrh r1, [r3]
	movs r0, #0x80
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _0805D9B4
	ldr r0, [r2, #0x20]
	adds r0, #1
	str r0, [r2, #0x20]
_0805D9B4:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0805D9C2
	ldr r0, [r2, #0x28]
	subs r0, #1
	str r0, [r2, #0x28]
_0805D9C2:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805D9D0
	ldr r0, [r2, #0x28]
	adds r0, #1
	str r0, [r2, #0x28]
_0805D9D0:
	pop {pc}
	.align 2, 0
_0805D9D4: .4byte gUnk_03000FF0

	thumb_func_start sub_0805D9D8
sub_0805D9D8: @ 0x0805D9D8
	push {r4, lr}
	ldr r4, [r0, #0x14]
	cmp r4, #0
	beq _0805D9FC
	ldr r3, _0805DA00 @ =gScreen
	ldr r2, _0805DA04 @ =gRoomControls
	ldrh r1, [r4, #0x2e]
	ldrh r0, [r2, #0xa]
	subs r1, r1, r0
	movs r0, #0x80
	subs r0, r0, r1
	strh r0, [r3, #0x2e]
	ldrh r1, [r4, #0x32]
	ldrh r0, [r2, #0xc]
	subs r1, r1, r0
	movs r0, #0x8c
	subs r0, r0, r1
	strh r0, [r3, #0x30]
_0805D9FC:
	pop {r4, pc}
	.align 2, 0
_0805DA00: .4byte gScreen
_0805DA04: .4byte gRoomControls

	thumb_func_start sub_0805DA08
sub_0805DA08: @ 0x0805DA08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _0805DA78 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0805DA7C @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r3, #0
	mov r8, r2
	mov sb, r1
	ldr r0, _0805DA80 @ =gSineTable
	mov ip, r0
	movs r2, #0xff
	ldr r1, _0805DA84 @ =gScreen
_0805DA34:
	adds r0, r6, r3
	adds r0, r0, r5
	ands r0, r2
	lsls r0, r0, #1
	add r0, ip
	movs r7, #0
	ldrsh r0, [r0, r7]
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	lsrs r0, r0, #8
	ldrh r7, [r1, #0x2e]
	adds r0, r0, r7
	strh r0, [r4]
	adds r4, #2
	adds r3, #1
	adds r5, #0x17
	cmp r3, #0x9f
	bls _0805DA34
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, sb
	ldr r1, _0805DA88 @ =0x0400001C
	ldr r2, _0805DA8C @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805DA78: .4byte gUnk_03003DE4
_0805DA7C: .4byte gUnk_02017AA0
_0805DA80: .4byte gSineTable
_0805DA84: .4byte gScreen
_0805DA88: .4byte 0x0400001C
_0805DA8C: .4byte 0xA2600001

	thumb_func_start sub_0805DA90
sub_0805DA90: @ 0x0805DA90
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl GetEmptyManager
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DAB4
	movs r0, #9
	strb r0, [r1, #8]
	movs r0, #0x32
	strb r0, [r1, #9]
	strb r4, [r1, #0xa]
	str r5, [r1, #0x14]
	adds r0, r1, #0
	movs r1, #8
	bl AppendEntityToList
_0805DAB4:
	ldr r0, _0805DAD8 @ =gArea
	ldr r1, _0805DADC @ =0x0000088C
	adds r4, r0, r1
	ldr r0, [r4]
	cmp r0, #0
	beq _0805DAD4
	ldr r2, _0805DAE0 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0805DAE4 @ =0x0000F7FF
	ands r0, r1
	strh r0, [r2]
	bl sub_080528F0
	ldr r0, [r4]
	bl DeleteManager
_0805DAD4:
	pop {r4, r5, pc}
	.align 2, 0
_0805DAD8: .4byte gArea
_0805DADC: .4byte 0x0000088C
_0805DAE0: .4byte gScreen
_0805DAE4: .4byte 0x0000F7FF
