	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08066028
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r6, r4, #0
	adds r6, #0x58
	cmp r0, #2
	bne _0806600C
	movs r0, #0
	movs r1, #4
	strb r1, [r4, #0xc]
	strb r0, [r2]
	ldrb r0, [r6]
	movs r5, #0
	cmp r0, #0xc
	bne _08065FF0
	movs r5, #8
_08065FF0:
	ldr r1, _08066020 @ =gLinkEntity
	adds r0, r4, #0
	bl GetFacingDirection
	bl sub_0806F5A4
	adds r5, r5, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl InitAnimationForceUpdate
	adds r0, r4, #0
	bl sub_0806F118
_0806600C:
	ldr r0, _08066024 @ =gUnk_0811036C
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	b _08066042
	.align 2, 0
_08066020: .4byte gLinkEntity
_08066024: .4byte gUnk_0811036C
_08066028:
	ldr r0, _08066058 @ =gUnk_08110360
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0806ED78
	adds r6, r4, #0
	adds r6, #0x58
_08066042:
	ldrb r0, [r6]
	cmp r0, #0xc
	bne _0806605C
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	b _0806606E
	.align 2, 0
_08066058: .4byte gUnk_08110360
_0806605C:
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #0x39
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #8
	orrs r1, r0
	strb r1, [r2]
_0806606E:
	adds r2, r4, #0
	adds r2, #0x5a
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080660A0
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #0x20
	bl CreateFx
	ldr r4, _080660A4 @ =gUnk_08110380
	bl Random
	movs r1, #7
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrh r0, [r1]
	bl PlaySFX
_080660A0:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080660A4: .4byte gUnk_08110380
    .syntax divided