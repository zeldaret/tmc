	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_08067C44
sub_08067C44: @ 0x08067C44
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08067C6C @ =gUnk_03003F80
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	rsbs r0, r0, #0
	lsrs r5, r0, #0x1f
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r0, [r0]
	cmp r5, r0
	beq _08067C7C
	cmp r5, #0
	bne _08067C70
	adds r0, r4, #0
	bl sub_08078778
	b _08067C7C
	.align 2, 0
_08067C6C: .4byte gUnk_03003F80
_08067C70:
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r4, #0
	bl sub_080787A8
_08067C7C:
	adds r0, r4, #0
	adds r0, #0x69
	strb r5, [r0]
	subs r0, #0x30
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	beq _08067D1C
	ldr r1, _08067CB4 @ =gLinkEntity
	adds r0, r4, #0
	bl sub_0806FCA0
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, #0
	beq _08067CA6
	cmp r0, #3
	beq _08067CB8
_08067CA6:
	cmp r2, #2
	bne _08067CDA
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
	b _08067CEC
	.align 2, 0
_08067CB4: .4byte gLinkEntity
_08067CB8:
	cmp r2, #1
	bne _08067CC4
	ldrb r0, [r4, #0x18]
	movs r1, #0x40
	orrs r0, r1
	b _08067CD4
_08067CC4:
	ldrb r1, [r4, #0x18]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1f
	cmp r0, #3
	bne _08067CD6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
_08067CD4:
	strb r0, [r4, #0x18]
_08067CD6:
	cmp r2, #2
	beq _08067CE4
_08067CDA:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080042AC
	b _08067CEC
_08067CE4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080042AC
_08067CEC:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _08067D00
	movs r0, #8
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_0806F118
	b _08067D12
_08067D00:
	movs r0, #4
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	bl sub_08067790
	adds r0, r4, #0
	movs r1, #2
	bl sub_0805E3A0
_08067D12:
	movs r0, #0
	strb r0, [r5]
	movs r0, #0xd2
	bl PlaySFX
_08067D1C:
	pop {r4, r5, pc}
	.align 2, 0