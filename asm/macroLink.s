	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0808CAE4
sub_0808CAE4: @ 0x0808CAE4
	push {lr}
	ldr r2, _0808CAF8 @ =gUnk_08121680
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808CAF8: .4byte gUnk_08121680

	thumb_func_start sub_0808CAFC
sub_0808CAFC: @ 0x0808CAFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0808CB18 @ =gUnk_08121688
	ldrb r0, [r4, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0808CB9C
	pop {r4, pc}
	.align 2, 0
_0808CB18: .4byte gUnk_08121688

	thumb_func_start sub_0808CB1C
sub_0808CB1C: @ 0x0808CB1C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _0808CB70
	movs r2, #1
	strb r2, [r4, #0xc]
	ldrb r0, [r4, #0x18]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r0, #0xa7
	strh r0, [r4, #0x12]
	movs r0, #0xd
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r0]
	ldrb r1, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x19]
	adds r3, r4, #0
	adds r3, #0x29
	ldrb r2, [r3]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r4, #0x1b]
_0808CB70:
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x2c]
	str r1, [r4, #0x2c]
	ldr r1, [r0, #0x30]
	str r1, [r4, #0x30]
	movs r5, #0
	str r5, [r4, #0x34]
	adds r1, r4, #0
	bl sub_0806FAD8
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _0808CB98
	adds r0, r4, #0
	adds r0, #0x60
	movs r1, #0
	strh r5, [r0]
	strb r1, [r4, #0xd]
	movs r0, #4
	strb r0, [r4, #0x1e]
_0808CB98:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808CB9C
sub_0808CB9C: @ 0x0808CB9C
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x68
	ldrh r1, [r0]
	ldrb r4, [r0]
	lsrs r5, r1, #8
	movs r2, #0
	ldrb r0, [r3, #0x14]
	cmp r0, #4
	bls _0808CBB2
	movs r2, #1
_0808CBB2:
	lsls r2, r2, #6
	ldrb r1, [r3, #0x18]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0x18]
	cmp r4, #0xb7
	bhi _0808CBCA
	ldrb r0, [r3, #0x14]
	lsrs r0, r0, #1
	adds r4, r4, r0
_0808CBCA:
	ldrh r0, [r3, #0x12]
	cmp r5, r0
	bne _0808CBDA
	adds r0, r3, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r4, r0
	beq _0808CBE4
_0808CBDA:
	strh r5, [r3, #0x12]
	adds r0, r3, #0
	adds r1, r4, #0
	bl LoadAnimation
_0808CBE4:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808CBE8
sub_0808CBE8: @ 0x0808CBE8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
	movs r3, #4
	strb r3, [r4, #0x14]
	ldrb r2, [r4, #0x19]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #0x19]
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	ldrb r2, [r0]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	mov r2, ip
	strb r0, [r2]
	ldrb r0, [r4, #0x1b]
	ands r1, r0
	movs r0, #0x80
	orrs r1, r0
	strb r1, [r4, #0x1b]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0x8a
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #0x10
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0808CC80 @ =0x0000FF50
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	adds r0, #0x6a
	strh r3, [r0]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #4
	movs r3, #0
	bl sub_0805EC9C
	ldr r0, _0808CC84 @ =gUnk_02018EB0
	str r4, [r0, #0x14]
	movs r0, #0
	bl sub_0807A094
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0801D2B4
	movs r0, #0x3c
	movs r1, #1
	movs r2, #0
	bl CreateObject
	cmp r0, #0
	beq _0808CC7C
	str r4, [r0, #0x50]
	str r0, [r4, #0x54]
_0808CC7C:
	pop {r4, pc}
	.align 2, 0
_0808CC80: .4byte 0x0000FF50
_0808CC84: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CC88
sub_0808CC88: @ 0x0808CC88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x6a
	ldrh r1, [r4]
	ldr r0, _0808CCB8 @ =0x000003FF
	cmp r1, r0
	bhi _0808CCB4
	adds r0, r1, #4
	strh r0, [r4]
	ldrh r2, [r4]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	ldrh r1, [r4]
	adds r0, r5, #0
	movs r2, #8
	movs r3, #2
	bl sub_0806FCF4
_0808CCB4:
	pop {r4, r5, pc}
	.align 2, 0
_0808CCB8: .4byte 0x000003FF

	thumb_func_start sub_0808CCBC
sub_0808CCBC: @ 0x0808CCBC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808CC88
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	bne _0808CCFA
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x14
	strb r0, [r4, #0x15]
	adds r0, #0xec
	strh r0, [r4, #0x24]
	movs r0, #0xc0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldrb r1, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0x54]
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r0, _0808CCFC @ =gUnk_02018EB0
	strb r1, [r0, #0x18]
_0808CCFA:
	pop {r4, pc}
	.align 2, 0
_0808CCFC: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CD00
sub_0808CD00: @ 0x0808CD00
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808CC88
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _0808CD24
	adds r0, r4, #0
	bl sub_0806F69C
	b _0808CD3E
_0808CD24:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xa
	strb r0, [r4, #0x15]
	movs r0, #0xc0
	strh r0, [r4, #0x24]
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, _0808CD40 @ =gUnk_02018EB0
	movs r0, #1
	strb r0, [r1, #0x19]
_0808CD3E:
	pop {r4, pc}
	.align 2, 0
_0808CD40: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CD44
sub_0808CD44: @ 0x0808CD44
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808CC88
	adds r0, r4, #0
	bl sub_080042B8
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _0808CD68
	adds r0, r4, #0
	bl sub_0806F69C
	b _0808CD82
_0808CD68:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x11
	strb r0, [r4, #0x15]
	adds r0, #0xef
	strh r0, [r4, #0x24]
	movs r0, #0x90
	lsls r0, r0, #0xa
	str r0, [r4, #0x20]
	ldr r1, _0808CD84 @ =gUnk_02018EB0
	movs r0, #1
	strb r0, [r1, #0x1a]
_0808CD82:
	pop {r4, pc}
	.align 2, 0
_0808CD84: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CD88
sub_0808CD88: @ 0x0808CD88
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0808CC88
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r4, #0
	bl sub_08003FC4
	cmp r0, #0
	beq _0808CDB8
	adds r0, r4, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0x7f
	bgt _0808CDD6
	movs r0, #0x80
	strh r0, [r4, #0x2e]
	b _0808CDD6
_0808CDB8:
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0x3c
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x68
	ldr r0, _0808CDD8 @ =0x00000C04
	strh r0, [r1]
	ldr r0, [r4, #0x54]
	bl sub_0805E7BC
	adds r0, r4, #0
	bl sub_0805EC60
_0808CDD6:
	pop {r4, pc}
	.align 2, 0
_0808CDD8: .4byte 0x00000C04

	thumb_func_start sub_0808CDDC
sub_0808CDDC: @ 0x0808CDDC
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xe]
	subs r0, #1
	strb r0, [r1, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808CDF6
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0x10
	strb r0, [r1, #0xe]
_0808CDF6:
	pop {pc}

	thumb_func_start sub_0808CDF8
sub_0808CDF8: @ 0x0808CDF8
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0xe]
	subs r0, #1
	strb r0, [r3, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0808CE2C
	ldr r0, _0808CE30 @ =gUnk_02033A90
	ldrb r1, [r0, #0x16]
	ldrb r0, [r3, #0xc]
	adds r0, #1
	adds r0, r0, r1
	strb r0, [r3, #0xc]
	ldr r2, _0808CE34 @ =gUnk_081216B4
	lsls r1, r1, #1
	adds r0, r1, r2
	ldrb r0, [r0]
	strb r0, [r3, #0x14]
	adds r1, #1
	adds r1, r1, r2
	ldrb r0, [r1]
	strb r0, [r3, #0x15]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r3, #0x24]
_0808CE2C:
	pop {pc}
	.align 2, 0
_0808CE30: .4byte gUnk_02033A90
_0808CE34: .4byte gUnk_081216B4

	thumb_func_start sub_0808CE38
sub_0808CE38: @ 0x0808CE38
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xc7
	bgt _0808CE52
	movs r0, #0x18
	strb r0, [r4, #0x15]
_0808CE52:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0x2f
	bgt _0808CE60
	ldr r1, _0808CE64 @ =gUnk_02018EB0
	movs r0, #1
	strb r0, [r1, #0x1b]
_0808CE60:
	pop {r4, pc}
	.align 2, 0
_0808CE64: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CE68
sub_0808CE68: @ 0x0808CE68
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xc7
	bgt _0808CE82
	movs r0, #8
	strb r0, [r4, #0x15]
_0808CE82:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0xd0
	ble _0808CE90
	ldr r1, _0808CE94 @ =gUnk_02018EB0
	movs r0, #1
	strb r0, [r1, #0x1b]
_0808CE90:
	pop {r4, pc}
	.align 2, 0
_0808CE94: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CE98
sub_0808CE98: @ 0x0808CE98
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r0, #0x32
	ldrsh r1, [r4, r0]
	movs r0, #0x90
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CEB8
	ldr r1, _0808CEBC @ =gUnk_02018EB0
	movs r0, #1
	strb r0, [r1, #0x1b]
_0808CEB8:
	pop {r4, pc}
	.align 2, 0
_0808CEBC: .4byte gUnk_02018EB0

	thumb_func_start sub_0808CEC0
sub_0808CEC0: @ 0x0808CEC0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080042B8
	adds r0, r4, #0
	bl sub_0806F69C
	movs r1, #0x32
	ldrsh r0, [r4, r1]
	cmp r0, #0xc7
	bgt _0808CEDA
	movs r0, #0x18
	strb r0, [r4, #0x15]
_0808CEDA:
	movs r1, #0x2e
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	bgt _0808CEE8
	ldr r1, _0808CEEC @ =gUnk_02018EB0
	movs r0, #1
	strb r0, [r1, #0x1b]
_0808CEE8:
	pop {r4, pc}
	.align 2, 0
_0808CEEC: .4byte gUnk_02018EB0
