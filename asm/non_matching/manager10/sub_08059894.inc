	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080598E8 @ =gUnk_020176E0
	mov sb, r0
	movs r6, #0
	lsls r2, r2, #0x18
	mov r8, r2
_080598AA:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	mov r7, r8
	lsrs r3, r7, #0x18
	bl sub_08059960
	adds r5, #0x20
	adds r4, #0x20
	movs r0, #0x20
	add sb, r0
	adds r6, #1
	cmp r6, #0xc
	bls _080598AA
	ldr r0, _080598EC @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl MemCopy
	ldr r2, _080598F0 @ =gUsedPalettes
	ldr r0, [r2]
	ldr r1, _080598F4 @ =0x00207FFC
	orrs r0, r1
	str r0, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080598E8: .4byte gUnk_020176E0
_080598EC: .4byte gUnk_02017700
_080598F0: .4byte gUsedPalettes
_080598F4: .4byte 0x00207FFC
	.syntax divided
