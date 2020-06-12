	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808E280
sub_0808E280: @ 0x0808E280
	push {lr}
	ldr r2, _0808E294 @ =gUnk_08121B8C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808E294: .4byte gUnk_08121B8C

	thumb_func_start sub_0808E298
sub_0808E298: @ 0x0808E298
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x38
	movs r1, #2
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r5, #0
	movs r6, #0
	adds r0, r4, #0
	bl GetTileTypeByEntity
	adds r1, r0, #0
	movs r0, #0xd1
	lsls r0, r0, #2
	cmp r1, r0
	beq _0808E2DA
	cmp r1, r0
	bhi _0808E2C6
	subs r0, #1
	cmp r1, r0
	beq _0808E2D8
	b _0808E2E2
_0808E2C6:
	ldr r0, _0808E2D4 @ =0x00000345
	cmp r1, r0
	beq _0808E2DE
	adds r0, #1
	cmp r1, r0
	beq _0808E2E6
	b _0808E2E2
	.align 2, 0
_0808E2D4: .4byte 0x00000345
_0808E2D8:
	movs r5, #0x10
_0808E2DA:
	movs r6, #0x10
	b _0808E2E6
_0808E2DE:
	movs r5, #0x10
	b _0808E2E6
_0808E2E2:
	bl sub_0805E780
_0808E2E6:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r5
	movs r2, #0x10
	rsbs r2, r2, #0
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r4, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, r0, r6
	ands r0, r1
	strh r0, [r4, #0x32]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	ldr r1, _0808E314 @ =0x00000347
	adds r0, r4, #0
	bl sub_0808E354
	adds r0, r4, #0
	bl sub_0808E318
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808E314: .4byte 0x00000347

	thumb_func_start sub_0808E318
sub_0808E318: @ 0x0808E318
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808E340
	ldr r1, _0808E33C @ =0x00000343
	adds r0, r4, #0
	bl sub_0808E354
	bl sub_0805E780
	b _0808E34E
	.align 2, 0
_0808E33C: .4byte 0x00000343
_0808E340:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808E34E
	ldr r0, _0808E350 @ =0x0000018B
	bl sub_08004488
_0808E34E:
	pop {r4, pc}
	.align 2, 0
_0808E350: .4byte 0x0000018B

	thumb_func_start sub_0808E354
sub_0808E354: @ 0x0808E354
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	mov r8, r1
	mov r0, r8
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldr r5, _0808E410 @ =gRoomControls
	ldrh r0, [r5, #6]
	adds r0, #0x10
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r2, [r5, #8]
	adds r2, #0x10
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	movs r2, #2
	bl sub_0807B7D8
	mov r0, r8
	adds r0, #1
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldrh r2, [r5, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	adds r3, #0x10
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #2
	bl sub_0807B7D8
	mov r0, r8
	adds r0, #2
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldrh r2, [r5, #6]
	adds r2, #0x10
	subs r1, r1, r2
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r2, [r6, r3]
	ldrh r3, [r5, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	movs r2, #2
	bl sub_0807B7D8
	movs r0, #3
	add r8, r0
	movs r2, #0x2e
	ldrsh r1, [r6, r2]
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	ands r1, r4
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	ldrh r2, [r5, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r1, r0
	mov r0, r8
	movs r2, #2
	bl sub_0807B7D8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808E410: .4byte gRoomControls
