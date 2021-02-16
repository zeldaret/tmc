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

