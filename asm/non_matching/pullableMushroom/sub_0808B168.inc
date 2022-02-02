	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r1, #0
	beq _0808B188
	ldrb r0, [r3, #0x14]
	movs r1, #2
	eors r1, r0
	lsls r1, r1, #1
	ldr r0, _0808B184 @ =gUnk_081211F4
	adds r2, r1, r0
	adds r1, r2, #1
	ldr r4, [r3, #0x50]
	adds r5, r4, #0
	b _0808B1CE
	.align 2, 0
_0808B184: .4byte gUnk_081211F4
_0808B188:
	ldrb r1, [r3, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808B1B8
	ldr r5, _0808B1AC @ =gPlayerEntity
	ldr r4, [r3, #0x50]
	ldrb r1, [r3, #0x14]
	lsls r2, r1, #1
	ldr r0, _0808B1B0 @ =gUnk_081211FC
	adds r2, r2, r0
	movs r0, #2
	eors r1, r0
	lsls r1, r1, #1
	ldr r0, _0808B1B4 @ =gUnk_081211F5
	adds r1, r1, r0
	b _0808B1CE
	.align 2, 0
_0808B1AC: .4byte gPlayerEntity
_0808B1B0: .4byte gUnk_081211FC
_0808B1B4: .4byte gUnk_081211F4+1
_0808B1B8:
	ldr r5, [r3, #0x50]
	ldr r4, _0808B1E4 @ =gPlayerEntity
	movs r0, #2
	eors r0, r1
	lsls r0, r0, #1
	ldr r1, _0808B1E8 @ =gUnk_081211F4
	adds r2, r0, r1
	ldrb r0, [r3, #0x14]
	lsls r0, r0, #1
	ldr r1, _0808B1EC @ =gUnk_081211FD
	adds r1, r0, r1
_0808B1CE:
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r5, [r5, #0x2e]
	adds r0, r0, r5
	strh r0, [r3, #0x2e]
	movs r0, #0
	ldrsb r0, [r1, r0]
	ldrh r4, [r4, #0x32]
	adds r0, r0, r4
	strh r0, [r3, #0x32]
	pop {r4, r5, pc}
	.align 2, 0
_0808B1E4: .4byte gPlayerEntity
_0808B1E8: .4byte gUnk_081211F4
_0808B1EC: .4byte gUnk_081211FC+1
	.syntax divided
