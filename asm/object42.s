	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808DD7C
sub_0808DD7C: @ 0x0808DD7C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xa]
	cmp r0, #0
	beq _0808DD9C
	ldr r0, _0808DD98 @ =gUnk_081217B0
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _0808DDAC
	.align 2, 0
_0808DD98: .4byte gUnk_081217B0
_0808DD9C:
	ldr r0, _0808DDB0 @ =gUnk_081217A8
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_0808DDAC:
	pop {pc}
	.align 2, 0
_0808DDB0: .4byte gUnk_081217A8

	thumb_func_start sub_0808DDB4
sub_0808DDB4: @ 0x0808DDB4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _0808DDDC
	movs r0, #0x78
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x6c
	movs r0, #0xf0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_0808DDE8
_0808DDDC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808DDE0
sub_0808DDE0: @ 0x0808DDE0
	push {lr}
	bl DeleteThisEntity
	pop {pc}

	thumb_func_start sub_0808DDE8
sub_0808DDE8: @ 0x0808DDE8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x6c
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	bl sub_0807953C
	cmp r0, #0
	beq _0808DE04
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
_0808DE04:
	ldrb r0, [r5, #0xf]
	cmp r0, #0x1e
	bhi _0808DE1C
	ldr r0, _0808DE8C @ =gLinkState
	ldr r0, [r0, #0x30]
	ldr r1, _0808DE90 @ =0x00001810
	ands r0, r1
	cmp r0, #0
	bne _0808DE1C
	ldrh r0, [r4]
	cmp r0, #0
	bne _0808DE2A
_0808DE1C:
	ldr r0, _0808DE8C @ =gLinkState
	ldr r1, [r0, #0x30]
	ldr r2, _0808DE94 @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #0x30]
	bl DeleteThisEntity
_0808DE2A:
	ldr r3, _0808DE98 @ =gLinkEntity
	ldr r1, _0808DE9C @ =gUnk_081217B8
	ldrb r0, [r3, #0x14]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r3, #0x2e]
	adds r0, r0, r1
	strh r0, [r5, #0x2e]
	ldrh r0, [r3, #0x32]
	subs r0, #6
	strh r0, [r5, #0x32]
	ldr r0, [r3, #0x34]
	str r0, [r5, #0x34]
	adds r0, r3, #0
	adds r0, #0x38
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x38
	strb r1, [r0]
	ldrb r2, [r3, #0x19]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r4, [r5, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r2
	strb r0, [r5, #0x19]
	ldrb r0, [r3, #0x1b]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x1b]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x1b]
	ldr r0, _0808DE8C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0808DEA0
	adds r0, r5, #0
	bl sub_08004274
	b _0808DEA4
	.align 2, 0
_0808DE8C: .4byte gLinkState
_0808DE90: .4byte 0x00001810
_0808DE94: .4byte 0xFFFFFBFF
_0808DE98: .4byte gLinkEntity
_0808DE9C: .4byte gUnk_081217B8
_0808DEA0:
	bl DeleteThisEntity
_0808DEA4:
	ldr r1, _0808DEC0 @ =gLinkEntity
	ldrb r0, [r1, #0x14]
	lsrs r0, r0, #1
	cmp r0, #2
	bne _0808DEC4
	adds r0, r1, #0
	movs r1, #3
	adds r2, r5, #0
	bl sub_0806FEBC
	ldrh r0, [r5, #0x32]
	subs r0, #5
	strh r0, [r5, #0x32]
	b _0808DECE
	.align 2, 0
_0808DEC0: .4byte gLinkEntity
_0808DEC4:
	adds r0, r1, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_0806FEBC
_0808DECE:
	pop {r4, r5, pc}
