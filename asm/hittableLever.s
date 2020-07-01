	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start HittableLever
HittableLever: @ 0x0808A6F4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bne _0808A706
	adds r0, #0x33
	strh r1, [r0]
_0808A706:
	ldr r0, _0808A718 @ =gUnk_08121178
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808A718: .4byte gUnk_08121178

	thumb_func_start sub_0808A71C
sub_0808A71C: @ 0x0808A71C
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r1, #3
	movs r0, #0x8f
	strb r0, [r1]
	subs r1, #4
	movs r0, #0xa
	strb r0, [r1]
	ldr r0, _0808A75C @ =gUnk_08121180
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _0808A764
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _0808A760
	strb r5, [r4, #0xa]
	b _0808A76E
	.align 2, 0
_0808A75C: .4byte gUnk_08121180
_0808A760:
	strb r0, [r4, #0xa]
	b _0808A76E
_0808A764:
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
_0808A76E:
	adds r0, r4, #0
	bl sub_0808A7D8
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808A778
sub_0808A778: @ 0x0808A778
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x41
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808A7D0
	adds r1, r5, #0
	adds r1, #0x70
	ldrh r0, [r1]
	cmp r0, #0
	bne _0808A7D0
	movs r0, #1
	strh r0, [r1]
	ldrb r0, [r5, #0xa]
	movs r1, #1
	eors r0, r1
	strb r0, [r5, #0xa]
	adds r1, r5, #0
	adds r1, #0x3d
	movs r0, #0xe8
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0808A7D8
	adds r4, r5, #0
	adds r4, #0x86
	ldrh r0, [r4]
	bl CheckFlags
	cmp r0, #0
	beq _0808A7C2
	ldrh r0, [r4]
	bl ClearFlag
	b _0808A7C8
_0808A7C2:
	ldrh r0, [r4]
	bl SetFlag
_0808A7C8:
	ldr r1, _0808A7D4 @ =0x00000117
	adds r0, r5, #0
	bl sub_0800449C
_0808A7D0:
	pop {r4, r5, pc}
	.align 2, 0
_0808A7D4: .4byte 0x00000117

	thumb_func_start sub_0808A7D8
sub_0808A7D8: @ 0x0808A7D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0808A818
	movs r0, #0xde
	lsls r0, r0, #2
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808A814 @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
	b _0808A844
	.align 2, 0
_0808A814: .4byte gRoomControls
_0808A818:
	ldr r0, _0808A848 @ =0x00000377
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _0808A84C @ =gRoomControls
	ldrh r2, [r3, #6]
	subs r1, r1, r2
	asrs r1, r1, #4
	movs r4, #0x3f
	ands r1, r4
	movs r6, #0x32
	ldrsh r2, [r5, r6]
	ldrh r3, [r3, #8]
	subs r2, r2, r3
	asrs r2, r2, #4
	ands r2, r4
	lsls r2, r2, #6
	orrs r1, r2
	adds r2, r5, #0
	adds r2, #0x38
	ldrb r2, [r2]
	bl sub_0807B7D8
_0808A844:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0808A848: .4byte 0x00000377
_0808A84C: .4byte gRoomControls
