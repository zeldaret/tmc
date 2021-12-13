	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectB4
ObjectB4: @ 0x080A0B90
	push {lr}
	ldr r2, _080A0BA4 @ =gUnk_08124B20
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080A0BA4: .4byte gUnk_08124B20

	thumb_func_start sub_080A0BA8
sub_080A0BA8: @ 0x080A0BA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r2, [r5, #0xc]
	cmp r2, #0
	beq _080A0BB8
	cmp r2, #1
	beq _080A0C08
	b _080A0CE0
_080A0BB8:
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0x18]
	movs r0, #9
	strb r0, [r5, #0x1e]
	movs r0, #8
	strb r0, [r5, #0xe]
	strb r2, [r5, #0xf]
	ldrb r1, [r5, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r5, #0x19]
	adds r4, r5, #0
	adds r4, #0x29
	ldrb r1, [r4]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r4]
	ldrb r0, [r5, #0x1b]
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #0x1b]
	adds r0, r5, #0
	movs r1, #0xbf
	movs r2, #0x48
	movs r3, #0x1e
	bl sub_0806FB00
	b _080A0CE0
_080A0C08:
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	bhi _080A0C46
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A0C46
	strb r2, [r5, #0xe]
	ldrb r2, [r5, #0xf]
	movs r0, #0xb4
	movs r1, #1
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0C40
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	movs r0, #0x68
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityBelow
_080A0C40:
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
_080A0C46:
	adds r0, r5, #0
	bl sub_0806FB38
	cmp r0, #0
	bne _080A0C58
	ldr r0, _080A0CE4 @ =gMenu
	ldrb r0, [r0, #5]
	cmp r0, #1
	bls _080A0CE0
_080A0C58:
	movs r0, #0xbf
	strh r0, [r5, #0x2e]
	movs r0, #0x48
	strh r0, [r5, #0x32]
	movs r0, #0xa
	strb r0, [r5, #0x1e]
	movs r0, #2
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xf]
	cmp r0, #6
	bhi _080A0CA0
_080A0C6E:
	ldrb r2, [r5, #0xf]
	movs r0, #0xb4
	movs r1, #1
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0C92
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	movs r0, #0x68
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityBelow
_080A0C92:
	ldrb r0, [r5, #0xf]
	adds r0, #1
	strb r0, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080A0C6E
_080A0CA0:
	movs r0, #0xb4
	movs r1, #2
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0CC0
	movs r0, #0xc4
	strh r0, [r4, #0x2e]
	movs r0, #0x2c
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
_080A0CC0:
	movs r0, #0xb4
	movs r1, #3
	movs r2, #0
	bl CreateObject
	adds r4, r0, #0
	cmp r4, #0
	beq _080A0CE0
	movs r0, #0xb4
	strh r0, [r4, #0x2e]
	movs r0, #0x19
	strh r0, [r4, #0x32]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ResolveEntityOnTop
_080A0CE0:
	pop {r4, r5, pc}
	.align 2, 0
_080A0CE4: .4byte gMenu

	thumb_func_start sub_080A0CE8
sub_080A0CE8: @ 0x080A0CE8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _080A0CF8
	cmp r0, #1
	beq _080A0D28
	b _080A0D66
_080A0CF8:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xb]
	adds r0, #2
	strb r0, [r4, #0x1e]
	ldr r1, _080A0D24 @ =gUnk_08124B10
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	movs r2, #0x68
	movs r3, #0x14
	bl sub_0806FB00
	b _080A0D66
	.align 2, 0
_080A0D24: .4byte gUnk_08124B10
_080A0D28:
	adds r0, r4, #0
	bl sub_0806FB38
	cmp r0, #0
	bne _080A0D3A
	ldr r0, _080A0D68 @ =gMenu
	ldrb r0, [r0, #5]
	cmp r0, #1
	bls _080A0D66
_080A0D3A:
	ldr r1, _080A0D6C @ =gUnk_08124B10
	ldrb r0, [r4, #0xb]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x2e]
	movs r0, #0x68
	strh r0, [r4, #0x32]
	ldrb r1, [r4, #0xb]
	movs r0, #7
	subs r1, r0, r1
	adds r3, r4, #0
	adds r3, #0x29
	ands r1, r0
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r0, #2
	strb r0, [r4, #0xc]
_080A0D66:
	pop {r4, pc}
	.align 2, 0
_080A0D68: .4byte gMenu
_080A0D6C: .4byte gUnk_08124B10

	thumb_func_start sub_080A0D70
sub_080A0D70: @ 0x080A0D70
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r6, [r5, #0xc]
	cmp r6, #0
	bne _080A0DC4
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r1, [r5, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r5, #0x18]
	ldrb r2, [r5, #0x19]
	movs r4, #0x3f
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r3, #0x40
	orrs r0, r3
	strb r0, [r5, #0x19]
	movs r0, #0x29
	adds r0, r0, r5
	mov ip, r0
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrb r0, [r5, #0x1b]
	ands r1, r0
	orrs r1, r3
	strb r1, [r5, #0x1b]
	movs r0, #0xb
	strb r0, [r5, #0x1e]
	bl Random
	ands r0, r4
	adds r0, #0x40
	strb r0, [r5, #0xe]
	strb r6, [r5, #0xf]
_080A0DC4:
	ldrb r0, [r5, #0xe]
	subs r0, #1
	strb r0, [r5, #0xe]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _080A0E02
	movs r0, #4
	strb r0, [r5, #0xe]
	ldr r2, _080A0E04 @ =gUnk_08124B30
	ldrb r0, [r5, #0xf]
	adds r1, r0, #1
	strb r1, [r5, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #2
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0xf]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080A0E02
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x40
	strb r0, [r5, #0xe]
	strb r4, [r5, #0xf]
_080A0E02:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080A0E04: .4byte gUnk_08124B30

	thumb_func_start sub_080A0E08
sub_080A0E08: @ 0x080A0E08
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0xc]
	cmp r0, #0
	bne _080A0E26
	movs r0, #1
	strb r0, [r2, #0xc]
	ldrb r1, [r2, #0x18]
	subs r0, #5
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	movs r0, #0xf
	strb r0, [r2, #0x1e]
_080A0E26:
	pop {pc}
