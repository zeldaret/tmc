	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0805CFC0
sub_0805CFC0: @ 0x0805CFC0
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	bne _0805CFCE
	adds r0, #1
	strb r0, [r1, #0xc]
_0805CFCE:
	movs r0, #3
	bl sub_0804B128
	adds r4, r0, #0
	cmp r4, #0
	beq _0805CFEE
	b _0805CFE8
_0805CFDC:
	cmp r0, #0xa
	bne _0805CFE6
	adds r0, r4, #0
	bl sub_0805CFF0
_0805CFE6:
	adds r4, #8
_0805CFE8:
	ldrb r0, [r4]
	cmp r0, #0
	bne _0805CFDC
_0805CFEE:
	pop {r4, pc}

	thumb_func_start sub_0805CFF0
sub_0805CFF0: @ 0x0805CFF0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #2]
	bl CheckLocalFlag
	cmp r0, #0
	bne _0805D012
	ldrh r0, [r4, #4]
	ldrb r1, [r4, #1]
	bl GetTileType
	ldrh r1, [r4, #6]
	cmp r1, r0
	bne _0805D012
	ldrh r0, [r4, #2]
	bl SetLocalFlag
_0805D012:
	pop {r4, pc}
