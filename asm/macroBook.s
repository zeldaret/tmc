	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start MacroBook
MacroBook: @ 0x0809A774
	push {lr}
	ldr r2, _0809A788 @ =gUnk_08123C80
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0809A788: .4byte gUnk_08123C80

	thumb_func_start sub_0809A78C
sub_0809A78C: @ 0x0809A78C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r2, #0x80
	strb r2, [r4, #0xe]
	strb r3, [r4, #0xf]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r5, r4, #0
	adds r5, #0x80
	strh r2, [r5]
	adds r0, r4, #0
	adds r0, #0x78
	strh r3, [r0]
	ldrh r0, [r4, #0x2e]
	subs r0, #4
	strh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfc
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrh r2, [r5]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	ldrb r1, [r4, #0xf]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0809A958
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0809A7F4
sub_0809A7F4: @ 0x0809A7F4
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0809AA00
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _0809A810
	subs r0, #1
	strb r0, [r4, #0xe]
	b _0809A840
_0809A810:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809A840
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bne _0809A838
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0x5a
	strb r0, [r4, #0xe]
	strb r2, [r4, #0xf]
	adds r0, r4, #0
	movs r1, #2
	bl InitAnimationForceUpdate
	b _0809A840
_0809A838:
	ldrb r1, [r4, #0xf]
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0809A840:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809A844
sub_0809A844: @ 0x0809A844
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateAnimationSingleFrame
	adds r0, r4, #0
	bl sub_0809AA00
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bhi _0809A85C
	movs r1, #0
	b _0809A870
_0809A85C:
	ldrb r0, [r4, #0xe]
	adds r2, r0, #0
	cmp r2, #0
	beq _0809A87C
	subs r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _0809A878 @ =gUnk_03004040
	ldr r1, [r0]
	cmp r1, #0
	bne _0809A8A0
_0809A870:
	movs r0, #1
	strb r0, [r4, #0xc]
	strb r1, [r4, #0xe]
	b _0809A8A0
	.align 2, 0
_0809A878: .4byte gUnk_03004040
_0809A87C:
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0809A8A0
	movs r0, #3
	strb r0, [r4, #0xc]
	strb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #3
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	movs r1, #0x78
	bl sub_0805E4E0
_0809A8A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0809A8A4
sub_0809A8A4: @ 0x0809A8A4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #0xe0
	ands r0, r1
	cmp r0, #0x40
	beq _0809A8D4
	cmp r0, #0x40
	bgt _0809A8C0
	cmp r0, #0x20
	beq _0809A8E2
	b _0809A8FC
_0809A8C0:
	cmp r0, #0x80
	bne _0809A8FC
	adds r0, r4, #0
	adds r0, #0x59
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809A902
	bl DeleteThisEntity
	b _0809A902
_0809A8D4:
	movs r0, #0xbf
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0809A9D4
	b _0809A902
_0809A8E2:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	ldrb r1, [r2]
	movs r0, #0xdf
	ands r0, r1
	strb r0, [r2]
	movs r0, #0xff
	bl sub_08078A90
	movs r0, #0x2a
	bl SetGlobalFlag
_0809A8FC:
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_0809A902:
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0809A92A
	adds r1, r4, #0
	adds r1, #0x80
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r0, [r4, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r4, #0x2c]
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0809A94E
_0809A92A:
	ldr r1, [r4, #0x54]
	adds r0, r4, #0
	movs r2, #0
	bl sub_0809AA9C
	ldr r1, _0809A950 @ =gLinkEntity
	adds r0, r4, #0
	movs r2, #1
	bl sub_0809AA9C
	ldr r0, _0809A954 @ =gUnk_03004040
	ldr r1, [r0]
	cmp r1, #0
	beq _0809A94E
	adds r0, r4, #0
	movs r2, #1
	bl sub_0809AA9C
_0809A94E:
	pop {r4, pc}
	.align 2, 0
_0809A950: .4byte gLinkEntity
_0809A954: .4byte gUnk_03004040

	thumb_func_start sub_0809A958
sub_0809A958: @ 0x0809A958
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r1, #0x2e
	ldrsh r3, [r0, r1]
	ldr r2, _0809A9CC @ =gRoomControls
	ldrh r1, [r2, #6]
	subs r1, #4
	subs r3, r3, r1
	asrs r3, r3, #4
	movs r4, #0x3f
	ands r3, r4
	movs r5, #0x32
	ldrsh r1, [r0, r5]
	ldrh r2, [r2, #8]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	lsls r1, r1, #6
	orrs r3, r1
	adds r0, #0x82
	strh r3, [r0]
	ldrh r0, [r0]
	adds r5, r0, #0
	subs r5, #0x82
	ldr r6, _0809A9D0 @ =gUnk_08123C90
	movs r0, #0
	movs r1, #0x80
	lsls r1, r1, #7
	mov sb, r1
_0809A996:
	movs r4, #0
	adds r0, #1
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x40
_0809A9A0:
	ldrh r0, [r6]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0809A9B4
	ldrh r0, [r6]
	adds r1, r5, r4
	movs r2, #1
	bl SetTile
_0809A9B4:
	adds r4, #1
	adds r6, #2
	cmp r4, #3
	ble _0809A9A0
	mov r0, r8
	adds r5, r7, #0
	cmp r0, #4
	ble _0809A996
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809A9CC: .4byte gRoomControls
_0809A9D0: .4byte gUnk_08123C90

	thumb_func_start sub_0809A9D4
sub_0809A9D4: @ 0x0809A9D4
	push {r4, r5, r6, r7, lr}
	adds r0, #0x82
	ldrh r0, [r0]
	adds r5, r0, #0
	subs r5, #0x82
	movs r0, #0
_0809A9E0:
	movs r4, #0
	adds r7, r0, #1
	adds r6, r5, #0
	adds r6, #0x40
_0809A9E8:
	adds r0, r5, r4
	movs r1, #1
	bl sub_0807BA8C
	adds r4, #1
	cmp r4, #3
	ble _0809A9E8
	adds r0, r7, #0
	adds r5, r6, #0
	cmp r0, #4
	ble _0809A9E0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0809AA00
sub_0809AA00: @ 0x0809AA00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5, #0xf]
	ldr r1, [r5, #0x54]
	cmp r1, #0
	bne _0809AA50
	movs r0, #7
	movs r1, #0x38
	movs r2, #7
	bl sub_0805EB00
	adds r4, r0, #0
	adds r7, r5, #0
	adds r7, #0x78
	cmp r4, #0
	beq _0809AA5C
	movs r0, #0x80
	lsls r0, r0, #4
	mov r8, r0
	ldr r0, _0809AA4C @ =0x0000FFFF
	adds r6, r0, #0
_0809AA30:
	ldrh r0, [r4, #0xa]
	ands r0, r6
	cmp r0, r8
	bne _0809AA3A
	str r4, [r5, #0x54]
_0809AA3A:
	adds r0, r4, #0
	movs r1, #7
	bl sub_0805EB64
	adds r4, r0, #0
	cmp r4, #0
	bne _0809AA30
	b _0809AA5C
	.align 2, 0
_0809AA4C: .4byte 0x0000FFFF
_0809AA50:
	adds r0, r5, #0
	movs r2, #0
	bl sub_0809AA9C
	adds r7, r5, #0
	adds r7, #0x78
_0809AA5C:
	ldr r4, _0809AA94 @ =gLinkEntity
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x20
	movs r3, #0x22
	bl sub_080041A0
	strh r0, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0809AA8E
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_0809AA9C
	ldr r0, _0809AA98 @ =gUnk_03004040
	ldr r4, [r0]
	cmp r4, #0
	beq _0809AA8E
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_0809AA9C
_0809AA8E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809AA94: .4byte gLinkEntity
_0809AA98: .4byte gUnk_03004040

	thumb_func_start sub_0809AA9C
sub_0809AA9C: @ 0x0809AA9C
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r0, #0x5a
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
	cmp r1, #1
	beq _0809AAB2
	cmp r1, #2
	bne _0809AABC
_0809AAB2:
	adds r0, r3, #0
	adds r0, #0x63
	strb r1, [r0]
	adds r2, r0, #0
	b _0809AAC6
_0809AABC:
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #0
	strb r0, [r1]
	adds r2, r1, #0
_0809AAC6:
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	ldr r0, _0809AAE8 @ =gRoomControls
	ldrh r0, [r0, #6]
	movs r3, #0xad
	lsls r3, r3, #1
	adds r0, r0, r3
	cmp r1, r0
	bgt _0809AAE4
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0809AAE4:
	pop {r4, pc}
	.align 2, 0
_0809AAE8: .4byte gRoomControls
