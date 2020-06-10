	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808B294
sub_0808B294: @ 0x0808B294
	push {lr}
	ldr r2, _0808B2A8 @ =gUnk_08121300
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808B2A8: .4byte gUnk_08121300

	thumb_func_start sub_0808B2AC
sub_0808B2AC: @ 0x0808B2AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808B2C4
	adds r0, r4, #0
	bl sub_0808B41C
	adds r0, r4, #0
	bl sub_0808B3AC
	b _0808B2CA
_0808B2C4:
	adds r0, r4, #0
	bl sub_0808B42C
_0808B2CA:
	pop {r4, pc}

	thumb_func_start sub_0808B2CC
sub_0808B2CC: @ 0x0808B2CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808B2E6
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0808B31C
	b _0808B2F4
_0808B2E6:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _0808B31C
_0808B2F4:
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl UpdateSprite
	adds r0, r4, #0
	adds r0, #0x72
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x70
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl UpdateCollisionLayer
	ldr r0, _0808B320 @ =0x000001A5
	bl sub_08004488
_0808B31C:
	pop {r4, pc}
	.align 2, 0
_0808B320: .4byte 0x000001A5

	thumb_func_start sub_0808B324
sub_0808B324: @ 0x0808B324
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808B340
	adds r0, r4, #0
	bl sub_0808B42C
_0808B340:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808B344
sub_0808B344: @ 0x0808B344
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0808B35E
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	bne _0808B384
	b _0808B36C
_0808B35E:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl sub_0807CBE4
	cmp r0, #0
	beq _0808B384
_0808B36C:
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl UpdateSprite
	adds r0, r4, #0
	bl sub_0808B3AC
	ldr r0, _0808B388 @ =0x000001A5
	bl sub_08004488
_0808B384:
	pop {r4, pc}
	.align 2, 0
_0808B388: .4byte 0x000001A5

	thumb_func_start sub_0808B38C
sub_0808B38C: @ 0x0808B38C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808B3A8
	adds r0, r4, #0
	bl sub_0808B41C
_0808B3A8:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808B3AC
sub_0808B3AC: @ 0x0808B3AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, _0808B414 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r4, #0x32
	ldrsh r0, [r6, r4]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r4, r6, #0
	adds r4, #0x70
	strh r1, [r4]
	ldrh r0, [r4]
	adds r5, r6, #0
	adds r5, #0x38
	ldrb r1, [r5]
	bl sub_080001DA
	adds r1, r6, #0
	adds r1, #0x72
	strh r0, [r1]
	ldrh r0, [r4]
	ldrb r1, [r5]
	bl sub_080002E0
	adds r1, r6, #0
	adds r1, #0x74
	strb r0, [r1]
	ldr r0, _0808B418 @ =0x0000400B
	ldrh r1, [r4]
	ldrb r2, [r5]
	bl UpdateCollisionLayer
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808B414: .4byte gRoomControls
_0808B418: .4byte 0x0000400B

	thumb_func_start sub_0808B41C
sub_0808B41C: @ 0x0808B41C
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xc]
	movs r1, #0
	bl UpdateSprite
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808B42C
sub_0808B42C: @ 0x0808B42C
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r1, [r3]
	movs r2, #7
	orrs r1, r2
	strb r1, [r3]
	movs r1, #1
	bl UpdateSprite
	pop {pc}
	.align 2, 0
