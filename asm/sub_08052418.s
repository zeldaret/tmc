	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08052418
sub_08052418: @ 0x08052418
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, _08052494 @ =gUnk_02021F30
	movs r1, #0x80
	lsls r1, r1, #4
	bl _DmaZero
	ldr r0, _08052498 @ =gUnk_020227E8
	movs r1, #0xf
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	lsls r4, r4, #3
	adds r0, #1
	adds r4, r4, r0
	movs r5, #1
	strb r5, [r4]
	ldr r4, _0805249C @ =gUnk_080FCA8C
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x18
	bl _DmaCopy
	lsls r2, r6, #1
	adds r2, r2, r6
	lsls r2, r2, #2
	ldr r0, _080524A0 @ =gUnk_080FCAA4
	adds r2, r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #7]
	adds r1, r2, r1
	ldrb r0, [r2, #8]
	lsls r0, r0, #5
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [sp]
	mov r4, sp
	ldrb r0, [r2, #9]
	adds r1, r5, #0
	ands r1, r0
	ldrb r3, [r4, #0x13]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x13]
	ldrh r0, [r2, #0xa]
	mov r1, sp
	bl sub_0805F46C
	ldr r0, _080524A4 @ =gScreen
	strh r5, [r0, #0x1a]
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_08052494: .4byte gUnk_02021F30
_08052498: .4byte gUnk_020227E8
_0805249C: .4byte gUnk_080FCA8C
_080524A0: .4byte gUnk_080FCAA4
_080524A4: .4byte gScreen
