	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r1, #1
	bl sub_08049FDC
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r2, r7, #0
	adds r2, #0x79
	ldrb r0, [r2]
	cmp r0, #0
	bne _08031084
	cmp r1, #0
	beq _08031074
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r2, [r7, #0x48]
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	movs r3, #0x32
	ldrsh r1, [r7, r3]
	ldrb r2, [r2, #1]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	ldr r2, _08031070 @ =gUnk_020000B0
	ldr r3, [r2]
	movs r4, #0x2e
	ldrsh r2, [r3, r4]
	movs r4, #0x32
	ldrsh r3, [r3, r4]
	b _080311E8
	.align 2, 0
_08031070: .4byte gUnk_020000B0
_08031074:
	movs r0, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x78
	strb r1, [r0]
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	b _080311D8
_08031084:
	cmp r1, #0
	beq _0803108E
	movs r0, #0
	strb r0, [r2]
	b _080311EE
_0803108E:
	adds r0, r7, #0
	adds r0, #0x78
	ldrb r2, [r0]
	adds r1, r2, #0
	mov sl, r0
	cmp r1, #0
	bne _0803109E
	b _080311D4
_0803109E:
	cmp r1, #1
	bne _080310E2
	movs r0, #0x80
	orrs r0, r2
	mov r3, sl
	strb r0, [r3]
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
	bl CalculateDirectionTo
	strb r0, [r7, #0x15]
	adds r0, #4
	movs r2, #0x18
	ands r0, r2
	adds r1, r7, #0
	adds r1, #0x7b
	strb r0, [r1]
	ldrb r3, [r7, #0x15]
	cmp r0, r3
	bhs _080310DC
	adds r0, #8
	ands r0, r2
	b _080310F0
_080310DC:
	subs r0, #8
	ands r0, r2
	b _080310F0
_080310E2:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080310F2
	ldrb r0, [r7, #0x15]
	movs r1, #0x10
	eors r0, r1
_080310F0:
	strb r0, [r7, #0x15]
_080310F2:
	mov r4, sl
	ldrb r2, [r4]
	movs r0, #0x70
	ands r0, r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031120
	lsrs r0, r0, #0x19
	movs r1, #0x8f
	ands r1, r2
	orrs r0, r1
	strb r0, [r4]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080311EE
	adds r0, r7, #0
	adds r0, #0x7b
	ldrb r0, [r0]
	strb r0, [r7, #0x15]
	movs r0, #0
	strb r0, [r4]
	b _080311EE
_08031120:
	movs r0, #0x7b
	adds r0, r0, r7
	mov sb, r0
	ldrb r4, [r0]
	lsrs r4, r4, #1
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	ldr r5, _080311B4 @ =gUnk_080CE2C0
	adds r1, r4, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r4, #1
	adds r2, r2, r5
	ldrb r2, [r2]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	adds r1, r1, r2
	movs r3, #0x38
	adds r3, r3, r7
	mov r8, r3
	ldrb r2, [r3]
	bl GetTileTypeByPos
	adds r6, r0, #0
	movs r1, #0x2e
	ldrsh r0, [r7, r1]
	adds r1, r4, #2
	adds r1, r1, r5
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r4, #3
	adds r4, r4, r5
	movs r2, #0
	ldrsb r2, [r4, r2]
	adds r1, r1, r2
	mov r3, r8
	ldrb r2, [r3]
	bl GetTileTypeByPos
	adds r1, r0, #0
	ldr r2, _080311B8 @ =gUnk_080B3E80
	adds r6, r6, r2
	ldrb r0, [r6]
	mov r3, sb
	cmp r0, #0
	bne _08031194
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _080311C8
_08031194:
	movs r0, #1
	cmp r0, #0
	beq _080311C8
	ldrb r0, [r7, #0x15]
	lsrs r0, r0, #3
	ldrb r4, [r7, #0x14]
	cmp r0, r4
	bne _080311BC
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0x20
	orrs r0, r1
	mov r1, sl
	strb r0, [r1]
	b _080311EE
	.align 2, 0
_080311B4: .4byte gUnk_080CE2C0
_080311B8: .4byte gUnk_080B3E80
_080311BC:
	mov r2, sl
	ldrb r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r2]
	b _080311EE
_080311C8:
	ldrb r0, [r3]
	movs r1, #0
	strb r0, [r7, #0x15]
	mov r3, sl
	strb r1, [r3]
	b _080311EE
_080311D4:
	movs r4, #0x2e
	ldrsh r0, [r7, r4]
_080311D8:
	movs r2, #0x32
	ldrsh r1, [r7, r2]
	adds r2, r7, #0
	adds r2, #0x74
	ldrh r2, [r2]
	adds r3, r7, #0
	adds r3, #0x76
	ldrh r3, [r3]
_080311E8:
	bl CalculateDirectionTo
	strb r0, [r7, #0x15]
_080311EE:
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	asrs r0, r0, #3
	ldrb r3, [r7, #0x14]
	cmp r0, r3
	bne _0803120C
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #1
	strb r0, [r1]
	ldrb r0, [r7, #0x14]
	adds r1, #5
	b _08031232
_0803120C:
	adds r1, r7, #0
	adds r1, #0x7a
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	ldrb r2, [r7, #0x14]
	lsls r1, r2, #3
	subs r0, r0, r1
	movs r1, #0x1f
	ands r0, r1
	cmp r0, #0x10
	bls _08031228
	subs r0, r2, #1
	b _0803122A
_08031228:
	adds r0, r2, #1
_0803122A:
	movs r1, #3
	ands r0, r1
	adds r1, r7, #0
	adds r1, #0x7f
_08031232:
	strb r0, [r1]
	ldrb r0, [r7, #0x15]
	adds r0, #4
	movs r1, #0x18
	ands r0, r1
	movs r1, #0
	strb r0, [r7, #0x15]
	strh r1, [r7, #0x2c]
	strh r1, [r7, #0x30]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
