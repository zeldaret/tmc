	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r0, _080ACD20 @ =gScreenTransition
	ldr r0, [r0]
	adds r0, r2, r0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080ACCF8
	ldr r0, _080ACD24 @ =gUnk_0812AAAC
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r7, [r1]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080ACCA4
	str r0, [r4, #0x74]
_080ACCA4:
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r3, [r0, r3]
	adds r0, r4, #0
	movs r1, #0xe
	bl sub_08008782
	adds r5, r0, #0
	cmp r5, #0
	beq _080ACCF2
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #2]
	movs r0, #0x11
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACCF2
	ldrb r0, [r5, #3]
	strb r0, [r6, #0xe]
	ldr r0, [r4, #0x74]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r6, #0x2e]
	ldr r0, [r4, #0x74]
	adds r0, r0, r7
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r6, #0x32]
_080ACCF2:
	ldr r0, [r4, #0x74]
	adds r0, #2
	str r0, [r4, #0x74]
_080ACCF8:
	ldr r2, [r4, #0x54]
	cmp r2, #0
	bne _080ACD08
	ldr r0, [r4, #0x70]
	cmp r0, #2
	bls _080ACD08
	movs r0, #1
	str r0, [r4, #0x70]
_080ACD08:
	ldr r0, [r4, #0x70]
	subs r0, #1
	str r0, [r4, #0x70]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080ACDAE
	cmp r2, #0
	bne _080ACD28
	movs r0, #2
	b _080ACD32
	.align 2, 0
_080ACD20: .4byte gScreenTransition
_080ACD24: .4byte gUnk_0812AAAC
_080ACD28:
	ldr r0, _080ACD74 @ =gUnk_0812AABC
	ldrb r1, [r4, #0xa]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
_080ACD32:
	str r0, [r4, #0x70]
	movs r0, #0x17
	movs r1, #0
	movs r2, #0
	bl CreateObject
	adds r6, r0, #0
	cmp r6, #0
	beq _080ACDAE
	bl Random
	adds r2, r0, #0
	movs r0, #0xf
	ands r2, r0
	ldr r3, [r4, #0x48]
	ldrb r1, [r3, #6]
	cmp r1, r2
	bge _080ACD58
	adds r2, r1, #0
_080ACD58:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _080ACD62
	rsbs r2, r2, #0
_080ACD62:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	cmp r0, #1
	beq _080ACD9C
	cmp r0, #1
	bgt _080ACD78
	cmp r0, #0
	beq _080ACD82
	b _080ACDAE
	.align 2, 0
_080ACD74: .4byte gUnk_0812AABC
_080ACD78:
	cmp r0, #2
	beq _080ACD8C
	cmp r0, #3
	beq _080ACDA2
	b _080ACDAE
_080ACD82:
	ldrb r0, [r3, #7]
	ldrh r1, [r4, #0x32]
	subs r1, r1, r0
	strh r1, [r6, #0x32]
	b _080ACD94
_080ACD8C:
	ldrh r0, [r4, #0x32]
	ldrb r3, [r3, #7]
	adds r0, r0, r3
	strh r0, [r6, #0x32]
_080ACD94:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r2
	strh r0, [r6, #0x2e]
	b _080ACDAE
_080ACD9C:
	ldrh r0, [r4, #0x2e]
	adds r0, r0, r1
	b _080ACDA6
_080ACDA2:
	ldrh r0, [r4, #0x2e]
	subs r0, r0, r1
_080ACDA6:
	strh r0, [r6, #0x2e]
	ldrh r0, [r4, #0x32]
	adds r0, r0, r2
	strh r0, [r6, #0x32]
_080ACDAE:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
