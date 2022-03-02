	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, _08080778 @ =gArea
	ldr r1, _0808077C @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r4, [r0, #0x18]
	movs r0, #0xa
	mov r8, r0
	ldrh r0, [r4]
	ldr r1, _08080780 @ =0x0000FFFF
	cmp r0, r1
	beq _0808078C
	adds r7, r1, #0
_08080756:
	movs r0, #1
	ldrh r1, [r4]
	lsls r0, r1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_08080808
	cmp r0, #0
	beq _08080784
	adds r0, r4, #0
	b _0808078E
	.align 2, 0
_08080778: .4byte gArea
_0808077C: .4byte 0x0000085C
_08080780: .4byte 0x0000FFFF
_08080784:
	adds r4, #0x14
	ldrh r0, [r4]
	cmp r0, r7
	bne _08080756
_0808078C:
	movs r0, #0
_0808078E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.syntax divided
