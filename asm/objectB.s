	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectB
ObjectB: @ 0x08083B88
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08083BDC @ =gUnk_0811F7D8
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4, #0x50]
	adds r0, #0x5a
	ldrb r1, [r0]
	lsrs r1, r1, #6
	movs r0, #1
	ands r1, r0
	ldrb r2, [r4, #0x18]
	subs r0, #5
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	adds r0, r4, #0
	bl sub_08080CB4
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r4, #0x1b]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #0x19]
	ands r2, r0
	strb r2, [r4, #0x19]
	pop {r4, pc}
	.align 2, 0
_08083BDC: .4byte gUnk_0811F7D8

	thumb_func_start sub_08083BE0
sub_08083BE0: @ 0x08083BE0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl sub_0805E3A0
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start sub_08083BF0
sub_08083BF0: @ 0x08083BF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0x41
	bne _08083C98
	movs r0, #2
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08083C98
	lsls r0, r0, #2
	ldr r1, _08083C14 @ =_08083C18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083C14: .4byte _08083C18
_08083C18: @ jump table
	.4byte _08083C30 @ case 0
	.4byte _08083C30 @ case 1
	.4byte _08083C4A @ case 2
	.4byte _08083C98 @ case 3
	.4byte _08083C98 @ case 4
	.4byte _08083C74 @ case 5
_08083C30:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl GiveItem
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	ldrb r0, [r4, #0xa]
	cmp r0, #0x43
	bgt _08083C62
	cmp r0, #0x40
	bge _08083C98
	b _08083C62
_08083C4A:
	ldrb r0, [r4, #0xa]
	ldrb r1, [r4, #0xb]
	bl GiveItem
	ldr r1, _08083C6C @ =gUnk_080FD964
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_08083C62:
	ldr r0, _08083C70 @ =0x00000109
	bl PlaySFX
	b _08083C98
	.align 2, 0
_08083C6C: .4byte gUnk_080FD964
_08083C70: .4byte 0x00000109
_08083C74:
	ldrb r0, [r4, #0xa]
	bl GetInventoryValue
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #3
	ldr r2, _08083C8C @ =gUnk_080FD5B4
	adds r1, r1, r2
	cmp r0, #0
	bne _08083C90
	ldrh r1, [r1, #4]
	b _08083C92
	.align 2, 0
_08083C8C: .4byte gUnk_080FD5B4
_08083C90:
	ldrh r1, [r1, #6]
_08083C92:
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
_08083C98:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08083C9C
sub_08083C9C: @ 0x08083C9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	adds r0, #0x5a
	ldrb r0, [r0]
	cmp r0, #0x42
	bne _08083D22
	movs r0, #3
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08083D22
	lsls r0, r0, #2
	ldr r1, _08083CC0 @ =_08083CC4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083CC0: .4byte _08083CC4
_08083CC4: @ jump table
	.4byte _08083CDC @ case 0
	.4byte _08083D22 @ case 1
	.4byte _08083CDC @ case 2
	.4byte _08083D22 @ case 3
	.4byte _08083D22 @ case 4
	.4byte _08083CDC @ case 5
_08083CDC:
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r1, [r0]
	cmp r1, #0
	beq _08083D22
	ldrb r0, [r4, #0xa]
	cmp r0, #0x3f
	beq _08083D00
	cmp r0, #0x63
	bne _08083D16
	ldr r0, _08083CFC @ =gSave
	adds r0, #0xa9
	ldrb r0, [r0]
	adds r1, r1, r0
	b _08083D16
	.align 2, 0
_08083CFC: .4byte gSave
_08083D00:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bls _08083D16
	ldr r0, _08083D10 @ =0x00000577
	cmp r1, r0
	bne _08083D14
	subs r1, #1
	b _08083D16
	.align 2, 0
_08083D10: .4byte 0x00000577
_08083D14:
	adds r1, #1
_08083D16:
	adds r0, r1, #0
	bl TextboxNoOverlapFollow
	ldr r1, _08083D24 @ =gTextBox
	ldrb r0, [r4, #0xb]
	str r0, [r1, #0x10]
_08083D22:
	pop {r4, pc}
	.align 2, 0
_08083D24: .4byte gTextBox

	thumb_func_start sub_08083D28
sub_08083D28: @ 0x08083D28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	ldrb r0, [r0, #0xc]
	cmp r0, #8
	beq _08083DD4
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhi _08083DD0
	lsls r0, r0, #2
	ldr r1, _08083D44 @ =_08083D48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08083D44: .4byte _08083D48
_08083D48: @ jump table
	.4byte _08083D60 @ case 0
	.4byte _08083D60 @ case 1
	.4byte _08083D60 @ case 2
	.4byte _08083DAC @ case 3
	.4byte _08083DD0 @ case 4
	.4byte _08083DD0 @ case 5
_08083D60:
	ldrb r0, [r4, #0xa]
	cmp r0, #0x62
	beq _08083D88
	cmp r0, #0x63
	bne _08083DD0
	movs r0, #0xa0
	bl ModHealth
	ldr r0, _08083DA8 @ =gSave
	adds r1, r0, #0
	adds r1, #0xa9
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08083DD0
	movs r0, #0
	strb r0, [r1]
_08083D88:
	ldr r0, _08083DA8 @ =gSave
	adds r1, r0, #0
	adds r1, #0xab
	ldrb r0, [r1]
	adds r0, #8
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa0
	bls _08083DA0
	movs r0, #0xa0
	strb r0, [r1]
_08083DA0:
	movs r0, #0xa0
	bl ModHealth
	b _08083DD0
	.align 2, 0
_08083DA8: .4byte gSave
_08083DAC:
	ldrb r0, [r4, #0xa]
	bl sub_080544DC
	adds r1, r0, #0
	cmp r1, #0
	beq _08083DC8
	ldr r0, _08083DC4 @ =gSave
	adds r0, r0, r1
	adds r0, #0xb5
	movs r1, #0x20
	strb r1, [r0]
	b _08083DD0
	.align 2, 0
_08083DC4: .4byte gSave
_08083DC8:
	ldrb r0, [r4, #0xa]
	movs r1, #2
	bl sub_0807CAA0
_08083DD0:
	bl DeleteThisEntity
_08083DD4:
	pop {r4, pc}
	.align 2, 0
