	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080667B0
sub_080667B0: @ 0x080667B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080667C6
	adds r0, r4, #0
	bl sub_08066864
	b _080667DC
_080667C6:
	ldr r0, _080667E0 @ =gUnk_08110644
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
_080667DC:
	pop {r4, pc}
	.align 2, 0
_080667E0: .4byte gUnk_08110644

	thumb_func_start sub_080667E4
sub_080667E4: @ 0x080667E4
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	movs r1, #2
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_08078778
	pop {r4, pc}

	thumb_func_start sub_08066808
sub_08066808: @ 0x08066808
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x28
	movs r2, #0x28
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _0806681E
	movs r1, #2
	b _08066834
_0806681E:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _0806682A
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08066834
_0806682A:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r1, [r0]
_08066834:
	adds r0, r4, #0
	bl sub_0806F078
	cmp r0, #0
	bne _08066844
	adds r0, r4, #0
	bl sub_080042B8
_08066844:
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08066858
	movs r1, #0
	movs r0, #2
	strb r0, [r4, #0xc]
	strb r1, [r2]
_08066858:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806685C
sub_0806685C: @ 0x0806685C
	movs r1, #1
	strb r1, [r0, #0xc]
	bx lr
	.align 2, 0

	thumb_func_start sub_08066864
sub_08066864: @ 0x08066864
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	beq _080668A2
	cmp r0, #1
	bgt _08066878
	cmp r0, #0
	beq _0806687E
	b _080668EC
_08066878:
	cmp r0, #2
	beq _080668DE
	b _080668EC
_0806687E:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD50
	b _080668EC
_080668A2:
	adds r2, r4, #0
	adds r2, #0x39
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #2
	bne _080668D4
	movs r0, #0
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldr r1, _080668D0 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_080045C4
	bl sub_0806F5A4
	adds r1, r0, #0
	adds r0, r4, #0
	bl LoadAnimation
	adds r0, r4, #0
	bl sub_0806F118
	b _080668EC
	.align 2, 0
_080668D0: .4byte gLinkEntity
_080668D4:
	adds r0, r4, #0
	movs r1, #0
	bl sub_0807DD94
	b _080668EC
_080668DE:
	adds r0, r4, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _080668EC
	movs r0, #1
	strb r0, [r4, #0xc]
_080668EC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080668F0
sub_080668F0: @ 0x080668F0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801E99C
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08078784
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08066904
sub_08066904: @ 0x08066904
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	bne _08066916
	movs r1, #0
	b _08066932
_08066916:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	bne _08066924
	movs r1, #1
	b _08066932
_08066924:
	movs r0, #3
	bl GetInventoryValue
	movs r1, #3
	cmp r0, #0
	bne _08066932
	movs r1, #2
_08066932:
	ldr r0, _08066944 @ =gUnk_08110650
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r4, #0
	bl TextboxNoOverlap
	pop {r4, pc}
	.align 2, 0
_08066944: .4byte gUnk_08110650

	thumb_func_start sub_08066948
sub_08066948: @ 0x08066948
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _0806696E
	adds r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0x18]
	adds r0, r2, #0
	movs r1, #6
	bl LoadAnimation
	b _08066974
_0806696E:
	adds r0, r2, #0
	bl sub_080042B8
_08066974:
	pop {pc}
	.align 2, 0
