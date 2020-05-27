	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080AD380
sub_080AD380: @ 0x080AD380
	push {r4, lr}
	bl sub_080AD90C
	ldr r4, _080AD398 @ =gUnk_03001000
	ldrb r0, [r4, #3]
	cmp r0, #1
	beq _080AD3BC
	cmp r0, #1
	bgt _080AD39C
	cmp r0, #0
	beq _080AD3A2
	b _080AD3EA
	.align 2, 0
_080AD398: .4byte gUnk_03001000
_080AD39C:
	cmp r0, #2
	beq _080AD3D8
	b _080AD3EA
_080AD3A2:
	bl sub_08056418
	ldr r0, _080AD3B8 @ =gUnk_02032EC0
	movs r1, #0xed
	lsls r1, r1, #2
	bl sub_0801D630
	movs r0, #0
	bl IntroSetTransition
	b _080AD3EA
	.align 2, 0
_080AD3B8: .4byte gUnk_02032EC0
_080AD3BC:
	ldr r1, _080AD3D0 @ =gUnk_081320F0
	ldr r0, _080AD3D4 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _080AD3EA
	.align 2, 0
_080AD3D0: .4byte gUnk_081320F0
_080AD3D4: .4byte gUnk_02032EC0
_080AD3D8:
	ldr r0, _080AD3F0 @ =gUnk_03000FD0
	ldrb r0, [r0]
	cmp r0, #0
	bne _080AD3EE
	movs r0, #1
	bl sub_0801DA90
	movs r0, #1
	strb r0, [r4, #3]
_080AD3EA:
	bl sub_080AD918
_080AD3EE:
	pop {r4, pc}
	.align 2, 0
_080AD3F0: .4byte gUnk_03000FD0