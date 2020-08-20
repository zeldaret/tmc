	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r8, r0
	ldr r1, _0804516C @ =gUnk_080D16D0
	ldrb r0, [r0, #0xa]
	adds r0, r0, r1
	ldrb r7, [r0]
	movs r0, #0x48
	subs r0, r0, r7
	ldr r1, _08045170 @ =gEntCount
	ldrb r1, [r1]
	cmp r0, r1
	ble _08045160
	cmp r7, #0
	beq _080450E2
	mov r4, sp
	adds r5, r7, #0
_080450D0:
	mov r0, r8
	ldrb r1, [r0, #0xa]
	movs r0, #0x57
	bl CreateEnemy
	stm r4!, {r0}
	subs r5, #1
	cmp r5, #0
	bne _080450D0
_080450E2:
	ldr r2, _08045174 @ =gUnk_080D16D4
	mov sb, r2
	movs r5, #0
	cmp r5, r7
	bge _08045142
_080450EC:
	lsls r0, r5, #2
	add r0, sp
	ldr r6, [r0]
	adds r4, r5, #1
	adds r0, r4, #0
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x54]
	adds r0, r5, r7
	subs r0, #1
	adds r1, r7, #0
	bl __modsi3
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r6, #0x50]
	movs r1, #0
	movs r0, #1
	strb r0, [r6, #0xb]
	strh r1, [r6, #0x36]
	adds r1, r6, #0
	adds r1, #0x3d
	movs r0, #0xf0
	strb r0, [r1]
	mov r0, sb
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	mov r0, r8
	adds r1, r6, #0
	bl sub_08045178
	movs r2, #2
	add sb, r2
	adds r5, r4, #0
	cmp r5, r7
	blt _080450EC
_08045142:
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r6, r0, #0
	cmp r6, #0
	beq _0804515A
	mov r0, r8
	adds r1, r6, #0
	bl CopyPosition
_0804515A:
	mov r0, r8
	bl DeleteEntity
_08045160:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804516C: .4byte gUnk_080D16D0
_08045170: .4byte gEntCount
_08045174: .4byte gUnk_080D16D4
	.syntax divided