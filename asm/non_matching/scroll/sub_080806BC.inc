	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _08080710 @ =gArea
	ldr r1, _08080714 @ =0x0000085C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r5, [r0, #0x18]
	ldrh r0, [r5]
	ldr r1, _08080718 @ =0x0000FFFF
	cmp r0, r1
	beq _08080728
	mov sl, r1
_080806E2:
	ldrh r2, [r5]
	movs r0, #1
	lsls r0, r2
	ands r0, r6
	cmp r0, #0
	beq _08080720
	ldr r1, _0808071C @ =gUnk_0811E7AC
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, sb
	mov r2, r8
	adds r3, r7, #0
	bl _call_via_r4
	cmp r0, #0
	beq _08080720
	adds r0, r5, #0
	bl DoExitTransition
	movs r0, #1
	b _0808072A
	.align 2, 0
_08080710: .4byte gArea
_08080714: .4byte 0x0000085C
_08080718: .4byte 0x0000FFFF
_0808071C: .4byte gUnk_0811E7AC
_08080720:
	adds r5, #0x14
	ldrh r0, [r5]
	cmp r0, sl
	bne _080806E2
_08080728:
	movs r0, #0
_0808072A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.syntax divided
