	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object28
Object28: @ 0x0808976C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080897D0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	strb r0, [r4, #0x1e]
	ldrb r0, [r4, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	orrs r0, r1
	strb r0, [r4, #0x19]
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _080897AE
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	strb r1, [r2]
	b _080897BA
_080897AE:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
_080897BA:
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrh r0, [r4, #0x32]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
_080897D0:
	ldrb r1, [r4, #0x10]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _08089840
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08089844 @ =gRoomControls
	movs r3, #0xa
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	adds r3, r5, #0
	subs r3, #0x78
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	movs r6, #0xc
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	adds r2, r1, #0
	subs r2, #0x50
	adds r0, r3, #0
	cmp r0, #0
	bge _08089802
	adds r0, r5, #0
	subs r0, #0x75
_08089802:
	asrs r3, r0, #2
	adds r0, r2, #0
	cmp r0, #0
	bge _0808980E
	adds r0, r1, #0
	subs r0, #0x4d
_0808980E:
	asrs r2, r0, #2
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r3, r0
	bge _0808981A
	adds r3, r0, #0
_0808981A:
	cmp r3, #0x10
	ble _08089820
	movs r3, #0x10
_08089820:
	cmp r2, r0
	bge _08089826
	adds r2, r0, #0
_08089826:
	cmp r2, #0x10
	ble _0808982C
	movs r2, #0x10
_0808982C:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	adds r0, r0, r3
	strh r0, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	adds r0, r0, r2
	strh r0, [r4, #0x32]
_08089840:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08089844: .4byte gRoomControls
