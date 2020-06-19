	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08021F24
sub_08021F24: @ 0x08021F24
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x78
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F48
	movs r0, #2
	strb r0, [r4, #0xc]
	bl Random
	ldr r2, _08021F44 @ =gUnk_080CB6F6
	movs r1, #0xf
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	b _08021F6E
	.align 2, 0
_08021F44: .4byte gUnk_080CB6F6
_08021F48:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r0, [r0]
	cmp r0, #0
	bne _08021F80
	ldr r0, _08021F7C @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	movs r3, #0x32
	ldrsh r2, [r0, r3]
	adds r0, r4, #0
	movs r3, #0x70
	bl sub_0806FCB8
	cmp r0, #0
	bne _08021F80
	movs r0, #3
	strb r0, [r4, #0xc]
	movs r0, #0x1e
_08021F6E:
	strb r0, [r4, #0xe]
	adds r0, r4, #0
	movs r1, #1
	bl InitializeAnimation
	b _08021FA4
	.align 2, 0
_08021F7C: .4byte gLinkEntity
_08021F80:
	adds r0, r4, #0
	bl sub_08049FA0
	cmp r0, #0
	beq _08021F94
	bl Random
	movs r1, #0x1f
	ands r0, r1
	b _08021F9A
_08021F94:
	adds r0, r4, #0
	bl sub_08049EE4
_08021F9A:
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	movs r1, #0
	bl InitializeAnimation
_08021FA4:
	pop {r4, pc}
	.align 2, 0
