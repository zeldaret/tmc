	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808D5DC
sub_0808D5DC: @ 0x0808D5DC
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	bne _0808D614
	movs r2, #1
	movs r0, #1
	strb r0, [r3, #0xc]
	ldrb r1, [r3, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x18]
	ldrb r0, [r3, #0x19]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r3, #0x19]
	adds r2, r3, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r3, #0xa]
	strb r0, [r3, #0x1e]
	adds r0, r3, #0
	bl sub_0808D618
_0808D614:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808D618
sub_0808D618: @ 0x0808D618
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	ldr r7, _0808D664 @ =gUnk_08121750
	cmp r0, #0
	beq _0808D626
	ldr r7, _0808D668 @ =gUnk_0812176A
_0808D626:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	ldr r3, _0808D66C @ =gRoomControls
	ldrh r1, [r3, #6]
	subs r0, r0, r1
	asrs r5, r0, #4
	movs r2, #0x3f
	ands r5, r2
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	ldrh r1, [r3, #8]
	subs r0, r0, r1
	asrs r0, r0, #4
	ands r0, r2
	lsls r0, r0, #6
	orrs r5, r0
	movs r6, #0
	adds r4, r7, #0
_0808D64A:
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r1, r5, r1
	ldr r0, _0808D670 @ =0x00004074
	movs r2, #1
	bl UpdateCollisionLayer
	adds r4, #2
	adds r6, #1
	cmp r6, #0xc
	bls _0808D64A
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808D664: .4byte gUnk_08121750
_0808D668: .4byte gUnk_0812176A
_0808D66C: .4byte gRoomControls
_0808D670: .4byte 0x00004074
