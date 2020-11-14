	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801C370
sub_0801C370: @ 0x0801C370
	push {r4, r5, r6, lr}
	cmp r0, #0
	bne _0801C390
	ldr r0, _0801C388 @ =gUnk_02002A40
	adds r1, r0, #0
	adds r1, #0xaa
	ldrb r1, [r1]
	lsrs r6, r1, #1
	adds r0, #0xc0
	ldrh r4, [r0]
	ldr r5, _0801C38C @ =gUnk_0200AF00
	b _0801C398
	.align 2, 0
_0801C388: .4byte gUnk_02002A40
_0801C38C: .4byte gUnk_0200AF00
_0801C390:
	ldr r0, _0801C470 @ =gUnk_0200AF00
	ldrb r6, [r0, #3]
	ldrh r4, [r0, #0xe]
	adds r5, r0, #0
_0801C398:
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r5, #0
	bl _DmaZero
	strb r6, [r5, #3]
	strh r4, [r5, #0xe]
	ldr r0, _0801C474 @ =gUnk_02002A40
	adds r0, #0xab
	ldrb r0, [r0]
	lsrs r0, r0, #1
	strb r0, [r5, #4]
	movs r0, #0xc
	bl LoadPaletteGroup
	movs r0, #0x10
	bl LoadGfxGroup
	ldr r4, _0801C478 @ =gUnk_02034CB0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r4, #0
	bl _DmaZero
	ldr r1, _0801C47C @ =gScreen
	str r4, [r1, #0x10]
	ldr r0, _0801C480 @ =0x00001F0C
	strh r0, [r1, #8]
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	ldr r1, _0801C484 @ =gUnk_03000000
	ldr r2, _0801C488 @ =0x00000427
	adds r0, r1, r2
	movs r2, #1
	strb r2, [r0]
	ldr r3, _0801C48C @ =0x00000426
	adds r0, r1, r3
	strb r2, [r0]
	ldr r0, _0801C490 @ =0x0000042E
	adds r1, r1, r0
	strb r2, [r1]
	movs r0, #0x7f
	strb r0, [r5, #0x13]
	strb r0, [r5, #0x14]
	strb r0, [r5, #8]
	bl sub_0801C6B0
	bl sub_0801C4B0
	bl sub_0801C85C
	bl sub_0801C99C
	movs r0, #0xd0
	strh r0, [r5, #0x16]
	movs r0, #0xb8
	strh r0, [r5, #0x18]
	movs r0, #0xd8
	strh r0, [r5, #0x1a]
	movs r0, #0x1c
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x1e]
	movs r0, #0xe
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xc0
	lsls r1, r1, #2
	bl _DmaZero
	movs r0, #5
	movs r1, #9
	bl sub_0801CA6C
	movs r0, #3
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #4
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #2
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #1
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #0
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #7
	movs r1, #0
	bl sub_0801CA6C
	movs r0, #6
	movs r1, #0
	bl sub_0801CA6C
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801C470: .4byte gUnk_0200AF00
_0801C474: .4byte gUnk_02002A40
_0801C478: .4byte gUnk_02034CB0
_0801C47C: .4byte gScreen
_0801C480: .4byte 0x00001F0C
_0801C484: .4byte gUnk_03000000
_0801C488: .4byte 0x00000427
_0801C48C: .4byte 0x00000426
_0801C490: .4byte 0x0000042E

	thumb_func_start sub_0801C494
sub_0801C494: @ 0x0801C494
	ldr r1, _0801C49C @ =gScreen
	movs r0, #1
	strh r0, [r1, #0xe]
	bx lr
	.align 2, 0
_0801C49C: .4byte gScreen

	thumb_func_start sub_0801C4A0
sub_0801C4A0: @ 0x0801C4A0
	ldr r1, _0801C4AC @ =gUnk_0200AF00
	movs r0, #0
	strb r0, [r1, #2]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0xa]
	bx lr
	.align 2, 0
_0801C4AC: .4byte gUnk_0200AF00
