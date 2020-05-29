	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08028DE8
sub_08028DE8: @ 0x08028DE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08028E08 @ =gLinkEntity
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	bne _08028E0C
	adds r4, #0x81
	ldrb r0, [r4]
	cmp r0, #0
	bne _08028E3A
	movs r0, #1
	bl sub_08078A90
	movs r0, #1
	strb r0, [r4]
	b _08028E3A
	.align 2, 0
_08028E08: .4byte gLinkEntity
_08028E0C:
	ldr r0, _08028E3C @ =0x00002902
	bl TextboxTryNoOverlap
	movs r1, #0
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x81
	strb r1, [r0]
	movs r0, #1
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	bl sub_08028EDC
	movs r0, #0
	bl sub_08078A90
	adds r0, r4, #0
	bl sub_0800445C
	adds r0, r4, #0
	bl sub_08004274
_08028E3A:
	pop {r4, pc}
	.align 2, 0
_08028E3C: .4byte 0x00002902
