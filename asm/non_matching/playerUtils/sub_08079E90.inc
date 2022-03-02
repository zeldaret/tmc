	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r1, _08079EBC @ =gPlayerEntity
	ldrb r2, [r1, #0x15]
	movs r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _08079ECA
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _08079EC0
	ldr r0, [r7, #0x48]
	ldrb r0, [r0, #2]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _08079EC4
	.align 2, 0
_08079EBC: .4byte gPlayerEntity
_08079EC0:
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #2]
_08079EC4:
	ldr r0, [r7, #0x48]
	ldrb r4, [r0, #3]
	b _08079EDE
_08079ECA:
	ldr r0, [r7, #0x48]
	ldrb r5, [r0, #4]
	cmp r2, #0
	beq _08079ED6
	ldrb r4, [r0, #5]
	b _08079EDE
_08079ED6:
	ldrb r0, [r0, #5]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08079EDE:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
	adds r0, r7, #0
	mov r1, r8
	adds r2, r6, #0
	bl sub_080002CC
	adds r1, r0, #0
	mov r0, sb
	bl sub_08079F48
	cmp r0, #0
	bne _08079F3C
	ldrb r1, [r7, #0x15]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08079F10
	rsbs r0, r6, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08079F18
_08079F10:
	mov r1, r8
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08079F18:
	ldr r0, _08079F38 @ =gPlayerEntity
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl sub_080002CC
	adds r1, r0, #0
	mov r0, sb
	bl sub_08079F48
	cmp r0, #0
	bne _08079F3C
	movs r0, #0
	b _08079F3E
	.align 2, 0
_08079F38: .4byte gPlayerEntity
_08079F3C:
	movs r0, #1
_08079F3E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
