	.syntax unified
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r4, _080A3188 @ =gOamCmd
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #6
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #4
	strh r0, [r4, #8]
	movs r0, #0x40
	strh r0, [r4, #2]
	ldr r0, _080A318C @ =gMenu
	movs r1, #0x10
	ldrsh r6, [r0, r1]
	ldr r1, _080A3190 @ =0xFFFFFED8
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r0, _080A3194 @ =0x08A068BF
	mov r8, r0
	ldr r1, [r0]
	mov r5, r8
	subs r5, #0xc
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0xc0
	rsbs r1, r1, #0
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #4]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0x58
	rsbs r1, r1, #0
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r0, #0x10
	subs r0, r0, r6
	strh r0, [r4]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r0, #0x78
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #4]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r0, #0xe0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	mov r0, r8
	ldr r1, [r0]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0xd8
	lsls r1, r1, #1
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #4]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r1, #0
	subs r0, r0, r6
	strh r0, [r4]
	ldr r1, [r5, #8]
	adds r1, r1, r5
	adds r0, r4, #0
	bl sub_080ADA04
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A3188: .4byte gOamCmd
_080A318C: .4byte gMenu
_080A3190: .4byte 0xFFFFFED8
_080A3194: .4byte gUnk_08A068BF
	.syntax divided
