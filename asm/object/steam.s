	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Steam
Steam: @ 0x08098168
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _080981DA
	movs r2, #1
	movs r3, #1
	strb r3, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x19]
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4, #0x19]
	strb r3, [r4, #0xe]
	bl Random
	movs r1, #0xf
	ands r0, r1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x68
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl ResolveCollisionLayer
	ldr r1, _080981CC @ =gScreen
	adds r2, r1, #0
	adds r2, #0x66
	movs r3, #0
	movs r0, #0xbd
	lsls r0, r0, #6
	strh r0, [r2]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080981D4
	adds r1, #0x68
	ldr r0, _080981D0 @ =0x0000060A
	b _080981D8
	.align 2, 0
_080981CC: .4byte gScreen
_080981D0: .4byte 0x0000060A
_080981D4:
	adds r1, #0x68
	ldr r0, _08098208 @ =0x00000808
_080981D8:
	strh r0, [r1]
_080981DA:
	ldrb r0, [r4, #0xa]
	adds r3, r4, #0
	adds r3, #0x68
	cmp r0, #0
	beq _08098222
	ldr r0, _0809820C @ =gPlayerEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r0, _08098210 @ =gRoomControls
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	movs r0, #0xf8
	lsls r0, r0, #1
	cmp r1, r0
	ble _08098214
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0x3f
	bgt _08098222
	adds r0, r1, #1
	b _08098220
	.align 2, 0
_08098208: .4byte 0x00000808
_0809820C: .4byte gPlayerEntity
_08098210: .4byte gRoomControls
_08098214:
	ldrb r1, [r3]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	ble _08098222
	subs r0, r1, #1
_08098220:
	strb r0, [r3]
_08098222:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809823C
	movs r0, #8
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r4, #0xf]
_0809823C:
	ldr r1, _0809825C @ =gUnk_08123484
	ldrb r0, [r4, #0xf]
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x62
	strb r0, [r2]
	ldrb r0, [r4, #0xf]
	adds r0, r0, r1
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x63
	strb r1, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0809825C: .4byte gUnk_08123484
