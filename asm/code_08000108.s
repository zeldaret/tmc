	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

.ifdef EU
	thumb_func_start sub_08000118
sub_08000118: @ 0x08000118
	add r0, pc, #0x28
	ldm r0!, {r1, r2, r3}
_0800011C:
	subs r2, #4
	str r1, [r2]
	cmp r2, r3
	bgt _0800011C
	bx lr

	non_word_aligned_thumb_func_start sub_08000126
sub_08000126: @ 0x08000126
	add r0, pc, #0x1C
	ldm r0!, {r1, r2, r3}
_0800012A:
	ldr r0, [r3]
	adds r3, #4
	cmp r0, r1
	beq _0800012A
	subs r2, #0xa0
_08000134:
	ldr r0, [r2]
	adds r2, #4
	cmp r0, r1
	beq _08000134
	subs r1, r2, #4
	subs r0, r3, #4
	bx lr
	.align 2, 0
_08000144EU:
	.byte 0x33, 0x5A, 0x43, 0x4D
	.4byte gUnk_03007FA0
	.4byte gUnk_03006C14
.else
.ifdef DEMO_JP @ TODO deduplicate
	thumb_func_start sub_08000118
sub_08000118: @ 0x08000118
	add r0, pc, #0x28
	ldm r0!, {r1, r2, r3}
_0800011C:
	subs r2, #4
	str r1, [r2]
	cmp r2, r3
	bgt _0800011C
	bx lr

	non_word_aligned_thumb_func_start sub_08000126
sub_08000126: @ 0x08000126
	add r0, pc, #0x1C
	ldm r0!, {r1, r2, r3}
_0800012A:
	ldr r0, [r3]
	adds r3, #4
	cmp r0, r1
	beq _0800012A
	subs r2, #0xa0
_08000134:
	ldr r0, [r2]
	adds r2, #4
	cmp r0, r1
	beq _08000134
	subs r1, r2, #4
	subs r0, r3, #4
	bx lr
	.align 2, 0
_08000144EU:
	.byte 0x33, 0x5A, 0x43, 0x4D
	.4byte gUnk_03007FA0
	.4byte gUnk_03006C14
.endif
.endif

	thumb_func_start sub_08000108
sub_08000108: @ 0x08000108
	push {r4, lr}
	ldr r0, _080001E8 @ =gUnk_02000070
	ldrb r1, [r0]
	lsls r1, r1, #2
	beq _08000136
	add r4, pc, #0x20
	ldr r4, [r4, r1]
	ldr r0, _080001EC @ =gUnk_02025EB0
	ldr r0, [r0]
	cmp r0, #0
	beq _08000126
	ldr r0, _080001F0 @ =gUnk_02019EE0
	ldr r1, _080001F4 @ =gUnk_02021F70
	bl _call_via_r4
_08000126:
	ldr r0, _080001F8 @ =gUnk_0200B650
	ldr r0, [r0]
	cmp r0, #0
	beq _08000136
	ldr r0, _080001FC @ =gMapDataTopSpecial
	ldr r1, _08000200 @ =gUnk_020344F0
	bl _call_via_r4
_08000136:
	pop {r4, pc}
_08000138:
_08000138: .4byte gUnk_030056F1
_0800013C: .4byte sub_0807D280 @ layer 1, 2, 3?
_08000140: .4byte sub_0807D46C
_08000144: .4byte sub_0807D6D8

	thumb_func_start sub_08000148
sub_08000148: @ 0x08000148
	lsls r2, r2, #2
	ldr r3, _08000204 @ =gUnk_08000248
	ldr r2, [r3, r2]
	strb r0, [r2, r1]
	bx lr

	non_word_aligned_thumb_func_start sub_08000152
sub_08000152: @ 0x08000152
	lsls r2, r2, #2
	add r3, pc, #0x68
	ldr r3, [r3, r2]
	lsls r0, r0, #1
	ldrh r0, [r3, r0]
	lsrs r2, r2, #2

	non_word_aligned_thumb_func_start SetTile
SetTile: @ r0 = tile type, r1, = tile position, r2 = layer
	push {r4-r7, lr}
	lsls r3, r2, #3
	ldr r4, _08000208 @ =gUnk_08000228
	ldr r5, [r4, r3]
	lsls r6, r1, #1
	ldrh r7, [r5, r6]
	strh r0, [r5, r6]
	ldr r6, _0800020C @ =0x00004000
	cmp r0, r6
	blo _0800019A
	push {r1, r2}
	subs r4, r0, r6
	ldr r3, _08000210 @ =gUnk_080B7910
	ldrb r0, [r3, r4]
	bl sub_080001D0
	ldr r3, _08000214 @ =gUnk_080B79A7
	ldrb r0, [r3, r4]
	lsrs r2, r2, #2
	bl sub_08000148
	pop {r0, r1} @ tilepos, layer
	push {r0, r1}
	bl DeleteLoadedTileEntity
	adds r0, r7, #0
	pop {r1, r2}
	bl sub_0801AF48
	pop {r4, r5, r6, r7, pc}
_0800019A:
	adds r3, #4
	ldr r4, [r4, r3]
	lsls r0, r0, #1
	ldrh r4, [r4, r0]
	push {r1, r2}
	ldr r3, _08000218 @ =gUnk_080B37A0
	ldrb r0, [r3, r4]
	bl sub_080001D0
	ldr r3, _0800021C @ =gUnk_080B3E80
	ldrb r0, [r3, r4]
	lsrs r2, r2, #2
	bl sub_08000148
	pop {r0, r1}
	bl DeleteLoadedTileEntity
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080001C0: .4byte gUnk_0202BEB4
_080001C4: .4byte gUnk_0202BEB4
_080001C8: .4byte gUnk_02011654
_080001CC: .4byte gUnk_0202BEB4

	thumb_func_start sub_080001D0
sub_080001D0: @ 0x080001D0
	lsls r2, r2, #2
	ldr r3, _08000220 @ =gUnk_08000278
	ldr r3, [r3, r2]
	strb r0, [r3, r1]
	bx lr

	non_word_aligned_thumb_func_start sub_080001DA
sub_080001DA: @ 0x080001DA
	lsls r1, r1, #3
	ldr r2, _08000224 @ =gUnk_08000228
	ldr r1, [r2, r1]
	lsls r0, r0, #1
	ldrh r0, [r1, r0]
	bx lr
	.align 2, 0
_080001E8: .4byte gUnk_02000070
_080001EC: .4byte gUnk_02025EB0
_080001F0: .4byte gUnk_02019EE0
_080001F4: .4byte gUnk_02021F70
_080001F8: .4byte gUnk_0200B650
_080001FC: .4byte gMapDataTopSpecial
_08000200: .4byte gUnk_020344F0
_08000204: .4byte gUnk_08000248
_08000208: .4byte gUnk_08000228
_0800020C: .4byte 0x00004000
_08000210: .4byte gUnk_080B7910
_08000214: .4byte gUnk_080B79A7
_08000218: .4byte gUnk_080B37A0
_0800021C: .4byte gUnk_080B3E80
_08000220: .4byte gUnk_08000278
_08000224: .4byte gUnk_08000228
gUnk_08000228::
	.4byte gMapDataBottom
gUnk_0800022C::
	.4byte gMetatileTypesBottom
	.4byte gMapDataBottom
	.4byte gMetatileTypesBottom
	.4byte gMapDataTop
	.4byte gMetatileTypesTop
	.4byte gMapDataBottom
	.4byte gMetatileTypesBottom
gUnk_08000248::
	.4byte gUnk_02027EB4
	.4byte gUnk_02027EB4
	.4byte gUnk_0200D654
	.4byte gUnk_02027EB4
gUnk_08000258::
	.4byte gUnk_02028EB4
	.4byte gMetatileTypesBottom
	.4byte gUnk_02028EB4
	.4byte gMetatileTypesBottom
	.4byte gUnk_0200E654
	.4byte gMetatileTypesTop
	.4byte gUnk_02028EB4
	.4byte gMetatileTypesBottom
gUnk_08000278::
	.4byte gUnk_02030EB4
	.4byte gUnk_02030EB4
	.4byte gUnk_02016654
	.4byte gUnk_02030EB4

@ call 0x80B19CC
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start GetTileAtEntityPos
GetTileAtEntityPos: @ 0x08000288
	ldr r3, _080002F4 @ =gUnk_03005740
	bx r3

@ call 0x80B19D8
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_0800028C
sub_0800028C: @ 0x0800028C
	ldr r3, _080002F8 @ =gUnk_0300574C
	bx r3

@ call 0x80B19EC
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_08000290
sub_08000290: @ 0x08000290
	ldr r3, _080002FC @ =gUnk_03005760
	bx r3

@ call 0x80B19FC
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_08000294
sub_08000294: @ 0x08000294
	ldr r3, _08000300 @ =gUnk_03005770
	bx r3

@ call 0x80B1A04
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_08000298
sub_08000298: @ 0x08000298
	ldr r3, _08000304 @ =gUnk_03005778
	bx r3

@ call 0x80B1A0C
@ r0: entity*
@ r1: s32
@ r2: s32
	thumb_func_start sub_0800029C
sub_0800029C: @ 0x0800029C
	ldr r3, _08000308 @ =gUnk_03005780
	bx r3

@ call 0x080B1A28
@ r0: entity
@ return: u32 (tileType)
	thumb_func_start GetTileTypeByEntity
GetTileTypeByEntity: @ 0x080002A0
	ldr r3, _0800030C @ =gUnk_0300579C
	bx r3

@ call 0x080B1A34
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
@ return: u32 (tileType)
	thumb_func_start GetTileTypeByPos
GetTileTypeByPos: @ 0x080002A4
	ldr r3, _08000310 @ =gUnk_030057A8
	bx r3

@ call 0x080B1A48
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080002A8
sub_080002A8: @ 0x080002A8
	ldr r3, _08000314 @ =gUnk_030057BC
	bx r3

@ call 0x080B1A58
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080002AC
sub_080002AC: @ 0x080002AC
	ldr r3, _08000318 @ =gUnk_030057CC
	bx r3

@ call 0x080B1A60
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
@ return: u32 (tileType)
	thumb_func_start GetTileType
GetTileType: @ 0x080002B0
	ldr r3, _0800031C @ =gUnk_030057D4
	bx r3

@ call 0x080B1A8C
@ r0: Entity*
@ r1: u32
@ r2: u32
	thumb_func_start sub_080002B4
sub_080002B4: @ 0x080002B4
	ldr r3, _08000320 @ =gUnk_03005800
	bx r3

@ call 0x080B1AA8
@ r0:
@ r1:
@ r2:
@ return: 
@ ========
@ Called every frame a pot is thrown, every frame the screen is sliding in a transition, and once when entering stairs.
	thumb_func_start sub_080002B8
sub_080002B8: @ 0x080002B8
	ldr r3, _08000324 @ =gUnk_0300581C
	bx r3

@ call 0x080B1AB4
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080002BC
sub_080002BC: @ 0x080002BC
	ldr r3, _08000328 @ =gUnk_03005828
	bx r3

@ call 0x080B1AC8
@ r0: u32
@ r1: u32
@ r2: u32
@ return: ???
	thumb_func_start sub_080002C0
sub_080002C0: @ 0x080002C0
	ldr r3, _0800032C @ =gUnk_0300583C
	bx r3

@ call 0x080B1AD8
@ r0: Entity*
@ r1: s32 (xOffset)
@ r2: s32 (yOffset)
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080002C4
sub_080002C4: @ 0x080002C4
	ldr r3, _08000330 @ =gUnk_0300584C
	bx r3

@ call 0x080B1AE0
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
	thumb_func_start sub_080002C8
sub_080002C8: @ 0x080002C8
	ldr r3, _08000334 @ =gUnk_03005854
	bx r3

@ call 0x080B1AF0
@ r0: Entity*
@ r1: ???
@ r2: ???
	thumb_func_start sub_080002CC
sub_080002CC: @ 0x080002CC
	ldr r3, _08000338 @ =gUnk_03005864
	bx r3

@ call 0x080B1B0C
@ r0: Entity*
	thumb_func_start sub_080002D0
sub_080002D0: @ 0x080002D0
	ldr r3, _0800033C @ =gUnk_03005880
	bx r3

@ call 0x080B1B18
@ r0: s32 (xPos)
@ r1: s32 (yPos)
@ r2: u32 (layer)
	thumb_func_start sub_080002D4
sub_080002D4: @ 0x080002D4
	ldr r3, _08000340 @ =gUnk_0300588C
	bx r3

@ call 0x080B1B2C
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080002D8
sub_080002D8: @ 0x080002D8
	ldr r3, _08000344 @ =gUnk_030058A0
	bx r3

@ call 0x080B1B3C
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080002DC
sub_080002DC: @ 0x080002DC
	ldr r3, _08000348 @ =gUnk_030058B0
	bx r3

@ call 0x080B1B44
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080002E0
sub_080002E0: @ 0x080002E0
	ldr r3, _0800034C @ =gUnk_030058B8
	bx r3

@ call 0x080B1B54
@ r0: u32 (tileIndex)
	thumb_func_start sub_080002E4
sub_080002E4: @ 0x080002E4
	ldr r3, _08000350 @ =gUnk_030058C8
	bx r3

@ call 0x080B1B68
@ ========
@ Unused? Doesn't seem to be called by anything in Ghidra.
	thumb_func_start sub_080002E8
sub_080002E8: @ 0x080002E8
	ldr r3, _08000354 @ =gUnk_030058DC
	bx r3

@ call 0x080B1B84
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
	thumb_func_start sub_080002EC
sub_080002EC: @ 0x080002EC
	ldr r3, _08000358 @ =gUnk_030058F8
	bx r3

@ call 0x080B1BA4
@ r0: u32 (tileIndex)
@ r1: u32 (layer)
@ r2: ???
	thumb_func_start sub_080002F0
sub_080002F0: @ 0x080002F0
	ldr r3, _0800035C @ =gUnk_03005918
	bx r3

_080002F4: .4byte gUnk_03005740
_080002F8: .4byte gUnk_0300574C
_080002FC: .4byte gUnk_03005760
_08000300: .4byte gUnk_03005770
_08000304: .4byte gUnk_03005778
_08000308: .4byte gUnk_03005780
_0800030C: .4byte gUnk_0300579C
_08000310: .4byte gUnk_030057A8
_08000314: .4byte gUnk_030057BC
_08000318: .4byte gUnk_030057CC
_0800031C: .4byte gUnk_030057D4
_08000320: .4byte gUnk_03005800
_08000324: .4byte gUnk_0300581C
_08000328: .4byte gUnk_03005828
_0800032C: .4byte gUnk_0300583C
_08000330: .4byte gUnk_0300584C
_08000334: .4byte gUnk_03005854
_08000338: .4byte gUnk_03005864
_0800033C: .4byte gUnk_03005880
_08000340: .4byte gUnk_0300588C
_08000344: .4byte gUnk_030058A0
_08000348: .4byte gUnk_030058B0
_0800034C: .4byte gUnk_030058B8
_08000350: .4byte gUnk_030058C8
_08000354: .4byte gUnk_030058DC
_08000358: .4byte gUnk_030058F8
_0800035C: .4byte gUnk_03005918
