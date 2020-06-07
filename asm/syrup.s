	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0806A1D8
sub_0806A1D8: @ 0x0806A1D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0806A1F4 @ =gUnk_081121D4
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	pop {r4, pc}
	.align 2, 0
_0806A1F4: .4byte gUnk_081121D4

	thumb_func_start sub_0806A1F8
sub_0806A1F8: @ 0x0806A1F8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	ldr r1, _0806A22C @ =gUnk_081121C4
	cmp r0, #0
	bne _0806A206
	ldr r1, _0806A230 @ =gUnk_081121B4
_0806A206:
	adds r0, r4, #0
	bl sub_0806FDEC
	cmp r0, #0
	beq _0806A22A
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
	adds r0, r4, #0
	bl sub_0807DD50
	adds r0, r4, #0
	movs r1, #0
	bl UpdateSprite
_0806A22A:
	pop {r4, pc}
	.align 2, 0
_0806A22C: .4byte gUnk_081121C4
_0806A230: .4byte gUnk_081121B4

	thumb_func_start sub_0806A234
sub_0806A234: @ 0x0806A234
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0807DD94
	adds r0, r4, #0
	adds r0, #0x82
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0806A266
	ldr r0, _0806A268 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0806A25E
	adds r0, r4, #0
	bl sub_0806A26C
_0806A25E:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042BA
_0806A266:
	pop {r4, pc}
	.align 2, 0
_0806A268: .4byte gUnk_030010A0

	thumb_func_start sub_0806A26C
sub_0806A26C: @ 0x0806A26C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xf
	movs r1, #0x2f
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _0806A2AE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0806FA30
	bl Random
	adds r5, r0, #0
	ldr r2, _0806A2B0 @ =gUnk_081121DC
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x62
	strb r0, [r3]
	lsrs r0, r5, #8
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #8
	adds r1, r4, #0
	adds r1, #0x63
	strb r0, [r1]
_0806A2AE:
	pop {r4, r5, pc}
	.align 2, 0
_0806A2B0: .4byte gUnk_081121DC

	thumb_func_start sub_0806A2B4
sub_0806A2B4: @ 0x0806A2B4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	adds r5, r0, #0
	adds r0, #0x5b
	ldrb r0, [r0]
	movs r1, #1
	mov sb, r1
	mov r2, sb
	ands r2, r0
	mov sb, r2
	adds r0, r5, #0
	adds r0, #0x5a
	ldrb r1, [r0]
	lsrs r0, r1, #4
	mov r8, r0
	movs r0, #7
	mov r2, r8
	ands r2, r0
	mov r8, r2
	movs r6, #7
	ands r6, r1
	ldrb r4, [r5, #0x14]
	lsrs r4, r4, #1
	ldr r1, _0806A350 @ =gUnk_081121E4
	ldrb r0, [r5, #0x1e]
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r2, #0x10
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF60
	ldr r0, _0806A354 @ =gUnk_08112204
	adds r4, r4, r0
	ldrb r2, [r4]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0806FF48
	adds r0, r5, #0
	movs r1, #1
	mov r2, r8
	bl sub_0806FF60
	adds r6, #0x1c
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_0806FF60
	movs r0, #0x1a
	add sb, r0
	adds r0, r5, #0
	movs r1, #3
	mov r2, sb
	bl sub_0806FF60
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_0806FFD8
	adds r0, r5, #0
	bl sub_0807000C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0806A350: .4byte gUnk_081121E4
_0806A354: .4byte gUnk_08112204
