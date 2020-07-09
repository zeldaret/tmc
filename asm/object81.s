	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object81
Object81: @ 0x08098C68
	push {lr}
	ldr r2, _08098C7C @ =gUnk_08123674
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08098C7C: .4byte gUnk_08123674

	thumb_func_start sub_08098C80
sub_08098C80: @ 0x08098C80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r5, #1
	strb r5, [r4, #0xc]
	strb r0, [r4, #0xe]
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	ldr r2, _08098CC8 @ =gRoomControls
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
	adds r0, r4, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, _08098CCC @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08098CD0
	adds r1, r4, #0
	adds r1, #0x38
	movs r0, #2
	strb r0, [r1]
	b _08098CD6
	.align 2, 0
_08098CC8: .4byte gRoomControls
_08098CCC: .4byte gLinkState
_08098CD0:
	adds r0, r4, #0
	adds r0, #0x38
	strb r5, [r0]
_08098CD6:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	subs r1, #0x40
	movs r0, #0x47
	movs r2, #1
	bl sub_08000148
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start nullsub_124
nullsub_124: @ 0x08098CF0
	bx lr
	.align 2, 0
