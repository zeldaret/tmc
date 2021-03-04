	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
gUnk_0801606C:: @ 0801606C
	.incbin "baserom.gba", 0x01606C, 0x000003C

gUnk_080160A8:: @ 080160A8
	.incbin "baserom.gba", 0x0160A8, 0x0000042

gUnk_080160EA:: @ 080160EA
	.incbin "baserom.gba", 0x0160EA, 0x0000052

gUnk_0801613C:: @ 0801613C
	.incbin "baserom.gba", 0x01613C, 0x0000054

gUnk_08016190:: @ 08016190
	.incbin "baserom.gba", 0x016190, 0x0000058

gUnk_080161E8:: @ 080161E8
	.incbin "baserom.gba", 0x0161E8, 0x0000174

gUnk_0801635C:: @ 0801635C
	.incbin "baserom.gba", 0x01635C, 0x0000021

gUnk_0801637D:: @ 0801637D
	.incbin "baserom.gba", 0x01637D, 0x0000007

gUnk_08016384:: @ 08016384
	.incbin "baserom.gba", 0x016384, 0x0000084

gUnk_08016408:: @ 08016408
	.incbin "baserom.gba", 0x016408, 0x00001F0

gUnk_080165F8:: @ 080165F8
	.incbin "baserom.gba", 0x0165F8, 0x0000014

gUnk_0801660C:: @ 0801660C
	.incbin "baserom.gba", 0x01660C, 0x000001C

gUnk_08016628:: @ 08016628
	.incbin "baserom.gba", 0x016628, 0x000001C

gUnk_08016644:: @ 08016644
	.incbin "baserom.gba", 0x016644, 0x0000028

gUnk_0801666C:: @ 0801666C
	.incbin "baserom.gba", 0x01666C, 0x000004C

gUnk_080166B8:: @ 080166B8
	.incbin "baserom.gba", 0x0166B8, 0x0000044

gUnk_080166FC:: @ 080166FC
	.incbin "baserom.gba", 0x0166FC, 0x000009C

gUnk_08016798:: @ 08016798
	.incbin "baserom.gba", 0x016798, 0x00000AC

gUnk_08016844:: @ 08016844
	.incbin "baserom.gba", 0x016844, 0x000009C

gUnk_080168E0:: @ 080168E0
	.incbin "baserom.gba", 0x0168E0, 0x0000014

gUnk_080168F4:: @ 080168F4
	.incbin "baserom.gba", 0x0168F4, 0x0000090

gUnk_08016984:: @ 08016984
	.incbin "baserom.gba", 0x016984, 0x0000002

	.text

	non_word_aligned_thumb_func_start GetNextScriptCommandHalfword
GetNextScriptCommandHalfword: @ 0x08016986
	ldrh r0, [r0]
	bx lr

	non_word_aligned_thumb_func_start GetNextScriptCommandHalfwordAfterCommandMetadata
GetNextScriptCommandHalfwordAfterCommandMetadata: @ 0x0801698A
	ldrh r0, [r0, #2]
	bx lr

	non_word_aligned_thumb_func_start GetNextScriptCommandWord
GetNextScriptCommandWord: @ 0x0801698E
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	orrs r0, r1
	bx lr

	thumb_func_start GetNextScriptCommandWordAfterCommandMetadata
GetNextScriptCommandWordAfterCommandMetadata: @ 0x08016998
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x10
	orrs r0, r1
	bx lr
	.align 2, 0

gUnk_080169A4::
	.byte 0x01, 0xFF, 0x00, 0x01, 0x01, 0x00, 0x00, 0x01, 0xFF, 0xFF, 0x01, 0x00
	.byte 0xFF, 0x01, 0x00, 0x00, 0x02, 0xFF, 0x01, 0xFE, 0x00, 0xFF, 0xFF, 0x00, 0xFF, 0x01, 0xFF, 0x02
	.byte 0x00, 0x00, 0x01, 0x01, 0x02, 0xFF, 0x02, 0xFE, 0xFE, 0x02, 0xFF, 0x03, 0xFD, 0xFF, 0xFE, 0x01
	.byte 0x01, 0xFD, 0xFF, 0xFF, 0x03, 0xFE, 0x02, 0x00, 0x00, 0xFF, 0xFE, 0x03, 0xFD, 0x02, 0xFF, 0x00
	.byte 0x00, 0xFD, 0x02, 0x00, 0x00, 0xFF, 0x00, 0xFE, 0x00, 0xFF, 0x00, 0x00, 0x00, 0x01, 0x00, 0x02
	.byte 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x01, 0x00, 0x00, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00
	.byte 0x00, 0x00, 0x01, 0x00

	thumb_func_start UpdateSpriteForCollisionLayer
UpdateSpriteForCollisionLayer: @ 0x08016A04
	movs r1, #0x38
	ldrb r1, [r0, r1]
	lsls r1, r1, #1
	add r3, pc, #0x1C
	adds r1, r1, r3
	movs r3, #0xc0
	ldrb r2, [r0, #0x19]
	bics r2, r3
	ldrb r3, [r1]
	orrs r2, r3
	strb r2, [r0, #0x19]
	movs r3, #0xc0
	ldrb r2, [r0, #0x1b]
	bics r2, r3
	ldrb r3, [r1, #1]
	orrs r2, r3
	strb r2, [r0, #0x1b]
	bx lr
_08016A28:
	.byte 0x80, 0x80, 0x80, 0x80, 0x40, 0x40, 0x40, 0x40

	thumb_func_start sub_08016A30
sub_08016A30: @ 0x08016A30
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x38
	ldrb r0, [r4, r5]
	cmp r0, #0
	bne _08016A64
	ldrh r0, [r4, #0x2e]
	ldrh r1, [r4, #0x32]
	movs r2, #2
	bl GetTileTypeByPos
	movs r3, #1
	cmp r0, #0
	beq _08016A62
	bl sub_080002E4
	movs r3, #2
	add r1, pc, #0x40
_08016A54:
	adds r1, #4
	ldrh r2, [r1]
	cmp r2, #0
	beq _08016A62
	cmp r0, r2
	bne _08016A54
	ldrb r3, [r1, #3]
_08016A62:
	strb r3, [r4, r5]
_08016A64:
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	pop {r4, r5, pc}

	thumb_func_start sub_08016A6C
sub_08016A6C: @ 0x08016A6C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_080002B8
	add r1, pc, #0x38
_08016A76:
	adds r1, #4
	ldrh r2, [r1]
	cmp r2, #0
	beq _08016A90
	cmp r2, r0
	bne _08016A76
	movs r2, #0x38
	ldrb r3, [r4, r2]
	ldrb r5, [r1, #2]
	cmp r3, r5
	beq _08016A90
	ldrb r5, [r1, #3]
	strb r5, [r4, r2]
_08016A90:
	pop {r4, r5, pc}
	.align 2, 0
_08016A94:
	.byte 0x2A, 0x00, 0x03, 0x03, 0x2D, 0x00, 0x03, 0x03, 0x2B, 0x00, 0x03, 0x03
	.byte 0x2C, 0x00, 0x03, 0x03, 0x4C, 0x00, 0x03, 0x03, 0x4E, 0x00, 0x03, 0x03, 0x4D, 0x00, 0x03, 0x03
	.byte 0x4F, 0x00, 0x03, 0x03, 0x0A, 0x00, 0x02, 0x01, 0x09, 0x00, 0x02, 0x01, 0x0C, 0x00, 0x01, 0x02
	.byte 0x0B, 0x00, 0x01, 0x02, 0x52, 0x00, 0x03, 0x03, 0x27, 0x00, 0x03, 0x03, 0x26, 0x00, 0x03, 0x03
	.byte 0x00, 0x00

	non_word_aligned_thumb_func_start sub_08016AD2
sub_08016AD2: @ 0x08016AD2
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08016A6C
	push {r0}
	adds r0, r4, #0
	bl UpdateSpriteForCollisionLayer
	pop {r0, r4, pc}

