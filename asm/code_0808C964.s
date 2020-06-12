	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808C964
sub_0808C964: @ 0x0808C964
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xa]
	strb r1, [r4, #0x1e]
	ldrb r0, [r4, #9]
	cmp r0, #0x76
	bne _0808C982
	ldr r0, _0808CA08 @ =gUnk_02032EC0
	adds r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	beq _0808C982
	adds r0, r1, #0
	subs r0, #9
	strb r0, [r4, #0xa]
_0808C982:
	ldrb r0, [r4, #0xa]
	cmp r0, #4
	bls _0808C996
	ldr r0, _0808CA0C @ =gUnk_02033A90
	ldrb r0, [r0, #0x16]
	ldrb r1, [r4, #0xb]
	cmp r0, r1
	beq _0808C996
	bl DeleteThisEntity
_0808C996:
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r2, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x80
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #0x19]
	ldrb r0, [r4, #0xb]
	adds r3, r4, #0
	adds r3, #0x29
	movs r1, #7
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	ldrb r0, [r4, #9]
	cmp r0, #0x75
	beq _0808CA04
	ldrb r2, [r4, #0xa]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0808CA04
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, #1
	bne _0808C9FA
	movs r2, #0xe0
_0808C9FA:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
_0808CA04:
	pop {r4, pc}
	.align 2, 0
_0808CA08: .4byte gUnk_02032EC0
_0808CA0C: .4byte gUnk_02033A90

	thumb_func_start sub_0808CA10
sub_0808CA10: @ 0x0808CA10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #2
	beq _0808CA40
	cmp r0, #2
	bgt _0808CA24
	cmp r0, #1
	beq _0808CA2A
	b _0808CA78
_0808CA24:
	cmp r0, #3
	beq _0808CA60
	b _0808CA78
_0808CA2A:
	ldr r2, _0808CA3C @ =gUnk_02018EB0
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _0808CA78
	movs r0, #0
	movs r1, #0x20
	strb r1, [r4, #0xe]
	strb r0, [r2, #0x18]
	b _0808CA50
	.align 2, 0
_0808CA3C: .4byte gUnk_02018EB0
_0808CA40:
	ldr r2, _0808CA5C @ =gUnk_02018EB0
	ldrb r0, [r2, #0x19]
	cmp r0, #0
	beq _0808CA78
	movs r0, #0
	movs r1, #0x20
	strb r1, [r4, #0xe]
	strb r0, [r2, #0x19]
_0808CA50:
	movs r0, #0x97
	lsls r0, r0, #1
	bl PlaySFX
	b _0808CA78
	.align 2, 0
_0808CA5C: .4byte gUnk_02018EB0
_0808CA60:
	ldr r2, _0808CABC @ =gUnk_02018EB0
	ldrb r0, [r2, #0x1a]
	cmp r0, #0
	beq _0808CA78
	movs r0, #0
	movs r1, #0x20
	strb r1, [r4, #0xe]
	strb r0, [r2, #0x1a]
	movs r0, #0x97
	lsls r0, r0, #1
	bl PlaySFX
_0808CA78:
	ldrb r0, [r4, #9]
	cmp r0, #0x75
	beq _0808CAE0
	ldrb r1, [r4, #0xa]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #2
	bhi _0808CAE0
	ldrb r1, [r4, #0xe]
	cmp r1, #0
	beq _0808CAE0
	subs r1, #1
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #0xf]
	adds r2, r0, #1
	strb r2, [r4, #0xf]
	lsls r1, r1, #0x18
	cmp r1, #0
	beq _0808CAC4
	ldr r0, _0808CAC0 @ =gUnk_08121648
	movs r1, #0xe
	ands r1, r2
	lsls r2, r1, #1
	adds r2, r2, r0
	movs r6, #0
	ldrsh r3, [r2, r6]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r1, r0]
	b _0808CACA
	.align 2, 0
_0808CABC: .4byte gUnk_02018EB0
_0808CAC0: .4byte gUnk_08121648
_0808CAC4:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r3, r2, #0
_0808CACA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0808CAD6
	subs r3, #0x20
	subs r2, #0x20
_0808CAD6:
	adds r0, r4, #0
	adds r1, r3, #0
	movs r3, #0
	bl sub_0805EC9C
_0808CAE0:
	pop {r4, r5, r6, pc}
	.align 2, 0
