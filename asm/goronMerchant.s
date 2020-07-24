	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08069718
sub_08069718: @ 0x08069718
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_080696BC
	adds r6, r0, #0
	ldr r0, _08069754 @ =gUnk_02002A40
	adds r0, #0xc0
	ldrh r0, [r0]
	cmp r6, r0
	bgt _08069764
	ldr r5, _08069758 @ =gRoomVars
	ldrb r0, [r5, #7]
	bl sub_0801E7D0
	cmp r0, #0x62
	bhi _0806975C
	rsbs r0, r6, #0
	bl ModRupees
	ldrb r1, [r5, #7]
	movs r0, #0x5c
	movs r2, #0
	bl sub_080A7C18
	movs r0, #0
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	movs r0, #1
	b _0806976E
	.align 2, 0
_08069754: .4byte gUnk_02002A40
_08069758: .4byte gRoomVars
_0806975C:
	ldr r0, _08069760 @ =0x00002C1F
	b _08069766
	.align 2, 0
_08069760: .4byte 0x00002C1F
_08069764:
	ldr r0, _0806977C @ =0x00002C1E
_08069766:
	adds r1, r4, #0
	bl TextboxNoOverlap
	movs r0, #0
_0806976E:
	str r0, [r7, #0x14]
	ldr r2, _08069780 @ =gUnk_02033280
	ldrb r1, [r2, #7]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #7]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0806977C: .4byte 0x00002C1E
_08069780: .4byte gUnk_02033280
