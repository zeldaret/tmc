    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	mov r8, r1
	mov r0, r8
	adds r0, #0x38
	movs r1, #0x38
	adds r1, r1, r7
	mov sl, r1
	ldrb r1, [r0]
	mov r3, sl
	ldrb r0, [r3]
	ands r0, r1
	cmp r0, #0
	beq _0804A15A
	movs r5, #0
	mov r0, r8
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	ldr r0, [r0, #0x48]
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	movs r3, #0x2e
	ldrsh r0, [r7, r3]
	subs r1, r1, r0
	ldr r4, [r7, #0x48]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r6, r1, r0
	lsrs r3, r2, #1
	adds r0, r6, r3
	cmp r2, r0
	blo _0804A096
	movs r5, #1
_0804A096:
	lsls r0, r2, #1
	mov sb, r0
	adds r0, r6, r2
	cmp sb, r0
	blo _0804A0A4
	movs r0, #2
	orrs r5, r0
_0804A0A4:
	mov r1, r8
	movs r0, #0x32
	ldrsh r1, [r1, r0]
	str r1, [sp]
	mov r1, ip
	ldrb r1, [r1, #1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov ip, r1
	ldr r0, [sp]
	add r0, ip
	str r0, [sp]
	movs r0, #0x32
	ldrsh r1, [r7, r0]
	ldr r0, [sp]
	subs r0, r0, r1
	movs r1, #1
	ldrsb r1, [r4, r1]
	subs r4, r0, r1
	adds r0, r4, r3
	cmp r2, r0
	blo _0804A0D4
	movs r0, #4
	orrs r5, r0
_0804A0D4:
	adds r0, r4, r2
	cmp sb, r0
	blo _0804A0DE
	movs r0, #8
	orrs r5, r0
_0804A0DE:
	cmp r5, #0
	beq _0804A15A
	movs r0, #5
	ands r0, r5
	cmp r0, #0xa
	beq _0804A15A
	mov r1, sl
	ldrb r0, [r1]
	bl GetLayerByIndex
	mov sb, r0
	cmp r6, #0
	bge _0804A0FA
	rsbs r6, r6, #0
_0804A0FA:
	cmp r4, #0
	bge _0804A100
	rsbs r4, r4, #0
_0804A100:
	cmp r6, r4
	bge _0804A12E
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0804A11A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A168
	cmp r0, #0xff
	bne _0804A15C
_0804A11A:
	movs r0, #4
	ands r5, r0
	cmp r5, #0
	beq _0804A15A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A318
	b _0804A156
_0804A12E:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0804A144
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A318
	cmp r0, #0xff
	bne _0804A15C
_0804A144:
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0804A15A
	adds r0, r7, #0
	mov r1, r8
	mov r2, sb
	bl sub_0804A168
_0804A156:
	cmp r0, #0xff
	bne _0804A15C
_0804A15A:
	movs r0, #0xff
_0804A15C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
    .syntax divided
