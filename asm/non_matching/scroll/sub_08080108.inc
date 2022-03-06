	.syntax unified
	push {r4, r5, r6, lr}
	movs r1, #4
	strb r1, [r0, #3]
	ldr r5, _08080178 @ =gMapDataBottom
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r5, r0
	movs r6, #0x80
	lsls r6, r6, #6
	adds r0, r5, #0
	adds r2, r6, #0
	bl MemCopy
	ldr r4, _0808017C @ =gMapDataTop
	movs r0, #0xc0
	lsls r0, r0, #6
	adds r1, r4, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl MemCopy
	bl sub_08080368
	ldr r1, _08080180 @ =gUnk_02034480
	ldr r0, _08080184 @ =gUnk_0200B640
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08080188 @ =gUnk_02022830
	ldr r1, _0808018C @ =gUnk_020246B0
	movs r2, #0xc0
	lsls r2, r2, #5
	bl MemCopy
	subs r5, #4
	adds r0, r5, #0
	bl sub_08080B60
	subs r4, #4
	adds r0, r4, #0
	bl sub_08080B60
	bl sub_0807BBE4
	bl sub_0807BC84
	bl sub_0805E248
	ldr r0, _08080190 @ =gMapDataBottomSpecial
	adds r1, r5, #0
	bl sub_0801AB08
	ldr r0, _08080194 @ =gMapDataTopSpecial
	adds r1, r4, #0
	bl sub_0801AB08
	pop {r4, r5, r6, pc}
	.align 2, 0
_08080178: .4byte gMapDataBottom
_0808017C: .4byte gMapDataTop
_08080180: .4byte gUnk_02034480
_08080184: .4byte gUnk_0200B640
_08080188: .4byte gUnk_02022830
_0808018C: .4byte gUnk_020246B0
_08080190: .4byte gMapDataBottomSpecial
_08080194: .4byte gMapDataTopSpecial
	.syntax divided
