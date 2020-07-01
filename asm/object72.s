	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object72
Object72: @ 0x080979B4
	push {lr}
	ldr r2, _080979C8 @ =gUnk_081232E4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080979C8: .4byte gUnk_081232E4

	thumb_func_start sub_080979CC
sub_080979CC: @ 0x080979CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #0xa]
	cmp r0, #3
	bne _08097A20
	movs r0, #0
	strb r0, [r5, #0x1e]
	ldr r0, _08097A18 @ =gUnk_081232FE
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08097A1C @ =gRoomControls
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
	bl sub_0801AF18
	b _08097A4E
	.align 2, 0
_08097A18: .4byte gUnk_081232FE
_08097A1C: .4byte gRoomControls
_08097A20:
	strb r0, [r5, #0x1e]
	ldr r0, _08097A50 @ =gUnk_081232EC
	movs r2, #0x2e
	ldrsh r1, [r5, r2]
	ldr r3, _08097A54 @ =gRoomControls
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
	bl sub_0801AF18
_08097A4E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08097A50: .4byte gUnk_081232EC
_08097A54: .4byte gRoomControls

	thumb_func_start nullsub_529
nullsub_529: @ 0x08097A58
	bx lr
	.align 2, 0
