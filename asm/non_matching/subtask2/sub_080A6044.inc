	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	bl sub_080A51F4
	cmp r0, #0
	beq _080A60C2
	ldr r0, _080A60CC @ =gMenu
	ldr r1, _080A60D0 @ =gUnk_08128D51
	str r1, [r0, #0xc]
	ldr r1, _080A60D4 @ =gOamCmd
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r5, #0
	movs r4, #0
	ldr r0, _080A60D8 @ =gSave
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r3, r0, r2
	ldrb r2, [r3]
	cmp r2, #0
	beq _080A60C2
	adds r6, r1, #0
	movs r1, #0
	mov sb, r1
	adds r7, r0, #0
	mov r8, r3
_080A607E:
	movs r1, #3
	ands r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0x2b
	strh r0, [r6]
	lsrs r1, r5, #2
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x34
	strh r0, [r6, #2]
	ldr r3, _080A60DC @ =0x0000012B
	adds r0, r7, r3
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r0, _080A60CC @ =gMenu
	mov r3, sb
	strb r3, [r0, #1]
	adds r0, r2, #0
	bl sub_080A42E0
	adds r5, #1
	cmp r5, #0xa
	bhi _080A60C2
	adds r4, #1
	cmp r4, #0x11
	bhi _080A60C2
	mov r1, r8
	adds r0, r4, r1
	ldrb r2, [r0]
	cmp r2, #0
	bne _080A607E
_080A60C2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A60CC: .4byte gMenu
_080A60D0: .4byte gUnk_08128D51
_080A60D4: .4byte gOamCmd
_080A60D8: .4byte gSave
_080A60DC: .4byte 0x0000012B
	.syntax divided
