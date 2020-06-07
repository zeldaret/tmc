	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08062E20
sub_08062E20: @ 0x08062E20
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08062E50
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_0806FAB0
	ldr r0, _08062E5C @ =gUnk_0810C3C0
	str r0, [r4, #0x48]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #0xfe
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD64
_08062E50:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	pop {r4, pc}
	.align 2, 0
_08062E5C: .4byte gUnk_0810C3C0
