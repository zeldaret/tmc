	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808386C
sub_0808386C: @ 0x0808386C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080838C8 @ =gLinkState
	adds r0, #0x27
	ldrb r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r2, r0, #0x1f
	ldr r0, _080838CC @ =gUnk_02022740
	ldrb r0, [r0]
	cmp r0, #2
	bgt _08083894
	cmp r0, #0
	blt _08083894
	ldr r0, _080838D0 @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080838AC
_08083894:
	ldr r0, _080838D4 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #3]
	cmp r0, #0x32
	bne _080838AA
	movs r0, #0x32
	bl CheckKinstoneFused
	movs r2, #0
	cmp r0, #0
	beq _080838AC
_080838AA:
	movs r2, #1
_080838AC:
	cmp r2, #0
	beq _080838B6
	adds r0, r4, #0
	bl sub_080838DC
_080838B6:
	ldr r0, _080838D8 @ =gUnk_0811F754
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_080838C8: .4byte gLinkState
_080838CC: .4byte gUnk_02022740
_080838D0: .4byte gTextBox
_080838D4: .4byte gUnk_03003DF0
_080838D8: .4byte gUnk_0811F754

	thumb_func_start sub_080838DC
sub_080838DC: @ 0x080838DC
	ldrb r2, [r0, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x1b]
	movs r3, #0x3f
	adds r1, r3, #0
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0, #0x1b]
	ldrb r1, [r0, #0x19]
	ands r3, r1
	strb r3, [r0, #0x19]
	adds r3, r0, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r1, #8
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r3]
	movs r2, #0
	movs r1, #4
	strb r1, [r0, #0xe]
	str r2, [r0, #0x54]
	strb r2, [r0, #0xc]
	bx lr

	thumb_func_start sub_08083914
sub_08083914: @ 0x08083914
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #1
	beq _08083942
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	bl sub_080AE008
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	ldr r1, _08083958 @ =0x01027820
	movs r0, #1
	bl sub_080ADDD8
	adds r0, r4, #0
	bl sub_080838DC
_08083942:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x10]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r4, #0x10]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	pop {r4, pc}
	.align 2, 0
_08083958: .4byte 0x01027820

	thumb_func_start sub_0808395C
sub_0808395C: @ 0x0808395C
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xe]
	cmp r0, #0
	beq _0808396C
	subs r0, #1
	strb r0, [r2, #0xe]
	b _08083992
_0808396C:
	ldr r3, _08083994 @ =gUnk_03003DF0
	ldr r0, [r3, #4]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _08083992
	ldrb r0, [r0, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _08083992
	str r1, [r2, #0x54]
	ldrb r0, [r3, #3]
	adds r1, r2, #0
	adds r1, #0x39
	strb r0, [r1]
	adds r0, r2, #0
	bl sub_08083A40
_08083992:
	pop {pc}
	.align 2, 0
_08083994: .4byte gUnk_03003DF0

	thumb_func_start sub_08083998
sub_08083998: @ 0x08083998
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #1
	beq _080839C8
	ldr r0, _080839C4 @ =gUnk_03003DF0
	ldr r2, [r0, #4]
	ldrb r0, [r2, #3]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x63
	bhi _080839BA
	ldr r1, [r4, #0x54]
	ldr r0, [r2, #8]
	cmp r1, r0
	beq _080839C8
_080839BA:
	adds r0, r4, #0
	bl sub_080838DC
	b _08083A32
	.align 2, 0
_080839C4: .4byte gUnk_03003DF0
_080839C8:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r1, #0x30]
	str r0, [r4, #0x30]
	ldr r0, [r1, #0x34]
	str r0, [r4, #0x34]
	adds r1, r4, #0
	adds r1, #0x5a
	ldrb r0, [r1]
	cmp r0, #1
	bne _08083A2C
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080839F8
	ldr r0, _080839F4 @ =gUnk_03003DF0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #3]
	b _080839FA
	.align 2, 0
_080839F4: .4byte gUnk_03003DF0
_080839F8:
	ldrb r0, [r4, #0xb]
_080839FA:
	lsls r0, r0, #3
	ldr r1, _08083A34 @ =gUnk_080C9CBC
	adds r0, r0, r1
	ldrb r2, [r0, #6]
	movs r1, #1
	ands r1, r2
	ldrb r3, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldr r0, _08083A38 @ =gUnk_0811F744
	lsls r2, r2, #2
	adds r2, r2, r0
	ldr r1, [r2]
	lsrs r2, r1, #0x1f
	ldr r0, _08083A3C @ =0x00FFFFFF
	ands r1, r0
	orrs r1, r2
	adds r0, #1
	orrs r1, r0
	movs r0, #0
	bl sub_080ADDD8
_08083A2C:
	adds r0, r4, #0
	bl sub_08004274
_08083A32:
	pop {r4, pc}
	.align 2, 0
_08083A34: .4byte gUnk_080C9CBC
_08083A38: .4byte gUnk_0811F744
_08083A3C: .4byte 0x00FFFFFF

	thumb_func_start sub_08083A40
sub_08083A40: @ 0x08083A40
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #2
	strb r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	ldr r1, _08083A70 @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r2, [r0, r3]
	movs r3, #0x2e
	ldrsh r0, [r1, r3]
	cmp r2, r0
	ble _08083A74
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #8
	b _08083A7C
	.align 2, 0
_08083A70: .4byte gLinkEntity
_08083A74:
	movs r1, #1
	adds r2, r4, #0
	adds r2, #0x62
	movs r0, #0xf8
_08083A7C:
	strb r0, [r2]
	adds r2, r4, #0
	adds r2, #0x63
	movs r0, #0xee
	strb r0, [r2]
	adds r0, r4, #0
	bl InitializeAnimation
	adds r0, r4, #0
	bl sub_08083998
	pop {r4, pc}
