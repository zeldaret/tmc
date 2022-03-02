	.syntax unified
.ifdef EU
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080A5A50 @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r7, #0xc0
	lsls r7, r7, #4
	strh r7, [r6, #8]
	movs r0, #0x2f
	mov r8, r0
	mov r2, r8
	strh r2, [r6, #2]
	ldr r4, _080A5A54 @ =gMenu
	ldrb r1, [r4, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #0x1a
	strh r0, [r6]
	ldr r0, _080A5A58 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	movs r1, #9
	cmp r0, #0
	beq _080A59AC
	movs r1, #8
_080A59AC:
	ldr r5, _080A5A5C @ =0x000001FB
	adds r0, r5, #0
	bl DrawDirect
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A5A60 @ =gUnk_08128D70
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5A0E
	strh r7, [r6, #8]
	movs r0, #0xcc
	strh r0, [r6]
	movs r0, #0x88
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xb
	bl DrawDirect
	movs r0, #0x30
	strh r0, [r6]
	movs r0, #0x6c
	strh r0, [r6, #2]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xd8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	ldrb r1, [r4, #2]
	adds r0, r5, #0
	bl DrawDirect
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	orrs r0, r7
	strh r0, [r6, #8]
	movs r0, #0x78
	strh r0, [r6]
	movs r0, #0x68
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xc
	bl DrawDirect
_080A5A0E:
	mov r0, r8
	strh r0, [r6, #2]
	movs r5, #0
	adds r7, r6, #0
	movs r6, #0x18
_080A5A18:
	lsls r1, r5, #3
	ldr r0, _080A5A60 @ =gUnk_08128D70
	adds r4, r1, r0
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A5A40
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	strh r6, [r7]
	ldr r0, _080A5A5C @ =0x000001FB
	movs r1, #0xa
	bl DrawDirect
_080A5A40:
	adds r6, #0x1b
	adds r5, #1
	cmp r5, #7
	bls _080A5A18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A5A50: .4byte gOamCmd
_080A5A54: .4byte gMenu
_080A5A58: .4byte gMain
_080A5A5C: .4byte 0x000001FB
_080A5A60: .4byte gUnk_08128D70
.else
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r6, _080A6260 @ =gOamCmd
	movs r0, #0
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	movs r7, #0xc0
	lsls r7, r7, #4
	strh r7, [r6, #8]
	movs r0, #0x2f
	mov r8, r0
	mov r2, r8
	strh r2, [r6, #2]
	ldr r4, _080A6264 @ =gMenu
	ldrb r1, [r4, #3]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r0, r1
	adds r0, #0x1a
	strh r0, [r6]
	ldr r0, _080A6268 @ =gMain
	ldrh r1, [r0, #0xc]
	movs r0, #0x20
	ands r0, r1
	movs r1, #9
	cmp r0, #0
	beq _080A61B8
	movs r1, #8
_080A61B8:
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r0, r5, #0
	bl DrawDirect
	ldrb r0, [r4, #3]
	lsls r0, r0, #3
	ldr r1, _080A626C @ =gUnk_08128D70
	adds r4, r0, r1
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A621C
	strh r7, [r6, #8]
	movs r0, #0xcc
	strh r0, [r6]
	movs r0, #0x88
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xb
	bl DrawDirect
	movs r0, #0x30
	strh r0, [r6]
	movs r0, #0x6c
	strh r0, [r6, #2]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xd8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #8]
	ldrb r1, [r4, #2]
	adds r0, r5, #0
	bl DrawDirect
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	orrs r0, r7
	strh r0, [r6, #8]
	movs r0, #0x78
	strh r0, [r6]
	movs r0, #0x68
	strh r0, [r6, #2]
	adds r0, r5, #0
	movs r1, #0xc
	bl DrawDirect
_080A621C:
	mov r0, r8
	strh r0, [r6, #2]
	movs r5, #0
	adds r7, r6, #0
	movs r6, #0x18
_080A6226:
	lsls r1, r5, #3
	ldr r0, _080A626C @ =gUnk_08128D70
	adds r4, r1, r0
	ldrb r0, [r4]
	bl GetInventoryValue
	cmp r0, #0
	beq _080A6250
	ldrb r0, [r4, #1]
	lsls r0, r0, #0xc
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #8]
	strh r6, [r7]
	movs r0, #0xfe
	lsls r0, r0, #1
	movs r1, #0xa
	bl DrawDirect
_080A6250:
	adds r6, #0x1b
	adds r5, #1
	cmp r5, #7
	bls _080A6226
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A6260: .4byte gOamCmd
_080A6264: .4byte gMenu
_080A6268: .4byte gMain
_080A626C: .4byte gUnk_08128D70
.endif
	.syntax divided
