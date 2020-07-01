	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object48
Object48: @ 0x0808E7A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x45
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808E7B2
	adds r0, r4, #0
	bl sub_0808EFF0
_0808E7B2:
	ldr r1, _0808E7D4 @ =gUnk_08121C64
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0x3f
	bhi _0808E7D2
	adds r0, r4, #0
	bl UpdateAnimationSingleFrame
_0808E7D2:
	pop {r4, pc}
	.align 2, 0
_0808E7D4: .4byte gUnk_08121C64

	thumb_func_start sub_0808E7D8
sub_0808E7D8: @ 0x0808E7D8
	push {lr}
	ldr r2, _0808E7EC @ =gUnk_08121CCC
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808E7EC: .4byte gUnk_08121CCC

	thumb_func_start sub_0808E7F0
sub_0808E7F0: @ 0x0808E7F0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #2
	bl sub_080AE008
	ldrb r0, [r4, #0x1a]
	movs r1, #0xf
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xff
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #0xc]
	pop {r4, pc}

	thumb_func_start sub_0808E818
sub_0808E818: @ 0x0808E818
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_0808E950
	cmp r0, #0
	bne _0808E840
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r4, #0xb]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	b _0808E94E
_0808E840:
	ldr r0, _0808E8C0 @ =gUnk_02019EE0
	ldrb r1, [r0, #6]
	ldrb r0, [r4, #0xb]
	adds r6, r4, #0
	adds r6, #0x68
	adds r5, r4, #0
	adds r5, #0x70
	cmp r0, r1
	beq _0808E894
	strb r1, [r4, #0xb]
	movs r0, #0x14
	bl CheckGlobalFlag
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	cmp r0, #0
	bne _0808E86A
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r0, #0
_0808E86A:
	strh r1, [r6]
	movs r0, #4
	strb r0, [r5]
	movs r0, #2
	strb r0, [r4, #0x14]
	movs r0, #1
	bl sub_0807A094
	ldr r1, _0808E8C4 @ =gUnk_08133368
	subs r0, #0x16
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0808E8C8 @ =0x00FFFFFF
	ands r0, r1
	ldr r1, _0808E8CC @ =gUnk_085A2E80
	adds r0, r0, r1
	movs r1, #0x1f
	movs r2, #1
	bl sub_0801D754
_0808E894:
	ldr r0, _0808E8D0 @ =gUnk_02032EC0
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _0808E904
	ldr r3, _0808E8D4 @ =gUnk_03000FF0
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808E904
	ldrh r1, [r3, #2]
	cmp r1, #0x20
	beq _0808E8F2
	cmp r1, #0x20
	bgt _0808E8D8
	cmp r1, #2
	beq _0808E8F8
	cmp r1, #0x10
	beq _0808E8E6
	b _0808E904
	.align 2, 0
_0808E8C0: .4byte gUnk_02019EE0
_0808E8C4: .4byte gUnk_08133368
_0808E8C8: .4byte 0x00FFFFFF
_0808E8CC: .4byte gUnk_085A2E80
_0808E8D0: .4byte gUnk_02032EC0
_0808E8D4: .4byte gUnk_03000FF0
_0808E8D8:
	cmp r1, #0x40
	beq _0808E8E2
	cmp r1, #0x80
	beq _0808E8EC
	b _0808E904
_0808E8E2:
	strb r2, [r4, #0x14]
	b _0808E904
_0808E8E6:
	movs r0, #1
	strb r0, [r4, #0x14]
	b _0808E904
_0808E8EC:
	movs r0, #2
	strb r0, [r4, #0x14]
	b _0808E904
_0808E8F2:
	movs r0, #3
	strb r0, [r4, #0x14]
	b _0808E904
_0808E8F8:
	ldrb r0, [r5]
	movs r1, #0
	cmp r0, #0
	bne _0808E902
	movs r1, #4
_0808E902:
	strb r1, [r5]
_0808E904:
	movs r2, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _0808E90E
	movs r2, #1
_0808E90E:
	lsls r2, r2, #6
	ldrb r1, [r4, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrh r0, [r6]
	ldrb r1, [r5]
	adds r0, r0, r1
	ldrb r2, [r4, #0x14]
	adds r1, r0, r2
	adds r2, r4, #0
	adds r2, #0x6a
	ldrh r0, [r2]
	cmp r0, r1
	beq _0808E940
	strh r1, [r2]
	lsrs r0, r1, #8
	strh r0, [r4, #0x12]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl InitAnimationForceUpdate
_0808E940:
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x18]
_0808E94E:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0808E950
sub_0808E950: @ 0x0808E950
	push {lr}
	movs r2, #0
	ldr r0, _0808E980 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0808E968
	cmp r0, #0
	blt _0808E97C
	cmp r0, #7
	bgt _0808E97C
	cmp r0, #4
	blt _0808E97C
_0808E968:
	ldr r0, _0808E984 @ =gUnk_02019EE0
	adds r1, r0, #0
	adds r1, #8
	ldrb r0, [r0, #6]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _0808E97C
	movs r2, #1
_0808E97C:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0808E980: .4byte gUnk_02032EC0
_0808E984: .4byte gUnk_02019EE0

	thumb_func_start sub_0808E988
sub_0808E988: @ 0x0808E988
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xc]
	cmp r0, #0
	bne _0808E9AA
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0xa1
	lsls r0, r0, #1
	strh r0, [r5, #0x12]
	movs r0, #0xff
	strb r0, [r5, #0xb]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl sub_080AE008
_0808E9AA:
	bl sub_0808E950
	cmp r0, #0
	beq _0808E9E8
	movs r4, #6
	b _0808E9BC
_0808E9B6:
	subs r4, #1
	cmp r4, #0
	beq _0808E9E8
_0808E9BC:
	adds r0, r4, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _0808E9B6
	cmp r4, #0
	beq _0808E9E8
	ldrb r0, [r5, #0xb]
	cmp r0, r4
	beq _0808E9D8
	adds r0, r5, #0
	adds r1, r4, #0
	bl InitAnimationForceUpdate
_0808E9D8:
	ldrb r0, [r5, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r5, #0x18]
	b _0808E9F2
_0808E9E8:
	ldrb r1, [r5, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #0x18]
_0808E9F2:
	pop {r4, r5, pc}

	thumb_func_start sub_0808E9F4
sub_0808E9F4: @ 0x0808E9F4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808E950
	cmp r0, #0
	beq _0808EA1C
	ldr r0, _0808EA18 @ =gUnk_02002A40
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0808EA1C
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _0808EA26
	.align 2, 0
_0808EA18: .4byte gUnk_02002A40
_0808EA1C:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0808EA26:
	pop {r4, pc}

	thumb_func_start sub_0808EA28
sub_0808EA28: @ 0x0808EA28
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #3
	bne _0808EA56
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	cmp r0, #1
	bls _0808EA4C
	ldrb r0, [r4, #0x18]
	movs r1, #4
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r4, #0x18]
	b _0808EA56
_0808EA4C:
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
_0808EA56:
	ldr r2, _0808EA68 @ =gUnk_02019EE0
	ldrb r1, [r4, #0xa]
	ldrb r0, [r2, #6]
	cmp r1, r0
	bne _0808EA6C
	movs r3, #0xc
	movs r2, #1
	b _0808EA88
	.align 2, 0
_0808EA68: .4byte gUnk_02019EE0
_0808EA6C:
	ldr r0, _0808EA80 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #5
	bne _0808EA84
	ldrb r2, [r2, #7]
	cmp r1, r2
	bne _0808EA84
	movs r3, #0xd
	b _0808EA86
	.align 2, 0
_0808EA80: .4byte gUnk_02032EC0
_0808EA84:
	movs r3, #0xe
_0808EA86:
	movs r2, #2
_0808EA88:
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r4, #0x1a]
	lsls r2, r2, #6
	ldrb r1, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	bl sub_0808EABC
	adds r0, r4, #0
	bl sub_0808EF6C
	ldr r2, _0808EAB8 @ =gUnk_02019EE0
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	pop {r4, pc}
	.align 2, 0
_0808EAB8: .4byte gUnk_02019EE0

	thumb_func_start sub_0808EABC
sub_0808EABC: @ 0x0808EABC
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x48
	rsbs r4, r4, #0
	ldrb r1, [r5, #0xa]
	lsls r0, r1, #5
	adds r2, r0, #0
	adds r2, #0x28
	movs r3, #0
	ldr r0, _0808EAEC @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	cmp r0, r1
	bne _0808EAD8
	movs r3, #1
_0808EAD8:
	ldr r0, _0808EAF0 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #7
	bhi _0808EB60
	lsls r0, r0, #2
	ldr r1, _0808EAF4 @ =_0808EAF8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808EAEC: .4byte gUnk_02019EE0
_0808EAF0: .4byte gUnk_02032EC0
_0808EAF4: .4byte _0808EAF8
_0808EAF8: @ jump table
	.4byte _0808EB18 @ case 0
	.4byte _0808EB60 @ case 1
	.4byte _0808EB56 @ case 2
	.4byte _0808EB1C @ case 3
	.4byte _0808EB1C @ case 4
	.4byte _0808EB26 @ case 5
	.4byte _0808EB1C @ case 6
	.4byte _0808EB1C @ case 7
_0808EB18:
	movs r4, #0x18
	b _0808EB68
_0808EB1C:
	cmp r3, #0
	beq _0808EB68
	movs r4, #0x2a
	movs r2, #0x38
	b _0808EB68
_0808EB26:
	ldr r3, _0808EB3C @ =gUnk_02000080
	adds r0, r3, #0
	adds r0, #0x10
	ldrb r1, [r5, #0xa]
	adds r0, r0, r1
	ldrb r1, [r0]
	cmp r1, #0
	bne _0808EB40
	movs r4, #0x2a
	movs r2, #0x28
	b _0808EB68
	.align 2, 0
_0808EB3C: .4byte gUnk_02000080
_0808EB40:
	cmp r1, #0
	blt _0808EB68
	cmp r1, #2
	bgt _0808EB68
	movs r4, #0x14
	movs r2, #0x90
	ldrb r0, [r3, #0x16]
	subs r0, r0, r1
	lsls r0, r0, #5
	subs r2, r2, r0
	b _0808EB68
_0808EB56:
	cmp r3, #0
	beq _0808EB68
	movs r4, #0x1a
	movs r2, #0x2a
	b _0808EB68
_0808EB60:
	cmp r3, #0
	beq _0808EB68
	movs r4, #8
	movs r2, #0x23
_0808EB68:
	adds r0, r5, #0
	adds r0, #0x68
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	pop {r4, r5, pc}

	thumb_func_start sub_0808EB74
sub_0808EB74: @ 0x0808EB74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808EBA8 @ =gUnk_02019EE0
	ldrb r0, [r0, #6]
	bl sub_0808EC80
	adds r3, r0, #0
	cmp r3, #0
	beq _0808EBAC
	ldr r0, [r3, #0x2c]
	str r0, [r4, #0x2c]
	ldr r0, [r3, #0x30]
	str r0, [r4, #0x30]
	ldrb r1, [r3, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r4, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_0806FAD8
	b _0808EBB4
	.align 2, 0
_0808EBA8: .4byte gUnk_02019EE0
_0808EBAC:
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r4, #0x2e]
	strh r0, [r4, #0x32]
_0808EBB4:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0808EBB8
sub_0808EBB8: @ 0x0808EBB8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0808EBD0 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	subs r0, #2
	cmp r0, #5
	bhi _0808EC1C
	lsls r0, r0, #2
	ldr r1, _0808EBD4 @ =_0808EBD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808EBD0: .4byte gUnk_02032EC0
_0808EBD4: .4byte _0808EBD8
_0808EBD8: @ jump table
	.4byte _0808EC18 @ case 0
	.4byte _0808EC1C @ case 1
	.4byte _0808EBF0 @ case 2
	.4byte _0808EBFC @ case 3
	.4byte _0808EC00 @ case 4
	.4byte _0808EC14 @ case 5
_0808EBF0:
	ldr r0, _0808EBF8 @ =gUnk_02000080
	ldrb r0, [r0, #1]
	adds r1, r0, #4
	b _0808EC1E
	.align 2, 0
_0808EBF8: .4byte gUnk_02000080
_0808EBFC:
	movs r1, #2
	b _0808EC1E
_0808EC00:
	ldr r0, _0808EC10 @ =gUnk_02000080
	ldrb r0, [r0, #1]
	movs r1, #6
	cmp r0, #0
	bne _0808EC1E
	movs r1, #7
	b _0808EC1E
	.align 2, 0
_0808EC10: .4byte gUnk_02000080
_0808EC14:
	movs r1, #4
	b _0808EC1E
_0808EC18:
	movs r1, #1
	b _0808EC1E
_0808EC1C:
	movs r1, #0
_0808EC1E:
	movs r5, #0xf0
	lsls r5, r5, #8
	adds r6, r5, #0
	cmp r1, #1
	beq _0808EC32
	cmp r1, #1
	blo _0808EC76
	cmp r1, #2
	beq _0808EC42
	b _0808EC4C
_0808EC32:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	lsls r0, r0, #4
	adds r5, r0, #0
	adds r5, #0x18
	movs r6, #0x70
	b _0808EC76
_0808EC42:
	ldr r0, _0808EC7C @ =gUnk_02019EE0
	ldrb r1, [r0, #7]
	cmp r1, #4
	bne _0808EC4C
	movs r1, #7
_0808EC4C:
	adds r0, r1, #0
	bl sub_0808EC80
	adds r4, r0, #0
	cmp r4, #0
	beq _0808EC76
	adds r1, r7, #0
	bl sub_0806FAD8
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r7, #0x19]
	movs r1, #0x3f
	ands r1, r2
	orrs r1, r0
	strb r1, [r7, #0x19]
	movs r0, #0x2e
	ldrsh r6, [r4, r0]
	movs r0, #0x32
	ldrsh r5, [r4, r0]
_0808EC76:
	strh r6, [r7, #0x2e]
	strh r5, [r7, #0x32]
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0808EC7C: .4byte gUnk_02019EE0

	thumb_func_start sub_0808EC80
sub_0808EC80: @ 0x0808EC80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r3, _0808ECA4 @ =gUnk_03003DA0
	ldr r2, [r3, #4]
	cmp r2, r3
	beq _0808ECB6
	ldr r6, _0808ECA8 @ =0x0000FFFF
	ldr r5, _0808ECAC @ =0x00004806
_0808EC90:
	ldrh r1, [r2, #8]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, r5
	bne _0808ECB0
	ldrb r0, [r2, #0xa]
	cmp r4, r0
	bne _0808ECB0
	adds r0, r2, #0
	b _0808ECB8
	.align 2, 0
_0808ECA4: .4byte gUnk_03003DA0
_0808ECA8: .4byte 0x0000FFFF
_0808ECAC: .4byte 0x00004806
_0808ECB0:
	ldr r2, [r2, #4]
	cmp r2, r3
	bne _0808EC90
_0808ECB6:
	movs r0, #0
_0808ECB8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0808ECBC
sub_0808ECBC: @ 0x0808ECBC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _0808ECD8 @ =gUnk_02000080
	ldrb r4, [r0, #1]
	ldr r0, _0808ECDC @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #5
	beq _0808ECEE
	cmp r0, #5
	bgt _0808ECE0
	cmp r0, #4
	beq _0808ECEA
	b _0808ED04
	.align 2, 0
_0808ECD8: .4byte gUnk_02000080
_0808ECDC: .4byte gUnk_02032EC0
_0808ECE0:
	cmp r0, #6
	beq _0808ECFC
	cmp r0, #7
	beq _0808ED00
	b _0808ED04
_0808ECEA:
	movs r0, #1
	b _0808ED06
_0808ECEE:
	ldr r0, _0808ECF8 @ =gUnk_02019EE0
	ldrb r4, [r0, #7]
	movs r0, #2
	b _0808ED06
	.align 2, 0
_0808ECF8: .4byte gUnk_02019EE0
_0808ECFC:
	movs r0, #3
	b _0808ED06
_0808ED00:
	movs r0, #4
	b _0808ED06
_0808ED04:
	movs r0, #0
_0808ED06:
	ldrb r2, [r3, #0xa]
	subs r2, #4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	lsls r0, r2, #1
	adds r0, r0, r2
	ldr r2, _0808ED3C @ =gUnk_08121CD4
	adds r0, r0, r2
	adds r1, r1, r0
	ldrb r2, [r1, #1]
	adds r0, r3, #0
	adds r0, #0x68
	strh r2, [r0]
	ldrb r0, [r1, #2]
	adds r2, r3, #0
	adds r2, #0x6a
	strh r0, [r2]
	ldrb r0, [r1]
	cmp r0, r4
	bne _0808ED40
	ldrb r0, [r3, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0xd
	b _0808ED4A
	.align 2, 0
_0808ED3C: .4byte gUnk_08121CD4
_0808ED40:
	ldrb r0, [r3, #0x1a]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r0
	movs r0, #0xe
_0808ED4A:
	orrs r1, r0
	strb r1, [r3, #0x1a]
	adds r0, r3, #0
	bl sub_0808EF6C
	ldr r2, _0808ED60 @ =gUnk_02019EE0
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	pop {r4, pc}
	.align 2, 0
_0808ED60: .4byte gUnk_02019EE0

	thumb_func_start sub_0808ED64
sub_0808ED64: @ 0x0808ED64
	push {lr}
	adds r2, r0, #0
	movs r3, #0xff
	ldr r0, _0808ED90 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0808ED8A
	ldr r1, _0808ED94 @ =gUnk_02000080
	ldrb r0, [r1, #0x11]
	cmp r0, #5
	beq _0808ED8A
	ldrb r0, [r1, #0x10]
	lsls r0, r0, #4
	adds r0, #0x1c
	strh r0, [r2, #0x2e]
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #4
	adds r3, r0, #0
	adds r3, #0x3a
_0808ED8A:
	strh r3, [r2, #0x32]
	pop {pc}
	.align 2, 0
_0808ED90: .4byte gUnk_02032EC0
_0808ED94: .4byte gUnk_02000080

	thumb_func_start sub_0808ED98
sub_0808ED98: @ 0x0808ED98
	push {lr}
	adds r3, r0, #0
	ldr r0, _0808EDB4 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _0808EDB8
	adds r1, r3, #0
	adds r1, #0x68
	movs r0, #0x1b
	strh r0, [r1]
	movs r1, #0xa
	rsbs r1, r1, #0
	b _0808EDCE
	.align 2, 0
_0808EDB4: .4byte gUnk_02032EC0
_0808EDB8:
	ldr r0, _0808EDF8 @ =gUnk_02000080
	ldrb r0, [r0, #0x13]
	cmp r0, #5
	bls _0808EDC2
	movs r0, #5
_0808EDC2:
	lsls r0, r0, #3
	adds r0, #0x1b
	adds r1, r3, #0
	adds r1, #0x68
	strh r0, [r1]
	movs r1, #0x18
_0808EDCE:
	strh r1, [r3, #0x32]
	adds r0, r3, #0
	adds r0, #0x6a
	strh r1, [r0]
	ldrb r0, [r3, #0xf]
	adds r0, #1
	strb r0, [r3, #0xf]
	ldr r2, _0808EDFC @ =gUnk_08121D10
	ldrb r0, [r3, #0xf]
	lsrs r0, r0, #2
	movs r1, #7
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x63
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_0808EF6C
	pop {pc}
	.align 2, 0
_0808EDF8: .4byte gUnk_02000080
_0808EDFC: .4byte gUnk_08121D10

	thumb_func_start sub_0808EE00
sub_0808EE00: @ 0x0808EE00
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r0, [r0, #7]
	rsbs r2, r0, #0
	orrs r2, r0
	lsrs r2, r2, #0x1f
	ldrb r0, [r4, #0xa]
	adds r5, r0, #0
	subs r5, #0xa
	ldr r1, _0808EE48 @ =gUnk_08121D38
	lsls r0, r2, #3
	adds r0, r5, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1e]
	ldr r3, _0808EE4C @ =gUnk_08121D18
	lsls r0, r5, #1
	lsls r1, r2, #4
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r1, [r0]
	strh r1, [r4, #0x2e]
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0]
	subs r5, r5, r2
	ldr r0, _0808EE50 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #1
	beq _0808EE54
	movs r5, #0x80
	movs r1, #0xb0
	b _0808EE56
	.align 2, 0
_0808EE48: .4byte gUnk_08121D38
_0808EE4C: .4byte gUnk_08121D18
_0808EE50: .4byte gUnk_02032EC0
_0808EE54:
	movs r1, #0x8c
_0808EE56:
	adds r0, r4, #0
	adds r0, #0x6a
	strh r1, [r0]
	ldr r1, _0808EE8C @ =gUnk_02000080
	ldrb r0, [r1, #0x11]
	movs r2, #9
	cmp r0, #5
	bne _0808EE6E
	ldrb r1, [r1, #0x12]
	cmp r5, r1
	bne _0808EE6E
	movs r2, #0xb
_0808EE6E:
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_0808EF6C
	ldr r2, _0808EE90 @ =gUnk_02019EE0
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	pop {r4, r5, pc}
	.align 2, 0
_0808EE8C: .4byte gUnk_02000080
_0808EE90: .4byte gUnk_02019EE0

	thumb_func_start nullsub_522
nullsub_522: @ 0x0808EE94
	bx lr
	.align 2, 0

	thumb_func_start sub_0808EE98
sub_0808EE98: @ 0x0808EE98
	push {lr}
	adds r3, r0, #0
	ldr r0, _0808EEBC @ =gUnk_02032EC0
	ldrb r1, [r0, #2]
	strb r1, [r3, #0xe]
	ldr r2, _0808EEC0 @ =gUnk_08121D48
	ldrb r0, [r3, #0xe]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3, #0x1e]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #2
	beq _0808EEC4
	adds r1, r3, #0
	adds r1, #0x68
	movs r0, #0x60
	b _0808EECA
	.align 2, 0
_0808EEBC: .4byte gUnk_02032EC0
_0808EEC0: .4byte gUnk_08121D48
_0808EEC4:
	adds r1, r3, #0
	adds r1, #0x68
	ldr r0, _0808EED4 @ =0x0000FFA0
_0808EECA:
	strh r0, [r1]
	adds r0, r3, #0
	bl sub_0808EF6C
	pop {pc}
	.align 2, 0
_0808EED4: .4byte 0x0000FFA0

	thumb_func_start sub_0808EED8
sub_0808EED8: @ 0x0808EED8
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808EEF0 @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #3
	beq _0808EEF4
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0808EF1E
	.align 2, 0
_0808EEF0: .4byte gUnk_02032EC0
_0808EEF4:
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r1, [r2, #0xa]
	subs r1, #0x13
	ldr r0, _0808EF20 @ =gUnk_02000080
	ldrb r0, [r0, #1]
	movs r3, #3
	cmp r0, r1
	bne _0808EF12
	movs r3, #4
_0808EF12:
	ldrb r1, [r2, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x1a]
_0808EF1E:
	pop {pc}
	.align 2, 0
_0808EF20: .4byte gUnk_02000080

	thumb_func_start sub_0808EF24
sub_0808EF24: @ 0x0808EF24
	push {lr}
	adds r2, r0, #0
	ldr r0, _0808EF3C @ =gUnk_02032EC0
	ldrb r0, [r0, #2]
	cmp r0, #3
	beq _0808EF40
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x18]
	b _0808EF68
	.align 2, 0
_0808EF3C: .4byte gUnk_02032EC0
_0808EF40:
	ldrb r1, [r2, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #0x18]
	ldrb r0, [r2, #0xa]
	cmp r0, #0x15
	bne _0808EF5C
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #5]
	b _0808EF62
_0808EF5C:
	movs r0, #0x80
	lsls r0, r0, #0x12
	ldrb r1, [r0, #6]
_0808EF62:
	ldrb r0, [r2, #0x1f]
	adds r0, r0, r1
	strb r0, [r2, #0x1e]
_0808EF68:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0808EF6C
sub_0808EF6C: @ 0x0808EF6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x68
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0x2e
	ldrsh r0, [r5, r2]
	subs r6, r1, r0
	adds r0, r6, #0
	cmp r6, #0
	bge _0808EF84
	rsbs r0, r6, #0
_0808EF84:
	cmp r0, #1
	bhi _0808EF8E
	lsls r0, r1, #0x10
	str r0, [r5, #0x2c]
	movs r6, #0
_0808EF8E:
	adds r0, r5, #0
	adds r0, #0x6a
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r2, #0x32
	ldrsh r0, [r5, r2]
	subs r4, r1, r0
	adds r0, r4, #0
	cmp r4, #0
	bge _0808EFA4
	rsbs r0, r4, #0
_0808EFA4:
	cmp r0, #1
	bhi _0808EFAE
	lsls r0, r1, #0x10
	str r0, [r5, #0x30]
	movs r4, #0
_0808EFAE:
	adds r0, r6, #0
	orrs r0, r4
	cmp r0, #0
	bne _0808EFBA
	movs r0, #0
	b _0808EFEC
_0808EFBA:
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080041EC
	adds r1, r0, #0
	adds r0, #0x80
	lsls r1, r1, #4
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x6c
	ldrh r0, [r0]
	cmp r0, r1
	bge _0808EFD6
	adds r1, r0, #0
_0808EFD6:
	strh r1, [r5, #0x24]
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080045DA
	lsrs r0, r0, #3
	strb r0, [r5, #0x15]
	adds r0, r5, #0
	bl sub_0806F69C
	movs r0, #1
_0808EFEC:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_0808EFF0
sub_0808EFF0: @ 0x0808EFF0
	push {r4, r5, lr}
	mov ip, r0
	ldrb r1, [r0, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x18]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1, #0x24]
	adds r1, #0x45
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xff
	mov r3, ip
	strb r0, [r3, #0x1e]
	adds r1, #0x13
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r4, [r3, #0xa]
	lsls r4, r4, #3
	ldr r0, _0808F094 @ =gUnk_08121D54
	adds r4, r4, r0
	ldrh r0, [r4, #2]
	strh r0, [r3, #0x2e]
	ldrh r1, [r4, #2]
	mov r0, ip
	adds r0, #0x68
	strh r1, [r0]
	ldrh r0, [r4, #4]
	strh r0, [r3, #0x32]
	ldrh r0, [r4, #4]
	mov r1, ip
	adds r1, #0x6a
	strh r0, [r1]
	ldrb r1, [r4, #6]
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x17
	ldrb r3, [r3, #0x19]
	movs r2, #0x3f
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0x19]
	ldrb r1, [r4, #6]
	lsls r1, r1, #0x1a
	mov r5, ip
	adds r5, #0x29
	lsrs r1, r1, #0x1d
	ldrb r3, [r5]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r5]
	ldrb r0, [r4, #6]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	mov r3, ip
	ldrb r1, [r3, #0x1b]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #0x1b]
	ldrh r1, [r4]
	mov r0, ip
	adds r0, #0x6c
	strh r1, [r0]
	ldrb r1, [r4, #7]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0808F098
	movs r0, #0x7f
	ands r1, r0
	strb r1, [r3, #0x1e]
	strb r1, [r3, #0x1f]
	b _0808F09E
	.align 2, 0
_0808F094: .4byte gUnk_08121D54
_0808F098:
	mov r0, ip
	bl InitAnimationForceUpdate
_0808F09E:
	pop {r4, r5, pc}
