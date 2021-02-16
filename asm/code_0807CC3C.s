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

