	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ObjectB5
ObjectB5: @ 0x080A0E28
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _080A0E36
	movs r0, #1
	strb r0, [r1, #0xc]
_080A0E36:
.ifndef EU
	ldr r0, _080A0E48 @ =gRoomControls
	str r1, [r0, #0x30]
.endif
	ldr r0, _080A0E4C @ =gPlayerEntity
	ldr r3, _080A0E50 @ =0xFFD80000
	movs r2, #0
	bl PositionRelative
	pop {pc}
	.align 2, 0
.ifndef EU
_080A0E48: .4byte gRoomControls
.endif
_080A0E4C: .4byte gPlayerEntity
_080A0E50: .4byte 0xFFD80000
