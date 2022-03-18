	.syntax unified
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0800442E
	cmp r0, #0
	bne _0801B2DE
	adds r0, r4, #0
	bl RegisterCarryEntity
_0801B2DE:
	movs r0, #8
	bl IsItemEquipped
	cmp r0, #1
	beq _0801B2F6
	cmp r0, #1
	blo _0801B2F2
	cmp r0, #2
	beq _0801B2FA
	b _0801B2FC
_0801B2F2:
	movs r5, #1
	b _0801B2FC
_0801B2F6:
	movs r5, #2
	b _0801B2FC
_0801B2FA:
	movs r5, #0
_0801B2FC:
	ldr r0, _0801B314 @ =gPlayerState
	adds r0, #0x92
	ldrh r0, [r0]
	ands r5, r0
	cmp r5, #0
	beq _0801B310
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
_0801B310:
	pop {r4, r5, pc}
	.align 2, 0
_0801B314: .4byte gPlayerState
	.syntax divided
