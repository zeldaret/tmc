	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08057D50
sub_08057D50: @ 0x08057D50
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _08057D7C
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #8
	strb r0, [r4, #0xe]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #6
	bl sub_0805E3A0
	ldr r1, _08057DC0 @ =sub_08057E30
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_08057D7C:
	adds r0, r4, #0
	bl sub_08057E40
	cmp r0, #0
	beq _08057D9A
	ldr r0, _08057DC4 @ =gRoomVars
	ldrb r5, [r0, #0x10]
	adds r1, r4, #0
	adds r1, #0x20
	ldrb r0, [r1]
	cmp r0, r5
	beq _08057D9A
	movs r0, #0
	strb r5, [r1]
	strb r0, [r4, #0xe]
_08057D9A:
	ldr r0, _08057DC8 @ =gRoomControls
	ldrh r3, [r0]
	cmp r3, #0
	bne _08057E2A
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r5, [r0]
	lsls r1, r5, #6
	ldr r0, _08057DCC @ =gUnk_081080A4
	adds r2, r1, r0
	ldrb r1, [r4, #0xe]
	cmp r1, #7
	bgt _08057DD0
	cmp r1, #1
	bge _08057E04
	cmp r1, #0
	beq _08057DD6
	b _08057E2A
	.align 2, 0
_08057DC0: .4byte sub_08057E30
_08057DC4: .4byte gRoomVars
_08057DC8: .4byte gRoomControls
_08057DCC: .4byte gUnk_081080A4
_08057DD0:
	cmp r1, #8
	beq _08057E20
	b _08057E2A
_08057DD6:
	ldr r1, _08057DF8 @ =gUnk_02034490
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r2]
	ldr r1, _08057DFC @ =gGlobalGfxAndPalettes
	adds r0, r0, r1
	ldr r1, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	bl LoadAssetAsync
	ldr r0, _08057E00 @ =gUnk_081081E4
	adds r0, r5, r0
	ldrb r0, [r0]
	bl LoadPaletteGroup
	b _08057E24
	.align 2, 0
_08057DF8: .4byte gUnk_02034490
_08057DFC: .4byte gGlobalGfxAndPalettes
_08057E00: .4byte gUnk_081081E4
_08057E04:
	lsls r1, r1, #3
	adds r1, r1, r2
	ldr r0, [r1]
	ldr r2, _08057E1C @ =gGlobalGfxAndPalettes
	adds r0, r0, r2
	ldr r1, [r1, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	bl LoadAssetAsync
	b _08057E24
	.align 2, 0
_08057E1C: .4byte gGlobalGfxAndPalettes
_08057E20:
	ldr r0, _08057E2C @ =gUnk_02034490
	strb r3, [r0]
_08057E24:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
_08057E2A:
	pop {r4, r5, pc}
	.align 2, 0
_08057E2C: .4byte gUnk_02034490

	thumb_func_start sub_08057E30
sub_08057E30: @ 0x08057E30
	push {lr}
	ldr r0, _08057E3C @ =gRoomVars
	ldrb r0, [r0, #0x10]
	bl sub_08057E7C
	pop {pc}
	.align 2, 0
_08057E3C: .4byte gRoomVars

	thumb_func_start sub_08057E40
sub_08057E40: @ 0x08057E40
	push {lr}
	ldr r0, _08057E54 @ =gUnk_08108050
	bl sub_08056300
	adds r1, r0, #0
	cmp r1, #0xff
	bne _08057E58
	movs r0, #0
	b _08057E5E
	.align 2, 0
_08057E54: .4byte gUnk_08108050
_08057E58:
	ldr r0, _08057E60 @ =gRoomVars
	strb r1, [r0, #0x10]
	movs r0, #1
_08057E5E:
	pop {pc}
	.align 2, 0
_08057E60: .4byte gRoomVars

	thumb_func_start sub_08057E64
sub_08057E64: @ 0x08057E64
	push {lr}
	ldr r0, _08057E78 @ =gUnk_08108050
	bl sub_08056300
	cmp r0, #0xff
	beq _08057E74
	bl sub_08057E7C
_08057E74:
	pop {pc}
	.align 2, 0
_08057E78: .4byte gUnk_08108050

	thumb_func_start sub_08057E7C
sub_08057E7C: @ 0x08057E7C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #4
	bhi _08057EB6
	ldr r0, _08057EB8 @ =gUnk_081081E4
	adds r0, r4, r0
	ldrb r0, [r0]
	bl LoadPaletteGroup
	lsls r1, r4, #6
	ldr r0, _08057EBC @ =gUnk_081080A4
	adds r1, r1, r0
	movs r3, #0
	ldr r2, _08057EC0 @ =0x040000D4
	ldr r6, _08057EC4 @ =gGlobalGfxAndPalettes
	ldr r5, _08057EC8 @ =0x84000400
_08057E9C:
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r2]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	str r5, [r2, #8]
	ldr r0, [r2, #8]
	adds r3, #1
	adds r1, #8
	cmp r3, #7
	bls _08057E9C
	ldr r0, _08057ECC @ =gRoomVars
	strb r4, [r0, #0x10]
_08057EB6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08057EB8: .4byte gUnk_081081E4
_08057EBC: .4byte gUnk_081080A4
_08057EC0: .4byte 0x040000D4
_08057EC4: .4byte gGlobalGfxAndPalettes
_08057EC8: .4byte 0x84000400
_08057ECC: .4byte gRoomVars
