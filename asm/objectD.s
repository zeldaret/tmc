	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08084334
sub_08084334: @ 0x08084334
	push {lr}
	ldr r2, _08084348 @ =gUnk_0811F908
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08084348: .4byte gUnk_0811F908

	thumb_func_start sub_0808434C
sub_0808434C: @ 0x0808434C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r3, #1
	strb r3, [r5, #0xc]
	ldrb r1, [r5, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r5, #0x10]
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #7
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x3f
	strb r3, [r0]
	adds r1, #4
	movs r0, #0x47
	strb r0, [r1]
	subs r1, #5
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080843E0 @ =gUnk_080FD188
	str r0, [r5, #0x48]
	ldr r0, _080843E4 @ =0x00004050
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _080843E8 @ =gRoomControls
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
	bl SetTile
	ldrb r0, [r5, #0xa]
	cmp r0, #1
	beq _080843C8
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080843EC
_080843C8:
	movs r0, #3
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	adds r0, r5, #0
	movs r1, #1
	bl InitializeAnimation
	b _080843F4
	.align 2, 0
_080843E0: .4byte gUnk_080FD188
_080843E4: .4byte 0x00004050
_080843E8: .4byte gRoomControls
_080843EC:
	ldrb r1, [r5, #0xa]
	adds r0, r5, #0
	bl InitializeAnimation
_080843F4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_080843F8
sub_080843F8: @ 0x080843F8
	push {lr}
	adds r2, r0, #0
	adds r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0x9c
	bne _08084420
	movs r0, #2
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
	adds r0, r2, #0
	movs r1, #0xd
	movs r2, #0
	bl CreateFx
	ldr r0, _08084424 @ =0x0000010D
	bl sub_08004488
_08084420:
	pop {pc}
	.align 2, 0
_08084424: .4byte 0x0000010D

	thumb_func_start sub_08084428
sub_08084428: @ 0x08084428
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08084454
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl SetFlag
	movs r0, #0x86
	lsls r0, r0, #1
	bl sub_08004488
_08084454:
	pop {r4, pc}
	.align 2, 0
