	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0806EC20
sub_0806EC20: @ 0x0806EC20
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x58
	movs r1, #0
	movs r2, #0
	bl CreateNPC
	cmp r0, #0
	beq _0806EC34
	str r4, [r0, #0x50]
_0806EC34:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0806EC38
sub_0806EC38: @ 0x0806EC38
	push {lr}
	movs r0, #7
	movs r1, #0x58
	movs r2, #7
	bl FindEntityInListBySubtype
	cmp r0, #0
	beq _0806EC4C
	bl DeleteEntity
_0806EC4C:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0806EC50
sub_0806EC50: @ 0x0806EC50
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	lsls r0, r0, #3
	ldr r1, _0806EC74 @ =gUnk_08114AE4
	adds r2, r0, r1
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne _0806EC6E
	ldrb r0, [r3, #0xa]
	lsls r0, r0, #3
	ldr r1, [r2, #4]
	adds r2, r1, r0
_0806EC6E:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0806EC74: .4byte gUnk_08114AE4

	thumb_func_start sub_0806EC78
sub_0806EC78: @ 0x0806EC78
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x10]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0806ED4A
	adds r0, r4, #0
	bl sub_0806EC50
	adds r5, r0, #0
	ldrb r1, [r5]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0806ECA2
	ldrb r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x10]
	b _0806ED4A
_0806ECA2:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x16
	adds r1, r2, #0
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _0806ECC0
	cmp r0, #2
	bne _0806ECCA
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r0]
	b _0806ECD0
_0806ECC0:
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _0806ECD0
_0806ECCA:
	adds r0, r4, #0
	bl LoadFixedGFX
_0806ECD0:
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	adds r0, r4, #0
	bl sub_0801D040
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #5]
	movs r3, #3
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r5, #7]
	lsls r1, r1, #0x1b
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #3
	ldrb r2, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r5, #7]
	lsrs r1, r1, #5
	ands r1, r3
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _0806ED4C @ =gUnk_08114EE4
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	ldrb r1, [r4, #0x10]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r1, #0xff
	adds r0, r4, #0
	adds r0, #0x58
	strb r1, [r0]
	strb r1, [r4, #0x1e]
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
_0806ED4A:
	pop {r4, r5, pc}
	.align 2, 0
_0806ED4C: .4byte gUnk_08114EE4
