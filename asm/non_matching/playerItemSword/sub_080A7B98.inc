	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r0, _080A7BFC @ =gPlayerState
	adds r0, #0xac
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	rsbs r0, r0, #0
	lsrs r0, r0, #0x1f
	mov sl, r0
	movs r7, #0x10
	rsbs r7, r7, #0
	movs r0, #0
_080A7BBE:
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #0
	movs r1, #0x10
	adds r1, r1, r7
	mov sb, r1
	adds r0, #1
	mov r8, r0
_080A7BCE:
	movs r0, #0x2e
	ldrsh r2, [r6, r0]
	adds r2, r2, r5
	movs r1, #0x32
	ldrsh r3, [r6, r1]
	adds r3, r3, r7
	adds r0, r6, #0
	mov r1, sl
	bl sub_08008796
	adds r5, #0x10
	adds r4, #1
	cmp r4, #2
	bls _080A7BCE
	mov r7, sb
	mov r0, r8
	cmp r0, #2
	bls _080A7BBE
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A7BFC: .4byte gPlayerState
	.syntax divided
