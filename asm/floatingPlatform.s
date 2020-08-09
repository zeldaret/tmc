	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start FloatingPlatform
FloatingPlatform: @ 0x080860C0
	push {lr}
	ldr r2, _080860D4 @ =gUnk_08120650
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080860D4: .4byte gUnk_08120650

	thumb_func_start sub_080860D8
sub_080860D8: @ 0x080860D8
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, #0xff
	strh r0, [r4, #0x24]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0x1e]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r0, [r2]
	movs r1, #7
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0xb]
	bl GetCurrentRoomProperty
	str r0, [r4, #0x54]
	adds r1, r4, #0
	adds r1, #0x54
	adds r2, r4, #0
	adds r2, #0x70
	adds r0, r4, #0
	bl sub_080A2CC0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808611C
sub_0808611C: @ 0x0808611C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08086168
	adds r1, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _0808613C
	ldr r2, [r4, #0x50]
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	bne _08086144
	cmp r1, #0
	beq _0808613C
	adds r0, #1
	strb r0, [r2, #0xe]
_0808613C:
	adds r0, r4, #0
	bl sub_080A2BE4
	b _0808614C
_08086144:
	adds r0, r4, #0
	movs r1, #0
	bl sub_080A2BE4
_0808614C:
	adds r2, r4, #0
	adds r2, #0x70
	ldrh r0, [r2]
	subs r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086166
	adds r1, r4, #0
	adds r1, #0x54
	adds r0, r4, #0
	bl sub_080A2CC0
_08086166:
	pop {r4, pc}

	thumb_func_start sub_08086168
sub_08086168: @ 0x08086168
	push {r4, lr}
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #1
	ldr r2, _0808619C @ =gUnk_08120658
	adds r1, r1, r2
	ldr r4, _080861A0 @ =gPlayerEntity
	ldrb r2, [r1]
	ldrb r3, [r1, #1]
	adds r1, r4, #0
	bl sub_080041A0
	cmp r0, #0
	beq _080861A8
	bl sub_08079F8C
	cmp r0, #0
	beq _080861A8
	ldr r0, _080861A4 @ =gPlayerState
	movs r1, #1
	strb r1, [r0, #0x14]
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080861A8
	movs r0, #1
	b _080861AA
	.align 2, 0
_0808619C: .4byte gUnk_08120658
_080861A0: .4byte gPlayerEntity
_080861A4: .4byte gPlayerState
_080861A8:
	movs r0, #0
_080861AA:
	pop {r4, pc}
