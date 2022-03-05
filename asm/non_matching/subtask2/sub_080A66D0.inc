	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080A5F74 @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r0, #0x78
	strh r0, [r6]
	ldr r4, _080A5F78 @ =gMenu
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A5F7C @ =gUnk_08128E94
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A5F30
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _080A5F30
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080A5F1A
	movs r0, #0xc
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	movs r1, #0x71
	bl DrawDirect
_080A5F1A:
	ldrb r0, [r5, #2]
	ldrh r4, [r4, #0xa]
	cmp r0, r4
	bls _080A5F30
	movs r0, #0x84
	strh r0, [r6, #2]
	movs r0, #0xfd
	lsls r0, r0, #1
	movs r1, #0x72
	bl DrawDirect
_080A5F30:
	ldrb r0, [r5, #7]
	mov sl, r0
	ldrb r5, [r5, #3]
	mov sb, r5
	ldr r1, _080A5F78 @ =gMenu
	ldrh r0, [r1, #0xa]
	mov r8, r0
	ldr r2, _080A5F74 @ =gOamCmd
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r1, #0x2c
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080A5F80 @ =gMapDataBottomSpecial
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080A5FAE
	rsbs r5, r6, #0
	orrs r5, r6
	adds r7, r2, #0
_080A5F66:
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080A5F84
	lsrs r1, r5, #0x1f
	b _080A5F8A
	.align 2, 0
_080A5F74: .4byte gOamCmd
_080A5F78: .4byte gMenu
_080A5F7C: .4byte gUnk_08128E94
_080A5F80: .4byte gMapDataBottomSpecial
_080A5F84:
	cmp r6, #0
	bne _080A5F8A
	movs r1, #1
_080A5F8A:
	cmp r1, #0
	beq _080A5FA6
	ldrh r0, [r4, #4]
	add r0, sl
	strh r0, [r7]
	ldrh r0, [r4, #6]
	add r0, sb
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #1]
	bl DrawDirect
_080A5FA6:
	adds r4, #8
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _080A5F66
_080A5FAE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
.else
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r6, _080A677C @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r0, #0x78
	strh r0, [r6]
	ldr r4, _080A6780 @ =gMenu
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A6784 @ =gUnk_08128E94
	adds r5, r0, r1
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A6738
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq _080A6738
	movs r0, #0x80
	lsls r0, r0, #4
	strh r0, [r6, #8]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _080A6724
	movs r0, #0xc
	strh r0, [r6, #2]
	ldr r0, _080A6788 @ =0x000001FB
	movs r1, #0x71
	bl DrawDirect
_080A6724:
	ldrb r0, [r5, #2]
	ldrh r4, [r4, #0xa]
	cmp r0, r4
	bls _080A6738
	movs r0, #0x84
	strh r0, [r6, #2]
	ldr r0, _080A6788 @ =0x000001FB
	movs r1, #0x72
	bl DrawDirect
_080A6738:
	ldrb r0, [r5, #7]
	mov sl, r0
	ldrb r5, [r5, #3]
	mov sb, r5
	ldr r1, _080A6780 @ =gMenu
	ldrh r0, [r1, #0xa]
	mov r8, r0
	ldr r2, _080A677C @ =gOamCmd
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r2, #8]
	adds r1, #0x2c
	ldrb r1, [r1]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, _080A678C @ =gMapDataBottomSpecial
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _080A67BA
	rsbs r5, r6, #0
	orrs r5, r6
	adds r7, r2, #0
_080A676E:
	movs r1, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _080A6790
	lsrs r1, r5, #0x1f
	b _080A6796
	.align 2, 0
_080A677C: .4byte gOamCmd
_080A6780: .4byte gMenu
_080A6784: .4byte gUnk_08128E94
_080A6788: .4byte 0x000001FB
_080A678C: .4byte gMapDataBottomSpecial
_080A6790:
	cmp r6, #0
	bne _080A6796
	movs r1, #1
_080A6796:
	cmp r1, #0
	beq _080A67B2
	ldrh r0, [r4, #4]
	add r0, sl
	strh r0, [r7]
	ldrh r0, [r4, #6]
	add r0, sb
	mov r1, r8
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldrh r0, [r4, #2]
	ldrb r1, [r4, #1]
	bl DrawDirect
_080A67B2:
	adds r4, #8
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _080A676E
_080A67BA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
.endif
	.syntax divided
