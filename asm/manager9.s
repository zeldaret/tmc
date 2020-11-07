	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080581D8
sub_080581D8: @ 0x080581D8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08058210
	ldrb r1, [r4, #0xc]
	cmp r1, #0
	bne _080581F8
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, _080581FC @ =gScreen
	strh r1, [r0, #0x1a]
	ldr r1, _08058200 @ =sub_08058204
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_080581F8:
	pop {r4, pc}
	.align 2, 0
_080581FC: .4byte gScreen
_08058200: .4byte sub_08058204

	thumb_func_start sub_08058204
sub_08058204: @ 0x08058204
	push {lr}
	ldrb r0, [r0, #0xa]
	bl sub_08058324
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08058210
sub_08058210: @ 0x08058210
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xa]
	bl sub_08058244
	adds r3, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, r3
	beq _08058234
	str r3, [r4, #0x3c]
	ldr r1, _08058238 @ =gUnk_02006F00
	ldr r2, _0805823C @ =gUnk_02001A40
	adds r0, r3, #0
	bl sub_080582A0
	ldr r1, _08058240 @ =gScreen
	movs r0, #1
	strh r0, [r1, #0x1a]
_08058234:
	pop {r4, pc}
	.align 2, 0
_08058238: .4byte gUnk_02006F00
_0805823C: .4byte gUnk_02001A40
_08058240: .4byte gScreen

	thumb_func_start sub_08058244
sub_08058244: @ 0x08058244
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	ldr r5, _08058294 @ =gRoomControls
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r4, [r5, #8]
	subs r0, r0, r4
	lsls r0, r0, #5
	ldrh r1, [r5, #0x20]
	subs r1, #0xa0
	bl __divsi3
	ldr r2, _08058298 @ =gScreen
	mov r8, r2
	adds r4, r4, r0
	strh r4, [r2, #0x18]
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	ldrh r0, [r5, #6]
	subs r1, r1, r0
	ldr r0, _0805829C @ =gUnk_081081EC
	lsls r6, r6, #1
	adds r6, r6, r0
	ldrh r0, [r6]
	muls r0, r1, r0
	ldrh r1, [r5, #0x1e]
	subs r1, #0xf0
	bl __divsi3
	movs r2, #0xf
	adds r1, r0, #0
	ands r1, r2
	mov r2, r8
	strh r1, [r2, #0x16]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, pc}
	.align 2, 0
_08058294: .4byte gRoomControls
_08058298: .4byte gScreen
_0805829C: .4byte gUnk_081081EC

	thumb_func_start sub_080582A0
sub_080582A0: @ 0x080582A0
	push {r4, r5, r6, lr}
	movs r4, #0x20
	lsrs r0, r0, #4
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r3, _080582C8 @ =0x040000D4
	ldr r6, _080582CC @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_080582B2:
	str r1, [r3]
	str r2, [r3, #4]
	str r6, [r3, #8]
	ldr r0, [r3, #8]
	adds r1, r1, r5
	adds r2, #0x40
	subs r4, #1
	cmp r4, #0
	bne _080582B2
	pop {r4, r5, r6, pc}
	.align 2, 0
_080582C8: .4byte 0x040000D4
_080582CC: .4byte 0x80000020

	thumb_func_start sub_080582D0
sub_080582D0: @ 0x080582D0
	push {r4, r5, lr}
	ldr r4, _080582F4 @ =gMapDataTopSpecial
	movs r0, #0x80
	lsls r0, r0, #7
	adds r5, r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080582F8
	movs r0, #0x80
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r5, #0x40
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080582F8
	pop {r4, r5, pc}
	.align 2, 0
_080582F4: .4byte gMapDataTopSpecial

	thumb_func_start sub_080582F8
sub_080582F8: @ 0x080582F8
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	ldr r2, _0805831C @ =0x040000D4
	ldr r6, _08058320 @ =0x80000020
	movs r5, #0x80
	lsls r5, r5, #1
_08058306:
	str r3, [r2]
	str r1, [r2, #4]
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	adds r3, #0x40
	adds r1, r1, r5
	cmp r4, #0x1f
	bls _08058306
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805831C: .4byte 0x040000D4
_08058320: .4byte 0x80000020

	thumb_func_start sub_08058324
sub_08058324: @ 0x08058324
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _0805836C @ =gUnk_0200B650
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x86
	bl LoadPaletteGroup
	adds r0, r4, #0
	adds r0, #0x36
	bl LoadGfxGroup
	bl sub_080582D0
	adds r0, r4, #0
	bl sub_08058244
	ldr r1, _08058370 @ =gUnk_02006F00
	ldr r4, _08058374 @ =gUnk_02001A40
	adds r2, r4, #0
	bl sub_080582A0
	ldr r1, _08058378 @ =gScreen
	ldr r0, _0805837C @ =0x00001D47
	strh r0, [r1, #0x14]
	str r4, [r1, #0x1c]
	movs r0, #1
	strh r0, [r1, #0x1a]
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	pop {r4, pc}
	.align 2, 0
_0805836C: .4byte gUnk_0200B650
_08058370: .4byte gUnk_02006F00
_08058374: .4byte gUnk_02001A40
_08058378: .4byte gScreen
_0805837C: .4byte 0x00001D47
