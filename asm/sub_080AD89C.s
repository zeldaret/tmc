	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080AD89C
sub_080AD89C: @ 0x080AD89C
	push {r4, lr}
	ldr r4, _080AD8E4 @ =gMenu
	ldrb r1, [r4, #0x12]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080AD8BC
	ldrb r0, [r4, #0x10]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #0x10]
	adds r0, #5
	bl LoadPalettesByPaletteGroupIndex
_080AD8BC:
	ldrb r1, [r4, #0x12]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080AD8E0
	ldrb r0, [r4, #0x11]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r4, #0x11]
	ldr r1, _080AD8E8 @ =gScreen
	ldr r2, _080AD8EC @ =gUnk_081320FC
	ldrb r0, [r4, #0x11]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_080AD8E0:
	pop {r4, pc}
	.align 2, 0
_080AD8E4: .4byte gMenu
_080AD8E8: .4byte gScreen
_080AD8EC: .4byte gUnk_081320FC
