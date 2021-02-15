	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0807CF88
sub_0807CF88: @ 0x0807CF88
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	bl sub_0807D1C4
	adds r6, r0, #0
	ldr r0, _0807D004 @ =0x4D435A33
	mov r5, sp
	str r0, [sp, #4]
	add r0, sp, #4
	movs r1, #4
	bl sub_0807D1A4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r1, [r6]
	adds r0, r7, #0
	bl sub_0807D1A4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sp
	strh r4, [r0]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	rsbs r4, r4, #0
	strh r4, [r5, #2]
	ldrh r0, [r6, #6]
	ldrh r2, [r6]
	adds r1, r7, #0
	bl sub_0807D20C
	adds r4, r0, #0
	cmp r4, #0
	beq _0807CFDC
	ldrh r0, [r6, #2]
	mov r1, sp
	bl sub_0807D184
	adds r4, r0, #0
_0807CFDC:
	ldrh r0, [r6, #8]
	ldrh r2, [r6]
	adds r1, r7, #0
	bl sub_0807D20C
	cmp r0, #0
	beq _0807CFF2
	ldrh r0, [r6, #4]
	mov r1, sp
	bl sub_0807D184
_0807CFF2:
	movs r1, #0
	cmp r4, #0
	bne _0807CFFC
	cmp r0, #0
	beq _0807CFFE
_0807CFFC:
	movs r1, #1
_0807CFFE:
	adds r0, r1, #0
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807D004: .4byte 0x4D435A33

	thumb_func_start sub_0807D008
sub_0807D008: @ 0x0807D008
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r1, #0
	bl sub_0807D1C4
	adds r5, r0, #0
	ldrh r0, [r5, #2]
	add r4, sp, #4
	adds r1, r4, #0
	bl sub_0807D0EC
	adds r6, r0, #0
	mov r8, r4
	cmp r6, #2
	bne _0807D048
	ldrh r0, [r5, #6]
	ldrh r2, [r5]
	adds r1, r7, #0
	bl sub_0807D1D8
	cmp r0, #0
	beq _0807D046
	ldrh r2, [r5]
	mov r0, r8
	adds r1, r7, #0
	bl sub_0807D0A0
	cmp r0, #0
	bne _0807D072
_0807D046:
	movs r6, #0
_0807D048:
	ldrh r0, [r5, #4]
	mov r1, r8
	bl sub_0807D0EC
	adds r4, r0, #0
	cmp r4, #2
	bne _0807D078
	ldrh r0, [r5, #8]
	ldrh r2, [r5]
	adds r1, r7, #0
	bl sub_0807D1D8
	cmp r0, #0
	beq _0807D076
	ldrh r2, [r5]
	mov r0, r8
	adds r1, r7, #0
	bl sub_0807D0A0
	cmp r0, #0
	beq _0807D076
_0807D072:
	movs r0, #1
	b _0807D098
_0807D076:
	movs r4, #0
_0807D078:
	movs r0, #0
	str r0, [sp]
	ldrh r2, [r5]
	lsrs r2, r2, #2
	movs r0, #0xa0
	lsls r0, r0, #0x13
	orrs r2, r0
	mov r0, sp
	adds r1, r7, #0
	bl CpuSet
	orrs r6, r4
	movs r0, #0
	cmp r6, #0
	bne _0807D098
	subs r0, #1
_0807D098:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807D0A0
sub_0807D0A0: @ 0x0807D0A0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r0, r7, #4
	movs r1, #4
	bl sub_0807D1A4
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0807D1A4
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r7]
	cmp r0, r4
	bne _0807D0DE
	lsls r0, r0, #0x10
	ldrh r1, [r7, #2]
	rsbs r0, r0, #0
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _0807D0DE
	ldr r1, [r7, #4]
	ldr r0, _0807D0E4 @ =0x4D435A33
	cmp r1, r0
	beq _0807D0E8
_0807D0DE:
	movs r0, #0
	b _0807D0EA
	.align 2, 0
_0807D0E4: .4byte 0x4D435A33
_0807D0E8:
	movs r0, #1
_0807D0EA:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807D0EC
sub_0807D0EC: @ 0x0807D0EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	movs r2, #8
	bl sub_0807D1D8
	cmp r0, #0
	bne _0807D100
	movs r5, #0
	b _0807D10C
_0807D100:
	adds r0, r4, #0
	bl sub_0807D128
	adds r5, r0, #0
	cmp r5, #0
	bne _0807D124
_0807D10C:
	adds r0, r6, #0
	adds r0, #8
	adds r1, r4, #0
	movs r2, #8
	bl sub_0807D1D8
	cmp r0, #0
	beq _0807D124
	adds r0, r4, #0
	bl sub_0807D128
	adds r5, r0, #0
_0807D124:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0807D128
sub_0807D128: @ 0x0807D128
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #4]
	ldr r0, _0807D13C @ =0x4D435A33
	cmp r1, r0
	beq _0807D150
	cmp r1, r0
	bhi _0807D144
	ldr r0, _0807D140 @ =0x466C6544
	b _0807D146
	.align 2, 0
_0807D13C: .4byte 0x4D435A33
_0807D140: .4byte 0x466C6544
_0807D144:
	ldr r0, _0807D14C @ =0x54494E49
_0807D146:
	cmp r1, r0
	beq _0807D164
	b _0807D17C
	.align 2, 0
_0807D14C: .4byte 0x54494E49
_0807D150:
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	movs r3, #0
	cmp r0, r1
	bne _0807D17E
	movs r3, #2
	b _0807D17E
_0807D164:
	movs r3, #0
	ldrh r0, [r2]
	ldrh r1, [r2, #2]
	ands r1, r0
	ldr r0, _0807D178 @ =0x0000FFFF
	cmp r1, r0
	bne _0807D17E
	movs r3, #1
	b _0807D17E
	.align 2, 0
_0807D178: .4byte 0x0000FFFF
_0807D17C:
	movs r3, #0
_0807D17E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807D184
sub_0807D184: @ 0x0807D184
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r2, #8
	bl sub_0807D20C
	cmp r0, #0
	bne _0807D1A0
	adds r0, r4, #0
	adds r0, #8
	adds r1, r5, #0
	movs r2, #8
	bl sub_0807D20C
_0807D1A0:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807D1A4
sub_0807D1A4: @ 0x0807D1A4
	push {lr}
	adds r2, r0, #0
	movs r3, #0
	cmp r1, #0
	beq _0807D1BC
_0807D1AE:
	ldrh r0, [r2]
	eors r0, r1
	adds r3, r3, r0
	adds r2, #2
	subs r1, #2
	cmp r1, #0
	bne _0807D1AE
_0807D1BC:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807D1C4
sub_0807D1C4: @ 0x0807D1C4
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, _0807D1D4 @ =gUnk_0811E4BC
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0807D1D4: .4byte gUnk_0811E4BC

	thumb_func_start sub_0807D1D8
sub_0807D1D8: @ 0x0807D1D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsrs r4, r2, #3
	adds r0, r4, #0
	lsrs r5, r5, #3
	b _0807D200
_0807D1E6:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080B15E8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807D1FA
	movs r0, #0
	b _0807D208
_0807D1FA:
	adds r5, #1
	adds r6, #8
	adds r0, r4, #0
_0807D200:
	subs r4, #1
	cmp r0, #0
	bne _0807D1E6
	movs r0, #1
_0807D208:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0807D20C
sub_0807D20C: @ 0x0807D20C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	lsrs r5, r2, #3
	adds r0, r5, #0
	lsrs r6, r6, #3
	b _0807D242
_0807D21A:
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080B18DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807D23C
	adds r0, r4, #0
	ldr r1, _0807D238 @ =gUnk_0811E4B4
	bl sub_080B18DC
	movs r0, #0
	b _0807D24A
	.align 2, 0
_0807D238: .4byte gUnk_0811E4B4
_0807D23C:
	adds r6, #1
	adds r7, #8
	adds r0, r5, #0
_0807D242:
	subs r5, #1
	cmp r0, #0
	bne _0807D21A
	movs r0, #1
_0807D24A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807D24C
sub_0807D24C: @ 0x0807D24C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsrs r4, r2, #3
	adds r0, r4, #0
	lsrs r5, r5, #3
	b _0807D274
_0807D25A:
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_080B180C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807D26E
	movs r0, #0
	b _0807D27C
_0807D26E:
	adds r5, #1
	adds r6, #8
	adds r0, r4, #0
_0807D274:
	subs r4, #1
	cmp r0, #0
	bne _0807D25A
	movs r0, #1
_0807D27C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0807D280
sub_0807D280: @ 0x0807D280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r1, _0807D2B0 @ =gRoomControls
	movs r0, #0xa
	ldrsh r2, [r1, r0]
	ldrh r0, [r1, #6]
	subs r3, r2, r0
	movs r0, #0xc
	ldrsh r2, [r1, r0]
	ldrh r0, [r1, #8]
	subs r4, r2, r0
	ldrb r0, [r1, #0x10]
	mov r8, r1
	cmp r0, #1
	beq _0807D330
	cmp r0, #1
	bgt _0807D2B4
	cmp r0, #0
	beq _0807D2BA
	b _0807D404
	.align 2, 0
_0807D2B0: .4byte gRoomControls
_0807D2B4:
	cmp r0, #2
	beq _0807D3A0
	b _0807D404
_0807D2BA:
	mov r2, r8
	ldrh r1, [r2, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	beq _0807D2C8
	b _0807D462
_0807D2C8:
	movs r2, #0x1c
	asrs r3, r3, #4
	mov sb, r3
	movs r3, #0x40
	adds r3, r3, r5
	mov ip, r3
	ldr r4, _0807D328 @ =0x040000D4
	ldr r7, _0807D32C @ =0x80000020
	movs r0, #0xe8
	lsls r0, r0, #3
	adds r3, r5, r0
	subs r0, #0x80
	adds r1, r5, r0
_0807D2E2:
	str r1, [r4]
	str r3, [r4, #4]
	str r7, [r4, #8]
	ldr r0, [r4, #8]
	subs r3, #0x40
	subs r1, #0x40
	subs r2, #1
	cmp r2, #0
	bgt _0807D2E2
	mov r1, r8
	ldrh r0, [r1, #0x20]
	lsrs r0, r0, #4
	subs r0, #1
	ldrh r1, [r1, #0x18]
	lsrs r1, r1, #2
	subs r0, r0, r1
	lsls r0, r0, #8
	mov r2, sb
	lsls r1, r2, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	ldr r0, _0807D328 @ =0x040000D4
	str r6, [r0]
	str r5, [r0, #4]
	ldr r2, _0807D32C @ =0x80000020
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r6, r3
	str r1, [r0]
	mov r1, ip
	b _0807D3F0
	.align 2, 0
_0807D328: .4byte 0x040000D4
_0807D32C: .4byte 0x80000020
_0807D330:
	mov r2, r8
	ldrh r3, [r2, #0x18]
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0807D33E
	b _0807D462
_0807D33E:
	asrs r7, r4, #4
	movs r0, #0x3c
	adds r0, r0, r5
	mov sb, r0
	cmp r3, #0
	beq _0807D36A
	ldr r4, _0807D398 @ =0x040000D4
	ldr r1, _0807D39C @ =0x8000001E
	mov ip, r1
	adds r3, r5, #4
	adds r1, r5, #0
	movs r2, #0x15
_0807D356:
	str r3, [r4]
	str r1, [r4, #4]
	mov r0, ip
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	adds r3, #0x40
	adds r1, #0x40
	subs r2, #1
	cmp r2, #0
	bge _0807D356
_0807D36A:
	lsls r1, r7, #8
	mov r2, r8
	ldrh r0, [r2, #0x18]
	lsrs r0, r0, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r6, r6, r1
	mov r5, sb
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x15
_0807D382:
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	adds r5, #0x40
	adds r6, r6, r1
	subs r2, #1
	cmp r2, #0
	bge _0807D382
	b _0807D462
	.align 2, 0
_0807D398: .4byte 0x040000D4
_0807D39C: .4byte 0x8000001E
_0807D3A0:
	mov r0, r8
	ldrh r1, [r0, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807D462
	lsls r2, r1, #0x10
	cmp r2, #0
	beq _0807D3C2
	ldr r1, _0807D3F8 @ =0x040000D4
	adds r0, r5, #0
	adds r0, #0x80
	str r0, [r1]
	str r5, [r1, #4]
	ldr r0, _0807D3FC @ =0x800003C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0807D3C2:
	lsrs r0, r2, #0x12
	lsls r0, r0, #8
	asrs r1, r3, #4
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	ldr r0, _0807D3F8 @ =0x040000D4
	str r6, [r0]
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r1, r5, r2
	str r1, [r0, #4]
	ldr r2, _0807D400 @ =0x80000020
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r6, r3
	str r1, [r0]
	movs r3, #0xa8
	lsls r3, r3, #3
	adds r1, r5, r3
_0807D3F0:
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	b _0807D462
	.align 2, 0
_0807D3F8: .4byte 0x040000D4
_0807D3FC: .4byte 0x800003C0
_0807D400: .4byte 0x80000020
_0807D404:
	mov r0, r8
	ldrh r1, [r0, #0x18]
	movs r0, #3
	ands r0, r1
	cmp r0, #1
	bne _0807D462
	movs r2, #0
	asrs r7, r4, #4
	mov ip, r5
_0807D416:
	movs r1, #0x1d
	mov r3, ip
	adds r3, #0x3a
_0807D41C:
	ldrh r0, [r3]
	strh r0, [r3, #4]
	subs r3, #2
	subs r1, #1
	cmp r1, #0
	bge _0807D41C
	movs r1, #0x40
	add ip, r1
	adds r2, #1
	cmp r2, #0x15
	ble _0807D416
	lsls r0, r7, #8
	mov r2, r8
	ldrh r1, [r2, #0x1e]
	lsrs r1, r1, #4
	subs r1, #1
	ldrh r2, [r2, #0x18]
	lsrs r2, r2, #2
	subs r1, r1, r2
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x15
_0807D450:
	ldrh r0, [r6]
	strh r0, [r5]
	ldrh r0, [r6, #2]
	strh r0, [r5, #2]
	adds r5, #0x40
	adds r6, r6, r1
	subs r2, #1
	cmp r2, #0
	bge _0807D450
_0807D462:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807D46C
sub_0807D46C: @ 0x0807D46C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0807D494 @ =gRoomControls
	ldrb r2, [r0, #0x10]
	mov sb, r0
	cmp r2, #1
	bne _0807D488
	b _0807D5C4
_0807D488:
	cmp r2, #1
	bgt _0807D498
	cmp r2, #0
	beq _0807D4A4
	b _0807D6CC
	.align 2, 0
_0807D494: .4byte gRoomControls
_0807D498:
	cmp r2, #2
	beq _0807D4A4
	cmp r2, #3
	bne _0807D4A2
	b _0807D5C4
_0807D4A2:
	b _0807D6CC
_0807D4A4:
	mov r1, sb
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #6]
	subs r5, r0, r1
	cmp r5, #7
	ble _0807D4B4
	subs r5, #8
_0807D4B4:
	mov r3, sb
	ldr r0, [r3, #0x30]
	movs r2, #0x2e
	ldrsh r0, [r0, r2]
	subs r0, r0, r1
	subs r3, r0, #4
	mov r8, r3
	cmp r3, #7
	ble _0807D4CA
	subs r0, #0xc
	mov r8, r0
_0807D4CA:
	mov r0, sb
	movs r2, #0xc
	ldrsh r1, [r0, r2]
	ldrh r0, [r0, #8]
	subs r1, r1, r0
	mov ip, r1
	cmp r1, #7
	ble _0807D4E0
	movs r3, #8
	rsbs r3, r3, #0
	add ip, r3
_0807D4E0:
	mov r1, sb
	ldrh r0, [r1, #0x18]
	lsls r0, r0, #3
	mov r2, r8
	subs r0, r2, r0
	adds r7, r5, #0
	adds r7, #0xf8
	cmp r0, r5
	blt _0807D548
	mov r1, ip
	asrs r3, r1, #3
	lsls r1, r3, #8
	ldr r2, [sp]
	adds r1, r2, r1
	asrs r0, r0, #3
	lsls r2, r0, #1
	adds r4, r1, r2
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #4]
	adds r6, r2, r0
	ands r3, r1
	lsls r2, r3, #5
	mov r3, sb
	ldrh r0, [r3, #0x20]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xaf
	bhi _0807D520
	lsrs r3, r1, #0x13
	b _0807D522
_0807D520:
	movs r3, #0x16
_0807D522:
	adds r7, r5, #0
	adds r7, #0xf8
	cmp r3, #0
	ble _0807D548
	ldr r0, _0807D55C @ =0x000003FF
	mov sl, r0
_0807D52E:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r2, #0x20
	mov r0, sl
	ands r2, r0
	subs r3, #1
	cmp r3, #0
	bgt _0807D52E
_0807D548:
	mov r1, sb
	ldrh r0, [r1, #0x18]
	adds r0, #1
	lsls r0, r0, #3
	add r0, r8
	ldrh r2, [r1, #0x1e]
	cmp r7, r2
	blt _0807D560
	adds r1, r7, #0
	b _0807D566
	.align 2, 0
_0807D55C: .4byte 0x000003FF
_0807D560:
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r5, r3
_0807D566:
	cmp r0, r1
	blt _0807D56C
	b _0807D6CC
_0807D56C:
	mov r1, ip
	asrs r3, r1, #3
	lsls r1, r3, #8
	ldr r2, [sp]
	adds r1, r2, r1
	asrs r0, r0, #3
	lsls r2, r0, #1
	adds r4, r1, r2
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #4]
	adds r6, r2, r0
	ands r3, r1
	lsls r2, r3, #5
	mov r3, sb
	ldrh r0, [r3, #0x20]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xaf
	bhi _0807D59A
	lsrs r3, r1, #0x13
	b _0807D59C
_0807D59A:
	movs r3, #0x16
_0807D59C:
	cmp r3, #0
	bgt _0807D5A2
	b _0807D6CC
_0807D5A2:
	movs r7, #0x80
	lsls r7, r7, #1
	ldr r5, _0807D5C0 @ =0x000003FF
_0807D5A8:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, r4, r7
	adds r2, #0x20
	ands r2, r5
	subs r3, #1
	cmp r3, #0
	bgt _0807D5A8
	b _0807D6CC
	.align 2, 0
_0807D5C0: .4byte 0x000003FF
_0807D5C4:
	mov r1, sb
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r2, [r1, #8]
	subs r5, r0, r2
	cmp r5, #7
	ble _0807D5D4
	subs r5, #8
_0807D5D4:
	mov r3, sb
	movs r0, #0xa
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #6]
	subs r1, r1, r0
	mov r8, r1
	cmp r1, #7
	ble _0807D5EA
	movs r1, #8
	rsbs r1, r1, #0
	add r8, r1
_0807D5EA:
	mov r3, sb
	ldr r0, [r3, #0x30]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	subs r0, r0, r2
	subs r2, r0, #4
	mov ip, r2
	cmp r2, #7
	ble _0807D600
	subs r0, #0xc
	mov ip, r0
_0807D600:
	mov r3, sb
	ldrh r0, [r3, #0x18]
	lsls r0, r0, #3
	mov r1, ip
	subs r0, r1, r0
	adds r7, r5, #0
	adds r7, #0xa8
	movs r2, #0xb0
	adds r2, r2, r5
	mov sl, r2
	cmp r0, r5
	blt _0807D66A
	asrs r2, r0, #3
	lsls r0, r2, #8
	ldr r3, [sp]
	adds r0, r3, r0
	mov r1, r8
	asrs r3, r1, #3
	lsls r1, r3, #1
	adds r4, r0, r1
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #6
	ldr r1, [sp, #4]
	adds r6, r1, r2
	adds r2, r0, #0
	ands r2, r3
	mov r3, sb
	ldrh r0, [r3, #0x1e]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bhi _0807D646
	lsrs r3, r1, #0x13
	b _0807D648
_0807D646:
	movs r3, #0x20
_0807D648:
	adds r7, r5, #0
	adds r7, #0xa8
	adds r5, #0xb0
	mov sl, r5
	cmp r3, #0
	ble _0807D66A
	movs r5, #0x1f
_0807D656:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, #2
	adds r2, #1
	ands r2, r5
	subs r3, #1
	cmp r3, #0
	bgt _0807D656
_0807D66A:
	mov r1, sb
	ldrh r0, [r1, #0x18]
	adds r0, #1
	lsls r0, r0, #3
	add r0, ip
	mov r2, sl
	ldrh r1, [r1, #0x20]
	cmp r7, r1
	blt _0807D67E
	adds r2, r7, #0
_0807D67E:
	cmp r0, r2
	bge _0807D6CC
	asrs r2, r0, #3
	lsls r0, r2, #8
	ldr r1, [sp]
	adds r0, r1, r0
	mov r1, r8
	asrs r3, r1, #3
	lsls r1, r3, #1
	adds r4, r0, r1
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #6
	ldr r1, [sp, #4]
	adds r6, r1, r2
	adds r2, r0, #0
	ands r2, r3
	mov r3, sb
	ldrh r0, [r3, #0x1e]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0xff
	bhi _0807D6B0
	lsrs r3, r1, #0x13
	b _0807D6B2
_0807D6B0:
	movs r3, #0x20
_0807D6B2:
	cmp r3, #0
	ble _0807D6CC
	movs r5, #0x1f
_0807D6B8:
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, #2
	adds r2, #1
	ands r2, r5
	subs r3, #1
	cmp r3, #0
	bgt _0807D6B8
_0807D6CC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0807D6D8
sub_0807D6D8: @ 0x0807D6D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	str r0, [sp]
	str r1, [sp, #4]
	ldr r5, _0807D8BC @ =gRoomControls
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _0807D6F2
	b _0807DA62
_0807D6F2:
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	bne _0807D6FA
	b _0807DA62
_0807D6FA:
	movs r1, #0xa
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	movs r4, #0x10
	rsbs r4, r4, #0
	ands r0, r4
	str r0, [sp, #0x24]
	ldr r3, [r5, #0x30]
	movs r2, #0x2e
	ldrsh r0, [r3, r2]
	subs r0, r0, r1
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	ands r0, r4
	str r0, [sp, #0x28]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	subs r0, r0, r1
	ands r0, r2
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	subs r0, r0, r1
	str r0, [sp, #0x20]
	ldrh r0, [r5, #0x18]
	adds r2, r0, #0
	muls r2, r0, r2
	str r2, [sp, #0xc]
	ldrh r3, [r5, #0x1a]
	str r3, [sp, #8]
	adds r4, r3, #0
	muls r4, r3, r4
	str r4, [sp, #0x10]
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	lsls r0, r4, #1
	rsbs r0, r0, #0
	adds r0, #1
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	lsls r6, r2, #1
	adds r7, r0, r6
	adds r2, r4, #0
	muls r2, r1, r2
	mov r8, r2
	mov r0, r8
	ldr r1, [sp, #0xc]
	bl __divsi3
	mov ip, r0
	cmp sb, ip
	ble _0807D778
	b _0807D8D8
_0807D778:
	mov sl, r5
	ldr r3, [sp, #0xc]
	adds r0, r6, r3
	lsls r0, r0, #1
	str r0, [sp, #0x3c]
	mov r0, r8
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x14]
	subs r1, r1, r4
	mov r8, r1
	ldr r2, [sp, #0x14]
	adds r6, r4, r2
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r3, [sp, #0x24]
	adds r0, r3, r0
	str r0, [sp, #0x2c]
_0807D79A:
	ldr r0, [sp, #0x28]
	adds r0, #0xb0
	ldr r1, [sp, #0x18]
	add r1, sb
	cmp r0, r1
	ble _0807D812
	ldr r0, [sp, #0x20]
	add r0, sb
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807D812
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x2c]
	cmp r0, r6
	ble _0807D7EA
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #1
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D7EA:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807D812
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807D812:
	ldr r0, [sp, #0x18]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r1, #0
	adds r0, #8
	ldr r3, [sp, #0x28]
	cmp r3, r0
	bge _0807D88E
	ldr r3, [sp, #0x20]
	subs r0, r3, r2
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807D88E
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x2c]
	cmp r0, r6
	ble _0807D866
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #4
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D866:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807D88E
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #8
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807D88E:
	cmp r7, #0
	ble _0807D8C0
	lsls r0, r4, #2
	rsbs r0, r0, #0
	adds r0, #4
	ldr r1, [sp, #0x10]
	muls r0, r1, r0
	ldr r2, [sp, #0x3c]
	adds r0, r0, r2
	adds r7, r7, r0
	ldr r3, [sp, #0x40]
	subs r3, r3, r1
	str r3, [sp, #0x40]
	movs r0, #1
	add r8, r0
	subs r6, #1
	subs r4, #1
	adds r0, r3, #0
	ldr r1, [sp, #0xc]
	bl __divsi3
	mov ip, r0
	b _0807D8C4
	.align 2, 0
_0807D8BC: .4byte gRoomControls
_0807D8C0:
	ldr r1, [sp, #0x3c]
	adds r7, r7, r1
_0807D8C4:
	ldr r2, [sp, #0xc]
	lsls r0, r2, #2
	ldr r3, [sp, #0x3c]
	adds r3, r3, r0
	str r3, [sp, #0x3c]
	movs r0, #1
	add sb, r0
	cmp sb, ip
	bgt _0807D8D8
	b _0807D79A
_0807D8D8:
	movs r4, #0
	ldr r1, [sp, #8]
	mov sb, r1
	ldr r2, [sp, #0x10]
	lsls r6, r2, #1
	lsls r0, r1, #1
	rsbs r0, r0, #0
	adds r0, #1
	ldr r3, [sp, #0xc]
	muls r0, r3, r0
	adds r7, r6, r0
	mov r5, sb
	muls r5, r3, r5
	adds r0, r5, #0
	adds r1, r2, #0
	bl __divsi3
	mov ip, r0
	cmp r4, ip
	ble _0807D902
	b _0807DA62
_0807D902:
	ldr r0, _0807DA40 @ =gRoomControls
	mov sl, r0
	ldr r1, [sp, #0x10]
	adds r0, r6, r1
	lsls r0, r0, #1
	str r0, [sp, #0x34]
	ldr r6, [sp, #0x14]
	mov r8, r6
	str r5, [sp, #0x38]
	movs r3, #0x80
	lsls r3, r3, #1
	ldr r2, [sp, #0x24]
	adds r3, r2, r3
	str r3, [sp, #0x30]
_0807D91E:
	ldr r0, [sp, #0x28]
	adds r0, #0xb0
	ldr r1, [sp, #0x18]
	add r1, sb
	cmp r0, r1
	ble _0807D996
	ldr r0, [sp, #0x20]
	add r0, sb
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807D996
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x30]
	cmp r0, r6
	ble _0807D96E
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #0x10
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D96E:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807D996
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807D996:
	ldr r0, [sp, #0x18]
	mov r2, sb
	subs r1, r0, r2
	adds r0, r1, #0
	adds r0, #8
	ldr r3, [sp, #0x28]
	cmp r3, r0
	bge _0807DA12
	ldr r3, [sp, #0x20]
	subs r0, r3, r2
	asrs r0, r0, #3
	movs r5, #0x1f
	ands r0, r5
	cmp r0, #0x1f
	beq _0807DA12
	lsls r0, r0, #6
	ldr r3, [sp, #4]
	adds r2, r3, r0
	asrs r0, r1, #3
	lsls r0, r0, #8
	ldr r1, [sp]
	adds r3, r1, r0
	ldr r0, [sp, #0x30]
	cmp r0, r6
	ble _0807D9EA
	ldr r0, [sp, #0x1c]
	adds r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	asrs r0, r6, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r1, sl
	ldrh r0, [r1, #0x1c]
	movs r1, #0x40
	orrs r0, r1
	mov r1, sl
	strh r0, [r1, #0x1c]
_0807D9EA:
	ldr r0, [sp, #0x24]
	cmp r0, r8
	bge _0807DA12
	ldr r0, [sp, #0x1c]
	subs r1, r0, r4
	asrs r1, r1, #3
	ands r1, r5
	lsls r1, r1, #1
	adds r1, r1, r2
	mov r2, r8
	asrs r0, r2, #3
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3, #0x1c]
_0807DA12:
	cmp r7, #0
	ble _0807DA44
	mov r1, sb
	lsls r0, r1, #2
	rsbs r0, r0, #0
	adds r0, #4
	ldr r2, [sp, #0xc]
	muls r0, r2, r0
	ldr r3, [sp, #0x34]
	adds r0, r3, r0
	adds r7, r7, r0
	ldr r0, [sp, #0x38]
	subs r0, r0, r2
	str r0, [sp, #0x38]
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	ldr r1, [sp, #0x10]
	bl __divsi3
	mov ip, r0
	b _0807DA48
	.align 2, 0
_0807DA40: .4byte gRoomControls
_0807DA44:
	ldr r2, [sp, #0x34]
	adds r7, r7, r2
_0807DA48:
	ldr r3, [sp, #0x10]
	lsls r0, r3, #2
	ldr r1, [sp, #0x34]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r6, #1
	adds r4, #1
	cmp r4, ip
	bgt _0807DA62
	b _0807D91E
_0807DA62:
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807DA70
sub_0807DA70: @ 0x0807DA70
	push {r4, lr}
	ldr r4, _0807DA94 @ =gUnk_02033280
	adds r0, r4, #0
	movs r1, #0xc
	bl _DmaZero
	ldr r0, _0807DA98 @ =gUnk_02036570
	movs r1, #0x90
	lsls r1, r1, #3
	bl _DmaZero
	ldr r0, _0807DA9C @ =gUnk_02022750
	movs r1, #0x24
	bl _DmaZero
	movs r0, #8
	strb r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_0807DA94: .4byte gUnk_02033280
_0807DA98: .4byte gUnk_02036570
_0807DA9C: .4byte gUnk_02022750

	thumb_func_start sub_0807DAA0
sub_0807DAA0: @ 0x0807DAA0
	push {lr}
	ldr r1, _0807DABC @ =gUnk_02036570
	movs r0, #0x90
	lsls r0, r0, #3
	adds r2, r1, r0
_0807DAAA:
	ldr r0, [r1]
	cmp r0, #0
	beq _0807DAC0
	adds r1, #0x24
	cmp r1, r2
	blo _0807DAAA
	movs r0, #0
	b _0807DAC2
	.align 2, 0
_0807DABC: .4byte gUnk_02036570
_0807DAC0:
	adds r0, r1, #0
_0807DAC2:
	pop {pc}

	thumb_func_start sub_0807DAC4
sub_0807DAC4: @ 0x0807DAC4
	push {lr}
	movs r1, #0x24
	bl _DmaZero
	pop {pc}
	.align 2, 0

	thumb_func_start StartCutscene
StartCutscene: @ 0x0807DAD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_0807DAA0
	adds r4, r0, #0
	cmp r4, #0
	beq _0807DAEA
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_0807DAF0
_0807DAEA:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0807DAF0
sub_0807DAF0: @ 0x0807DAF0
	push {r4, lr}
	ldrb r4, [r0, #0x10]
	movs r3, #2
	orrs r3, r4
	strb r3, [r0, #0x10]
	adds r0, #0x84
	str r1, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_0807DB88
	pop {r4, pc}

	thumb_func_start UnloadCutsceneData
UnloadCutsceneData: @ 0x0807DB08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807DB28
	movs r0, #0xfd
	ands r0, r1
	movs r5, #0
	strb r0, [r4, #0x10]
	adds r4, #0x84
	ldr r0, [r4]
	bl sub_0807DAC4
	str r5, [r4]
_0807DB28:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start StartPlayerScript
StartPlayerScript: @ 0x0807DB2C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0807DB5C @ =gUnk_02022750
	adds r0, r4, #0
	movs r1, #0x24
	bl _DmaZero
	str r5, [r4]
	ldr r0, _0807DB60 @ =gPlayerEntity
	adds r0, #0x84
	str r4, [r0]
	ldr r2, _0807DB64 @ =gPlayerState
	movs r1, #0
	movs r0, #0x1c
	strb r0, [r2, #0xc]
	adds r0, r2, #0
	adds r0, #0x3a
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0807DB5C: .4byte gUnk_02022750
_0807DB60: .4byte gPlayerEntity
_0807DB64: .4byte gPlayerState

	thumb_func_start sub_0807DB68
sub_0807DB68: @ 0x0807DB68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0807DAA0
	adds r2, r0, #0
	cmp r2, #0
	beq _0807DB84
	ldrb r1, [r4, #0x10]
	movs r0, #2
	orrs r0, r1
	strb r0, [r4, #0x10]
	str r2, [r4, #0x3c]
	str r5, [r2]
_0807DB84:
	adds r0, r2, #0
	pop {r4, r5, pc}

	thumb_func_start sub_0807DB88
sub_0807DB88: @ 0x0807DB88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0x24
	bl _DmaZero
	str r5, [r4]
	pop {r4, r5, pc}

	thumb_func_start sub_0807DB98
sub_0807DB98: @ 0x0807DB98
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _0807DBA6
	b _0807DD48
_0807DBA6:
	movs r7, #0
	adds r4, r5, #0
	adds r4, #0x82
_0807DBAC:
	ldr r1, [r6, #8]
	mvns r0, r1
	adds r2, r0, #1
	ands r2, r1
	eors r1, r2
	str r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r2, r0
	bne _0807DBC2
	b _0807DCC8
_0807DBC2:
	cmp r2, r0
	bhi _0807DC04
	cmp r2, #0x10
	beq _0807DC82
	cmp r2, #0x10
	bhi _0807DBE8
	cmp r2, #2
	beq _0807DC70
	cmp r2, #2
	bhi _0807DBDC
	cmp r2, #1
	beq _0807DC68
	b _0807DD40
_0807DBDC:
	cmp r2, #4
	bne _0807DBE2
	b _0807DD40
_0807DBE2:
	cmp r2, #8
	beq _0807DC7A
	b _0807DD40
_0807DBE8:
	cmp r2, #0x40
	beq _0807DC9E
	cmp r2, #0x40
	bhi _0807DBF6
	cmp r2, #0x20
	beq _0807DC90
	b _0807DD40
_0807DBF6:
	cmp r2, #0x80
	beq _0807DCA8
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	beq _0807DCBA
	b _0807DD40
_0807DC04:
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r2, r0
	beq _0807DCFC
	cmp r2, r0
	bhi _0807DC38
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r2, r0
	beq _0807DCDE
	cmp r2, r0
	bhi _0807DC26
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r2, r0
	beq _0807DCD6
	b _0807DD40
_0807DC26:
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	beq _0807DCE8
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	beq _0807DCF4
	b _0807DD40
_0807DC38:
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r2, r0
	beq _0807DD14
	cmp r2, r0
	bhi _0807DC56
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	beq _0807DD04
	movs r0, #0x80
	lsls r0, r0, #9
	cmp r2, r0
	beq _0807DD0C
	b _0807DD40
_0807DC56:
	movs r0, #0x80
	lsls r0, r0, #0xb
	cmp r2, r0
	beq _0807DD2E
	movs r0, #0x80
	lsls r0, r0, #0xc
	cmp r2, r0
	beq _0807DD36
	b _0807DD40
_0807DC68:
	adds r0, r5, #0
	adds r0, #0x80
	strh r7, [r0]
	b _0807DD40
_0807DC70:
	adds r1, r5, #0
	adds r1, #0x80
	movs r0, #4
	strh r0, [r1]
	b _0807DD40
_0807DC7A:
	movs r0, #0xc0
	lsls r0, r0, #9
	str r0, [r5, #0x20]
	b _0807DD40
_0807DC82:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x18
	rsbs r2, r2, #0
	bl CreateSpeechBubbleExclamationMark
	b _0807DD40
_0807DC90:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x18
	rsbs r2, r2, #0
	bl CreateSpeechBubbleQuestionMark
	b _0807DD40
_0807DC9E:
	adds r0, r6, #0
	bl sub_0807DAC4
	bl DeleteThisEntity
_0807DCA8:
	ldrb r0, [r5, #0x18]
	movs r2, #4
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r5, #0x18]
	b _0807DD40
_0807DCBA:
	ldrb r0, [r5, #0x18]
	movs r3, #4
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r0, r1
	strb r0, [r5, #0x18]
	b _0807DD40
_0807DCC8:
	adds r0, r5, #0
	adds r0, #0x63
	strb r7, [r0]
	subs r0, #1
	strb r7, [r0]
	strh r7, [r4]
	b _0807DD40
_0807DCD6:
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	b _0807DD3E
_0807DCDE:
	ldrh r0, [r4]
	ldr r2, _0807DCE4 @ =0x0000FFFD
	b _0807DD3A
	.align 2, 0
_0807DCE4: .4byte 0x0000FFFD
_0807DCE8:
	ldrh r0, [r4]
	ldr r3, _0807DCF0 @ =0x0000FFFE
	adds r1, r3, #0
	b _0807DD3C
	.align 2, 0
_0807DCF0: .4byte 0x0000FFFE
_0807DCF4:
	ldrh r0, [r4]
	movs r1, #1
	orrs r0, r1
	b _0807DD3E
_0807DCFC:
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	b _0807DD3E
_0807DD04:
	ldrh r0, [r4]
	movs r1, #4
	eors r0, r1
	b _0807DD3E
_0807DD0C:
	ldrh r0, [r4]
	movs r1, #0x10
	eors r0, r1
	b _0807DD3E
_0807DD14:
	ldrb r2, [r5, #0x18]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #6
	movs r3, #0x41
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #0x18]
	b _0807DD40
_0807DD2E:
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	b _0807DD3E
_0807DD36:
	ldrh r0, [r4]
	ldr r2, _0807DD4C @ =0x0000FFDF
_0807DD3A:
	adds r1, r2, #0
_0807DD3C:
	ands r0, r1
_0807DD3E:
	strh r0, [r4]
_0807DD40:
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0807DD48
	b _0807DBAC
_0807DD48:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807DD4C: .4byte 0x0000FFDF

	thumb_func_start sub_0807DD50
sub_0807DD50: @ 0x0807DD50
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807DD64
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807DD64
sub_0807DD64: @ 0x0807DD64
	adds r3, r0, #0
	ldrb r0, [r3, #0x14]
	movs r2, #0
	strb r0, [r3, #0xf]
	adds r1, r3, #0
	adds r1, #0x58
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x80
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	bx lr

	thumb_func_start sub_0807DD80
sub_0807DD80: @ 0x0807DD80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl sub_0807DB88
	adds r0, r4, #0
	bl sub_0807DD64
	pop {r4, pc}
