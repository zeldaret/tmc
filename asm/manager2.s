	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805754C
sub_0805754C: @ 0x0805754C
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _080575BC @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #3
	adds r1, r1, r0
	ldr r4, _080575C0 @ =gScreen
	movs r6, #0x3f
	adds r0, r1, #0
	ands r0, r6
	strh r0, [r4, #0x30]
	adds r0, r1, #0
	cmp r1, #0
	bge _08057570
	adds r0, #0x3f
_08057570:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r5, _080575C4 @ =gUnk_02002F00
	adds r1, r0, r5
	str r1, [r4, #0x34]
	ldr r0, [r2, #0x38]
	cmp r0, r1
	beq _08057586
	str r1, [r2, #0x38]
	movs r0, #1
	strh r0, [r4, #0x32]
_08057586:
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	ands r0, r6
	strh r0, [r4, #0x18]
	adds r0, r1, #0
	cmp r0, #0
	bge _080575A0
	adds r0, #0x3f
_080575A0:
	asrs r0, r0, #6
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r5, r3
	adds r1, r0, r1
	str r1, [r4, #0x1c]
	ldr r0, [r2, #0x3c]
	cmp r0, r1
	beq _080575BA
	str r1, [r2, #0x3c]
	movs r0, #1
	strh r0, [r4, #0x1a]
_080575BA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080575BC: .4byte gRoomControls
_080575C0: .4byte gScreen
_080575C4: .4byte gUnk_02002F00

	thumb_func_start sub_080575C8
sub_080575C8: @ 0x080575C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _08057664 @ =gUnk_0200B650
	movs r5, #0
	str r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r5, [r0]
	adds r0, r4, #0
	bl sub_0801D7EC
	ldr r0, _08057668 @ =gRoomVars
	strb r4, [r0, #0x10]
	ldr r3, _0805766C @ =gRoomControls
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #3
	adds r1, r1, r0
	ldr r2, _08057670 @ =gScreen
	movs r7, #0x3f
	adds r0, r1, #0
	ands r0, r7
	strh r0, [r2, #0x30]
	strh r5, [r2, #0x2e]
	adds r0, r1, #0
	cmp r1, #0
	bge _08057604
	adds r0, #0x3f
_08057604:
	asrs r0, r0, #6
	lsls r0, r0, #9
	ldr r4, _08057674 @ =gUnk_02002F00
	adds r0, r0, r4
	str r0, [r2, #0x34]
	ldr r0, _08057678 @ =0x00001D49
	strh r0, [r2, #0x2c]
	movs r6, #1
	strh r6, [r2, #0x32]
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	ldrh r0, [r3, #8]
	subs r1, r1, r0
	asrs r0, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	ands r0, r7
	strh r0, [r2, #0x18]
	strh r5, [r2, #0x16]
	adds r0, r1, #0
	cmp r0, #0
	bge _08057632
	adds r0, #0x3f
_08057632:
	asrs r0, r0, #6
	lsls r0, r0, #9
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r4, r3
	adds r0, r0, r1
	str r0, [r2, #0x1c]
	ldr r0, _0805767C @ =0x00001E49
	strh r0, [r2, #0x14]
	strh r6, [r2, #0x1a]
	adds r1, r2, #0
	adds r1, #0x66
	ldr r0, _08057680 @ =0x00003C48
	strh r0, [r1]
	adds r1, #2
	ldr r0, _08057684 @ =0x00000609
	strh r0, [r1]
	ldrh r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08057664: .4byte gUnk_0200B650
_08057668: .4byte gRoomVars
_0805766C: .4byte gRoomControls
_08057670: .4byte gScreen
_08057674: .4byte gUnk_02002F00
_08057678: .4byte 0x00001D49
_0805767C: .4byte 0x00001E49
_08057680: .4byte 0x00003C48
_08057684: .4byte 0x00000609

	thumb_func_start sub_08057688
sub_08057688: @ 0x08057688
	ldr r0, _08057694 @ =gScreen
	ldr r1, _08057698 @ =0x00001D48
	strh r1, [r0, #0x2c]
	ldr r1, _0805769C @ =0x00001E48
	strh r1, [r0, #0x14]
	bx lr
	.align 2, 0
_08057694: .4byte gScreen
_08057698: .4byte 0x00001D48
_0805769C: .4byte 0x00001E48

	thumb_func_start sub_080576A0
sub_080576A0: @ 0x080576A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080576BC @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl sub_0801D7EC
	movs r0, #0
	str r0, [r4, #0x38]
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_0805754C
	pop {r4, pc}
	.align 2, 0
_080576BC: .4byte gRoomVars
