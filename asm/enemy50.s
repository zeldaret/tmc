	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Enemy50
Enemy50: @ 0x08040B2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	bne _08040B5C
	ldr r0, [r5, #0x50]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _08040B5C
	adds r0, r5, #0
	bl sub_08041300
	cmp r0, #0
	beq _08040B4E
	adds r0, r5, #0
	bl sub_0803F6EC
_08040B4E:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	bl DeleteThisEntity
_08040B5C:
	ldr r4, _08040B80 @ =gUnk_080D0DC4
	adds r0, r5, #0
	bl sub_0800279C
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl SetChildOffset
	pop {r4, r5, pc}
	.align 2, 0
_08040B80: .4byte gUnk_080D0DC4

	thumb_func_start sub_08040B84
sub_08040B84: @ 0x08040B84
	push {lr}
	ldr r2, _08040B98 @ =gUnk_080D0DDC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08040B98: .4byte gUnk_080D0DDC

	thumb_func_start sub_08040B9C
sub_08040B9C: @ 0x08040B9C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08040BD0
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r1, [r0]
	lsrs r1, r1, #4
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08041134
	adds r0, r4, #0
	bl sub_0803F6EC
_08040BD0:
	adds r0, r4, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _08040BF4
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	bne _08040C0E
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl InitializeAnimation
	b _08040C9C
_08040BF4:
	adds r0, r4, #0
	adds r0, #0x41
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x80
	bne _08040C0E
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
_08040C0E:
	ldrb r0, [r5]
	cmp r0, #0x9d
	bne _08040C1A
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r4, #0x20]
_08040C1A:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040C40
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08040C40:
	adds r0, r4, #0
	adds r0, #0x45
	adds r1, r4, #0
	adds r1, #0x7a
	ldrb r2, [r0]
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5]
	cmp r2, r0
	beq _08040C9C
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040C70
	adds r0, r4, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsrs r0, r0, #4
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl InitializeAnimation
	b _08040C98
_08040C70:
	adds r1, r4, #0
	adds r1, #0x3d
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble _08040C84
	movs r0, #0x80
	orrs r0, r2
	strb r0, [r1]
_08040C84:
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #0xff
	strb r0, [r6]
	movs r0, #0xa
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
_08040C98:
	ldrb r0, [r6]
	strb r0, [r5]
_08040C9C:
	ldr r1, _08040CA8 @ =gUnk_080D0DC4
	adds r0, r4, #0
	bl sub_0804AA30
	pop {r4, r5, r6, pc}
	.align 2, 0
_08040CA8: .4byte gUnk_080D0DC4

	thumb_func_start sub_08040CAC
sub_08040CAC: @ 0x08040CAC
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_08001328
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040D04
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D2C
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	beq _08040D2C
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D2C
	movs r0, #0xff
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x58
	ldrb r0, [r1]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08040D2C
	ldrb r1, [r1]
	subs r1, #7
	movs r0, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	b _08040D2C
_08040D04:
	ldrb r2, [r4, #0x18]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	movs r0, #1
	eors r1, r0
	movs r5, #4
	rsbs r5, r5, #0
	adds r3, r5, #0
	ands r3, r2
	orrs r3, r1
	strb r3, [r4, #0x18]
	adds r0, r4, #0
	adds r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D2C
	ands r3, r5
	movs r0, #1
	orrs r3, r0
	strb r3, [r4, #0x18]
_08040D2C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08040D30
sub_08040D30: @ 0x08040D30
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	subs r0, #7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _08040D4C
	ldrb r1, [r4, #0x14]
	adds r1, #7
	adds r0, r4, #0
	bl InitializeAnimation
_08040D4C:
	adds r0, r4, #0
	bl sub_08001242
	ldrh r1, [r4, #0x36]
	movs r2, #0x36
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _08040D60
	ldr r0, _08040D8C @ =0x0000FFFF
	strh r0, [r4, #0x36]
_08040D60:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	bne _08040D88
	ldrb r0, [r4, #0x14]
	movs r1, #1
	eors r1, r0
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
	movs r0, #0xff
	strb r0, [r4, #0x15]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x14]
	adds r0, r4, #0
	bl sub_08041134
_08040D88:
	pop {r4, pc}
	.align 2, 0
_08040D8C: .4byte 0x0000FFFF

	thumb_func_start sub_08040D90
sub_08040D90: @ 0x08040D90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F520
	cmp r0, #0
	beq _08040DB4
	ldr r0, _08040DB0 @ =gUnk_080D0E08
	ldrb r1, [r4, #0xd]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _08040DC6
	.align 2, 0
_08040DB0: .4byte gUnk_080D0E08
_08040DB4:
	adds r0, r4, #0
	bl sub_08041128
	ldrb r1, [r4, #0x15]
	lsrs r1, r1, #4
	adds r1, #1
	adds r0, r4, #0
	bl InitializeAnimation
_08040DC6:
	pop {r4, pc}

	thumb_func_start sub_08040DC8
sub_08040DC8: @ 0x08040DC8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	movs r1, #0x3c
	strb r1, [r0, #0x1d]
	ldr r1, _08040DE0 @ =gLinkEntity
	ldrb r1, [r1, #0x14]
	lsrs r1, r1, #2
	adds r1, #5
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_08040DE0: .4byte gLinkEntity

	thumb_func_start sub_08040DE4
sub_08040DE4: @ 0x08040DE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F4E8
	pop {r4, pc}

	thumb_func_start sub_08040DF4
sub_08040DF4: @ 0x08040DF4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0806F3E4
	cmp r0, #0
	beq _08040E38
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	cmp r0, #0
	beq _08040E26
	adds r2, r0, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
_08040E26:
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040E34
	adds r0, r4, #0
	bl sub_0804A7D4
	b _08040E38
_08040E34:
	bl DeleteThisEntity
_08040E38:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040E3C
sub_08040E3C: @ 0x08040E3C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0804A720
	bl Random
	movs r2, #0x1e
	adds r1, r0, #0
	ands r1, r2
	movs r2, #0
	strb r1, [r4, #0x15]
	movs r1, #0xff
	strb r1, [r4, #0x14]
	movs r5, #1
	strb r5, [r4, #0x1c]
	adds r1, r4, #0
	adds r1, #0x45
	ldrb r1, [r1]
	adds r3, r4, #0
	adds r3, #0x7a
	strb r1, [r3]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0x7b
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08040E86
	strb r5, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	bl sub_0804B128
	str r0, [r4, #0x54]
	b _08040E8C
_08040E86:
	adds r0, r4, #0
	bl sub_080411CC
_08040E8C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08040E90
sub_08040E90: @ 0x08040E90
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080411E8
	cmp r0, #0
	beq _08040EA4
	movs r0, #2
	strb r0, [r4, #0xc]
	movs r0, #0xf
	strb r0, [r4, #0xe]
_08040EA4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040EA8
sub_08040EA8: @ 0x08040EA8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040EC4
	adds r0, r4, #0
	bl sub_080411CC
	adds r0, r4, #0
	bl sub_0804122C
_08040EC4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040EC8
sub_08040EC8: @ 0x08040EC8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08040F08
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	bl Random
	adds r1, r4, #0
	adds r1, #0x80
	ldrb r2, [r1]
	movs r1, #0x30
	ands r1, r0
	adds r1, #0x3c
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
_08040F08:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040F0C
sub_08040F0C: @ 0x08040F0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08041170
	cmp r0, #0
	bne _08040F36
	adds r0, r4, #0
	bl sub_0803F58C
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08040F36
	adds r0, r4, #0
	bl sub_08041128
_08040F36:
	pop {r4, pc}

	thumb_func_start sub_08040F38
sub_08040F38: @ 0x08040F38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049F84
	strb r0, [r4, #0x15]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08040F8E
	adds r0, r4, #0
	bl sub_0803F66C
	adds r1, r4, #0
	adds r1, #0x78
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08040F94
	movs r0, #6
	strb r0, [r4, #0xc]
	bl Random
	movs r2, #0xe0
	adds r1, r0, #0
	ands r1, r2
	strb r1, [r4, #0xe]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r4, #0x24]
	lsrs r0, r0, #8
	movs r1, #0x78
	ands r0, r1
	adds r0, #0x3c
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1]
	b _08040F94
_08040F8E:
	adds r0, r4, #0
	bl sub_08041128
_08040F94:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08040F98
sub_08040F98: @ 0x08040F98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	bl sub_0803F5A8
	cmp r0, #0
	bne _08040FB2
	adds r0, r4, #0
	bl sub_08041128
	b _08041014
_08040FB2:
	movs r0, #1
	bl sub_08049DF4
	cmp r0, #0
	beq _0804100C
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0804100C
	ldrb r1, [r4, #0xe]
	adds r1, #1
	strb r1, [r4, #0xe]
	ldr r2, _08041004 @ =gUnk_080D0E14
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x1e
	adds r0, r0, r2
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	bne _08040FF4
	ldr r0, _08041008 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	bl sub_080045C4
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08004596
_08040FF4:
	adds r0, r4, #0
	bl sub_0803F66C
	adds r0, r4, #0
	bl sub_080AEFB4
	b _08041014
	.align 2, 0
_08041004: .4byte gUnk_080D0E14
_08041008: .4byte gUnk_020000B0
_0804100C:
	movs r0, #7
	strb r0, [r4, #0xc]
	movs r0, #0x1e
	strb r0, [r4, #0xe]
_08041014:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041018
sub_08041018: @ 0x08041018
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041042
	bl Random
	movs r1, #0xf8
	ands r0, r1
	adds r0, #0xb4
	adds r1, r4, #0
	adds r1, #0x7c
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
_08041042:
	pop {r4, pc}

	thumb_func_start sub_08041044
sub_08041044: @ 0x08041044
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803F738
	adds r0, r4, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08041074
	movs r0, #0
	movs r1, #9
	strb r1, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #4
	bl InitializeAnimation
_08041074:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08041078
sub_08041078: @ 0x08041078
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08041094
	adds r0, r4, #0
	bl sub_0803F6C0
_08041094:
	bl sub_0807953C
	adds r1, r4, #0
	adds r1, #0x78
	cmp r0, #0
	beq _080410A6
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
_080410A6:
	ldr r2, _08041100 @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _080410B6
	movs r0, #0xe0
	strh r0, [r1]
_080410B6:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xdf
	bls _08041104
	adds r1, r4, #0
	adds r1, #0x7c
	movs r0, #0x78
	strh r0, [r1]
	movs r0, #0xff
	strb r0, [r4, #0x14]
	subs r1, #0x3f
	movs r0, #0xf4
	strb r0, [r1]
	adds r1, #5
	movs r0, #0x14
	strb r0, [r1]
	adds r1, #4
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #2
	movs r1, #0x10
	eors r0, r1
	adds r1, r4, #0
	adds r1, #0x3e
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_08041128
	adds r0, r4, #0
	bl sub_0803F6EC
	b _0804110A
	.align 2, 0
_08041100: .4byte gLinkEntity
_08041104:
	adds r0, r4, #0
	bl sub_0803F738
_0804110A:
	pop {r4, pc}

	thumb_func_start sub_0804110C
sub_0804110C: @ 0x0804110C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08041126
	adds r0, r4, #0
	bl sub_08041128
_08041126:
	pop {r4, pc}

	thumb_func_start sub_08041128
sub_08041128: @ 0x08041128
	push {lr}
	movs r1, #4
	strb r1, [r0, #0xc]
	bl sub_0803F528
	pop {pc}

	thumb_func_start sub_08041134
sub_08041134: @ 0x08041134
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x3f
	movs r0, #0x25
	strb r0, [r1]
	movs r5, #0
	ldr r0, _08041168 @ =gUnk_03004040
	ldr r0, [r0]
	cmp r0, #0
	beq _08041150
	movs r5, #0x3c
_08041150:
	bl Random
	ldr r2, _0804116C @ =gUnk_080D0E18
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0x78
	strh r0, [r1]
	pop {r4, r5, pc}
	.align 2, 0
_08041168: .4byte gUnk_03004040
_0804116C: .4byte gUnk_080D0E18

	thumb_func_start sub_08041170
sub_08041170: @ 0x08041170
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r1]
	cmp r0, #0
	beq _08041184
	subs r0, #1
	strh r0, [r1]
	b _080411C8
_08041184:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _080411C8
	adds r0, r4, #0
	bl sub_0806FD54
	cmp r0, #0
	bne _080411B6
	ldr r0, _080411C0 @ =gArea
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	ble _080411C8
	ldr r0, _080411C4 @ =gUnk_020000B0
	ldr r1, [r0]
	adds r0, r4, #0
	movs r2, #0x70
	movs r3, #0x48
	bl sub_080041A0
	cmp r0, #0
	beq _080411C8
_080411B6:
	adds r0, r4, #0
	bl sub_08041134
	movs r0, #1
	b _080411CA
	.align 2, 0
_080411C0: .4byte gArea
_080411C4: .4byte gUnk_020000B0
_080411C8:
	movs r0, #0
_080411CA:
	pop {r4, pc}

	thumb_func_start sub_080411CC
sub_080411CC: @ 0x080411CC
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	ldrb r2, [r0, #0x18]
	subs r1, #7
	ands r1, r2
	movs r2, #1
	orrs r1, r2
	strb r1, [r0, #0x18]
	movs r1, #0
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_080411E8
sub_080411E8: @ 0x080411E8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_08049FDC
	cmp r0, #0
	beq _08041222
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	beq _08041204
	cmp r0, #2
	beq _08041218
_08041200:
	movs r0, #1
	b _08041224
_08041204:
	ldr r0, _08041214 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08041222
	b _08041200
	.align 2, 0
_08041214: .4byte gLinkState
_08041218:
	ldr r0, _08041228 @ =gArea
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	cmp r0, #0xf
	bgt _08041200
_08041222:
	movs r0, #0
_08041224:
	pop {r4, pc}
	.align 2, 0
_08041228: .4byte gArea

	thumb_func_start sub_0804122C
sub_0804122C: @ 0x0804122C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	mov r8, r0
	bl Random
	movs r6, #6
	ands r6, r0
	lsrs r5, r0, #8
	movs r0, #3
	ands r5, r0
	movs r7, #0
	ldr r3, _080412FC @ =gRoomControls
	mov sb, r3
_08041250:
	movs r0, #0x50
	movs r1, #1
	bl CreateEnemy
	adds r2, r0, #0
	cmp r2, #0
	beq _080412C8
	lsls r1, r6, #1
	add r1, r8
	mov r3, sb
	ldrh r0, [r3, #6]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	mov r3, sb
	ldrh r0, [r3, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	str r4, [r2, #0x50]
	adds r0, r2, #0
	adds r0, #0x80
	strb r5, [r0]
	adds r3, r2, #0
	adds r3, #0x6d
	ldrb r0, [r3]
	movs r1, #4
	orrs r0, r1
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x70
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x72
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6e
	ldrb r0, [r0]
	subs r1, #4
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08016A30
	adds r6, #2
	movs r0, #6
	ands r6, r0
	adds r5, #1
	movs r0, #3
	ands r5, r0
_080412C8:
	adds r7, #1
	cmp r7, #2
	bls _08041250
	lsls r1, r6, #1
	add r1, r8
	ldr r2, _080412FC @ =gRoomControls
	ldrh r0, [r2, #6]
	ldrh r3, [r1]
	adds r0, r0, r3
	movs r3, #0
	strh r0, [r4, #0x2e]
	ldrh r0, [r2, #8]
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	adds r0, #0x38
	strb r3, [r0]
	adds r0, r4, #0
	bl sub_08016A30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080412FC: .4byte gRoomControls

	thumb_func_start sub_08041300
sub_08041300: @ 0x08041300
	push {lr}
	adds r1, r0, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, #0x25
	bne _0804131A
	adds r0, r1, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x80
	bne _0804131A
	movs r0, #1
	b _0804132C
_0804131A:
	movs r2, #0
	ldrb r0, [r1, #0xc]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0804132A
	movs r2, #1
_0804132A:
	adds r0, r2, #0
_0804132C:
	pop {pc}
	.align 2, 0
