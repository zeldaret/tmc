	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager33_Main
Manager33_Main: @ 0x0805DAE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	ldr r5, _0805DB4C @ =gRoomControls
	ldrh r0, [r5, #6]
	movs r1, #0xfc
	lsls r1, r1, #1
	mov r8, r1
	add r0, r8
	ldr r3, _0805DB50 @ =gPlayerEntity
	movs r4, #0x2e
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	adds r4, r0, #0
	adds r4, #0x10
	ldrh r0, [r5, #8]
	movs r7, #0xa0
	lsls r7, r7, #1
	adds r0, r0, r7
	movs r6, #0x32
	ldrsh r1, [r3, r6]
	subs r0, r0, r1
	adds r0, #0x10
	ldrb r6, [r2, #0xc]
	cmp r6, #0
	bne _0805DB58
	cmp r4, #0x1f
	bhi _0805DB88
	cmp r0, #0x1f
	bhi _0805DB88
	movs r0, #0x36
	ldrsh r1, [r3, r0]
	movs r0, #0x18
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0805DB88
	ldr r0, _0805DB54 @ =gPlayerState
	adds r0, #0xa8
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _0805DB88
	adds r0, r6, #1
	strb r0, [r2, #0xc]
	movs r0, #0x5a
	strb r0, [r2, #0xe]
	adds r0, #0xb0
	bl SoundReq
	b _0805DB88
	.align 2, 0
_0805DB4C: .4byte gRoomControls
_0805DB50: .4byte gPlayerEntity
_0805DB54: .4byte gPlayerState
_0805DB58:
	ldrb r0, [r2, #0xe]
	subs r0, #1
	strb r0, [r2, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805DB88
	movs r0, #0x96
	movs r1, #1
	movs r2, #0
	bl CreateObject
	adds r1, r0, #0
	cmp r1, #0
	beq _0805DB84
	ldrh r0, [r5, #6]
	add r0, r8
	strh r0, [r1, #0x2e]
	ldrh r0, [r5, #8]
	adds r0, r0, r7
	strh r0, [r1, #0x32]
	ldr r0, _0805DB90 @ =0x0000FFE8
	strh r0, [r1, #0x36]
_0805DB84:
	bl DeleteThisEntity
_0805DB88:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805DB90: .4byte 0x0000FFE8
