	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object37
Object37: @ 0x0808BDE8
	push {lr}
	ldr r2, _0808BDFC @ =gUnk_08121480
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0808BDFC: .4byte gUnk_08121480

	thumb_func_start sub_0808BE00
sub_0808BE00: @ 0x0808BE00
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x38
	ldrb r0, [r0]
	bl GetLayerByIndex
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_0806F798
	lsls r0, r0, #1
	adds r0, #4
	adds r4, r4, r0
	str r4, [r5, #0x78]
	ldrh r1, [r4]
	adds r0, r5, #0
	adds r0, #0x70
	strh r1, [r0]
	movs r0, #1
	strb r0, [r5, #0xc]
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0808BE2C
sub_0808BE2C: @ 0x0808BE2C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0808BE78 @ =gUnk_02002A40
	ldr r1, _0808BE7C @ =0x0000024E
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808BE74
	adds r0, r2, #0
	adds r0, #0x70
	ldr r1, [r2, #0x78]
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808BE74
	adds r0, r2, #0
	movs r1, #0x58
	movs r2, #0
	bl sub_080A2A20
	adds r1, r0, #0
	cmp r1, #0
	beq _0808BE6C
	ldr r0, _0808BE80 @ =gPlayerEntity
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #2
	strb r0, [r1, #0x15]
	movs r0, #0x80
	strh r0, [r1, #0x24]
	movs r0, #0x80
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
_0808BE6C:
	movs r0, #1
	strb r0, [r4]
	bl DeleteThisEntity
_0808BE74:
	pop {r4, pc}
	.align 2, 0
_0808BE78: .4byte gUnk_02002A40
_0808BE7C: .4byte 0x0000024E
_0808BE80: .4byte gPlayerEntity
