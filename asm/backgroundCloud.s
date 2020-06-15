	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start BackgroundCloud
BackgroundCloud: @ 0x0808F640
	push {lr}
	ldr r2, _0808F654 @ =gUnk_08121EA4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808F654: .4byte gUnk_08121EA4

	thumb_func_start sub_0808F658
sub_0808F658: @ 0x0808F658
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0x1b]
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r5, #0x1b]
	ldrb r0, [r5, #0x19]
	orrs r0, r1
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #0xa]
	adds r3, r5, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r5, #0xa]
	strb r0, [r5, #0x1e]
	movs r0, #8
	strb r0, [r5, #0x15]
	ldr r1, _0808F6D8 @ =gUnk_08121EB0
	ldrb r0, [r5, #0xa]
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r4, #0
	strh r0, [r5, #0x24]
	ldr r3, _0808F6DC @ =gRoomControls
	ldrh r1, [r3, #6]
	adds r2, r1, #0
	subs r2, #0x60
	adds r0, r5, #0
	adds r0, #0x78
	strh r2, [r0]
	ldrh r0, [r3, #0x1e]
	adds r1, r1, r0
	adds r1, #0x60
	adds r0, r5, #0
	adds r0, #0x7a
	strh r1, [r0]
	strb r4, [r5, #0x14]
	bl Random
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #4
	ldrh r1, [r5, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	strb r4, [r5, #0xe]
	strb r4, [r5, #0xd]
	pop {r4, r5, pc}
	.align 2, 0
_0808F6D8: .4byte gUnk_08121EB0
_0808F6DC: .4byte gRoomControls

	thumb_func_start sub_0808F6E0
sub_0808F6E0: @ 0x0808F6E0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0806F69C
	adds r0, r4, #0
	adds r0, #0x78
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	blt _0808F704
	adds r0, r4, #0
	adds r0, #0x7a
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	ble _0808F708
_0808F704:
	movs r0, #2
	strb r0, [r4, #0xc]
_0808F708:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808F70C
sub_0808F70C: @ 0x0808F70C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _0808F75C
	movs r0, #1
	strb r0, [r4, #0xd]
	bl Random
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #3
	adds r0, #0x1f
	strb r0, [r4, #0xe]
	ldrb r1, [r4, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808F738
	adds r0, r4, #0
	adds r0, #0x7a
	b _0808F73C
_0808F738:
	adds r0, r4, #0
	adds r0, #0x78
_0808F73C:
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	bne _0808F75C
	bl Random
	ldr r3, _0808F778 @ =gUnk_08121EB3
	ldrb r1, [r4, #0xb]
	lsls r1, r1, #1
	movs r2, #1
	ands r2, r0
	adds r1, r1, r2
	adds r1, r1, r3
	ldrb r0, [r1]
	strh r0, [r4, #0x32]
_0808F75C:
	ldrb r1, [r4, #0xd]
	cmp r1, #1
	bne _0808F774
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808F774
	strb r1, [r4, #0xc]
	strb r0, [r4, #0xd]
_0808F774:
	pop {r4, pc}
	.align 2, 0
_0808F778: .4byte gUnk_08121EB3
