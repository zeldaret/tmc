	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08055E24
sub_08055E24: @ 0x08055E24
	push {r4, lr}
	ldr r4, _08055E5C @ =gMenu
	ldrb r0, [r4, #6]
	adds r0, #1
	strb r0, [r4, #6]
	ldr r1, _08055E60 @ =gUnk_02000070
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r4, #0xc]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0804B0B0
	ldr r0, _08055E64 @ =gUnk_080FF400
	bl LoadRoomEntityList
	ldrb r0, [r4, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08055B70
	movs r0, #4
	movs r1, #0x10
	bl DoFade
	pop {r4, pc}
	.align 2, 0
_08055E5C: .4byte gMenu
_08055E60: .4byte gUnk_02000070
_08055E64: .4byte gUnk_080FF400

	thumb_func_start nullsub_493
nullsub_493: @ 0x08055E68
	bx lr
	.align 2, 0