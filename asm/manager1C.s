	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805B53C
sub_0805B53C: @ 0x0805B53C
	push {lr}
	ldr r2, _0805B550 @ =gUnk_08108C64
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805B550: .4byte gUnk_08108C64

	thumb_func_start sub_0805B554
sub_0805B554: @ 0x0805B554
	movs r1, #1
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xe]
	bx lr

	thumb_func_start sub_0805B55C
sub_0805B55C: @ 0x0805B55C
	push {r4, r5, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B5B4
	movs r0, #0xf
	strb r0, [r1, #0xe]
	movs r0, #0x19
	movs r1, #0
	bl CreateEnemy
	adds r5, r0, #0
	cmp r5, #0
	beq _0805B5B4
	bl Random
	ldr r4, _0805B5B8 @ =gRoomControls
	ldr r2, _0805B5BC @ =gUnk_08108C6C
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #0x78
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	bl Random
	ldr r2, _0805B5C0 @ =gUnk_08108C7C
	movs r1, #3
	ands r1, r0
	adds r1, r1, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, #0x50
	ldrh r4, [r4, #0xc]
	adds r0, r0, r4
	strh r0, [r5, #0x32]
	ldr r0, _0805B5C4 @ =0x0000FF38
	strh r0, [r5, #0x36]
_0805B5B4:
	pop {r4, r5, pc}
	.align 2, 0
_0805B5B8: .4byte gRoomControls
_0805B5BC: .4byte gUnk_08108C6C
_0805B5C0: .4byte gUnk_08108C7C
_0805B5C4: .4byte 0x0000FF38
