	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08044F50
sub_08044F50: @ 0x08044F50
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08044F6C @ =gUnk_080D16A4
	bl sub_0800129E
	movs r3, #0xc
	rsbs r3, r3, #0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0804A9AC
	pop {r4, pc}
	.align 2, 0
_08044F6C: .4byte gUnk_080D16A4

	thumb_func_start sub_08044F70
sub_08044F70: @ 0x08044F70
	push {lr}
	ldr r2, _08044F84 @ =gUnk_080D16BC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08044F84: .4byte gUnk_080D16BC

	thumb_func_start sub_08044F88
sub_08044F88: @ 0x08044F88
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r1, [r0]
	cmp r1, #0
	beq _08044FA2
	adds r0, #0x3f
	ldrb r0, [r0]
	cmp r0, r1
	beq _08044FA2
	movs r0, #4
	strb r0, [r4, #0xc]
	b _08044FAA
_08044FA2:
	ldr r1, _08044FC0 @ =gUnk_080D16A4
	adds r0, r4, #0
	bl sub_0804AA30
_08044FAA:
	adds r0, r4, #0
	adds r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _08044FBC
	adds r0, r4, #0
	movs r1, #0x1c
	bl sub_0804A9FC
_08044FBC:
	pop {r4, pc}
	.align 2, 0
_08044FC0: .4byte gUnk_080D16A4

	thumb_func_start nullsub_171
nullsub_171: @ 0x08044FC4
	bx lr
	.align 2, 0

	thumb_func_start sub_08044FC8
sub_08044FC8: @ 0x08044FC8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	movs r0, #0x80
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_0804A720
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_08044FF8
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08044FF8
sub_08044FF8: @ 0x08044FF8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x1e
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	adds r0, #0x45
	ldrb r0, [r0]
	adds r4, #0x84
	strb r0, [r4]
	pop {r4, pc}

	thumb_func_start sub_08045018
sub_08045018: @ 0x08045018
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08004274
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08045086
	movs r4, #3
	strb r4, [r5, #0xc]
	movs r0, #1
	strb r0, [r5, #0xe]
	movs r1, #0x24
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0804504C
	movs r0, #0x80
	lsls r0, r0, #5
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	bl sub_0806FA04
	lsrs r0, r0, #8
	strb r0, [r5, #0xe]
_0804504C:
	adds r0, r5, #0
	bl sub_08049FA0
	cmp r0, #0
	bne _0804507C
	bl Random
	ands r0, r4
	cmp r0, #0
	beq _0804507C
	adds r0, r5, #0
	bl sub_08049EE4
	adds r4, r0, #0
	bl Random
	movs r1, #8
	ands r0, r1
	adds r0, #0xfc
	adds r4, r4, r0
	movs r0, #0x18
	ands r4, r0
	strb r4, [r5, #0x15]
	b _08045086
_0804507C:
	bl Random
	movs r1, #0x18
	ands r0, r1
	strb r0, [r5, #0x15]
_08045086:
	pop {r4, r5, pc}

	thumb_func_start sub_08045088
sub_08045088: @ 0x08045088
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AEF88
	adds r0, r4, #0
	bl sub_08004274
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080450A6
	movs r0, #1
	strb r0, [r4, #0xc]
_080450A6:
	pop {r4, pc}

	thumb_func_start sub_080450A8
sub_080450A8: @ 0x080450A8
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
	ldr r1, _08045170 @ =gUnk_03003DBC
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
	bl sub_0805E7BC
_08045160:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804516C: .4byte gUnk_080D16D0
_08045170: .4byte gUnk_03003DBC
_08045174: .4byte gUnk_080D16D4

	thumb_func_start sub_08045178
sub_08045178: @ 0x08045178
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r4, #0
	beq _080451C6
	bl sub_0804A4E4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080002CC
	cmp r0, #0
	bne _080451C6
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	adds r2, r0, r5
	cmp r2, #0
	blt _080451AE
	ldr r0, _080451C8 @ =gRoomControls
	ldrh r1, [r0, #6]
	ldrh r0, [r0, #0x1e]
	adds r1, r1, r0
	cmp r2, r1
	bge _080451AE
	strh r2, [r4, #0x2e]
_080451AE:
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	adds r2, r0, r6
	cmp r2, #0
	blt _080451C6
	ldr r0, _080451C8 @ =gRoomControls
	ldrh r1, [r0, #8]
	ldrh r0, [r0, #0x20]
	adds r1, r1, r0
	cmp r2, r1
	bge _080451C6
	strh r2, [r4, #0x32]
_080451C6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080451C8: .4byte gRoomControls

	thumb_func_start sub_080451CC
sub_080451CC: @ 0x080451CC
	ldrb r3, [r0, #0x10]
	movs r2, #0xfe
	ands r2, r3
	strb r2, [r1, #0x10]
	ldr r2, [r0, #0x2c]
	str r2, [r1, #0x2c]
	ldr r2, [r0, #0x30]
	str r2, [r1, #0x30]
	ldr r2, [r0, #0x34]
	str r2, [r1, #0x34]
	adds r0, #0x68
	adds r1, #0x68
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r2, [r0, #5]
	strb r2, [r1, #5]
	ldrb r2, [r0, #6]
	strb r2, [r1, #6]
	ldrb r2, [r0, #7]
	strb r2, [r1, #7]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
