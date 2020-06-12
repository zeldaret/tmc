	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_080A08AC
sub_080A08AC: @ 0x080A08AC
	push {lr}
	ldr r2, _080A08C0 @ =gUnk_08124950
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A08C0: .4byte gUnk_08124950

	thumb_func_start sub_080A08C4
sub_080A08C4: @ 0x080A08C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	bne _080A08E2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A0960
	b _080A08F6
_080A08E2:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A0960
_080A08F6:
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl UpdateSpriteOrderAndFlip
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080A0910
sub_080A0910: @ 0x080A0910
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x86
	ldrh r0, [r0]
	bl CheckFlags
	cmp r0, #0
	beq _080A0932
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl sub_080A0960
	ldr r0, _080A0934 @ =0x0000010B
	bl PlaySFX
_080A0932:
	pop {r4, pc}
	.align 2, 0
_080A0934: .4byte 0x0000010B

	thumb_func_start sub_080A0938
sub_080A0938: @ 0x080A0938
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	adds r0, r4, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080A095A
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
_080A095A:
	pop {r4, pc}

	thumb_func_start nullsub_127
nullsub_127: @ 0x080A095C
	bx lr
	.align 2, 0

	thumb_func_start sub_080A0960
sub_080A0960: @ 0x080A0960
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080A0998 @ =gUnk_08124960
	cmp r1, #1
	bne _080A096C
	ldr r5, _080A099C @ =gUnk_0812497A
_080A096C:
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _080A09A0 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	movs r3, #0x3f
	ands r1, r3
	movs r6, #0x32
	ldrsh r0, [r4, r6]
	ldrh r2, [r2, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	ands r0, r3
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl sub_0801AF18
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A0998: .4byte gUnk_08124960
_080A099C: .4byte gUnk_0812497A
_080A09A0: .4byte gRoomControls
