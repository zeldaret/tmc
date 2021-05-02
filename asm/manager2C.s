	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start Manager2C_Main
Manager2C_Main: @ 0x0805D174
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #0xc]
	cmp r1, #0
	bne _0805D184
	movs r0, #1
	strb r0, [r5, #0xc]
	strh r1, [r5, #0x3a]
_0805D184:
	movs r1, #0x38
	ldrsh r0, [r5, r1]
	movs r2, #0x3a
	ldrsh r1, [r5, r2]
	movs r2, #0x14
	movs r3, #0x40
	bl CheckPlayerInRegion
	cmp r0, #0
	beq _0805D1EE
	ldr r0, _0805D1F0 @ =gPlayerEntity
	movs r4, #0x32
	ldrsh r1, [r0, r4]
	ldr r3, _0805D1F4 @ =gRoomControls
	ldrh r2, [r3, #8]
	subs r1, r1, r2
	movs r4, #0x36
	ldrsh r0, [r0, r4]
	adds r1, r1, r0
	cmp r1, #0
	bge _0805D1EE
	movs r1, #0xc
	ldrsh r0, [r3, r1]
	cmp r0, r2
	bne _0805D1EE
	ldr r4, _0805D1F8 @ =gUnk_030010AC
	adds r0, r4, #0
	movs r1, #0x20
	bl MemClear
	subs r4, #0xc
	movs r1, #0
	movs r0, #1
	strb r0, [r4, #8]
	strb r1, [r4, #9]
	movs r0, #0xb
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0xb]
	strb r0, [r4, #0xc]
	ldrb r0, [r5, #0xe]
	strb r0, [r4, #0xd]
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrh r0, [r5, #0x3c]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0x3e]
	strh r0, [r4, #0x12]
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r0, [r0]
	strb r0, [r4, #0x14]
_0805D1EE:
	pop {r4, r5, pc}
	.align 2, 0
_0805D1F0: .4byte gPlayerEntity
_0805D1F4: .4byte gRoomControls
_0805D1F8: .4byte gUnk_030010AC
