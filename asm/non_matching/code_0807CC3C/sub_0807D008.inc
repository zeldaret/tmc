	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

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

    .syntax divided
