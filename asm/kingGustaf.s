	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start KingGustaf
KingGustaf: @ 0x0806C0B0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r5, r0, #0
	cmp r5, #0
	bne _0806C104
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	ldr r1, _0806C100 @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r0, #0xfd
	lsls r0, r0, #6
	strh r0, [r2]
	adds r1, #0x68
	movs r0, #0x80
	lsls r0, r0, #5
	strh r0, [r1]
	strh r0, [r4, #0x24]
	str r5, [r4, #0x20]
	b _0806C134
	.align 2, 0
_0806C100: .4byte gScreen
_0806C104:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	lsls r3, r0, #8
	ldr r0, [r4, #0x20]
	adds r3, r3, r0
	asrs r3, r3, #0x10
	cmp r3, #0x10
	ble _0806C11E
	movs r3, #0x10
_0806C11E:
	cmp r3, #3
	bgt _0806C124
	movs r3, #4
_0806C124:
	ldr r2, _0806C138 @ =gScreen
	lsls r1, r3, #8
	movs r0, #0x10
	subs r0, r0, r3
	orrs r1, r0
	adds r2, #0x68
	strh r1, [r2]
	strh r1, [r4, #0x24]
_0806C134:
	pop {r4, r5, pc}
	.align 2, 0
_0806C138: .4byte gScreen
