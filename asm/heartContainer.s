	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0808E714
sub_0808E714: @ 0x0808E714
	push {r4, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xf]
	lsls r0, r3, #3
	movs r1, #0x80
	lsls r1, r1, #3
	subs r2, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _0808E73A
	adds r0, r3, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_0805EC9C
	b _0808E756
_0808E73A:
	movs r0, #3
	strb r0, [r4, #0xc]
	adds r2, r4, #0
	adds r2, #0x3c
	ldrb r1, [r2]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0805EC60
	ldr r0, _0808E760 @ =0x00000141
	bl PlaySFX
_0808E756:
	adds r0, r4, #0
	bl sub_08080CB4
	pop {r4, pc}
	.align 2, 0
_0808E760: .4byte 0x00000141

	thumb_func_start sub_0808E764
sub_0808E764: @ 0x0808E764
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08080CB4
	ldr r0, _0808E79C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0808E79A
	adds r0, r4, #0
	bl sub_08017850
	cmp r0, #0
	beq _0808E79A
	adds r0, r4, #0
	adds r0, #0x84
	ldrh r0, [r0]
	bl SetFlag
	movs r0, #0x62
	movs r1, #0
	movs r2, #0
	bl CreateItemEntity
	bl DeleteThisEntity
_0808E79A:
	pop {r4, pc}
	.align 2, 0
_0808E79C: .4byte gLinkState
