	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #2
	strb r0, [r5, #3]
	bl sub_080803D0
	adds r0, #6
	strh r0, [r5, #0x18]
	ldr r4, _0808002C @ =gUnk_0200B640
	bl sub_08080278
	strh r0, [r4]
	ldr r1, _08080030 @ =gUnk_08109194
	ldr r0, _08080034 @ =gUnk_03004030
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	bl sub_080197D4
	ldr r4, _08080038 @ =gMapDataTop
	ldrh r1, [r5, #0x1e]
	lsrs r1, r1, #4
	ldrh r2, [r5, #0x20]
	lsrs r2, r2, #4
	adds r0, r4, #0
	bl sub_0807C8B0
	ldr r0, _0808003C @ =gMapDataTopSpecial
	subs r4, #4
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, pc}
	.align 2, 0
_0808002C: .4byte gUnk_0200B640
_08080030: .4byte gUnk_08109194
_08080034: .4byte gUnk_03004030
_08080038: .4byte gMapDataTop
_0808003C: .4byte gMapDataTopSpecial
	.syntax divided
