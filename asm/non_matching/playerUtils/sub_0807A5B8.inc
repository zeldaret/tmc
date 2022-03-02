	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r2, _0807A5F8 @ =gPlayerState
	ldrb r3, [r2, #2]
	movs r4, #0x80
	adds r0, r4, #0
	ands r0, r3
	cmp r0, #0
	beq _0807A5D2
	b _0807A736
_0807A5D2:
	ldr r1, [r2, #0x30]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807A5DE
	b _0807A736
_0807A5DE:
	adds r0, r2, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _0807A5EA
	b _0807A736
_0807A5EA:
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0807A600
	ldr r7, _0807A5FC @ =gUnk_0800833C
	b _0807A63A
	.align 2, 0
_0807A5F8: .4byte gPlayerState
_0807A5FC: .4byte gUnk_0800833C
_0807A600:
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _0807A60E
	cmp r3, #0
	beq _0807A618
_0807A60E:
	ldr r7, _0807A614 @ =gUnk_0800845C
	b _0807A63A
	.align 2, 0
_0807A614: .4byte gUnk_0800845C
_0807A618:
	ldrb r0, [r2, #5]
	cmp r0, #0
	bne _0807A624
	ldrb r0, [r2, #0x1c]
	cmp r0, #0
	beq _0807A62C
_0807A624:
	ldr r7, _0807A628 @ =gUnk_080084BC
	b _0807A63A
	.align 2, 0
_0807A628: .4byte gUnk_080084BC
_0807A62C:
	adds r0, r2, #0
	adds r0, #0xaa
	ldrb r0, [r0]
	ldr r7, _0807A740 @ =gUnk_080082DC
	cmp r0, #0
	beq _0807A63A
	ldr r7, _0807A744 @ =gUnk_0800851C
_0807A63A:
	mov r0, sb
	cmp r0, #0
	beq _0807A6B8
	cmp r0, #0x10
	beq _0807A6B8
	ldr r6, _0807A748 @ =gPlayerEntity
	ldr r2, [r6, #0x48]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	ldrb r3, [r2, #2]
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	ldr r1, _0807A74C @ =gRoomControls
	mov r8, r1
	ldrh r1, [r1, #6]
	subs r5, r0, r1
	movs r3, #0x32
	ldrsh r0, [r6, r3]
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #8]
	subs r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A688
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #1
	bl sub_0807A750
_0807A688:
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	ldr r2, [r6, #0x48]
	ldrb r0, [r2, #2]
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #6]
	subs r5, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A6B8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #3
	bl sub_0807A750
_0807A6B8:
	mov r3, sb
	cmp r3, #8
	beq _0807A736
	cmp r3, #0x18
	beq _0807A736
	ldr r6, _0807A748 @ =gPlayerEntity
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	ldr r2, [r6, #0x48]
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	ldr r3, _0807A74C @ =gRoomControls
	mov r8, r3
	ldrh r0, [r3, #6]
	subs r5, r1, r0
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	ldrb r3, [r2, #5]
	adds r0, r0, r3
	movs r1, #1
	ldrsb r1, [r2, r1]
	adds r0, r0, r1
	mov r2, r8
	ldrh r1, [r2, #8]
	subs r4, r0, r1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A706
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #2
	bl sub_0807A750
_0807A706:
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	ldr r2, [r6, #0x48]
	ldrb r0, [r2, #5]
	subs r1, r1, r0
	movs r0, #1
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	subs r4, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl sub_080086B4
	cmp r0, #0
	beq _0807A736
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl sub_0807A750
_0807A736:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807A740: .4byte gUnk_080082DC
_0807A744: .4byte gUnk_0800851C
_0807A748: .4byte gPlayerEntity
_0807A74C: .4byte gRoomControls
	.syntax divided
