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

