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

	thumb_func_start sub_0807DD94
sub_0807DD94: @ 0x0807DD94
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0807DDAC
	adds r0, r4, #0
	bl sub_0807DDE4
	adds r0, r4, #0
	bl sub_0807DE80
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807DDAC
sub_0807DDAC: @ 0x0807DDAC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r5, #0
	adds r4, #0x84
	ldr r1, [r4]
	cmp r1, #0
	beq _0807DDE0
	bl ExecuteScriptCommandSet
	cmp r6, #0
	beq _0807DDCE
	ldr r1, [r4]
	adds r0, r5, #0
	bl _call_via_r6
	b _0807DDD6
_0807DDCE:
	ldr r1, [r4]
	adds r0, r5, #0
	bl sub_0807DB98
_0807DDD6:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0807DDE0
	bl DeleteThisEntity
_0807DDE0:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0807DDE4
sub_0807DDE4: @ 0x0807DDE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrh r5, [r0]
_0807DDEC:
	cmp r5, #0
	beq _0807DE7C
	mvns r0, r5
	adds r0, #1
	ands r0, r5
	eors r5, r0
	cmp r0, #8
	beq _0807DE26
	cmp r0, #8
	bhi _0807DE06
	cmp r0, #2
	beq _0807DE10
	b _0807DDEC
_0807DE06:
	cmp r0, #0x10
	beq _0807DE44
	cmp r0, #0x20
	beq _0807DE70
	b _0807DDEC
_0807DE10:
	ldrb r0, [r4, #8]
	cmp r0, #7
	bne _0807DE1E
	adds r0, r4, #0
	bl sub_0806ED78
	b _0807DDEC
_0807DE1E:
	adds r0, r4, #0
	bl sub_0800445C
	b _0807DDEC
_0807DE26:
	ldr r0, _0807DE40 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0807DDEC
	ldrb r0, [r4, #0xf]
	adds r0, #2
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x14]
	strb r0, [r4, #0xf]
	b _0807DDEC
	.align 2, 0
_0807DE40: .4byte gScreenTransition
_0807DE44:
	ldr r0, _0807DE68 @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807DDEC
	bl Random
	ldr r2, _0807DE6C @ =gUnk_0811E510
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x62
	strb r0, [r1]
	b _0807DDEC
	.align 2, 0
_0807DE68: .4byte gScreenTransition
_0807DE6C: .4byte gUnk_0811E510
_0807DE70:
	adds r0, r4, #0
	movs r1, #0x80
	lsls r1, r1, #6
	bl sub_08003FC4
	b _0807DDEC
_0807DE7C:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0807DE80
sub_0807DE80: @ 0x0807DE80
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldrh r3, [r0]
	cmp r3, #7
	bhi _0807DEB0
	adds r0, #2
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0807DEA4
	movs r1, #0xfc
	ands r1, r3
	ldrb r0, [r4, #0xf]
	lsrs r0, r0, #1
	adds r3, r1, r0
	b _0807DEB0
_0807DEA4:
	movs r0, #0xfc
	ands r0, r3
	ldrb r2, [r4, #0x14]
	lsrs r1, r2, #1
	adds r3, r0, r1
	strb r2, [r4, #0xf]
_0807DEB0:
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r3, r0
	beq _0807DEC2
	adds r0, r4, #0
	adds r1, r3, #0
	bl InitAnimationForceUpdate
_0807DEC2:
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	beq _0807DED4
	movs r1, #2
_0807DED4:
	adds r0, r4, #0
	bl sub_080042BA
	pop {r4, pc}

	thumb_func_start sub_0807DEDC
sub_0807DEDC: @ 0x0807DEDC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #8
	strb r0, [r1, #0x19]
	ldr r0, [r1, #8]
	movs r4, #2
	orrs r0, r4
	str r0, [r1, #8]
	str r6, [r1, #0x14]
	strh r2, [r1, #0x1e]
	strh r3, [r1, #0x22]
	movs r2, #0x1e
	ldrsh r0, [r1, r2]
	movs r3, #0x2e
	ldrsh r2, [r5, r3]
	subs r0, r0, r2
	movs r2, #0x22
	ldrsh r1, [r1, r2]
	movs r3, #0x32
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r5, #0x15]
	ldrb r2, [r5, #0x14]
	movs r1, #0x80
	ands r1, r2
	ldr r2, _0807DF24 @ =gUnk_0811E514
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	adds r0, r0, r2
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r5, #0x14]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807DF24: .4byte gUnk_0811E514

	thumb_func_start sub_0807DF28
sub_0807DF28: @ 0x0807DF28
	push {lr}
	bl sub_0807DF38
	bl sub_08079184
	bl sub_08077B20
	pop {pc}

	thumb_func_start sub_0807DF38
sub_0807DF38: @ 0x0807DF38
	ldr r1, _0807DF48 @ =gUnk_0200AF00
	movs r0, #0xff
	strb r0, [r1, #1]
	ldr r1, _0807DF4C @ =gUnk_02034490
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_0807DF48: .4byte gUnk_0200AF00
_0807DF4C: .4byte gUnk_02034490

	thumb_func_start sub_0807DF50
sub_0807DF50: @ 0x0807DF50
	push {lr}
	ldr r0, _0807DF6C @ =gUnk_02034490
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0807DF70 @ =gUnk_0200AF00
	strb r1, [r0, #1]
	movs r0, #0
	bl sub_0801C4A0
	bl sub_080791D0
	bl sub_08079184
	pop {pc}
	.align 2, 0
_0807DF6C: .4byte gUnk_02034490
_0807DF70: .4byte gUnk_0200AF00

	thumb_func_start ExecuteScriptCommandSet
ExecuteScriptCommandSet: @ 0x0807DF74
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0807DFE8
	ldrh r0, [r5, #0x10]
	adds r1, r0, #0
	cmp r1, #0
	beq _0807DF92
	subs r0, #1
	strh r0, [r5, #0x10]
	b _0807DFE8
_0807DF92:
	ldr r6, _0807DFF0 @ =gUnk_02033280
	strb r1, [r6, #7]
_0807DF96:
	ldr r0, [r5]
	bl GetNextScriptCommandHalfword
	adds r1, r0, #0
	ldr r0, _0807DFF4 @ =0x0000FFFF
	cmp r1, r0
	beq _0807DFE8
	lsrs r0, r1, #0xa
	strb r0, [r6, #6]
	ldr r2, _0807DFF8 @ =0x000003FF
	adds r0, r2, #0
	ands r1, r0
	movs r7, #0
	strh r1, [r6, #4]
	ldr r4, [r5]
	ldrb r1, [r6, #7]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r6, #7]
	ldr r1, _0807DFFC @ =gUnk_0811E524
	ldrh r0, [r6, #4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	mov r0, r8
	adds r1, r5, #0
	bl _call_via_r2
	ldrb r1, [r6, #6]
	lsls r1, r1, #1
	ldr r0, [r5]
	adds r0, r0, r1
	str r0, [r5]
	cmp r4, r0
	beq _0807DFDE
	strb r7, [r5, #0x18]
_0807DFDE:
	ldrb r1, [r6, #7]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0807DF96
_0807DFE8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807DFF0: .4byte gUnk_02033280
_0807DFF4: .4byte 0x0000FFFF
_0807DFF8: .4byte 0x000003FF
_0807DFFC: .4byte gUnk_0811E524

	thumb_func_start nullsub_507
nullsub_507: @ 0x0807E000
	bx lr
	.align 2, 0

	thumb_func_start sub_0807E004
sub_0807E004: @ 0x0807E004
	ldr r2, _0807E010 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_0807E010: .4byte gUnk_02033280

	thumb_func_start sub_0807E014
sub_0807E014: @ 0x0807E014
	ldr r2, _0807E020 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #0xfd
	ands r0, r1
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_0807E020: .4byte gUnk_02033280

	thumb_func_start sub_0807E024
sub_0807E024: @ 0x0807E024
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	adds r0, #2
	str r0, [r4]
	bl GetNextScriptCommandHalfword
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	lsls r1, r1, #1
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	ldr r1, _0807E04C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	pop {r4, pc}
	.align 2, 0
_0807E04C: .4byte gUnk_02033280

	thumb_func_start sub_0807E050
sub_0807E050: @ 0x0807E050
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0807E060
	adds r0, r2, #0
	bl sub_0807E024
_0807E060:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E064
sub_0807E064: @ 0x0807E064
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _0807E074
	adds r0, r2, #0
	bl sub_0807E024
_0807E074:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E078
sub_0807E078: @ 0x0807E078
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _0807E09C @ =gUnk_02033280
	ldrb r0, [r0, #6]
	ldr r1, [r2, #4]
	cmp r0, r1
	bls _0807E098
	lsls r1, r1, #1
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0807E024
_0807E098:
	pop {pc}
	.align 2, 0
_0807E09C: .4byte gUnk_02033280

	thumb_func_start sub_0807E0A0
sub_0807E0A0: @ 0x0807E0A0
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandWordAfterCommandMetadata
	str r0, [r4]
	ldr r1, _0807E0B4 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	pop {r4, pc}
	.align 2, 0
_0807E0B4: .4byte gUnk_02033280

	thumb_func_start sub_0807E0B8
sub_0807E0B8: @ 0x0807E0B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0807E0C8
	adds r0, r2, #0
	bl sub_0807E0A0
_0807E0C8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E0CC
sub_0807E0CC: @ 0x0807E0CC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bne _0807E0DC
	adds r0, r2, #0
	bl sub_0807E0A0
_0807E0DC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E0E0
sub_0807E0E0: @ 0x0807E0E0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, _0807E108 @ =gUnk_02033280
	ldrb r1, [r0, #6]
	ldr r3, [r2, #4]
	lsls r0, r3, #1
	adds r0, #1
	cmp r1, r0
	bls _0807E104
	lsls r1, r3, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0807E0A0
_0807E104:
	pop {r4, pc}
	.align 2, 0
_0807E108: .4byte gUnk_02033280

	thumb_func_start sub_0807E10C
sub_0807E10C: @ 0x0807E10C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandWordAfterCommandMetadata
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	pop {r4, r5, pc}

	thumb_func_start sub_0807E124
sub_0807E124: @ 0x0807E124
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandWordAfterCommandMetadata
	adds r5, r0, #0
	ldr r0, [r4]
	adds r0, #6
	bl GetNextScriptCommandWord
	str r0, [r4, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl _call_via_r5
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0807E148
sub_0807E148: @ 0x0807E148
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	bl LoadRoomEntityList
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E158
sub_0807E158: @ 0x0807E158
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandWordAfterCommandMetadata
	adds r2, r0, #0
	movs r5, #0
	ldr r3, _0807E184 @ =gUnk_02033280
	ldr r1, [r3]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r2
	bne _0807E174
	movs r5, #1
_0807E174:
	str r5, [r4, #0x14]
	bics r1, r2
	str r1, [r3]
	ldrb r1, [r3, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0807E184: .4byte gUnk_02033280

	thumb_func_start sub_0807E188
sub_0807E188: @ 0x0807E188
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandHalfwordAfterCommandMetadata
	cmp r0, #0x51
	beq _0807E1B4
	cmp r0, #0x51
	bhi _0807E1A0
	cmp r0, #0x50
	beq _0807E1BA
	b _0807E1C0
_0807E1A0:
	cmp r0, #0x52
	beq _0807E1AE
	cmp r0, #0x53
	bne _0807E1C0
	bl sub_08052734
	b _0807E1C4
_0807E1AE:
	bl sub_08052764
	b _0807E1C4
_0807E1B4:
	bl sub_0805279C
	b _0807E1C4
_0807E1BA:
	bl sub_080527CC
	b _0807E1C4
_0807E1C0:
	bl GetInventoryValue
_0807E1C4:
	str r0, [r4, #0x14]
	ldr r2, _0807E1D4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E1D4: .4byte gUnk_02033280

	thumb_func_start sub_0807E1D8
sub_0807E1D8: @ 0x0807E1D8
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl GetInventoryValue
	movs r1, #0
	cmp r0, #2
	bne _0807E1EC
	movs r1, #1
_0807E1EC:
	str r1, [r4, #0x14]
	ldr r2, _0807E1FC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E1FC: .4byte gUnk_02033280

	thumb_func_start sub_0807E200
sub_0807E200: @ 0x0807E200
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl CheckLocalFlag
	str r0, [r4, #0x14]
	ldr r2, _0807E21C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E21C: .4byte gUnk_02033280

	thumb_func_start sub_0807E220
sub_0807E220: @ 0x0807E220
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl CheckLocalFlagByOffset
	str r0, [r4, #0x14]
	ldr r2, _0807E23C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E23C: .4byte gUnk_02033280

	thumb_func_start sub_0807E240
sub_0807E240: @ 0x0807E240
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandHalfwordAfterCommandMetadata
	bl CheckGlobalFlag
	str r0, [r4, #0x14]
	ldr r2, _0807E25C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E25C: .4byte gUnk_02033280

	thumb_func_start sub_0807E260
sub_0807E260: @ 0x0807E260
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl CheckRoomFlag
	str r0, [r4, #0x14]
	ldr r2, _0807E27C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E27C: .4byte gUnk_02033280

	thumb_func_start sub_0807E280
sub_0807E280: @ 0x0807E280
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	ldrh r2, [r1, #6]
	lsrs r3, r2, #8
	movs r0, #0xff
	ands r2, r0
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl CheckPlayerInRegion
	str r0, [r4, #0x14]
	ldr r2, _0807E2A4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E2A4: .4byte gUnk_02033280

	thumb_func_start sub_0807E2A8
sub_0807E2A8: @ 0x0807E2A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r6]
	ldrh r3, [r0, #2]
	ldrb r2, [r0, #2]
	lsrs r3, r3, #8
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	ldr r4, _0807E2DC @ =gRoomControls
	ldrh r1, [r4, #6]
	subs r0, r0, r1
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	ldrh r4, [r4, #8]
	subs r1, r1, r4
	bl CheckPlayerInRegion
	str r0, [r6, #0x14]
	ldr r2, _0807E2E0 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807E2DC: .4byte gRoomControls
_0807E2E0: .4byte gUnk_02033280

	thumb_func_start sub_0807E2E4
sub_0807E2E4: @ 0x0807E2E4
	push {lr}
	adds r2, r0, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _0807E2F8
	movs r0, #0
	strb r0, [r2]
	movs r0, #1
_0807E2F8:
	str r0, [r1, #0x14]
	ldr r2, _0807E308 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E308: .4byte gUnk_02033280

	thumb_func_start sub_0807E30C
sub_0807E30C: @ 0x0807E30C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r4, #0x1a]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0807E348
	ldr r0, _0807E374 @ =gPlayerState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0807E348
	ldr r6, _0807E378 @ =gPlayerEntity
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x28
	movs r3, #0x28
	bl sub_080041A0
	cmp r0, #0
	beq _0807E348
	adds r0, r5, #0
	adds r1, r6, #0
	bl GetFacingDirection
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
_0807E348:
	ldrb r0, [r4, #0x1a]
	adds r0, #1
	strb r0, [r4, #0x1a]
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0807E37C
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	str r0, [r4, #0x14]
	ldr r1, _0807E378 @ =gPlayerEntity
	adds r0, r5, #0
	bl GetFacingDirection
	bl sub_0806F5B0
	strb r0, [r5, #0x14]
	b _0807E37E
	.align 2, 0
_0807E374: .4byte gPlayerState
_0807E378: .4byte gPlayerEntity
_0807E37C:
	str r0, [r4, #0x14]
_0807E37E:
	ldr r2, _0807E38C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807E38C: .4byte gUnk_02033280

	thumb_func_start sub_0807E390
sub_0807E390: @ 0x0807E390
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, [r2]
	ldr r1, _0807E3B4 @ =gUnk_02002A40
	adds r1, #0xc0
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0807E3A6
	movs r3, #1
_0807E3A6:
	str r3, [r2, #0x14]
	ldr r2, _0807E3B8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E3B4: .4byte gUnk_02002A40
_0807E3B8: .4byte gUnk_02033280

	thumb_func_start sub_0807E3BC
sub_0807E3BC: @ 0x0807E3BC
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, [r2]
	ldr r1, _0807E3E0 @ =gUnk_02002A40
	adds r1, #0xc2
	ldrh r0, [r0, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bhi _0807E3D2
	movs r3, #1
_0807E3D2:
	str r3, [r2, #0x14]
	ldr r2, _0807E3E4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E3E0: .4byte gUnk_02002A40
_0807E3E4: .4byte gUnk_02033280

	thumb_func_start sub_0807E3E8
sub_0807E3E8: @ 0x0807E3E8
	push {lr}
	movs r2, #0
	ldr r0, _0807E404 @ =gUnk_02000040
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0807E3F6
	movs r2, #1
_0807E3F6:
	str r2, [r1, #0x14]
	ldr r2, _0807E408 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E404: .4byte gUnk_02000040
_0807E408: .4byte gUnk_02033280

	thumb_func_start sub_0807E40C
sub_0807E40C: @ 0x0807E40C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl CheckKinstoneFused
	str r0, [r4, #0x14]
	ldr r2, _0807E428 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E428: .4byte gUnk_02033280

	thumb_func_start sub_0807E42C
sub_0807E42C: @ 0x0807E42C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r0, [r5]
	ldrh r4, [r0, #2]
	ldrh r6, [r0, #4]
	cmp r4, #0
	bne _0807E440
	ldr r0, _0807E480 @ =gRoomVars
	ldrb r4, [r0, #6]
	ldrb r6, [r0, #7]
_0807E440:
	adds r0, r4, #0
	bl sub_08053FE0
	adds r2, r0, #0
	movs r1, #0
	ldr r0, _0807E484 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r2, r0
	bgt _0807E456
	movs r1, #1
_0807E456:
	str r1, [r5, #0x14]
	cmp r1, #0
	beq _0807E474
	rsbs r0, r2, #0
	bl ModRupees
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_080A7C18
	ldr r1, _0807E480 @ =gRoomVars
	movs r0, #0
	strb r0, [r1, #6]
	strb r0, [r1, #7]
_0807E474:
	ldr r2, _0807E488 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807E480: .4byte gRoomVars
_0807E484: .4byte gUnk_02002A40
_0807E488: .4byte gUnk_02033280

	thumb_func_start sub_0807E48C
sub_0807E48C: @ 0x0807E48C
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl sub_080544DC
	str r0, [r4, #0x14]
	ldr r2, _0807E4A8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E4A8: .4byte gUnk_02033280

	thumb_func_start sub_0807E4AC
sub_0807E4AC: @ 0x0807E4AC
	ldr r0, _0807E4C4 @ =gRoomVars
	ldrb r2, [r0, #6]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	str r0, [r1, #0x14]
	ldr r2, _0807E4C8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_0807E4C4: .4byte gRoomVars
_0807E4C8: .4byte gUnk_02033280

	thumb_func_start sub_0807E4CC
sub_0807E4CC: @ 0x0807E4CC
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	ldr r2, [r1, #4]
	ands r2, r0
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	str r0, [r1, #0x14]
	ldr r2, _0807E4E8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_0807E4E8: .4byte gUnk_02033280

	thumb_func_start sub_0807E4EC
sub_0807E4EC: @ 0x0807E4EC
	push {lr}
	adds r2, r1, #0
	ldr r0, [r2]
	ldrh r1, [r0, #2]
	movs r3, #0
	ldr r0, [r2, #4]
	ands r0, r1
	cmp r1, r0
	bne _0807E500
	movs r3, #1
_0807E500:
	str r3, [r2, #0x14]
	ldr r2, _0807E510 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E510: .4byte gUnk_02033280

	thumb_func_start sub_0807E514
sub_0807E514: @ 0x0807E514
	push {lr}
	adds r2, r1, #0
	ldr r0, [r2]
	ldrh r1, [r0, #2]
	movs r3, #0
	ldr r0, [r2, #4]
	cmp r1, r0
	bne _0807E526
	movs r3, #1
_0807E526:
	str r3, [r2, #0x14]
	ldr r2, _0807E534 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E534: .4byte gUnk_02033280

	thumb_func_start sub_0807E538
sub_0807E538: @ 0x0807E538
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r1, _0807E55C @ =gPlayerState
	ldr r1, [r1, #0x30]
	ands r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [r4, #0x14]
	ldr r2, _0807E560 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807E55C: .4byte gPlayerState
_0807E560: .4byte gUnk_02033280

	thumb_func_start sub_0807E564
sub_0807E564: @ 0x0807E564
	ldr r0, _0807E57C @ =gPlayerState
	ldr r0, [r0, #0x30]
	lsrs r0, r0, #7
	movs r2, #1
	ands r0, r2
	str r0, [r1, #0x14]
	ldr r2, _0807E580 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_0807E57C: .4byte gPlayerState
_0807E580: .4byte gUnk_02033280

	thumb_func_start sub_0807E584
sub_0807E584: @ 0x0807E584
	ldr r2, [r0, #0x34]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	str r0, [r1, #0x14]
	ldr r2, _0807E59C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	bx lr
	.align 2, 0
_0807E59C: .4byte gUnk_02033280

	thumb_func_start sub_0807E5A0
sub_0807E5A0: @ 0x0807E5A0
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, [r2]
	ldr r1, _0807E5C4 @ =gPlayerEntity
	ldrh r0, [r0, #2]
	ldrb r1, [r1, #0xc]
	cmp r0, r1
	bne _0807E5B4
	movs r3, #1
_0807E5B4:
	str r3, [r2, #0x14]
	ldr r2, _0807E5C8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E5C4: .4byte gPlayerEntity
_0807E5C8: .4byte gUnk_02033280

	thumb_func_start sub_0807E5CC
sub_0807E5CC: @ 0x0807E5CC
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, [r2]
	ldr r1, _0807E5F0 @ =gPlayerEntity
	ldrh r0, [r0, #2]
	ldrb r1, [r1, #0x14]
	cmp r0, r1
	bne _0807E5E0
	movs r3, #1
_0807E5E0:
	str r3, [r2, #0x14]
	ldr r2, _0807E5F4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807E5F0: .4byte gPlayerEntity
_0807E5F4: .4byte gUnk_02033280

	thumb_func_start sub_0807E5F8
sub_0807E5F8: @ 0x0807E5F8
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r2, _0807E60C @ =gUnk_02033280
	ldr r1, [r2]
	orrs r1, r0
	str r1, [r2]
	pop {pc}
	.align 2, 0
_0807E60C: .4byte gUnk_02033280

	thumb_func_start sub_0807E610
sub_0807E610: @ 0x0807E610
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r2, _0807E624 @ =gUnk_02033280
	ldr r1, [r2]
	bics r1, r0
	str r1, [r2]
	pop {pc}
	.align 2, 0
_0807E624: .4byte gUnk_02033280

	thumb_func_start sub_0807E628
sub_0807E628: @ 0x0807E628
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl SetLocalFlag
	pop {pc}

	thumb_func_start sub_0807E634
sub_0807E634: @ 0x0807E634
	push {lr}
	ldr r1, [r1]
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl SetLocalFlagByOffset
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E644
sub_0807E644: @ 0x0807E644
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl ClearLocalFlag
	pop {pc}

	thumb_func_start sub_0807E650
sub_0807E650: @ 0x0807E650
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl SetGlobalFlag
	pop {pc}

	thumb_func_start sub_0807E65C
sub_0807E65C: @ 0x0807E65C
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl ClearGlobalFlag
	pop {pc}

	thumb_func_start sub_0807E668
sub_0807E668: @ 0x0807E668
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl SetRoomFlag
	pop {pc}

	thumb_func_start sub_0807E674
sub_0807E674: @ 0x0807E674
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl ClearRoomFlag
	pop {pc}

	thumb_func_start sub_0807E680
sub_0807E680: @ 0x0807E680
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandHalfwordAfterCommandMetadata
	strh r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807E690
sub_0807E690: @ 0x0807E690
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r2, _0807E6A8 @ =gUnk_02033280
	ldr r1, [r2]
	ands r1, r0
	cmp r1, r0
	beq _0807E6A6
	movs r0, #0
	strb r0, [r2, #6]
_0807E6A6:
	pop {pc}
	.align 2, 0
_0807E6A8: .4byte gUnk_02033280

	thumb_func_start sub_0807E6AC
sub_0807E6AC: @ 0x0807E6AC
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r3, _0807E6C8 @ =gUnk_02033280
	ldr r2, [r3]
	adds r1, r2, #0
	ands r1, r0
	cmp r1, r0
	beq _0807E6CC
	movs r0, #0
	strb r0, [r3, #6]
	b _0807E6D8
	.align 2, 0
_0807E6C8: .4byte gUnk_02033280
_0807E6CC:
	bics r2, r1
	str r2, [r3]
	ldrb r1, [r3, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r3, #7]
_0807E6D8:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E6DC
sub_0807E6DC: @ 0x0807E6DC
	push {lr}
	ldr r0, _0807E6F0 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _0807E6F8
	ldr r1, _0807E6F4 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	b _0807E6FC
	.align 2, 0
_0807E6F0: .4byte gPlayerEntity
_0807E6F4: .4byte gUnk_02033280
_0807E6F8:
	movs r0, #0x2d
	strh r0, [r1, #0x10]
_0807E6FC:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E700
sub_0807E700: @ 0x0807E700
	push {lr}
	ldr r0, _0807E718 @ =gPlayerEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #0x17
	beq _0807E720
	ldr r2, _0807E71C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807E726
	.align 2, 0
_0807E718: .4byte gPlayerEntity
_0807E71C: .4byte gUnk_02033280
_0807E720:
	ldr r1, _0807E728 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807E726:
	pop {pc}
	.align 2, 0
_0807E728: .4byte gUnk_02033280

	thumb_func_start sub_0807E72C
sub_0807E72C: @ 0x0807E72C
	push {lr}
	ldr r0, _0807E744 @ =gRoomControls
	ldrb r1, [r0, #0xf]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0807E74C
	ldr r1, _0807E748 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	b _0807E756
	.align 2, 0
_0807E744: .4byte gRoomControls
_0807E748: .4byte gUnk_02033280
_0807E74C:
	ldr r2, _0807E758 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
_0807E756:
	pop {pc}
	.align 2, 0
_0807E758: .4byte gUnk_02033280

	thumb_func_start sub_0807E75C
sub_0807E75C: @ 0x0807E75C
	push {lr}
	ldr r0, _0807E770 @ =gFadeControl
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807E76C
	ldr r1, _0807E774 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807E76C:
	pop {pc}
	.align 2, 0
_0807E770: .4byte gFadeControl
_0807E774: .4byte gUnk_02033280

	thumb_func_start sub_0807E778
sub_0807E778: @ 0x0807E778
	ldr r2, _0807E784 @ =gUnk_02033280
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_0807E784: .4byte gUnk_02033280

	thumb_func_start sub_0807E788
sub_0807E788: @ 0x0807E788
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r1, _0807E798 @ =gFadeControl
	str r0, [r1, #4]
	pop {pc}
	.align 2, 0
_0807E798: .4byte gFadeControl

	thumb_func_start sub_0807E79C
sub_0807E79C: @ 0x0807E79C
	push {lr}
	ldr r0, _0807E7A8 @ =gUnk_02033280
	ldrb r0, [r0, #8]
	bl sub_080500F4
	pop {pc}
	.align 2, 0
_0807E7A8: .4byte gUnk_02033280

	thumb_func_start nullsub_508
nullsub_508: @ 0x0807E7AC
	bx lr
	.align 2, 0

	thumb_func_start sub_0807E7B0
sub_0807E7B0: @ 0x0807E7B0
	push {lr}
	ldr r0, _0807E7C0 @ =gUnk_02033280
	ldrb r1, [r0, #8]
	movs r0, #4
	bl DoFade
	pop {pc}
	.align 2, 0
_0807E7C0: .4byte gUnk_02033280

	thumb_func_start sub_0807E7C4
sub_0807E7C4: @ 0x0807E7C4
	push {lr}
	ldr r0, _0807E7D4 @ =gUnk_02033280
	ldrb r1, [r0, #8]
	movs r0, #5
	bl DoFade
	pop {pc}
	.align 2, 0
_0807E7D4: .4byte gUnk_02033280

	thumb_func_start sub_0807E7D8
sub_0807E7D8: @ 0x0807E7D8
	push {lr}
	ldr r0, _0807E7E8 @ =gUnk_02033280
	ldrb r1, [r0, #8]
	movs r0, #6
	bl DoFade
	pop {pc}
	.align 2, 0
_0807E7E8: .4byte gUnk_02033280

	thumb_func_start sub_0807E7EC
sub_0807E7EC: @ 0x0807E7EC
	push {lr}
	ldr r0, _0807E7FC @ =gUnk_02033280
	ldrb r1, [r0, #8]
	movs r0, #7
	bl DoFade
	pop {pc}
	.align 2, 0
_0807E7FC: .4byte gUnk_02033280

	thumb_func_start sub_0807E800
sub_0807E800: @ 0x0807E800
	push {lr}
	movs r0, #0x10
	bl sub_0807E818
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E80C
sub_0807E80C: @ 0x0807E80C
	push {lr}
	movs r0, #0x11
	bl sub_0807E818
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E818
sub_0807E818: @ 0x0807E818
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0807E83C @ =gRoomControls
	ldr r3, [r2, #0x30]
	cmp r3, #0
	beq _0807E840
	movs r0, #0x2e
	ldrsh r1, [r3, r0]
	movs r4, #0xa
	ldrsh r0, [r2, r4]
	subs r4, r1, r0
	movs r0, #0x32
	ldrsh r1, [r3, r0]
	movs r3, #0xc
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	b _0807E844
	.align 2, 0
_0807E83C: .4byte gRoomControls
_0807E840:
	movs r4, #0x78
	movs r1, #0x50
_0807E844:
	ldr r0, _0807E854 @ =gUnk_02033280
	ldrb r3, [r0, #8]
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08050110
	pop {r4, r5, pc}
	.align 2, 0
_0807E854: .4byte gUnk_02033280

	thumb_func_start sub_0807E858
sub_0807E858: @ 0x0807E858
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl sub_08050038
	pop {pc}

	thumb_func_start sub_0807E864
sub_0807E864: @ 0x0807E864
	push {lr}
	ldr r0, _0807E874 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	bl sub_08078B48
	pop {pc}
	.align 2, 0
_0807E874: .4byte gPlayerState

	thumb_func_start sub_0807E878
sub_0807E878: @ 0x0807E878
	ldr r0, _0807E884 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807E884: .4byte gPlayerState

	thumb_func_start sub_0807E888
sub_0807E888: @ 0x0807E888
	ldr r0, _0807E894 @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807E894: .4byte gPlayerState

	thumb_func_start sub_0807E898
sub_0807E898: @ 0x0807E898
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	ldr r3, _0807E8C0 @ =gPlayerState
	strb r0, [r3, #0xc]
	lsrs r2, r0, #8
	adds r1, r3, #0
	adds r1, #0x38
	strb r2, [r1]
	lsrs r1, r0, #0x10
	adds r2, r3, #0
	adds r2, #0x39
	strb r1, [r2]
	lsrs r0, r0, #0x18
	adds r1, r3, #0
	adds r1, #0x3a
	strb r0, [r1]
	pop {pc}
	.align 2, 0
_0807E8C0: .4byte gPlayerState

	thumb_func_start sub_0807E8C4
sub_0807E8C4: @ 0x0807E8C4
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	bl StartPlayerScript
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807E8D4
sub_0807E8D4: @ 0x0807E8D4
	ldr r2, _0807E8E0 @ =gPlayerState
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r2, #8]
	bx lr
	.align 2, 0
_0807E8E0: .4byte gPlayerState

	thumb_func_start sub_0807E8E4
sub_0807E8E4: @ 0x0807E8E4
	ldr r0, _0807E8FC @ =gUnk_08016984
	ldrh r0, [r0]
	ldr r2, _0807E900 @ =0x000003FF
	ands r2, r0
	ldr r3, _0807E904 @ =gPlayerEntity
	ldr r0, [r1]
	ldrh r0, [r0]
	subs r0, r0, r2
	lsls r0, r0, #1
	strb r0, [r3, #0x14]
	bx lr
	.align 2, 0
_0807E8FC: .4byte gUnk_08016984
_0807E900: .4byte 0x000003FF
_0807E904: .4byte gPlayerEntity

	thumb_func_start sub_0807E908
sub_0807E908: @ 0x0807E908
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	movs r2, #0
	strb r1, [r0, #0xc]
	strb r2, [r0, #0xd]
	bx lr

	thumb_func_start sub_0807E914
sub_0807E914: @ 0x0807E914
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	bl GetNextScriptCommandWordAfterCommandMetadata
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807E924
sub_0807E924: @ 0x0807E924
	adds r0, #0x5a
	ldrb r2, [r0]
	str r2, [r1, #4]
	movs r1, #0
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0807E930
sub_0807E930: @ 0x0807E930
	push {lr}
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	adds r1, r0, #0
	adds r1, #0x80
	strh r2, [r1]
	ldrh r1, [r3, #2]
	bl InitAnimationForceUpdate
	pop {pc}

	thumb_func_start sub_0807E944
sub_0807E944: @ 0x0807E944
	push {lr}
	adds r2, r0, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _0807E968
	movs r0, #0
	strb r0, [r2]
	ldr r2, _0807E964 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807E96C
	.align 2, 0
_0807E964: .4byte gUnk_02033280
_0807E968:
	ldr r0, _0807E970 @ =gUnk_02033280
	strb r1, [r0, #6]
_0807E96C:
	pop {pc}
	.align 2, 0
_0807E970: .4byte gUnk_02033280

	thumb_func_start sub_0807E974
sub_0807E974: @ 0x0807E974
	push {lr}
	adds r2, r1, #0
	ldrb r1, [r2, #0x18]
	cmp r1, #0
	beq _0807E990
	cmp r1, #1
	beq _0807E9AE
	ldrb r0, [r2, #0x19]
	subs r0, #1
	strb r0, [r2, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0807E9C8
	b _0807E9C2
_0807E990:
	adds r3, r0, #0
	adds r3, #0x39
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	beq _0807E9C2
	strb r1, [r3]
	ldrb r0, [r2, #0x18]
	adds r0, #1
	strb r0, [r2, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	bl TextboxNoOverlapFollow
	b _0807E9C2
_0807E9AE:
	ldr r0, _0807E9CC @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0807E9C2
	movs r0, #2
	strb r0, [r2, #0x18]
	movs r0, #0xf
	strb r0, [r2, #0x19]
_0807E9C2:
	ldr r1, _0807E9D0 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807E9C8:
	pop {pc}
	.align 2, 0
_0807E9CC: .4byte gTextBox
_0807E9D0: .4byte gUnk_02033280

	thumb_func_start sub_0807E9D4
sub_0807E9D4: @ 0x0807E9D4
	push {lr}
	bl sub_08078778
	pop {pc}

	thumb_func_start sub_0807E9DC
sub_0807E9DC: @ 0x0807E9DC
	push {lr}
	bl sub_080788E0
	pop {pc}

	thumb_func_start sub_0807E9E4
sub_0807E9E4: @ 0x0807E9E4
	push {lr}
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	bl sub_08078784
	pop {pc}

	thumb_func_start sub_0807E9F0
sub_0807E9F0: @ 0x0807E9F0
	push {r4, lr}
	adds r4, r1, #0
	bl sub_0801E00C
	movs r2, #1
	ldr r0, _0807EA18 @ =gUnk_02022740
	ldrb r0, [r0]
	cmp r0, #1
	beq _0807EA24
	cmp r0, #2
	bne _0807EA40
	ldr r0, _0807EA1C @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	ldr r0, _0807EA20 @ =gUnk_02034490
	strb r2, [r0]
	str r2, [r4, #0x14]
	b _0807EA28
	.align 2, 0
_0807EA18: .4byte gUnk_02022740
_0807EA1C: .4byte gPlayerState
_0807EA20: .4byte gUnk_02034490
_0807EA24:
	movs r0, #0
	str r0, [r4, #0x14]
_0807EA28:
	cmp r2, #0
	beq _0807EA40
	bl sub_0807919C
	ldr r0, _0807EA3C @ =gPlayerState
	adds r0, #0x8b
	movs r1, #1
	strb r1, [r0]
	b _0807EA46
	.align 2, 0
_0807EA3C: .4byte gPlayerState
_0807EA40:
	ldr r1, _0807EA48 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807EA46:
	pop {r4, pc}
	.align 2, 0
_0807EA48: .4byte gUnk_02033280

	thumb_func_start sub_0807EA4C
sub_0807EA4C: @ 0x0807EA4C
	push {r4, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	adds r4, #0x39
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _0807EA7C
	adds r0, r1, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0801DFB4
	movs r0, #0
	strb r0, [r4]
	ldr r2, _0807EA78 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807EA82
	.align 2, 0
_0807EA78: .4byte gUnk_02033280
_0807EA7C:
	ldr r1, _0807EA84 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807EA82:
	pop {r4, pc}
	.align 2, 0
_0807EA84: .4byte gUnk_02033280

	thumb_func_start sub_0807EA88
sub_0807EA88: @ 0x0807EA88
	push {lr}
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	bl sub_08078790
	pop {pc}

	thumb_func_start sub_0807EA94
sub_0807EA94: @ 0x0807EA94
	push {lr}
	ldr r0, _0807EAAC @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0807EAA8
	ldr r1, _0807EAB0 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807EAA8:
	pop {pc}
	.align 2, 0
_0807EAAC: .4byte gTextBox
_0807EAB0: .4byte gUnk_02033280

	thumb_func_start sub_0807EAB4
sub_0807EAB4: @ 0x0807EAB4
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl TextboxNoOverlapFollow
	pop {pc}

	thumb_func_start sub_0807EAC0
sub_0807EAC0: @ 0x0807EAC0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	adds r1, r2, #0
	bl TextboxNoOverlap
	pop {pc}

	thumb_func_start sub_0807EAD0
sub_0807EAD0: @ 0x0807EAD0
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl TextboxNoOverlapFollow
	ldr r1, _0807EAEC @ =gTextBox
	movs r0, #1
	strb r0, [r1, #6]
	ldr r0, [r4]
	ldrh r0, [r0, #4]
	strb r0, [r1, #7]
	pop {r4, pc}
	.align 2, 0
_0807EAEC: .4byte gTextBox

	thumb_func_start sub_0807EAF0
sub_0807EAF0: @ 0x0807EAF0
	push {lr}
	ldr r0, _0807EB0C @ =gUnk_02033280
	ldrb r0, [r0, #6]
	ldr r2, [r1, #4]
	cmp r0, r2
	bls _0807EB10
	lsls r0, r2, #1
	ldr r1, [r1]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	bl TextboxNoOverlapFollow
	b _0807EB16
	.align 2, 0
_0807EB0C: .4byte gUnk_02033280
_0807EB10:
	movs r0, #0
	bl TextboxNoOverlapFollow
_0807EB16:
	pop {pc}

	thumb_func_start sub_0807EB18
sub_0807EB18: @ 0x0807EB18
	push {lr}
	adds r2, r0, #0
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807EB28
sub_0807EB28: @ 0x0807EB28
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	movs r1, #0
	bl sub_08078AA8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807EB38
sub_0807EB38: @ 0x0807EB38
	ldr r0, _0807EB40 @ =gUnk_02000040
	ldrb r0, [r0, #1]
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0807EB40: .4byte gUnk_02000040

	thumb_func_start sub_0807EB44
sub_0807EB44: @ 0x0807EB44
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	strb r1, [r0, #0x14]
	bx lr

	thumb_func_start sub_0807EB4C
sub_0807EB4C: @ 0x0807EB4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r1]
	ldrh r1, [r2, #2]
	ldr r3, _0807EB70 @ =gRoomControls
	ldrh r0, [r3, #6]
	adds r1, r1, r0
	ldrh r2, [r2, #4]
	ldrh r0, [r3, #8]
	adds r2, r2, r0
	adds r0, r4, #0
	bl sub_080045B4
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_0807EB70: .4byte gRoomControls

	thumb_func_start sub_0807EB74
sub_0807EB74: @ 0x0807EB74
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807EB88 @ =gPlayerEntity
	bl GetFacingDirection
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_0807EB88: .4byte gPlayerEntity

	thumb_func_start sub_0807EB8C
sub_0807EB8C: @ 0x0807EB8C
	push {r4, lr}
	adds r1, r0, #0
	ldr r4, _0807EBA4 @ =gPlayerEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5B0
	movs r1, #0xfe
	ands r0, r1
	strb r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
_0807EBA4: .4byte gPlayerEntity

	thumb_func_start sub_0807EBA8
sub_0807EBA8: @ 0x0807EBA8
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	strb r1, [r0, #0x15]
	bx lr

	thumb_func_start sub_0807EBB0
sub_0807EBB0: @ 0x0807EBB0
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	strb r1, [r0, #0x15]
	ldrb r1, [r0, #0x15]
	lsrs r1, r1, #2
	strb r1, [r0, #0x14]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807EBC0
sub_0807EBC0: @ 0x0807EBC0
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x24]
	bx lr

	thumb_func_start sub_0807EBC8
sub_0807EBC8: @ 0x0807EBC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	str r0, [r4, #0x20]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807EBD8
sub_0807EBD8: @ 0x0807EBD8
	push {r4, lr}
	ldr r3, _0807EBF0 @ =gRoomControls
	ldr r2, [r1]
	ldrh r1, [r2, #2]
	ldrh r4, [r3, #6]
	adds r1, r1, r4
	strh r1, [r0, #0x2e]
	ldrh r1, [r2, #4]
	ldrh r3, [r3, #8]
	adds r1, r1, r3
	strh r1, [r0, #0x32]
	pop {r4, pc}
	.align 2, 0
_0807EBF0: .4byte gRoomControls

	thumb_func_start sub_0807EBF4
sub_0807EBF4: @ 0x0807EBF4
	ldr r2, [r1]
	ldrh r1, [r2, #2]
	ldrh r3, [r0, #0x2e]
	adds r1, r1, r3
	strh r1, [r0, #0x2e]
	ldrh r1, [r2, #4]
	ldrh r2, [r0, #0x32]
	adds r1, r1, r2
	strh r1, [r0, #0x32]
	bx lr

	thumb_func_start sub_0807EC08
sub_0807EC08: @ 0x0807EC08
	push {lr}
	adds r1, r0, #0
	ldr r0, _0807EC14 @ =gPlayerEntity
	bl CopyPosition
	pop {pc}
	.align 2, 0
_0807EC14: .4byte gPlayerEntity

	thumb_func_start nullsub_509
nullsub_509: @ 0x0807EC18
	bx lr
	.align 2, 0

	thumb_func_start sub_0807EC1C
sub_0807EC1C: @ 0x0807EC1C
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0807EC3A
	movs r0, #1
	strb r0, [r2, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x12]
	ldr r0, [r2, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #8]
_0807EC3A:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0807EC44
	pop {pc}

	thumb_func_start sub_0807EC44
sub_0807EC44: @ 0x0807EC44
	push {r4, lr}
	adds r4, r1, #0
	bl sub_0806F69C
	ldrh r0, [r4, #0x12]
	subs r0, #1
	strh r0, [r4, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807EC5E
	ldr r1, _0807EC60 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807EC5E:
	pop {r4, pc}
	.align 2, 0
_0807EC60: .4byte gUnk_02033280

	thumb_func_start sub_0807EC64
sub_0807EC64: @ 0x0807EC64
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0807EC88
	movs r0, #1
	strb r0, [r2, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	movs r1, #0
	strh r0, [r2, #0x12]
	strb r1, [r3, #0x14]
	strb r1, [r3, #0x15]
	ldr r0, [r2, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #8]
_0807EC88:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0807EC44
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807EC94
sub_0807EC94: @ 0x0807EC94
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0807ECB8
	movs r0, #1
	strb r0, [r2, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x12]
	movs r1, #2
	strb r1, [r3, #0x14]
	movs r0, #8
	strb r0, [r3, #0x15]
	ldr r0, [r2, #8]
	orrs r0, r1
	str r0, [r2, #8]
_0807ECB8:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0807EC44
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807ECC4
sub_0807ECC4: @ 0x0807ECC4
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0807ECEA
	movs r0, #1
	strb r0, [r2, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x12]
	movs r0, #4
	strb r0, [r3, #0x14]
	movs r0, #0x10
	strb r0, [r3, #0x15]
	ldr r0, [r2, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #8]
_0807ECEA:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0807EC44
	pop {pc}

	thumb_func_start sub_0807ECF4
sub_0807ECF4: @ 0x0807ECF4
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0807ED1A
	movs r0, #1
	strb r0, [r2, #0x18]
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	strh r0, [r2, #0x12]
	movs r0, #6
	strb r0, [r3, #0x14]
	movs r0, #0x18
	strb r0, [r3, #0x15]
	ldr r0, [r2, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #8]
_0807ED1A:
	adds r0, r3, #0
	adds r1, r2, #0
	bl sub_0807EC44
	pop {pc}

	thumb_func_start sub_0807ED24
sub_0807ED24: @ 0x0807ED24
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldrb r0, [r6, #0x18]
	cmp r0, #0
	bne _0807ED90
	movs r0, #1
	strb r0, [r6, #0x18]
	ldr r4, [r6]
	ldrh r0, [r4, #6]
	strh r0, [r6, #0x12]
	ldrh r2, [r4, #2]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _0807ED8C @ =gRoomControls
	ldrh r1, [r5, #6]
	subs r0, r0, r1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	ldrh r1, [r6, #0x12]
	bl __divsi3
	str r0, [r6, #0x1c]
	ldrh r2, [r4, #4]
	movs r3, #0x32
	ldrsh r0, [r7, r3]
	ldrh r1, [r5, #8]
	subs r0, r0, r1
	subs r0, r2, r0
	lsls r0, r0, #0x10
	ldrh r1, [r6, #0x12]
	bl __divsi3
	str r0, [r6, #0x20]
	ldrh r1, [r4, #2]
	ldrh r0, [r5, #6]
	adds r1, r1, r0
	ldrh r2, [r4, #4]
	ldrh r0, [r5, #8]
	adds r2, r2, r0
	adds r0, r7, #0
	bl sub_080045B4
	bl sub_0806F5B0
	strb r0, [r7, #0x14]
	ldr r0, [r6, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r6, #8]
	b _0807EDC8
	.align 2, 0
_0807ED8C: .4byte gRoomControls
_0807ED90:
	ldrh r0, [r6, #0x12]
	subs r0, #1
	strh r0, [r6, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0807EDB8
	ldr r2, [r6]
	ldr r1, _0807EDB4 @ =gRoomControls
	ldrh r0, [r1, #6]
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r7, #0x2e]
	ldrh r0, [r1, #8]
	ldrh r2, [r2, #4]
	adds r0, r0, r2
	strh r0, [r7, #0x32]
	b _0807EDCE
	.align 2, 0
_0807EDB4: .4byte gRoomControls
_0807EDB8:
	ldr r0, [r7, #0x2c]
	ldr r1, [r6, #0x1c]
	adds r0, r0, r1
	str r0, [r7, #0x2c]
	ldr r0, [r7, #0x30]
	ldr r1, [r6, #0x20]
	adds r0, r0, r1
	str r0, [r7, #0x30]
_0807EDC8:
	ldr r1, _0807EDD0 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807EDCE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807EDD0: .4byte gUnk_02033280

	thumb_func_start sub_0807EDD4
sub_0807EDD4: @ 0x0807EDD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0807EDEA
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	bl sub_0807EE04
_0807EDEA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0807EE30
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0807EDFC
	ldr r0, _0807EE00 @ =gUnk_02033280
	strb r1, [r0, #6]
_0807EDFC:
	pop {r4, r5, pc}
	.align 2, 0
_0807EE00: .4byte gUnk_02033280

	thumb_func_start sub_0807EE04
sub_0807EE04: @ 0x0807EE04
	push {r4, r5, lr}
	ldr r5, [r1]
	ldrh r2, [r5, #2]
	ldr r4, _0807EE28 @ =gRoomControls
	ldrh r3, [r4, #6]
	adds r2, r2, r3
	ldrh r3, [r5, #4]
	ldrh r4, [r4, #8]
	adds r3, r3, r4
	bl sub_0807DEDC
	ldr r2, _0807EE2C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, pc}
	.align 2, 0
_0807EE28: .4byte gRoomControls
_0807EE2C: .4byte gUnk_02033280

	thumb_func_start sub_0807EE30
sub_0807EE30: @ 0x0807EE30
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x19]
	subs r0, #1
	strb r0, [r5, #0x19]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0807EE60
	movs r0, #8
	strb r0, [r5, #0x19]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	subs r0, r0, r1
	movs r3, #0x22
	ldrsh r1, [r5, r3]
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	subs r1, r1, r2
	bl sub_080045DA
	strb r0, [r6, #0x15]
_0807EE60:
	movs r0, #0x2e
	ldrsh r4, [r6, r0]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	subs r4, r4, r0
	movs r2, #0x32
	ldrsh r1, [r6, r2]
	movs r3, #0x22
	ldrsh r0, [r5, r3]
	subs r7, r1, r0
	movs r0, #0x24
	ldrsh r1, [r6, r0]
	ldrb r2, [r6, #0x15]
	adds r0, r6, #0
	bl sub_0806F62C
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	muls r4, r0, r4
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	movs r2, #0x22
	ldrsh r1, [r5, r2]
	subs r0, r0, r1
	muls r7, r0, r7
	cmp r4, #0
	bgt _0807EEAC
	cmp r7, #0
	bgt _0807EEAC
	ldrh r0, [r5, #0x1e]
	strh r0, [r6, #0x2e]
	ldrh r0, [r5, #0x22]
	strh r0, [r6, #0x32]
	movs r0, #1
	b _0807EEAE
_0807EEAC:
	movs r0, #0
_0807EEAE:
	str r0, [r5, #0x14]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_0807EEB4
sub_0807EEB4: @ 0x0807EEB4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0807EED6
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, _0807EEEC @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r2, [r0, r1]
	movs r1, #0x32
	ldrsh r3, [r0, r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0807DEDC
_0807EED6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0807EE30
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0807EEE8
	ldr r0, _0807EEF0 @ =gUnk_02033280
	strb r1, [r0, #6]
_0807EEE8:
	pop {r4, r5, pc}
	.align 2, 0
_0807EEEC: .4byte gPlayerEntity
_0807EEF0: .4byte gUnk_02033280

	thumb_func_start sub_0807EEF4
sub_0807EEF4: @ 0x0807EEF4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0807EF22
	movs r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r1, [r4]
	movs r3, #2
	ldrsh r0, [r1, r3]
	adds r2, r2, r0
	movs r6, #0x32
	ldrsh r3, [r5, r6]
	movs r6, #4
	ldrsh r0, [r1, r6]
	adds r3, r3, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0807DEDC
_0807EF22:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0807EE30
	ldr r1, [r4, #0x14]
	cmp r1, #0
	bne _0807EF34
	ldr r0, _0807EF38 @ =gUnk_02033280
	strb r1, [r0, #6]
_0807EF34:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807EF38: .4byte gUnk_02033280

	thumb_func_start sub_0807EF3C
sub_0807EF3C: @ 0x0807EF3C
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _0807EF66
	movs r0, #1
	strb r0, [r2, #0x18]
	ldr r1, [r2]
	movs r4, #2
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	str r0, [r3, #0x20]
	ldrh r0, [r1, #4]
	lsls r0, r0, #8
	strh r0, [r2, #0x1c]
	ldrh r1, [r2, #0x1c]
	adds r0, r3, #0
	bl sub_08003FC4
	b _0807EF72
_0807EF66:
	ldrh r1, [r2, #0x1c]
	adds r0, r3, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _0807EF78
_0807EF72:
	ldr r1, _0807EF7C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807EF78:
	pop {r4, pc}
	.align 2, 0
_0807EF7C: .4byte gUnk_02033280

	thumb_func_start sub_0807EF80
sub_0807EF80: @ 0x0807EF80
	ldr r0, [r1]
	movs r2, #1
	ldrh r0, [r0, #2]
	lsls r2, r0
	ldr r0, [r1, #8]
	orrs r0, r2
	str r0, [r1, #8]
	bx lr

	thumb_func_start sub_0807EF90
sub_0807EF90: @ 0x0807EF90
	ldr r0, [r1]
	movs r2, #1
	ldrh r0, [r0, #2]
	lsls r2, r0
	ldr r0, [r1, #8]
	orrs r0, r2
	str r0, [r1, #8]
	bx lr

	thumb_func_start sub_0807EFA0
sub_0807EFA0: @ 0x0807EFA0
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl PlaySFX
	pop {pc}

	thumb_func_start sub_0807EFAC
sub_0807EFAC: @ 0x0807EFAC
	push {lr}
	ldr r1, [r1]
	ldrh r0, [r1, #2]
	cmp r0, #0x63
	bls _0807EFCC
	ldr r0, _0807EFC8 @ =gArea
	movs r1, #0x86
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bl PlaySFX
	b _0807EFD2
	.align 2, 0
_0807EFC8: .4byte gArea
_0807EFCC:
	ldrh r0, [r1, #2]
	bl PlaySFX
_0807EFD2:
	pop {pc}

	thumb_func_start sub_0807EFD4
sub_0807EFD4: @ 0x0807EFD4
	push {lr}
	ldr r0, [r1]
	bl GetNextScriptCommandWordAfterCommandMetadata
	bl PlaySFX
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807EFE4
sub_0807EFE4: @ 0x0807EFE4
	push {lr}
	ldr r0, _0807EFF0 @ =0x80100000
	bl PlaySFX
	pop {pc}
	.align 2, 0
_0807EFF0: .4byte 0x80100000

	thumb_func_start sub_0807EFF4
sub_0807EFF4: @ 0x0807EFF4
	push {lr}
	ldr r0, [r1]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl ModRupees
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F004
sub_0807F004: @ 0x0807F004
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	bl ModHealth
	pop {pc}

	thumb_func_start sub_0807F010
sub_0807F010: @ 0x0807F010
	push {lr}
	ldr r3, _0807F030 @ =gUnk_02002A40
	adds r2, r3, #0
	adds r2, #0xab
	ldrb r0, [r2]
	adds r1, r0, #0
	adds r1, #8
	cmp r1, #0xa0
	ble _0807F024
	movs r1, #0xa0
_0807F024:
	strb r1, [r2]
	adds r0, r3, #0
	adds r0, #0xaa
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_0807F030: .4byte gUnk_02002A40

	thumb_func_start sub_0807F034
sub_0807F034: @ 0x0807F034
	push {lr}
	movs r3, #0
	ldr r2, [r1]
	ldrh r0, [r2, #2]
	cmp r0, #0x3f
	bne _0807F042
	ldr r3, [r1, #4]
_0807F042:
	ldrh r0, [r2, #2]
	adds r1, r3, #0
	movs r2, #0
	bl sub_080A7C18
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F050
sub_0807F050: @ 0x0807F050
	push {lr}
	ldr r0, [r1]
	ldrh r1, [r0, #2]
	movs r0, #0x5c
	movs r2, #0
	bl sub_080A7C18
	pop {pc}

	thumb_func_start sub_0807F060
sub_0807F060: @ 0x0807F060
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	bl GetInventoryValue
	str r0, [r4, #4]
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [r4, #0x14]
	pop {r4, pc}

	thumb_func_start sub_0807F078
sub_0807F078: @ 0x0807F078
	push {lr}
	ldr r1, [r1]
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_0807CAA0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F088
sub_0807F088: @ 0x0807F088
	push {lr}
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	movs r1, #0
	movs r2, #3
	bl sub_080A7C18
	pop {pc}

	thumb_func_start sub_0807F098
sub_0807F098: @ 0x0807F098
	ldr r1, _0807F0A0 @ =gRoomControls
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0807F0A0: .4byte gRoomControls

	thumb_func_start sub_0807F0A4
sub_0807F0A4: @ 0x0807F0A4
	ldr r1, _0807F0AC @ =gRoomControls
	ldr r0, _0807F0B0 @ =gPlayerEntity
	str r0, [r1, #0x30]
	bx lr
	.align 2, 0
_0807F0AC: .4byte gRoomControls
_0807F0B0: .4byte gPlayerEntity

	thumb_func_start sub_0807F0B4
sub_0807F0B4: @ 0x0807F0B4
	ldr r2, _0807F0C4 @ =gRoomControls
	ldr r0, [r1]
	ldrb r1, [r0, #2]
	movs r0, #7
	ands r0, r1
	strb r0, [r2, #0xe]
	bx lr
	.align 2, 0
_0807F0C4: .4byte gRoomControls

	thumb_func_start sub_0807F0C8
sub_0807F0C8: @ 0x0807F0C8
	push {lr}
	ldr r1, [r1]
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_08080964
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F0D8
sub_0807F0D8: @ 0x0807F0D8
	ldr r0, _0807F0E8 @ =gUnk_03000FF0
	ldrh r2, [r0, #2]
	rsbs r0, r2, #0
	orrs r0, r2
	lsrs r0, r0, #0x1f
	str r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0807F0E8: .4byte gUnk_03000FF0

	thumb_func_start sub_0807F0EC
sub_0807F0EC: @ 0x0807F0EC
	push {r4, lr}
	adds r4, r1, #0
	bl Random
	ldr r1, [r4, #4]
	bl __modsi3
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807F100
sub_0807F100: @ 0x0807F100
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	movs r2, #6
	adds r1, r0, #0
	ands r1, r2
	strb r1, [r4, #0x14]
	ldr r2, _0807F124 @ =gUnk_0811E750
	lsrs r0, r0, #8
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_0807F124: .4byte gUnk_0811E750

	thumb_func_start sub_0807F128
sub_0807F128: @ 0x0807F128
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl Random
	ldr r2, _0807F150 @ =gUnk_0811E758
	movs r3, #7
	adds r1, r0, #0
	ands r1, r3
	adds r1, r1, r2
	ldrb r1, [r1]
	strb r1, [r4, #0x14]
	ldr r1, _0807F154 @ =gUnk_0811E760
	lsrs r0, r0, #8
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r5, #0x1a]
	pop {r4, r5, pc}
	.align 2, 0
_0807F150: .4byte gUnk_0811E758
_0807F154: .4byte gUnk_0811E760

	thumb_func_start sub_0807F158
sub_0807F158: @ 0x0807F158
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #1
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}

	thumb_func_start sub_0807F168
sub_0807F168: @ 0x0807F168
	push {lr}
	ldr r0, _0807F17C @ =gPlayerEntity
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #1
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}
	.align 2, 0
_0807F17C: .4byte gPlayerEntity

	thumb_func_start sub_0807F180
sub_0807F180: @ 0x0807F180
	push {lr}
	adds r2, r0, #0
	adds r2, #0x38
	movs r1, #2
	strb r1, [r2]
	bl UpdateSpriteForCollisionLayer
	pop {pc}

	thumb_func_start sub_0807F190
sub_0807F190: @ 0x0807F190
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #4
	bl DoFade
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F1A0
sub_0807F1A0: @ 0x0807F1A0
	push {r4, lr}
	ldr r3, _0807F1BC @ =gPlayerEntity
	movs r4, #0x2e
	ldrsh r2, [r3, r4]
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	bl sub_0807DEDC
	ldr r2, _0807F1C0 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807F1BC: .4byte gPlayerEntity
_0807F1C0: .4byte gUnk_02033280

	thumb_func_start sub_0807F1C4
sub_0807F1C4: @ 0x0807F1C4
	push {lr}
	ldr r2, _0807F1D8 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807F1E0
	ldr r0, _0807F1DC @ =0x00000459
	b _0807F1E4
	.align 2, 0
_0807F1D8: .4byte gPlayerState
_0807F1DC: .4byte 0x00000459
_0807F1E0:
	movs r0, #0xde
	lsls r0, r0, #1
_0807F1E4:
	strh r0, [r2, #8]
	pop {pc}

	thumb_func_start sub_0807F1E8
sub_0807F1E8: @ 0x0807F1E8
	push {lr}
	ldr r2, _0807F1FC @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807F204
	ldr r0, _0807F200 @ =0x0000045A
	b _0807F206
	.align 2, 0
_0807F1FC: .4byte gPlayerState
_0807F200: .4byte 0x0000045A
_0807F204:
	ldr r0, _0807F20C @ =0x000002BD
_0807F206:
	strh r0, [r2, #8]
	pop {pc}
	.align 2, 0
_0807F20C: .4byte 0x000002BD

	thumb_func_start sub_0807F210
sub_0807F210: @ 0x0807F210
	push {lr}
	ldr r2, _0807F224 @ =gPlayerState
	ldr r0, [r2, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0807F22C
	ldr r0, _0807F228 @ =0x0000041C
	b _0807F22E
	.align 2, 0
_0807F224: .4byte gPlayerState
_0807F228: .4byte 0x0000041C
_0807F22C:
	ldr r0, _0807F234 @ =0x0000080C
_0807F22E:
	strh r0, [r2, #8]
	pop {pc}
	.align 2, 0
_0807F234: .4byte 0x0000080C

	thumb_func_start sub_0807F238
sub_0807F238: @ 0x0807F238
	ldr r2, _0807F240 @ =gPlayerState
	ldr r0, [r1, #4]
	strh r0, [r2, #8]
	bx lr
	.align 2, 0
_0807F240: .4byte gPlayerState

	thumb_func_start sub_0807F244
sub_0807F244: @ 0x0807F244
	push {r4, r5, lr}
	ldr r0, [r1, #4]
	ldr r4, _0807F298 @ =0x0000FFFF
	lsrs r5, r0, #0x10
	ands r4, r0
	cmp r4, #1
	blo _0807F28C
	cmp r4, #4
	bls _0807F25A
	cmp r4, #6
	bne _0807F28C
_0807F25A:
	movs r4, #1
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F268
	movs r4, #2
_0807F268:
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F274
	movs r4, #3
_0807F274:
	movs r0, #4
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F280
	movs r4, #4
_0807F280:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _0807F28C
	movs r4, #6
_0807F28C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ForceEquipItem
	pop {r4, r5, pc}
	.align 2, 0
_0807F298: .4byte 0x0000FFFF

	thumb_func_start sub_0807F29C
sub_0807F29C: @ 0x0807F29C
	push {lr}
	ldr r0, [r1, #4]
	bl sub_0805ED14
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F2A8
sub_0807F2A8: @ 0x0807F2A8
	push {lr}
	ldr r0, _0807F2C0 @ =gPlayerState
	adds r0, #0x9c
	ldr r0, [r0]
	cmp r0, #0
	bne _0807F2C8
	ldr r2, _0807F2C4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F2CE
	.align 2, 0
_0807F2C0: .4byte gPlayerState
_0807F2C4: .4byte gUnk_02033280
_0807F2C8:
	ldr r1, _0807F2D0 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807F2CE:
	pop {pc}
	.align 2, 0
_0807F2D0: .4byte gUnk_02033280

	thumb_func_start sub_0807F2D4
sub_0807F2D4: @ 0x0807F2D4
	push {lr}
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0807F2F8
	ldr r2, _0807F2F4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F2FC
	.align 2, 0
_0807F2F4: .4byte gUnk_02033280
_0807F2F8:
	ldr r0, _0807F300 @ =gUnk_02033280
	strb r1, [r0, #6]
_0807F2FC:
	pop {pc}
	.align 2, 0
_0807F300: .4byte gUnk_02033280

	thumb_func_start sub_0807F304
sub_0807F304: @ 0x0807F304
	push {lr}
	ldr r0, _0807F324 @ =gPlayerEntity
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0807F32C
	ldr r2, _0807F328 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F330
	.align 2, 0
_0807F324: .4byte gPlayerEntity
_0807F328: .4byte gUnk_02033280
_0807F32C:
	ldr r0, _0807F334 @ =gUnk_02033280
	strb r1, [r0, #6]
_0807F330:
	pop {pc}
	.align 2, 0
_0807F334: .4byte gUnk_02033280

	thumb_func_start sub_0807F338
sub_0807F338: @ 0x0807F338
	movs r1, #0
	str r1, [r0, #0x48]
	ldrb r2, [r0, #0x17]
	movs r1, #0xfe
	ands r1, r2
	strb r1, [r0, #0x17]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807F348
sub_0807F348: @ 0x0807F348
	push {lr}
	movs r1, #2
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F354
sub_0807F354: @ 0x0807F354
	push {lr}
	movs r1, #6
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F360
sub_0807F360: @ 0x0807F360
	push {lr}
	movs r1, #3
	bl sub_0805E3A0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F36C
sub_0807F36C: @ 0x0807F36C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x41
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _0807F3C2
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r3, _0807F3C4 @ =0xFFF80000
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl PositionRelative
	bl Random
	movs r5, #1
	ands r0, r5
	cmp r0, #0
	beq _0807F3B0
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x18]
_0807F3B0:
	bl Random
	ands r0, r5
	cmp r0, #0
	beq _0807F3C2
	ldrb r0, [r4, #0x18]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #0x18]
_0807F3C2:
	pop {r4, r5, pc}
	.align 2, 0
_0807F3C4: .4byte 0xFFF80000

	thumb_func_start sub_0807F3C8
sub_0807F3C8: @ 0x0807F3C8
	push {lr}
	bl sub_0807F36C
	movs r0, #0xe5
	bl PlaySFX
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F3D8
sub_0807F3D8: @ 0x0807F3D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	ldr r1, [r1, #4]
	adds r1, r1, r0
	adds r0, r4, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	adds r4, #0x80
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807F3F8
sub_0807F3F8: @ 0x0807F3F8
	push {lr}
	ldr r0, _0807F408 @ =gPlayerEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl CreateSpeechBubbleExclamationMark
	pop {pc}
	.align 2, 0
_0807F408: .4byte gPlayerEntity

	thumb_func_start sub_0807F40C
sub_0807F40C: @ 0x0807F40C
	push {lr}
	ldr r0, _0807F41C @ =gPlayerEntity
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r1, #8
	bl CreateSpeechBubbleQuestionMark
	pop {pc}
	.align 2, 0
_0807F41C: .4byte gPlayerEntity

	thumb_func_start sub_0807F420
sub_0807F420: @ 0x0807F420
	push {lr}
	ldr r2, [r1, #4]
	ldrb r0, [r1, #4]
	lsrs r2, r2, #8
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	bl MenuFadeIn
	pop {pc}

	thumb_func_start sub_0807F434
sub_0807F434: @ 0x0807F434
	push {lr}
	adds r3, r0, #0
	adds r3, #0x39
	movs r2, #0
	ldrsb r2, [r3, r2]
	cmp r2, #1
	beq _0807F44C
	cmp r2, #2
	beq _0807F44C
	movs r0, #0
	str r0, [r1, #4]
	b _0807F452
_0807F44C:
	movs r0, #0
	strb r0, [r3]
	str r2, [r1, #4]
_0807F452:
	ldr r2, _0807F460 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F460: .4byte gUnk_02033280

	thumb_func_start sub_0807F464
sub_0807F464: @ 0x0807F464
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0807F4BC
	adds r0, #1
	movs r3, #0
	strb r0, [r5, #0x18]
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, [r5, #4]
	ldr r1, _0807F4A8 @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, r0, r2
	strh r0, [r5, #0x1e]
	ldrh r0, [r4, #0x32]
	strh r0, [r5, #0x22]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	cmp r2, r0
	ble _0807F4AC
	movs r0, #0x40
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	ands r0, r1
	movs r1, #2
	b _0807F4B8
	.align 2, 0
_0807F4A8: .4byte gRoomControls
_0807F4AC:
	movs r0, #0xc0
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	ands r0, r1
	movs r1, #6
_0807F4B8:
	orrs r0, r1
	strb r0, [r4, #0x14]
_0807F4BC:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	movs r6, #0x2e
	ldrsh r0, [r4, r6]
	subs r1, r1, r0
	ldrb r2, [r4, #0x15]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	eors r1, r0
	cmp r1, #0
	bge _0807F4EA
	ldrh r0, [r5, #0x1e]
	strh r0, [r4, #0x2e]
	b _0807F4F0
_0807F4EA:
	ldr r1, _0807F4F4 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807F4F0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807F4F4: .4byte gUnk_02033280

	thumb_func_start sub_0807F4F8
sub_0807F4F8: @ 0x0807F4F8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _0807F548
	adds r0, #1
	strb r0, [r5, #0x18]
	ldr r0, [r5, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, [r5, #4]
	ldrh r0, [r4, #0x2e]
	strh r0, [r5, #0x1e]
	ldr r1, _0807F538 @ =gRoomControls
	ldrh r0, [r1, #8]
	adds r0, r0, r2
	strh r0, [r5, #0x22]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	cmp r2, r0
	ble _0807F53C
	movs r0, #0x80
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	b _0807F546
	.align 2, 0
_0807F538: .4byte gRoomControls
_0807F53C:
	movs r0, #0
	strb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	movs r0, #0x80
	ands r0, r1
_0807F546:
	strb r0, [r4, #0x14]
_0807F548:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	movs r2, #0x22
	ldrsh r1, [r5, r2]
	movs r3, #0x32
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	ldrb r2, [r4, #0x15]
	movs r0, #0x80
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x18
	eors r1, r0
	cmp r1, #0
	blt _0807F576
	ldrh r0, [r5, #0x22]
	strh r0, [r4, #0x32]
	b _0807F57C
_0807F576:
	ldr r1, _0807F580 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807F57C:
	pop {r4, r5, pc}
	.align 2, 0
_0807F580: .4byte gUnk_02033280

	thumb_func_start sub_0807F584
sub_0807F584: @ 0x0807F584
	ldr r0, _0807F590 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsrs r0, r0, #1
	str r0, [r1, #4]
	bx lr
	.align 2, 0
_0807F590: .4byte gPlayerEntity

	thumb_func_start sub_0807F594
sub_0807F594: @ 0x0807F594
	push {lr}
	ldr r0, _0807F5A8 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807F5A6
	ldr r1, _0807F5AC @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807F5A6:
	pop {pc}
	.align 2, 0
_0807F5A8: .4byte gPlayerState
_0807F5AC: .4byte gUnk_02033280

	thumb_func_start sub_0807F5B0
sub_0807F5B0: @ 0x0807F5B0
	ldr r0, _0807F5BC @ =gPlayerState
	ldr r1, [r1, #4]
	adds r0, #0x27
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807F5BC: .4byte gPlayerState

	thumb_func_start sub_0807F5C0
sub_0807F5C0: @ 0x0807F5C0
	push {r4, lr}
	ldr r4, _0807F620 @ =gRoomControls
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0807F62E
	movs r2, #0x2e
	ldrsh r0, [r1, r2]
	adds r2, r0, #0
	subs r2, #0x78
	movs r3, #0x32
	ldrsh r0, [r1, r3]
	adds r3, r0, #0
	subs r3, #0x50
	ldrh r1, [r4, #6]
	cmp r2, r1
	bge _0807F5E2
	adds r2, r1, #0
_0807F5E2:
	ldrh r0, [r4, #0x1e]
	adds r0, r1, r0
	subs r0, #0xf0
	cmp r2, r0
	ble _0807F5EE
	adds r2, r0, #0
_0807F5EE:
	ldrh r1, [r4, #8]
	cmp r3, r1
	bge _0807F5F6
	adds r3, r1, #0
_0807F5F6:
	ldrh r0, [r4, #0x20]
	adds r0, r1, r0
	subs r0, #0xa0
	cmp r3, r0
	ble _0807F602
	adds r3, r0, #0
_0807F602:
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bne _0807F628
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r3, r0
	bne _0807F628
	ldr r2, _0807F624 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	b _0807F62E
	.align 2, 0
_0807F620: .4byte gRoomControls
_0807F624: .4byte gUnk_02033280
_0807F628:
	ldr r1, _0807F630 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807F62E:
	pop {r4, pc}
	.align 2, 0
_0807F630: .4byte gUnk_02033280

	thumb_func_start sub_0807F634
sub_0807F634: @ 0x0807F634
	push {lr}
	ldr r3, [r1, #4]
	ldrh r1, [r3]
	ldrh r2, [r3, #2]
	ldrh r3, [r3, #4]
	bl sub_0801DFB4
	ldr r0, _0807F64C @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	pop {pc}
	.align 2, 0
_0807F64C: .4byte gPlayerState

	thumb_func_start sub_0807F650
sub_0807F650: @ 0x0807F650
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08002632
	ldr r1, _0807F678 @ =gUnk_08001A7C
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r1, [r0]
	ldrh r2, [r0, #2]
	ldrh r3, [r0, #4]
	adds r0, r4, #0
	bl sub_0801DFB4
	ldr r0, _0807F67C @ =gPlayerState
	adds r0, #0x8b
	movs r1, #3
	strb r1, [r0]
	pop {r4, pc}
	.align 2, 0
_0807F678: .4byte gUnk_08001A7C
_0807F67C: .4byte gPlayerState

	thumb_func_start sub_0807F680
sub_0807F680: @ 0x0807F680
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, _0807F6A8 @ =gPlayerEntity
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	ldr r1, _0807F6AC @ =gRoomControls
	ldrh r1, [r1, #6]
	subs r0, r0, r1
	ldrh r1, [r2, #4]
	cmp r0, r1
	ble _0807F69A
	movs r3, #1
_0807F69A:
	str r3, [r2, #0x14]
	ldr r2, _0807F6B0 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F6A8: .4byte gPlayerEntity
_0807F6AC: .4byte gRoomControls
_0807F6B0: .4byte gUnk_02033280

	thumb_func_start sub_0807F6B4
sub_0807F6B4: @ 0x0807F6B4
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r0, _0807F6DC @ =gPlayerEntity
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	ldr r1, _0807F6E0 @ =gRoomControls
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	ldrh r1, [r2, #4]
	cmp r0, r1
	ble _0807F6CE
	movs r3, #1
_0807F6CE:
	str r3, [r2, #0x14]
	ldr r2, _0807F6E4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F6DC: .4byte gPlayerEntity
_0807F6E0: .4byte gRoomControls
_0807F6E4: .4byte gUnk_02033280

	thumb_func_start sub_0807F6E8
sub_0807F6E8: @ 0x0807F6E8
	ldr r2, _0807F6F4 @ =gPlayerState
	ldr r0, [r2, #0x30]
	ldr r1, [r1, #4]
	orrs r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0807F6F4: .4byte gPlayerState

	thumb_func_start sub_0807F6F8
sub_0807F6F8: @ 0x0807F6F8
	ldr r2, _0807F704 @ =gPlayerState
	ldr r1, [r1, #4]
	ldr r0, [r2, #0x30]
	bics r0, r1
	str r0, [r2, #0x30]
	bx lr
	.align 2, 0
_0807F704: .4byte gPlayerState

	thumb_func_start sub_0807F708
sub_0807F708: @ 0x0807F708
	push {lr}
	ldr r1, [r1, #4]
	bl ShowNPCDialogue
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F714
sub_0807F714: @ 0x0807F714
	push {lr}
	adds r1, r0, #0
	ldr r2, _0807F734 @ =gUnk_08114F30
	ldrb r3, [r1, #0x19]
	lsrs r0, r3, #6
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #6
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x19]
	adds r0, r1, #0
	bl ResolveEntityOnTop
	pop {pc}
	.align 2, 0
_0807F734: .4byte gUnk_08114F30

	thumb_func_start sub_0807F738
sub_0807F738: @ 0x0807F738
	push {lr}
	adds r1, r0, #0
	ldr r2, _0807F758 @ =gUnk_08114F34
	ldrb r3, [r1, #0x19]
	lsrs r0, r3, #6
	adds r0, r0, r2
	ldrb r2, [r0]
	lsls r2, r2, #6
	movs r0, #0x3f
	ands r0, r3
	orrs r0, r2
	strb r0, [r1, #0x19]
	adds r0, r1, #0
	bl sub_0806FAD8
	pop {pc}
	.align 2, 0
_0807F758: .4byte gUnk_08114F34

	thumb_func_start sub_0807F75C
sub_0807F75C: @ 0x0807F75C
	push {r4, lr}
	ldr r2, [r1, #4]
	ldr r3, _0807F774 @ =gPlayerEntity
	ldr r1, _0807F778 @ =gRoomControls
	asrs r0, r2, #0x10
	ldrh r4, [r1, #6]
	adds r0, r0, r4
	strh r0, [r3, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, r0, r2
	strh r0, [r3, #0x32]
	pop {r4, pc}
	.align 2, 0
_0807F774: .4byte gPlayerEntity
_0807F778: .4byte gRoomControls

	thumb_func_start sub_0807F77C
sub_0807F77C: @ 0x0807F77C
	push {lr}
	ldr r0, [r1, #0x14]
	cmp r0, #0
	beq _0807F786
	movs r0, #1
_0807F786:
	str r0, [r1, #4]
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F78C
sub_0807F78C: @ 0x0807F78C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, [r1, #4]
	cmp r5, #0
	bne _0807F79A
	ldr r0, _0807F7BC @ =gRoomVars
	ldrb r5, [r0, #6]
_0807F79A:
	adds r0, r5, #0
	bl GetSaleItemConfirmMessageID
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08053FE0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl TextboxNoOverlap
	ldr r0, _0807F7C0 @ =gTextBox
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [r0, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807F7BC: .4byte gRoomVars
_0807F7C0: .4byte gTextBox

	thumb_func_start sub_0807F7C4
sub_0807F7C4: @ 0x0807F7C4
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0807F7D2
	ldr r0, _0807F7F4 @ =gRoomVars
	ldrb r0, [r0, #6]
_0807F7D2:
	bl sub_08053FE0
	movs r2, #0
	ldr r1, _0807F7F8 @ =gUnk_02002A40
	adds r1, #0xc0
	ldrh r1, [r1]
	cmp r0, r1
	bgt _0807F7E4
	movs r2, #1
_0807F7E4:
	str r2, [r4, #0x14]
	ldr r2, _0807F7FC @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807F7F4: .4byte gRoomVars
_0807F7F8: .4byte gUnk_02002A40
_0807F7FC: .4byte gUnk_02033280

	thumb_func_start sub_0807F800
sub_0807F800: @ 0x0807F800
	push {r4, lr}
	ldr r4, [r1, #4]
	cmp r4, #0
	bne _0807F80C
	ldr r0, _0807F834 @ =gRoomVars
	ldrb r4, [r0, #6]
_0807F80C:
	adds r0, r4, #0
	bl sub_08053FE0
	rsbs r0, r0, #0
	bl ModRupees
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080A7C18
	ldr r1, _0807F834 @ =gRoomVars
	movs r0, #0
	strb r0, [r1, #6]
	ldr r2, _0807F838 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, pc}
	.align 2, 0
_0807F834: .4byte gRoomVars
_0807F838: .4byte gUnk_02033280

	thumb_func_start sub_0807F83C
sub_0807F83C: @ 0x0807F83C
	push {lr}
	bl sub_08079184
	pop {pc}

	thumb_func_start sub_0807F844
sub_0807F844: @ 0x0807F844
	push {lr}
	ldr r1, _0807F850 @ =gRoomControls
	str r0, [r1, #0x30]
	bl sub_080809D4
	pop {pc}
	.align 2, 0
_0807F850: .4byte gRoomControls

	thumb_func_start sub_0807F854
sub_0807F854: @ 0x0807F854
	push {lr}
	ldr r1, [r1, #4]
	lsrs r2, r1, #0x10
	movs r0, #3
	ands r2, r0
	ldr r3, _0807F870 @ =0x0000FFFF
	ands r3, r1
	cmp r2, #4
	bhi _0807F8B4
	lsls r0, r2, #2
	ldr r1, _0807F874 @ =_0807F878
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F870: .4byte 0x0000FFFF
_0807F874: .4byte _0807F878
_0807F878: @ jump table
	.4byte _0807F88C @ case 0
	.4byte _0807F88C @ case 1
	.4byte _0807F898 @ case 2
	.4byte _0807F8A4 @ case 3
	.4byte _0807F8B0 @ case 4
_0807F88C:
	ldr r0, _0807F894 @ =gTextBox
	str r3, [r0, #0x10]
	b _0807F8B4
	.align 2, 0
_0807F894: .4byte gTextBox
_0807F898:
	ldr r0, _0807F8A0 @ =gTextBox
	str r3, [r0, #0x14]
	b _0807F8B4
	.align 2, 0
_0807F8A0: .4byte gTextBox
_0807F8A4:
	ldr r0, _0807F8AC @ =gTextBox
	str r3, [r0, #0x18]
	b _0807F8B4
	.align 2, 0
_0807F8AC: .4byte gTextBox
_0807F8B0:
	ldr r0, _0807F8B8 @ =gTextBox
	str r3, [r0, #0x1c]
_0807F8B4:
	pop {pc}
	.align 2, 0
_0807F8B8: .4byte gTextBox

	thumb_func_start sub_0807F8BC
sub_0807F8BC: @ 0x0807F8BC
	push {r4, lr}
	adds r4, r1, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0807F8CA
	movs r0, #1
_0807F8CA:
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0807F8D0
sub_0807F8D0: @ 0x0807F8D0
	push {lr}
	ldr r1, [r1, #4]
	bl sub_08003FC4
	ldr r2, _0807F8E4 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {pc}
	.align 2, 0
_0807F8E4: .4byte gUnk_02033280

	thumb_func_start sub_0807F8E8
sub_0807F8E8: @ 0x0807F8E8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa6
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r2, r0, #0
	cmp r2, #0
	beq _0807F912
	str r4, [r2, #0x50]
	ldr r0, [r5, #4]
	ldr r1, _0807F914 @ =0x000003FF
	ands r0, r1
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	adds r2, #0x86
	orrs r0, r1
	strh r0, [r2]
_0807F912:
	pop {r4, r5, pc}
	.align 2, 0
_0807F914: .4byte 0x000003FF

	thumb_func_start sub_0807F918
sub_0807F918: @ 0x0807F918
	push {lr}
	ldr r0, [r1, #4]
	bl PutItemOnSlot
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F924
sub_0807F924: @ 0x0807F924
	push {lr}
	bl sub_0807879C
	pop {pc}

	thumb_func_start sub_0807F92C
sub_0807F92C: @ 0x0807F92C
	push {lr}
	bl sub_080787C0
	pop {pc}

	thumb_func_start sub_0807F934
sub_0807F934: @ 0x0807F934
	push {lr}
	bl sub_080787B4
	pop {pc}

	thumb_func_start sub_0807F93C
sub_0807F93C: @ 0x0807F93C
	push {lr}
	ldr r2, [r1, #4]
	lsrs r1, r2, #8
	movs r3, #0xff
	ands r1, r3
	ands r2, r3
	bl CreateSpeechBubbleSleep
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807F950
sub_0807F950: @ 0x0807F950
	push {lr}
	sub sp, #4
	movs r0, #2
	str r0, [sp]
	movs r0, #6
	movs r1, #0x56
	movs r2, #6
	movs r3, #0
	bl FindEntityInListByForm
	cmp r0, #0
	beq _0807F96C
	bl DeleteEntity
_0807F96C:
	add sp, #4
	pop {pc}

	thumb_func_start sub_0807F970
sub_0807F970: @ 0x0807F970
	push {lr}
	adds r2, r1, #0
	movs r3, #0
	ldr r1, _0807F988 @ =gUnk_02022780
	ldr r0, [r2, #4]
	ldrh r1, [r1, #0x28]
	cmp r0, r1
	bne _0807F982
	movs r3, #1
_0807F982:
	str r3, [r2, #0x14]
	pop {pc}
	.align 2, 0
_0807F988: .4byte gUnk_02022780

	thumb_func_start sub_0807F98C
sub_0807F98C: @ 0x0807F98C
	ldr r1, [r1, #4]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0

	thumb_func_start sub_0807F994
sub_0807F994: @ 0x0807F994
	ldr r2, [r1, #4]
	asrs r1, r2, #0x10
	adds r3, r0, #0
	adds r3, #0x62
	strb r1, [r3]
	adds r0, #0x63
	strb r2, [r0]
	bx lr

	thumb_func_start sub_0807F9A4
sub_0807F9A4: @ 0x0807F9A4
	push {lr}
	ldr r0, _0807F9BC @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0x17
	bhi _0807FA30
	lsls r0, r0, #2
	ldr r1, _0807F9C0 @ =_0807F9C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807F9BC: .4byte gPlayerState
_0807F9C0: .4byte _0807F9C4
_0807F9C4: @ jump table
	.4byte _0807FA24 @ case 0
	.4byte _0807FA30 @ case 1
	.4byte _0807FA24 @ case 2
	.4byte _0807FA24 @ case 3
	.4byte _0807FA30 @ case 4
	.4byte _0807FA24 @ case 5
	.4byte _0807FA24 @ case 6
	.4byte _0807FA24 @ case 7
	.4byte _0807FA24 @ case 8
	.4byte _0807FA24 @ case 9
	.4byte _0807FA24 @ case 10
	.4byte _0807FA24 @ case 11
	.4byte _0807FA24 @ case 12
	.4byte _0807FA24 @ case 13
	.4byte _0807FA24 @ case 14
	.4byte _0807FA24 @ case 15
	.4byte _0807FA24 @ case 16
	.4byte _0807FA24 @ case 17
	.4byte _0807FA24 @ case 18
	.4byte _0807FA24 @ case 19
	.4byte _0807FA30 @ case 20
	.4byte _0807FA30 @ case 21
	.4byte _0807FA24 @ case 22
	.4byte _0807FA24 @ case 23
_0807FA24:
	ldr r1, _0807FA2C @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	b _0807FA3A
	.align 2, 0
_0807FA2C: .4byte gUnk_02033280
_0807FA30:
	ldr r2, _0807FA3C @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
_0807FA3A:
	pop {pc}
	.align 2, 0
_0807FA3C: .4byte gUnk_02033280

	thumb_func_start sub_0807FA40
sub_0807FA40: @ 0x0807FA40
	push {lr}
	ldr r0, _0807FA58 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0x17
	bhi _0807FACC
	lsls r0, r0, #2
	ldr r1, _0807FA5C @ =_0807FA60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807FA58: .4byte gPlayerState
_0807FA5C: .4byte _0807FA60
_0807FA60: @ jump table
	.4byte _0807FAC0 @ case 0
	.4byte _0807FACC @ case 1
	.4byte _0807FAC0 @ case 2
	.4byte _0807FAC0 @ case 3
	.4byte _0807FACC @ case 4
	.4byte _0807FAC0 @ case 5
	.4byte _0807FAC0 @ case 6
	.4byte _0807FAC0 @ case 7
	.4byte _0807FAC0 @ case 8
	.4byte _0807FAC0 @ case 9
	.4byte _0807FAC0 @ case 10
	.4byte _0807FAC0 @ case 11
	.4byte _0807FAC0 @ case 12
	.4byte _0807FAC0 @ case 13
	.4byte _0807FACC @ case 14
	.4byte _0807FAC0 @ case 15
	.4byte _0807FAC0 @ case 16
	.4byte _0807FAC0 @ case 17
	.4byte _0807FAC0 @ case 18
	.4byte _0807FAC0 @ case 19
	.4byte _0807FACC @ case 20
	.4byte _0807FACC @ case 21
	.4byte _0807FAC0 @ case 22
	.4byte _0807FAC0 @ case 23
_0807FAC0:
	ldr r1, _0807FAC8 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
	b _0807FAD6
	.align 2, 0
_0807FAC8: .4byte gUnk_02033280
_0807FACC:
	ldr r2, _0807FAD8 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
_0807FAD6:
	pop {pc}
	.align 2, 0
_0807FAD8: .4byte gUnk_02033280

	thumb_func_start sub_0807FADC
sub_0807FADC: @ 0x0807FADC
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #1
	beq _0807FB06
	cmp r0, #1
	bgt _0807FAF2
	cmp r0, #0
	beq _0807FAF8
	b _0807FB1C
_0807FAF2:
	cmp r0, #2
	beq _0807FB16
	b _0807FB1C
_0807FAF8:
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r1, [r4, #4]
	adds r0, r2, #0
	bl sub_0808C650
	b _0807FB1C
_0807FB06:
	bl sub_0808C67C
	cmp r0, #0
	beq _0807FB1C
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	b _0807FB1C
_0807FB16:
	bl sub_0808C688
	b _0807FB22
_0807FB1C:
	ldr r1, _0807FB24 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807FB22:
	pop {r4, pc}
	.align 2, 0
_0807FB24: .4byte gUnk_02033280

	thumb_func_start sub_0807FB28
sub_0807FB28: @ 0x0807FB28
	push {r4, lr}
	adds r4, r1, #0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _0807FB3A
	ldr r0, _0807FB54 @ =0x00007FFF
	movs r1, #1
	bl sub_0801D7BC
_0807FB3A:
	ldrb r0, [r4, #0x18]
	adds r0, #1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x18]
	ldr r0, [r4, #4]
	cmp r1, r0
	blo _0807FB58
	movs r0, #0
	movs r1, #0
	bl sub_0801D7BC
	b _0807FB5E
	.align 2, 0
_0807FB54: .4byte 0x00007FFF
_0807FB58:
	ldr r1, _0807FB60 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807FB5E:
	pop {r4, pc}
	.align 2, 0
_0807FB60: .4byte gUnk_02033280

	thumb_func_start sub_0807FB64
sub_0807FB64: @ 0x0807FB64
	ldr r0, _0807FB70 @ =gPlayerEntity
	ldr r1, [r1, #4]
	adds r0, #0x3d
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807FB70: .4byte gPlayerEntity

	thumb_func_start sub_0807FB74
sub_0807FB74: @ 0x0807FB74
	ldr r0, _0807FB8C @ =gPlayerState
	adds r0, #0x26
	movs r1, #0
	strb r1, [r0]
	ldr r1, _0807FB90 @ =gPlayerEntity
	adds r1, #0x3c
	ldrb r2, [r1]
	movs r0, #0xfb
	ands r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0
_0807FB8C: .4byte gPlayerState
_0807FB90: .4byte gPlayerEntity

	thumb_func_start sub_0807FB94
sub_0807FB94: @ 0x0807FB94
	push {lr}
	movs r0, #4
	bl InitScreen
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0807FBA0
sub_0807FBA0: @ 0x0807FBA0
	ldr r2, _0807FBB0 @ =gRoomControls
	ldrh r1, [r2, #0xa]
	adds r1, #0x78
	strh r1, [r0, #0x2e]
	ldrh r1, [r2, #0xc]
	adds r1, #0x50
	strh r1, [r0, #0x32]
	bx lr
	.align 2, 0
_0807FBB0: .4byte gRoomControls

	thumb_func_start sub_0807FBB4
sub_0807FBB4: @ 0x0807FBB4
	ldr r2, _0807FBC0 @ =gPlayerState
	ldrb r1, [r2, #0x1a]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x1a]
	bx lr
	.align 2, 0
_0807FBC0: .4byte gPlayerState

	thumb_func_start sub_0807FBC4
sub_0807FBC4: @ 0x0807FBC4
	push {lr}
	bl sub_0805E4A0
	pop {pc}

	thumb_func_start sub_0807FBCC
sub_0807FBCC: @ 0x0807FBCC
	push {lr}
	bl sub_0805E4CC
	pop {pc}

	thumb_func_start sub_0807FBD4
sub_0807FBD4: @ 0x0807FBD4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	ldrb r2, [r4, #0x15]
	adds r0, r4, #0
	bl sub_0806F62C
	adds r0, r4, #0
	bl sub_080040A8
	cmp r0, #0
	beq _0807FBF4
	ldr r1, _0807FBF8 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_0807FBF4:
	pop {r4, pc}
	.align 2, 0
_0807FBF8: .4byte gUnk_02033280

	thumb_func_start sub_0807FBFC
sub_0807FBFC: @ 0x0807FBFC
	ldr r3, _0807FC20 @ =gUnk_02002A40
	adds r0, r3, #0
	adds r0, #0xb2
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x12
	movs r2, #0
	strh r1, [r0]
	subs r0, #0x11
	strb r2, [r0]
	adds r0, #0x13
	strh r1, [r0]
	subs r0, #0xc
	strb r2, [r0]
	adds r0, #0xe
	strh r1, [r0]
	bx lr
	.align 2, 0
_0807FC20: .4byte gUnk_02002A40

	thumb_func_start sub_0807FC24
sub_0807FC24: @ 0x0807FC24
	push {lr}
	ldr r0, _0807FC3C @ =gRoomControls
	ldrb r0, [r0, #5]
	movs r1, #0xd1
	cmp r0, #1
	bne _0807FC32
	movs r1, #0xcf
_0807FC32:
	adds r0, r1, #0
	bl SetLocalFlag
	pop {pc}
	.align 2, 0
_0807FC3C: .4byte gRoomControls

	thumb_func_start sub_0807FC40
sub_0807FC40: @ 0x0807FC40
	push {lr}
	ldr r0, _0807FC5C @ =gRoomControls
	ldrb r2, [r0, #0xf]
	movs r1, #0xfb
	ands r1, r2
	strb r1, [r0, #0xf]
	ldr r2, _0807FC60 @ =gUnk_0811E768
	ldrb r1, [r0, #2]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FC5C: .4byte gRoomControls
_0807FC60: .4byte gUnk_0811E768

	thumb_func_start sub_0807FC64
sub_0807FC64: @ 0x0807FC64
	push {lr}
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #2]
	strh r2, [r0]
	movs r1, #4
	strb r1, [r0, #0xe]
	bl sub_0807FC7C
	bl sub_080805F8
	pop {pc}

	thumb_func_start sub_0807FC7C
sub_0807FC7C: @ 0x0807FC7C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	cmp r0, #0
	bne _0807FC88
	b _0807FDA6
_0807FC88:
	movs r1, #0xa
	ldrsh r4, [r2, r1]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FD16
	ldrh r6, [r2, #0xa]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FCDC
	ldrh r0, [r2, #6]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FCBC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCBC:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FCCE
	ldr r1, _0807FCD8 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FCCE:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FD16
	b _0807FD14
	.align 2, 0
_0807FCD8: .4byte gUnk_02000070
_0807FCDC:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #0x1e]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xf0
	cmp r4, r5
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FCFC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCFC:
	subs r0, r6, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD0C
	ldr r1, _0807FD68 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FD0C:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FD16
_0807FD14:
	strh r5, [r2, #0xa]
_0807FD16:
	movs r0, #0xc
	ldrsh r4, [r2, r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	subs r0, #0x50
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FDA6
	ldrh r6, [r2, #0xc]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FD6C
	ldrh r0, [r2, #8]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FD4C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD4C:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FD5E
	ldr r1, _0807FD68 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FD5E:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FDA6
	b _0807FDA4
	.align 2, 0
_0807FD68: .4byte gUnk_02000070
_0807FD6C:
	ldrh r0, [r2, #8]
	ldrh r1, [r2, #0x20]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xa0
	cmp r4, r5
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FD8C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD8C:
	subs r0, r6, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD9C
	ldr r1, _0807FDAC @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
_0807FD9C:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FDA6
_0807FDA4:
	strh r5, [r2, #0xc]
_0807FDA6:
	bl sub_08080BC4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807FDAC: .4byte gUnk_02000070

	thumb_func_start sub_0807FDB0
sub_0807FDB0: @ 0x0807FDB0
	push {lr}
	ldr r2, _0807FDC4 @ =gUnk_0811E780
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FDC4: .4byte gUnk_0811E780

	thumb_func_start sub_0807FDC8
sub_0807FDC8: @ 0x0807FDC8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0807FDE0 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r4]
	bl sub_08000108
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #3]
	strb r1, [r4]
	pop {r4, r5, pc}
	.align 2, 0
_0807FDE0: .4byte gUnk_02000070

	thumb_func_start sub_0807FDE4
sub_0807FDE4: @ 0x0807FDE4
	movs r2, #0
	movs r1, #2
	strb r1, [r0, #3]
	strh r2, [r0, #0x18]
	ldr r0, _0807FDF4 @ =gUnk_02000070
	strb r1, [r0]
	bx lr
	.align 2, 0
_0807FDF4: .4byte gUnk_02000070

	thumb_func_start sub_0807FDF8
sub_0807FDF8: @ 0x0807FDF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0807FE18 @ =gUnk_02000070
	movs r0, #2
	strb r0, [r1]
	ldrh r0, [r4, #0x18]
	adds r0, #1
	strh r0, [r4, #0x18]
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	beq _0807FE44
	cmp r0, #1
	bgt _0807FE1C
	cmp r0, #0
	beq _0807FE26
	b _0807FEB6
	.align 2, 0
_0807FE18: .4byte gUnk_02000070
_0807FE1C:
	cmp r0, #2
	beq _0807FE68
	cmp r0, #3
	beq _0807FE94
	b _0807FEB6
_0807FE26:
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE3C @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	ldr r2, _0807FE40 @ =0xFFFFA000
	b _0807FE7C
	.align 2, 0
_0807FE3C: .4byte gPlayerEntity
_0807FE40: .4byte 0xFFFFA000
_0807FE44:
	ldrh r0, [r4, #0xa]
	adds r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE64 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE5C
	ldr r0, [r1, #0x2c]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FE5C:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	b _0807FE86
	.align 2, 0
_0807FE64: .4byte gPlayerEntity
_0807FE68:
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FE90 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FE80
	ldr r0, [r1, #0x30]
	movs r2, #0xc0
	lsls r2, r2, #7
_0807FE7C:
	adds r0, r0, r2
	str r0, [r1, #0x30]
_0807FE80:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x28
	bne _0807FEB6
_0807FE86:
	adds r0, r4, #0
	bl sub_0807FEC8
	b _0807FEB6
	.align 2, 0
_0807FE90: .4byte gPlayerEntity
_0807FE94:
	ldrh r0, [r4, #0xa]
	subs r0, #4
	strh r0, [r4, #0xa]
	ldr r1, [r4, #0x30]
	ldr r0, _0807FEC0 @ =gPlayerEntity
	cmp r1, r0
	bne _0807FEAA
	ldr r0, [r1, #0x2c]
	ldr r2, _0807FEC4 @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r1, #0x2c]
_0807FEAA:
	ldrh r0, [r4, #0x18]
	cmp r0, #0x3c
	bne _0807FEB6
	adds r0, r4, #0
	bl sub_0807FEC8
_0807FEB6:
	movs r0, #0
	strh r0, [r4, #0x16]
	bl sub_08080BC4
	pop {r4, pc}
	.align 2, 0
_0807FEC0: .4byte gPlayerEntity
_0807FEC4: .4byte 0xFFFFC000

	thumb_func_start sub_0807FEC8
sub_0807FEC8: @ 0x0807FEC8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strb r0, [r5, #2]
	subs r0, #1
	ldr r4, _0807FEEC @ =gUnk_03003FC0
	adds r1, r4, #0
	movs r2, #0x40
	bl _DmaFill32
	subs r4, #0x40
	ldr r1, [r5, #0x30]
	ldrh r0, [r1, #0x2e]
	strh r0, [r4, #0x16]
	ldrh r0, [r1, #0x32]
	strh r0, [r4, #0x18]
	pop {r4, r5, pc}
	.align 2, 0
_0807FEEC: .4byte gUnk_03003FC0

	thumb_func_start sub_0807FEF0
sub_0807FEF0: @ 0x0807FEF0
	push {lr}
	ldr r2, _0807FF04 @ =gUnk_0811E78C
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FF04: .4byte gUnk_0811E78C

	thumb_func_start sub_0807FF08
sub_0807FF08: @ 0x0807FF08
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	strh r2, [r0, #0x18]
	ldr r1, _0807FF18 @ =gUnk_02000070
	movs r0, #3
	strb r0, [r1]
	bx lr
	.align 2, 0
_0807FF18: .4byte gUnk_02000070

	thumb_func_start sub_0807FF1C
sub_0807FF1C: @ 0x0807FF1C
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807FF4C @ =gScreenTransition
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0807FF48
	ldr r1, _0807FF50 @ =gUnk_02000070
	movs r0, #3
	strb r0, [r1]
	ldrh r0, [r2, #0x18]
	adds r0, #1
	strh r0, [r2, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _0807FF48
	movs r0, #0
	strb r0, [r2, #2]
	bl sub_0805E5B4
_0807FF48:
	pop {pc}
	.align 2, 0
_0807FF4C: .4byte gScreenTransition
_0807FF50: .4byte gUnk_02000070

	thumb_func_start sub_0807FF54
sub_0807FF54: @ 0x0807FF54
	push {lr}
	ldr r2, _0807FF68 @ =gUnk_0811E794
	ldrb r1, [r0, #3]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0807FF68: .4byte gUnk_0811E794

	thumb_func_start sub_0807FF6C
sub_0807FF6C: @ 0x0807FF6C
	push {r4, lr}
	movs r1, #1
	strb r1, [r0, #3]
	ldr r3, _0807FFC8 @ =gScreen
	ldrh r1, [r3]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
	adds r2, r3, #0
	adds r2, #0x60
	ldrb r0, [r2]
	movs r4, #0xb8
	lsls r4, r4, #5
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrh r1, [r2]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #7
	movs r4, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r3, #0
	adds r0, #0x5a
	movs r1, #0xf0
	strh r1, [r0]
	adds r0, #4
	strh r1, [r0]
	bl ResetPlayer
	bl sub_080791D0
	ldr r0, _0807FFCC @ =gUnk_03004030
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0807FFD4
	ldr r1, _0807FFD0 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	b _0807FFD8
	.align 2, 0
_0807FFC8: .4byte gScreen
_0807FFCC: .4byte gUnk_03004030
_0807FFD0: .4byte gPlayerEntity
_0807FFD4:
	ldr r0, _0807FFE0 @ =gPlayerEntity
	strb r4, [r0, #0x14]
_0807FFD8:
	bl sub_080809D4
	pop {r4, pc}
	.align 2, 0
_0807FFE0: .4byte gPlayerEntity

	thumb_func_start sub_0807FFE4
sub_0807FFE4: @ 0x0807FFE4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r5, #3]
	bl sub_080803D0
	adds r0, #6
	strh r0, [r5, #0x18]
	ldr r4, _0808002C @ =gUnk_0200B640
	bl sub_08080278
	strh r0, [r4]
	ldr r1, _08080030 @ =gUnk_08109194
	ldr r0, _08080034 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_080197D4
	ldr r4, _08080038 @ =gMapDataTop
	ldrh r1, [r5, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r5, #0x20]
	lsrs r2, r2, #4
	adds r0, r4, #0
	bl sub_0807C8B0
	ldr r0, _0808003C @ =gMapDataTopSpecial
	subs r4, #4
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, pc}
	.align 2, 0
_0808002C: .4byte gUnk_0200B640
_08080030: .4byte gUnk_08109194
_08080034: .4byte gUnk_03004030
_08080038: .4byte gMapDataTop
_0808003C: .4byte gMapDataTopSpecial

	thumb_func_start sub_08080040
sub_08080040: @ 0x08080040
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	subs r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x2a
	bls _080800C6
	ldr r3, [r5, #0x30]
	movs r1, #0x2e
	ldrsh r0, [r3, r1]
	movs r2, #0xa
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x18]
	subs r0, r2, r1
	adds r7, r0, #0
	adds r7, #8
	cmp r7, #0
	bge _08080078
	movs r7, #0
_08080078:
	adds r0, r2, r1
	adds r6, r0, #0
	subs r6, #8
	cmp r6, #0xf0
	ble _08080084
	movs r6, #0xf0
_08080084:
	movs r1, #0x32
	ldrsh r0, [r3, r1]
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	subs r2, r0, r1
	ldrh r1, [r5, #0x1a]
	subs r0, r2, r1
	adds r4, r0, #0
	adds r4, #8
	cmp r4, #0
	bge _0808009C
	movs r4, #0
_0808009C:
	adds r0, r2, r1
	adds r3, r0, #0
	subs r3, #8
	cmp r3, #0xa0
	ble _080800A8
	movs r3, #0xa0
_080800A8:
	ldr r2, _080800F0 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_080800C6:
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _080800FC
	movs r0, #3
	strb r0, [r5, #3]
	bl sub_0805E9F4
	bl sub_0807C810
	ldr r1, _080800F4 @ =gUnk_08109194
	ldr r0, _080800F8 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl sub_08080C80
	b _08080102
	.align 2, 0
_080800F0: .4byte gScreen
_080800F4: .4byte gUnk_08109194
_080800F8: .4byte gUnk_03004030
_080800FC:
	ldr r1, _08080104 @ =gUnk_02000070
	movs r0, #4
	strb r0, [r1]
_08080102:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080104: .4byte gUnk_02000070

	thumb_func_start sub_08080108
sub_08080108: @ 0x08080108
	push {r4, r5, r6, lr}
	movs r1, #4
	strb r1, [r0, #3]
	ldr r5, _08080178 @ =gMapDataBottom
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r5, r0
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r2, r6, #0
	bl _DmaCopy
	ldr r4, _0808017C @ =gMapDataTop
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl _DmaCopy
	bl sub_08080368
	ldr r1, _08080180 @ =gUnk_02034480
	ldr r0, _08080184 @ =gUnk_0200B640
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08080188 @ =gUnk_02022830
	ldr r1, _0808018C @ =gUnk_020246B0
	movs r2, #0xc0
	lsls r2, r2, #5
	bl _DmaCopy
	subs r5, #4
	adds r0, r5, #0
	bl sub_08080B60
	subs r4, #4
	adds r0, r4, #0
	bl sub_08080B60
	bl sub_0807BBE4
	bl sub_0807BC84
	bl sub_0805E248
	ldr r0, _08080190 @ =gUnk_02019EE0
	adds r1, r5, #0
	bl sub_0801AB08
	ldr r0, _08080194 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, r6, pc}
	.align 2, 0
_08080178: .4byte gMapDataBottom
_0808017C: .4byte gMapDataTop
_08080180: .4byte gUnk_02034480
_08080184: .4byte gUnk_0200B640
_08080188: .4byte gUnk_02022830
_0808018C: .4byte gUnk_020246B0
_08080190: .4byte gUnk_02019EE0
_08080194: .4byte gMapDataTopSpecial

	thumb_func_start sub_08080198
sub_08080198: @ 0x08080198
	push {r4, lr}
	movs r1, #5
	strb r1, [r0, #3]
	movs r4, #0
	movs r1, #0xff
	strh r1, [r0, #0x1c]
	bl LoadRoom
	bl sub_0804AFF4
	ldr r0, _080801B8 @ =gUnk_02000070
	strb r4, [r0]
	bl sub_080805F8
	pop {r4, pc}
	.align 2, 0
_080801B8: .4byte gUnk_02000070

	thumb_func_start sub_080801BC
sub_080801BC: @ 0x080801BC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #0x18]
	adds r4, #6
	strh r4, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	lsls r0, r0, #1
	movs r1, #3
	bl __divsi3
	strh r0, [r5, #0x1a]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	cmp r4, #0x1e
	bls _08080232
	ldr r2, [r5, #0x30]
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r3, #0xa
	ldrsh r0, [r5, r3]
	subs r0, r1, r0
	ldrh r1, [r5, #0x18]
	subs r7, r0, r1
	cmp r7, #0
	bge _080801F0
	movs r7, #0
_080801F0:
	adds r6, r0, r1
	cmp r6, #0xf0
	ble _080801F8
	movs r6, #0xf0
_080801F8:
	movs r0, #0x32
	ldrsh r1, [r2, r0]
	movs r2, #0xc
	ldrsh r0, [r5, r2]
	subs r0, r1, r0
	ldrh r1, [r5, #0x1a]
	subs r4, r0, r1
	cmp r4, #0
	bge _0808020C
	movs r4, #0
_0808020C:
	adds r3, r0, r1
	cmp r3, #0xa0
	ble _08080214
	movs r3, #0xa0
_08080214:
	ldr r2, _08080260 @ =gScreen
	movs r1, #0xff
	ands r7, r1
	lsls r0, r7, #8
	ands r6, r1
	orrs r0, r6
	adds r6, r2, #0
	adds r6, #0x5a
	strh r0, [r6]
	ands r4, r1
	lsls r0, r4, #8
	ands r3, r1
	orrs r0, r3
	adds r2, #0x5e
	strh r0, [r2]
_08080232:
	ldrh r0, [r5, #0x1c]
	cmp r0, #0
	bne _08080268
	strb r0, [r5, #2]
	strh r0, [r5]
	bl sub_0805E5B4
	ldr r1, _08080260 @ =gScreen
	ldrh r2, [r1]
	ldr r0, _08080264 @ =0x0000BFFF
	ands r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	adds r2, #0x60
	ldrb r0, [r2]
	strh r0, [r2]
	adds r1, #0x62
	ldrh r2, [r1]
	movs r0, #0xff
	lsls r0, r0, #8
	ands r0, r2
	strh r0, [r1]
	b _08080272
	.align 2, 0
_08080260: .4byte gScreen
_08080264: .4byte 0x0000BFFF
_08080268:
	ldr r0, _08080274 @ =gUnk_02000070
	movs r1, #4
	strb r1, [r0]
	movs r0, #0
	strh r0, [r5, #0x1c]
_08080272:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080274: .4byte gUnk_02000070

	thumb_func_start sub_08080278
sub_08080278: @ 0x08080278
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08080344 @ =gUnk_02022830
	mov ip, r0
	ldr r1, _08080348 @ =gRoomControls
	ldrh r0, [r1, #0x1e]
	lsrs r0, r0, #4
	str r0, [sp]
	ldrh r0, [r1, #0x20]
	lsrs r0, r0, #4
	lsls r0, r0, #6
	str r0, [sp, #4]
	movs r5, #0
	mov sl, r5
	cmp r5, r0
	bhs _08080336
	mov sb, r5
_080802A2:
	movs r1, #0
	mov r8, r1
	ldr r0, [sp]
	cmp r8, r0
	bhs _08080328
	ldr r4, _0808034C @ =gMapDataTop
	add r4, sb
	ldr r7, _08080350 @ =gUnk_0200E654
	add r7, sb
	ldr r3, _08080354 @ =gMapDataBottom
	add r3, sb
	ldr r6, _08080358 @ =gUnk_02028EB4
	add r6, sb
_080802BC:
	mov r2, sl
	add r2, r8
	ldrh r0, [r6]
	ldrh r1, [r3]
	cmp r0, r1
	beq _080802EA
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _080802EA
	adds r0, #1
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	mov r1, ip
	strh r0, [r1]
	ldrh r0, [r3]
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080360 @ =0x000005FF
	cmp r5, r0
	bhi _08080336
_080802EA:
	ldrh r0, [r7]
	ldrh r1, [r4]
	cmp r0, r1
	beq _08080316
	ldr r0, _0808035C @ =0x00003FFF
	cmp r1, r0
	bhi _08080316
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r2, r0
	mov r0, ip
	strh r2, [r0]
	ldrh r0, [r4]
	mov r1, ip
	strh r0, [r1, #2]
	movs r0, #4
	add ip, r0
	adds r5, #1
	ldr r0, _08080364 @ =0x000007FF
	cmp r5, r0
	bhi _08080336
_08080316:
	adds r4, #2
	adds r7, #2
	adds r3, #2
	adds r6, #2
	movs r1, #1
	add r8, r1
	ldr r0, [sp]
	cmp r8, r0
	blo _080802BC
_08080328:
	movs r1, #0x80
	add sb, r1
	movs r0, #0x40
	add sl, r0
	ldr r1, [sp, #4]
	cmp sl, r1
	blo _080802A2
_08080336:
	adds r0, r5, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08080344: .4byte gUnk_02022830
_08080348: .4byte gRoomControls
_0808034C: .4byte gMapDataTop
_08080350: .4byte gUnk_0200E654
_08080354: .4byte gMapDataBottom
_08080358: .4byte gUnk_02028EB4
_0808035C: .4byte 0x00003FFF
_08080360: .4byte 0x000005FF
_08080364: .4byte 0x000007FF

	thumb_func_start sub_08080368
sub_08080368: @ 0x08080368
	push {r4, r5, r6, r7, lr}
	ldr r0, _08080384 @ =gUnk_03004030
	ldr r1, _08080388 @ =gRoomControls
	ldrb r0, [r0, #0xa]
	ldrb r1, [r1, #4]
	cmp r0, r1
	beq _08080390
	cmp r0, #0xff
	beq _08080390
	ldr r1, _0808038C @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	b _080803BE
	.align 2, 0
_08080384: .4byte gUnk_03004030
_08080388: .4byte gRoomControls
_0808038C: .4byte gUnk_02034480
_08080390:
	ldr r5, _080803C0 @ =gUnk_020246B0
	ldr r0, _080803C4 @ =gUnk_02034480
	ldrh r0, [r0]
	lsls r6, r0, #1
	movs r4, #0
	cmp r4, r6
	bhs _080803B8
	ldr r0, _080803C8 @ =0x00000FFF
	adds r7, r0, #0
_080803A2:
	ldrh r0, [r5, #2]
	ldrh r2, [r5]
	adds r1, r7, #0
	ands r1, r2
	lsrs r2, r2, #0xe
	bl sub_0807B9B8
	adds r5, #4
	adds r4, #2
	cmp r4, r6
	blo _080803A2
_080803B8:
	ldr r1, _080803CC @ =gUnk_02000070
	movs r0, #0
	strb r0, [r1]
_080803BE:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080803C0: .4byte gUnk_020246B0
_080803C4: .4byte gUnk_02034480
_080803C8: .4byte 0x00000FFF
_080803CC: .4byte gUnk_02000070

	thumb_func_start sub_080803D0
sub_080803D0: @ 0x080803D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r1, _080804F0 @ =gRoomControls
	movs r2, #0xa
	ldrsh r0, [r1, r2]
	ldrh r2, [r1, #6]
	subs r0, r0, r2
	str r0, [sp, #0x18]
	ldr r3, [r1, #0x30]
	movs r4, #0x2e
	ldrsh r0, [r3, r4]
	subs r0, r0, r2
	str r0, [sp, #0x10]
	movs r2, #0xc
	ldrsh r0, [r1, r2]
	ldrh r1, [r1, #8]
	subs r0, r0, r1
	str r0, [sp, #0x1c]
	movs r4, #0x32
	ldrsh r0, [r3, r4]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	movs r0, #0x3c
	str r0, [sp, #8]
_08080408:
	movs r7, #0
	ldr r1, [sp, #8]
	adds r1, #6
	str r1, [sp, #8]
	adds r2, r1, #0
	muls r2, r1, r2
	mov sl, r2
	lsls r4, r1, #1
	adds r0, r4, #0
	movs r1, #3
	bl __divsi3
	str r0, [sp, #0xc]
	adds r1, r0, #0
	muls r1, r0, r1
	mov sb, r1
	movs r2, #0
	str r2, [sp, #4]
	rsbs r4, r4, #0
	adds r4, #1
	mov r0, sb
	muls r0, r4, r0
	mov r4, sl
	lsls r5, r4, #1
	adds r4, r0, r5
	ldr r0, [sp, #8]
	mov r6, sb
	muls r6, r0, r6
	adds r0, r6, #0
	mov r1, sl
	bl __divsi3
	adds r2, r0, #0
	cmp r7, r2
	bgt _08080506
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x20]
	mov r1, sl
	adds r0, r5, r1
	lsls r3, r0, #1
	str r6, [sp, #0x2c]
	ldr r0, [sp, #8]
	lsls r1, r0, #2
	rsbs r1, r1, #0
	adds r1, #4
	mov r8, r1
	rsbs r0, r0, #0
	adds r0, #8
	ldr r1, [sp, #0x10]
	adds r6, r0, r1
	ldr r0, [sp, #8]
	adds r5, r0, r1
	mov r0, r8
	mov r1, sb
	muls r1, r0, r1
	mov r8, r1
_0808047A:
	ldr r1, [sp, #0x1c]
	adds r1, #0xa8
	mov ip, r1
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	cmp ip, r0
	ble _080804A0
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _08080496
	movs r0, #1
	orrs r7, r0
_08080496:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804A0
	movs r0, #2
	orrs r7, r0
_080804A0:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	subs r0, r0, r1
	mov ip, r0
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080804C4
	ldr r0, [sp, #0x20]
	cmp r0, r5
	ble _080804BA
	movs r0, #4
	orrs r7, r0
_080804BA:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	bge _080804C4
	movs r0, #8
	orrs r7, r0
_080804C4:
	cmp r4, #0
	ble _080804F4
	mov r2, r8
	adds r0, r2, r3
	adds r4, r4, r0
	ldr r0, [sp, #0x2c]
	mov r1, sb
	subs r0, r0, r1
	str r0, [sp, #0x2c]
	lsls r0, r1, #2
	add r8, r0
	adds r6, #1
	subs r5, #1
	ldr r0, [sp, #0x2c]
	mov r1, sl
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080804F6
	.align 2, 0
_080804F0: .4byte gRoomControls
_080804F4:
	adds r4, r4, r3
_080804F6:
	mov r1, sl
	lsls r0, r1, #2
	adds r3, r3, r0
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	cmp r0, r2
	ble _0808047A
_08080506:
	movs r1, #0
	str r1, [sp]
	ldr r2, [sp, #0xc]
	str r2, [sp, #4]
	mov r4, sb
	lsls r6, r4, #1
	lsls r0, r2, #1
	rsbs r0, r0, #0
	adds r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r4, r6, r0
	mov r5, sl
	muls r5, r2, r5
	adds r0, r5, #0
	mov r1, sb
	bl __divsi3
	adds r2, r0, #0
	ldr r0, [sp]
	cmp r0, r2
	bgt _080805E4
	ldr r1, [sp, #0x18]
	adds r1, #0xf8
	str r1, [sp, #0x24]
	mov r1, sb
	adds r0, r6, r1
	lsls r0, r0, #1
	mov r8, r0
	ldr r3, [sp, #0x10]
	adds r3, #8
	ldr r6, [sp, #0x10]
	str r5, [sp, #0x28]
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	rsbs r0, r0, #0
	adds r0, #4
	mov r5, sl
	muls r5, r0, r5
_08080556:
	ldr r0, [sp, #0x1c]
	adds r0, #0xa8
	mov ip, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	adds r1, r1, r0
	str r1, [sp, #0x34]
	cmp ip, r1
	ble _0808057C
	ldr r1, [sp, #0x24]
	cmp r1, r6
	ble _08080572
	movs r0, #0x10
	orrs r7, r0
_08080572:
	ldr r0, [sp, #0x18]
	cmp r0, r3
	bge _0808057C
	movs r0, #0x20
	orrs r7, r0
_0808057C:
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	subs r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #8
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bge _080805A2
	ldr r0, [sp, #0x24]
	cmp r0, r6
	ble _08080598
	movs r0, #0x40
	orrs r7, r0
_08080598:
	ldr r1, [sp, #0x18]
	cmp r1, r3
	bge _080805A2
	movs r0, #0x80
	orrs r7, r0
_080805A2:
	cmp r4, #0
	ble _080805CE
	mov r2, r8
	adds r0, r2, r5
	adds r4, r4, r0
	ldr r0, [sp, #0x28]
	mov r1, sl
	subs r0, r0, r1
	str r0, [sp, #0x28]
	lsls r0, r1, #2
	adds r5, r5, r0
	ldr r2, [sp, #4]
	subs r2, #1
	str r2, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, sb
	str r3, [sp, #0x30]
	bl __divsi3
	adds r2, r0, #0
	ldr r3, [sp, #0x30]
	b _080805D0
_080805CE:
	add r4, r8
_080805D0:
	mov r1, sb
	lsls r0, r1, #2
	add r8, r0
	subs r3, #1
	adds r6, #1
	ldr r0, [sp]
	adds r0, #1
	str r0, [sp]
	cmp r0, r2
	ble _08080556
_080805E4:
	cmp r7, #0
	beq _080805EA
	b _08080408
_080805EA:
	ldr r0, [sp, #8]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_080805F8
sub_080805F8: @ 0x080805F8
	push {lr}
	ldr r0, _08080610 @ =gRoomControls
	ldrb r0, [r0, #4]
	subs r0, #0xc
	cmp r0, #0xd
	bhi _0808065C
	lsls r0, r0, #2
	ldr r1, _08080614 @ =_08080618
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08080610: .4byte gRoomControls
_08080614: .4byte _08080618
_08080618: @ jump table
	.4byte _08080650 @ case 0
	.4byte _0808065C @ case 1
	.4byte _0808065C @ case 2
	.4byte _08080650 @ case 3
	.4byte _0808065C @ case 4
	.4byte _0808065C @ case 5
	.4byte _0808065C @ case 6
	.4byte _08080650 @ case 7
	.4byte _08080650 @ case 8
	.4byte _0808065C @ case 9
	.4byte _08080650 @ case 10
	.4byte _08080650 @ case 11
	.4byte _0808065C @ case 12
	.4byte _08080650 @ case 13
_08080650:
	ldr r1, _08080658 @ =gUnk_03004030
	movs r0, #1
	b _08080660
	.align 2, 0
_08080658: .4byte gUnk_03004030
_0808065C:
	ldr r1, _08080664 @ =gUnk_03004030
	movs r0, #0
_08080660:
	strb r0, [r1, #8]
	pop {pc}
	.align 2, 0
_08080664: .4byte gUnk_03004030

	thumb_func_start sub_08080668
sub_08080668: @ 0x08080668
	push {r4, r5, lr}
	ldr r5, _080806A4 @ =gRoomControls
	adds r0, r5, #0
	movs r1, #0x38
	bl _DmaZero
	ldr r4, _080806A8 @ =gUnk_03004030
	adds r0, r4, #0
	movs r1, #0xc
	bl _DmaZero
	ldr r0, _080806AC @ =0x0000FFFF
	strh r0, [r5, #0x22]
	movs r0, #0xff
	strb r0, [r4, #0xa]
	ldr r1, _080806B0 @ =gUnk_02034480
	movs r0, #0
	strh r0, [r1]
	ldr r0, _080806B4 @ =gUnk_02019EE0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	bl _DmaZero
	ldr r0, _080806B8 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl _DmaZero
	pop {r4, r5, pc}
	.align 2, 0
_080806A4: .4byte gRoomControls
_080806A8: .4byte gUnk_03004030
_080806AC: .4byte 0x0000FFFF
_080806B0: .4byte gUnk_02034480
_080806B4: .4byte gUnk_02019EE0
_080806B8: .4byte gMapDataTopSpecial

	thumb_func_start sub_080806BC
sub_080806BC: @ 0x080806BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _08080710 @ =gArea
	ldr r1, _08080714 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [r0, #0x18]
	ldrh r0, [r5]
	ldr r1, _08080718 @ =0x0000FFFF
	cmp r0, r1
	beq _08080728
	mov sl, r1
_080806E2:
	ldrh r2, [r5]
	movs r0, #1
	lsls r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08080720
	ldr r1, _0808071C @ =gUnk_0811E7AC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	adds r3, r7, #0
	bl _call_via_r4
	cmp r0, #0
	beq _08080720
	adds r0, r5, #0
	bl DoExitTransition
	movs r0, #1
	b _0808072A
	.align 2, 0
_08080710: .4byte gArea
_08080714: .4byte 0x0000085C
_08080718: .4byte 0x0000FFFF
_0808071C: .4byte gUnk_0811E7AC
_08080720:
	adds r5, #0x14
	ldrh r0, [r5]
	cmp r0, sl
	bne _080806E2
_08080728:
	movs r0, #0
_0808072A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080734
sub_08080734: @ 0x08080734
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08080778 @ =gArea
	ldr r1, _0808077C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x18]
	movs r0, #0xa
	mov r8, r0
	ldrh r0, [r4]
	ldr r1, _08080780 @ =0x0000FFFF
	cmp r0, r1
	beq _0808078C
	adds r7, r1, #0
_08080756:
	movs r0, #1
	ldrh r1, [r4]
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08080808
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	b _0808078E
	.align 2, 0
_08080778: .4byte gArea
_0808077C: .4byte 0x0000085C
_08080780: .4byte 0x0000FFFF
_08080784:
	adds r4, #0x14
	ldrh r0, [r4]
	cmp r0, r7
	bne _08080756
_0808078C:
	movs r0, #0
_0808078E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08080794
sub_08080794: @ 0x08080794
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _080807C0
	cmp r3, #1
	blo _080807AC
	cmp r3, #2
	beq _080807D4
	cmp r3, #3
	beq _080807E8
_080807A8:
	movs r0, #0
	b _08080800
_080807AC:
	ldr r0, _080807BC @ =gRoomControls
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #1
	movs r3, #1
	cmp r0, r1
	bhs _080807F6
	movs r3, #2
	b _080807F6
	.align 2, 0
_080807BC: .4byte gRoomControls
_080807C0:
	ldr r0, _080807D0 @ =gRoomControls
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #1
	movs r3, #4
	cmp r0, r2
	bhs _080807F6
	movs r3, #8
	b _080807F6
	.align 2, 0
_080807D0: .4byte gRoomControls
_080807D4:
	ldr r0, _080807E4 @ =gRoomControls
	ldrh r0, [r0, #0x1e]
	lsrs r0, r0, #1
	movs r3, #0x10
	cmp r0, r1
	bhs _080807F6
	movs r3, #0x20
	b _080807F6
	.align 2, 0
_080807E4: .4byte gRoomControls
_080807E8:
	ldr r0, _08080804 @ =gRoomControls
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #1
	movs r3, #0x40
	cmp r0, r2
	bhs _080807F6
	movs r3, #0x80
_080807F6:
	ldrb r0, [r4, #0xa]
	ands r0, r3
	cmp r0, #0
	beq _080807A8
	movs r0, #1
_08080800:
	pop {r4, pc}
	.align 2, 0
_08080804: .4byte gRoomControls

	thumb_func_start sub_08080808
sub_08080808: @ 0x08080808
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #1
	ldr r2, _08080838 @ =gUnk_0811E7BC
	adds r4, r0, r2
	ldrb r0, [r4]
	ldrh r2, [r3, #2]
	subs r1, r1, r2
	adds r1, r1, r0
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0808083C
	ldrb r1, [r4, #1]
	ldrh r0, [r3, #4]
	subs r0, r5, r0
	adds r0, r0, r1
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0808083C
	movs r0, #1
	b _0808083E
	.align 2, 0
_08080838: .4byte gUnk_0811E7BC
_0808083C:
	movs r0, #0
_0808083E:
	pop {r4, r5, pc}

	thumb_func_start DoExitTransition
DoExitTransition: @ 0x08080840
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808085C @ =gScreenTransition
	movs r1, #1
	strb r1, [r0, #8]
	adds r2, r0, #0
	adds r2, #0xc
	ldrh r1, [r4, #6]
	ldr r0, _08080860 @ =0x000003FF
	cmp r1, r0
	bhi _08080864
	strh r1, [r2, #4]
	b _08080872
	.align 2, 0
_0808085C: .4byte gScreenTransition
_08080860: .4byte 0x000003FF
_08080864:
	ldr r0, _08080880 @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x2e]
	ldr r3, _08080884 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
_08080872:
	ldrh r1, [r4, #8]
	ldr r0, _08080888 @ =0x000003FF
	cmp r1, r0
	bhi _0808088C
	strh r1, [r2, #6]
	b _0808089A
	.align 2, 0
_08080880: .4byte gRoomControls
_08080884: .4byte 0xFFFF8000
_08080888: .4byte 0x000003FF
_0808088C:
	ldr r0, _080808CC @ =gRoomControls
	ldr r0, [r0, #0x30]
	ldrh r1, [r0, #0x32]
	ldr r3, _080808D0 @ =0xFFFF8000
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0808089A:
	ldrb r0, [r4, #0xb]
	strb r0, [r2]
	ldrb r0, [r4, #0xc]
	strb r0, [r2, #1]
	ldrb r0, [r4, #0xd]
	strb r0, [r2, #8]
	ldrb r0, [r4, #0xe]
	strb r0, [r2, #3]
	ldrb r0, [r4, #0xf]
	strb r0, [r2, #2]
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _080808B8
	bl PlaySFX
_080808B8:
	ldr r0, _080808D4 @ =gUnk_0811E7C4
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r4, #0xa]
	ldr r1, [r1]
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080808CC: .4byte gRoomControls
_080808D0: .4byte 0xFFFF8000
_080808D4: .4byte gUnk_0811E7C4
