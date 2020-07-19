	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0804CE20
sub_0804CE20: @ 0x0804CE20
	movs r0, #1
	bx lr

	thumb_func_start nullsub_259
nullsub_259: @ 0x0804CE24
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE28
sub_0804CE28: @ 0x0804CE28
	movs r0, #1
	bx lr

	thumb_func_start nullsub_260
nullsub_260: @ 0x0804CE2C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE30
sub_0804CE30: @ 0x0804CE30
	movs r0, #1
	bx lr

	thumb_func_start nullsub_261
nullsub_261: @ 0x0804CE34
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE38
sub_0804CE38: @ 0x0804CE38
	movs r0, #1
	bx lr

	thumb_func_start nullsub_262
nullsub_262: @ 0x0804CE3C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE40
sub_0804CE40: @ 0x0804CE40
	movs r0, #1
	bx lr

	thumb_func_start nullsub_263
nullsub_263: @ 0x0804CE44
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE48
sub_0804CE48: @ 0x0804CE48
	movs r0, #1
	bx lr

	thumb_func_start nullsub_264
nullsub_264: @ 0x0804CE4C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE50
sub_0804CE50: @ 0x0804CE50
	movs r0, #1
	bx lr

	thumb_func_start nullsub_265
nullsub_265: @ 0x0804CE54
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE58
sub_0804CE58: @ 0x0804CE58
	movs r0, #1
	bx lr

	thumb_func_start nullsub_266
nullsub_266: @ 0x0804CE5C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE60
sub_0804CE60: @ 0x0804CE60
	movs r0, #1
	bx lr

	thumb_func_start nullsub_267
nullsub_267: @ 0x0804CE64
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE68
sub_0804CE68: @ 0x0804CE68
	movs r0, #1
	bx lr

	thumb_func_start nullsub_268
nullsub_268: @ 0x0804CE6C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE70
sub_0804CE70: @ 0x0804CE70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_269
nullsub_269: @ 0x0804CE74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE78
sub_0804CE78: @ 0x0804CE78
	movs r0, #1
	bx lr

	thumb_func_start nullsub_270
nullsub_270: @ 0x0804CE7C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CE80
sub_0804CE80: @ 0x0804CE80
	push {lr}
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804CE92
	ldr r1, _0804CE98 @ =gRoomVars
	ldr r0, _0804CE9C @ =gUnk_080E103C
	str r0, [r1, #0x70]
_0804CE92:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804CE98: .4byte gRoomVars
_0804CE9C: .4byte gUnk_080E103C

	thumb_func_start nullsub_271
nullsub_271: @ 0x0804CEA0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CEA4
sub_0804CEA4: @ 0x0804CEA4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_272
nullsub_272: @ 0x0804CEA8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CEAC
sub_0804CEAC: @ 0x0804CEAC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_273
nullsub_273: @ 0x0804CEB0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CEB4
sub_0804CEB4: @ 0x0804CEB4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_274
nullsub_274: @ 0x0804CEB8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CEBC
sub_0804CEBC: @ 0x0804CEBC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_275
nullsub_275: @ 0x0804CEC0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CEC4
sub_0804CEC4: @ 0x0804CEC4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_276
nullsub_276: @ 0x0804CEC8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CECC
sub_0804CECC: @ 0x0804CECC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_277
nullsub_277: @ 0x0804CED0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CED4
sub_0804CED4: @ 0x0804CED4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804CED8
sub_0804CED8: @ 0x0804CED8
	push {lr}
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804CF18
	ldr r1, _0804CF04 @ =gUnk_0200B650
	movs r0, #0
	str r0, [r1]
	ldr r2, _0804CF08 @ =gScreen
	ldrh r1, [r2]
	ldr r0, _0804CF0C @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0804CF10 @ =gLinkEntity
	bl sub_0807AABC
	ldr r0, _0804CF14 @ =gUnk_080E1814
	bl LoadRoomEntityList
	b _0804CF2E
	.align 2, 0
_0804CF04: .4byte gUnk_0200B650
_0804CF08: .4byte gScreen
_0804CF0C: .4byte 0x0000FDFF
_0804CF10: .4byte gLinkEntity
_0804CF14: .4byte gUnk_080E1814
_0804CF18:
	ldr r0, _0804CF30 @ =0x80100000
	bl PlaySFX
	ldr r0, _0804CF34 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804CF2E:
	pop {pc}
	.align 2, 0
_0804CF30: .4byte 0x80100000
_0804CF34: .4byte gArea

	thumb_func_start sub_0804CF38
sub_0804CF38: @ 0x0804CF38
	movs r0, #1
	bx lr

	thumb_func_start nullsub_278
nullsub_278: @ 0x0804CF3C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CF40
sub_0804CF40: @ 0x0804CF40
	movs r0, #1
	bx lr

	thumb_func_start sub_0804CF44
sub_0804CF44: @ 0x0804CF44
	ldr r1, _0804CF58 @ =gUnk_030010A0
	adds r2, r1, #0
	adds r2, #0x38
	movs r0, #0
	strb r0, [r2]
	adds r1, #0x39
	movs r0, #0x5a
	strb r0, [r1]
	bx lr
	.align 2, 0
_0804CF58: .4byte gUnk_030010A0

	thumb_func_start sub_0804CF5C
sub_0804CF5C: @ 0x0804CF5C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804CF60
sub_0804CF60: @ 0x0804CF60
	push {lr}
	bl sub_080300E8
	pop {pc}

	thumb_func_start sub_0804CF68
sub_0804CF68: @ 0x0804CF68
	movs r0, #1
	bx lr

	thumb_func_start nullsub_39
nullsub_39: @ 0x0804CF6C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CF70
sub_0804CF70: @ 0x0804CF70
	movs r0, #1
	bx lr

	thumb_func_start sub_0804CF74
sub_0804CF74: @ 0x0804CF74
	push {lr}
	bl sub_080300E8
	pop {pc}

	thumb_func_start sub_0804CF7C
sub_0804CF7C: @ 0x0804CF7C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_40
nullsub_40: @ 0x0804CF80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CF84
sub_0804CF84: @ 0x0804CF84
	movs r0, #1
	bx lr

	thumb_func_start nullsub_41
nullsub_41: @ 0x0804CF88
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CF8C
sub_0804CF8C: @ 0x0804CF8C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_42
nullsub_42: @ 0x0804CF90
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CF94
sub_0804CF94: @ 0x0804CF94
	movs r0, #1
	bx lr

	thumb_func_start nullsub_43
nullsub_43: @ 0x0804CF98
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CF9C
sub_0804CF9C: @ 0x0804CF9C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_44
nullsub_44: @ 0x0804CFA0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CFA4
sub_0804CFA4: @ 0x0804CFA4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_45
nullsub_45: @ 0x0804CFA8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804CFAC
sub_0804CFAC: @ 0x0804CFAC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804CFB0
sub_0804CFB0: @ 0x0804CFB0
	push {lr}
	movs r0, #0x31
	bl CheckFlags
	cmp r0, #0
	bne _0804CFFE
	ldr r1, _0804CFD0 @ =gUnk_030010A0
	adds r0, r1, #0
	adds r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CFD8
	ldr r0, _0804CFD4 @ =0x80100000
	bl PlaySFX
	b _0804CFEE
	.align 2, 0
_0804CFD0: .4byte gUnk_030010A0
_0804CFD4: .4byte 0x80100000
_0804CFD8:
	adds r0, r1, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804CFEE
	ldr r0, _0804D000 @ =0x80050000
	bl PlaySFX
	movs r0, #3
	bl sub_08078A90
_0804CFEE:
	ldr r0, _0804D004 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804CFFE:
	pop {pc}
	.align 2, 0
_0804D000: .4byte 0x80050000
_0804D004: .4byte gArea

	thumb_func_start sub_0804D008
sub_0804D008: @ 0x0804D008
	movs r0, #1
	bx lr

	thumb_func_start nullsub_279
nullsub_279: @ 0x0804D00C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D010
sub_0804D010: @ 0x0804D010
	movs r0, #1
	bx lr

	thumb_func_start nullsub_280
nullsub_280: @ 0x0804D014
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D018
sub_0804D018: @ 0x0804D018
	movs r0, #1
	bx lr

	thumb_func_start nullsub_281
nullsub_281: @ 0x0804D01C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D020
sub_0804D020: @ 0x0804D020
	movs r0, #1
	bx lr

	thumb_func_start nullsub_282
nullsub_282: @ 0x0804D024
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D028
sub_0804D028: @ 0x0804D028
	movs r0, #1
	bx lr

	thumb_func_start nullsub_283
nullsub_283: @ 0x0804D02C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D030
sub_0804D030: @ 0x0804D030
	movs r0, #1
	bx lr

	thumb_func_start nullsub_284
nullsub_284: @ 0x0804D034
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D038
sub_0804D038: @ 0x0804D038
	movs r0, #1
	bx lr

	thumb_func_start nullsub_285
nullsub_285: @ 0x0804D03C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D040
sub_0804D040: @ 0x0804D040
	movs r0, #1
	bx lr

	thumb_func_start nullsub_286
nullsub_286: @ 0x0804D044
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D048
sub_0804D048: @ 0x0804D048
	movs r0, #1
	bx lr

	thumb_func_start nullsub_287
nullsub_287: @ 0x0804D04C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D050
sub_0804D050: @ 0x0804D050
	movs r0, #1
	bx lr

	thumb_func_start nullsub_288
nullsub_288: @ 0x0804D054
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D058
sub_0804D058: @ 0x0804D058
	movs r0, #1
	bx lr

	thumb_func_start nullsub_289
nullsub_289: @ 0x0804D05C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D060
sub_0804D060: @ 0x0804D060
	movs r0, #1
	bx lr

	thumb_func_start nullsub_290
nullsub_290: @ 0x0804D064
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D068
sub_0804D068: @ 0x0804D068
	movs r0, #1
	bx lr

	thumb_func_start nullsub_291
nullsub_291: @ 0x0804D06C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D070
sub_0804D070: @ 0x0804D070
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D074
sub_0804D074: @ 0x0804D074
	push {lr}
	movs r0, #4
	bl SetGlobalFlag
	bl sub_080530C8
	movs r0, #3
	bl sub_0805B4D0
	movs r0, #0x17
	bl GetInventoryValue
	cmp r0, #0
	bne _0804D0A0
	movs r0, #0x45
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804D0A0
	ldr r0, _0804D0A4 @ =gUnk_080E3850
	bl LoadRoomEntityList
_0804D0A0:
	pop {pc}
	.align 2, 0
_0804D0A4: .4byte gUnk_080E3850

	thumb_func_start sub_0804D0A8
sub_0804D0A8: @ 0x0804D0A8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D0AC
sub_0804D0AC: @ 0x0804D0AC
	push {lr}
	bl sub_0804D0B4
	pop {pc}

	thumb_func_start sub_0804D0B4
sub_0804D0B4: @ 0x0804D0B4
	push {lr}
	movs r0, #0x29
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D0D2
	movs r0, #0x29
	bl SetLocalFlag
	movs r0, #0x4b
	bl SetLocalFlag
	movs r0, #0x4e
	bl SetLocalFlag
_0804D0D2:
	pop {pc}

	thumb_func_start sub_0804D0D4
sub_0804D0D4: @ 0x0804D0D4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_46
nullsub_46: @ 0x0804D0D8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D0DC
sub_0804D0DC: @ 0x0804D0DC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_47
nullsub_47: @ 0x0804D0E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D0E4
sub_0804D0E4: @ 0x0804D0E4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_48
nullsub_48: @ 0x0804D0E8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D0EC
sub_0804D0EC: @ 0x0804D0EC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_49
nullsub_49: @ 0x0804D0F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D0F4
sub_0804D0F4: @ 0x0804D0F4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_50
nullsub_50: @ 0x0804D0F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D0FC
sub_0804D0FC: @ 0x0804D0FC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_51
nullsub_51: @ 0x0804D100
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D104
sub_0804D104: @ 0x0804D104
	movs r0, #1
	bx lr

	thumb_func_start nullsub_52
nullsub_52: @ 0x0804D108
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D10C
sub_0804D10C: @ 0x0804D10C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_53
nullsub_53: @ 0x0804D110
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D114
sub_0804D114: @ 0x0804D114
	movs r0, #1
	bx lr

	thumb_func_start nullsub_54
nullsub_54: @ 0x0804D118
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D11C
sub_0804D11C: @ 0x0804D11C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_55
nullsub_55: @ 0x0804D120
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D124
sub_0804D124: @ 0x0804D124
	movs r0, #1
	bx lr

	thumb_func_start nullsub_56
nullsub_56: @ 0x0804D128
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D12C
sub_0804D12C: @ 0x0804D12C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_57
nullsub_57: @ 0x0804D130
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D134
sub_0804D134: @ 0x0804D134
	movs r0, #1
	bx lr

	thumb_func_start nullsub_58
nullsub_58: @ 0x0804D138
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D13C
sub_0804D13C: @ 0x0804D13C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D140
sub_0804D140: @ 0x0804D140
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_0805308C
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804D160
	ldr r0, _0804D15C @ =gUnk_080E49F4
	bl LoadRoomEntityList
	b _0804D176
	.align 2, 0
_0804D15C: .4byte gUnk_080E49F4
_0804D160:
	ldr r0, _0804D178 @ =0x80100000
	bl PlaySFX
	ldr r0, _0804D17C @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804D176:
	pop {pc}
	.align 2, 0
_0804D178: .4byte 0x80100000
_0804D17C: .4byte gArea

	thumb_func_start sub_0804D180
sub_0804D180: @ 0x0804D180
	movs r0, #1
	bx lr

	thumb_func_start nullsub_292
nullsub_292: @ 0x0804D184
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D188
sub_0804D188: @ 0x0804D188
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D18C
sub_0804D18C: @ 0x0804D18C
	push {lr}
	movs r0, #0x48
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D1A4
	movs r0, #0x46
	bl ClearLocalFlag
	ldr r0, _0804D1A8 @ =gUnk_080E4BD8
	bl LoadRoomEntityList
_0804D1A4:
	pop {pc}
	.align 2, 0
_0804D1A8: .4byte gUnk_080E4BD8

	thumb_func_start sub_0804D1AC
sub_0804D1AC: @ 0x0804D1AC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D1B0
sub_0804D1B0: @ 0x0804D1B0
	push {lr}
	bl sub_0804D0B4
	movs r0, #0x6c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804D1CC
	ldr r0, _0804D1C8 @ =gUnk_080E4CD8
	bl LoadRoomEntityList
	b _0804D1D2
	.align 2, 0
_0804D1C8: .4byte gUnk_080E4CD8
_0804D1CC:
	ldr r0, _0804D1E4 @ =gUnk_080E4CF8
	bl LoadRoomEntityList
_0804D1D2:
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D1E2
	movs r0, #0x49
	bl ClearLocalFlag
_0804D1E2:
	pop {pc}
	.align 2, 0
_0804D1E4: .4byte gUnk_080E4CF8

	thumb_func_start sub_0804D1E8
sub_0804D1E8: @ 0x0804D1E8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_293
nullsub_293: @ 0x0804D1EC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D1F0
sub_0804D1F0: @ 0x0804D1F0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_294
nullsub_294: @ 0x0804D1F4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D1F8
sub_0804D1F8: @ 0x0804D1F8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_295
nullsub_295: @ 0x0804D1FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D200
sub_0804D200: @ 0x0804D200
	movs r0, #1
	bx lr

	thumb_func_start nullsub_296
nullsub_296: @ 0x0804D204
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D208
sub_0804D208: @ 0x0804D208
	movs r0, #1
	bx lr

	thumb_func_start nullsub_297
nullsub_297: @ 0x0804D20C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D210
sub_0804D210: @ 0x0804D210
	movs r0, #1
	bx lr

	thumb_func_start nullsub_298
nullsub_298: @ 0x0804D214
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D218
sub_0804D218: @ 0x0804D218
	movs r0, #1
	bx lr

	thumb_func_start nullsub_299
nullsub_299: @ 0x0804D21C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D220
sub_0804D220: @ 0x0804D220
	movs r0, #1
	bx lr

	thumb_func_start nullsub_300
nullsub_300: @ 0x0804D224
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D228
sub_0804D228: @ 0x0804D228
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D22C
sub_0804D22C: @ 0x0804D22C
	push {lr}
	movs r0, #0x59
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D244
	ldr r0, _0804D240 @ =gUnk_080E5660
	bl LoadRoomEntityList
	b _0804D24A
	.align 2, 0
_0804D240: .4byte gUnk_080E5660
_0804D244:
	ldr r0, _0804D24C @ =gUnk_080E5680
	bl LoadRoomEntityList
_0804D24A:
	pop {pc}
	.align 2, 0
_0804D24C: .4byte gUnk_080E5680

	thumb_func_start sub_0804D250
sub_0804D250: @ 0x0804D250
	movs r0, #1
	bx lr

	thumb_func_start nullsub_301
nullsub_301: @ 0x0804D254
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D258
sub_0804D258: @ 0x0804D258
	movs r0, #1
	bx lr

	thumb_func_start nullsub_302
nullsub_302: @ 0x0804D25C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D260
sub_0804D260: @ 0x0804D260
	movs r0, #1
	bx lr

	thumb_func_start nullsub_303
nullsub_303: @ 0x0804D264
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D268
sub_0804D268: @ 0x0804D268
	movs r0, #1
	bx lr

	thumb_func_start nullsub_304
nullsub_304: @ 0x0804D26C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D270
sub_0804D270: @ 0x0804D270
	movs r0, #1
	bx lr

	thumb_func_start nullsub_305
nullsub_305: @ 0x0804D274
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D278
sub_0804D278: @ 0x0804D278
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D27C
sub_0804D27C: @ 0x0804D27C
	push {lr}
	bl sub_0804D0B4
	movs r0, #0x4b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D298
	ldr r0, _0804D294 @ =gUnk_080E5E3C
	bl LoadRoomEntityList
	b _0804D29E
	.align 2, 0
_0804D294: .4byte gUnk_080E5E3C
_0804D298:
	ldr r0, _0804D2A0 @ =gUnk_080E5E5C
	bl LoadRoomEntityList
_0804D29E:
	pop {pc}
	.align 2, 0
_0804D2A0: .4byte gUnk_080E5E5C

	thumb_func_start sub_0804D2A4
sub_0804D2A4: @ 0x0804D2A4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_306
nullsub_306: @ 0x0804D2A8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2AC
sub_0804D2AC: @ 0x0804D2AC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_307
nullsub_307: @ 0x0804D2B0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2B4
sub_0804D2B4: @ 0x0804D2B4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_308
nullsub_308: @ 0x0804D2B8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2BC
sub_0804D2BC: @ 0x0804D2BC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_309
nullsub_309: @ 0x0804D2C0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2C4
sub_0804D2C4: @ 0x0804D2C4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_310
nullsub_310: @ 0x0804D2C8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2CC
sub_0804D2CC: @ 0x0804D2CC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_311
nullsub_311: @ 0x0804D2D0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2D4
sub_0804D2D4: @ 0x0804D2D4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_312
nullsub_312: @ 0x0804D2D8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2DC
sub_0804D2DC: @ 0x0804D2DC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_313
nullsub_313: @ 0x0804D2E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D2E4
sub_0804D2E4: @ 0x0804D2E4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D2E8
sub_0804D2E8: @ 0x0804D2E8
	push {lr}
	movs r0, #0x32
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D2FA
	ldr r0, _0804D2FC @ =gUnk_080E693C
	bl LoadRoomEntityList
_0804D2FA:
	pop {pc}
	.align 2, 0
_0804D2FC: .4byte gUnk_080E693C

	thumb_func_start sub_0804D300
sub_0804D300: @ 0x0804D300
	movs r0, #1
	bx lr

	thumb_func_start nullsub_314
nullsub_314: @ 0x0804D304
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D308
sub_0804D308: @ 0x0804D308
	movs r0, #1
	bx lr

	thumb_func_start nullsub_315
nullsub_315: @ 0x0804D30C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D310
sub_0804D310: @ 0x0804D310
	movs r0, #1
	bx lr

	thumb_func_start nullsub_316
nullsub_316: @ 0x0804D314
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D318
sub_0804D318: @ 0x0804D318
	movs r0, #1
	bx lr

	thumb_func_start nullsub_317
nullsub_317: @ 0x0804D31C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D320
sub_0804D320: @ 0x0804D320
	movs r0, #1
	bx lr

	thumb_func_start nullsub_318
nullsub_318: @ 0x0804D324
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D328
sub_0804D328: @ 0x0804D328
	movs r0, #1
	bx lr

	thumb_func_start nullsub_319
nullsub_319: @ 0x0804D32C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D330
sub_0804D330: @ 0x0804D330
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D334
sub_0804D334: @ 0x0804D334
	push {lr}
	bl sub_08054570
	pop {pc}

	thumb_func_start sub_0804D33C
sub_0804D33C: @ 0x0804D33C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D340
sub_0804D340: @ 0x0804D340
	push {lr}
	ldr r0, _0804D374 @ =0x00000312
	movs r1, #0x84
	lsls r1, r1, #1
	movs r2, #1
	bl SetTileType
	bl sub_08054570
	movs r0, #0xc4
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D362
	ldr r0, _0804D378 @ =gUnk_080E718C
	bl LoadRoomEntityList
_0804D362:
	movs r0, #0xc5
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D372
	ldr r0, _0804D37C @ =gUnk_080E71AC
	bl LoadRoomEntityList
_0804D372:
	pop {pc}
	.align 2, 0
_0804D374: .4byte 0x00000312
_0804D378: .4byte gUnk_080E718C
_0804D37C: .4byte gUnk_080E71AC

	thumb_func_start sub_0804D380
sub_0804D380: @ 0x0804D380
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D384
sub_0804D384: @ 0x0804D384
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804D39C
	ldr r0, _0804D3B0 @ =gUnk_080E7314
	bl LoadRoomEntityList
_0804D39C:
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D3B8
	ldr r0, _0804D3B4 @ =gUnk_080E72C4
	bl LoadRoomEntityList
	b _0804D3EA
	.align 2, 0
_0804D3B0: .4byte gUnk_080E7314
_0804D3B4: .4byte gUnk_080E72C4
_0804D3B8:
	movs r0, #6
	bl SetGlobalFlag
	movs r0, #0x43
	bl GetInventoryValue
	cmp r0, #0
	bne _0804D3EA
	movs r0, #3
	bl sub_08078A90
	ldr r0, _0804D3EC @ =gUnk_080E72E4
	bl LoadRoomEntityList
	ldr r0, _0804D3F0 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0804D3F4 @ =0x80100000
	bl PlaySFX
_0804D3EA:
	pop {pc}
	.align 2, 0
_0804D3EC: .4byte gUnk_080E72E4
_0804D3F0: .4byte gArea
_0804D3F4: .4byte 0x80100000

	thumb_func_start sub_0804D3F8
sub_0804D3F8: @ 0x0804D3F8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D3FC
sub_0804D3FC: @ 0x0804D3FC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D408
sub_0804D408: @ 0x0804D408
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D40C
sub_0804D40C: @ 0x0804D40C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D418
sub_0804D418: @ 0x0804D418
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D41C
sub_0804D41C: @ 0x0804D41C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D428
sub_0804D428: @ 0x0804D428
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D42C
sub_0804D42C: @ 0x0804D42C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D438
sub_0804D438: @ 0x0804D438
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D43C
sub_0804D43C: @ 0x0804D43C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D448
sub_0804D448: @ 0x0804D448
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D44C
sub_0804D44C: @ 0x0804D44C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D458
sub_0804D458: @ 0x0804D458
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D45C
sub_0804D45C: @ 0x0804D45C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D468
sub_0804D468: @ 0x0804D468
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D46C
sub_0804D46C: @ 0x0804D46C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D478
sub_0804D478: @ 0x0804D478
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D47C
sub_0804D47C: @ 0x0804D47C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D488
sub_0804D488: @ 0x0804D488
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D48C
sub_0804D48C: @ 0x0804D48C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D498
sub_0804D498: @ 0x0804D498
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D49C
sub_0804D49C: @ 0x0804D49C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D4A8
sub_0804D4A8: @ 0x0804D4A8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D4AC
sub_0804D4AC: @ 0x0804D4AC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D4B8
sub_0804D4B8: @ 0x0804D4B8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D4BC
sub_0804D4BC: @ 0x0804D4BC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D4C8
sub_0804D4C8: @ 0x0804D4C8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D4CC
sub_0804D4CC: @ 0x0804D4CC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D4D8
sub_0804D4D8: @ 0x0804D4D8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D4DC
sub_0804D4DC: @ 0x0804D4DC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D4E8
sub_0804D4E8: @ 0x0804D4E8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D4EC
sub_0804D4EC: @ 0x0804D4EC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D4F8
sub_0804D4F8: @ 0x0804D4F8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D4FC
sub_0804D4FC: @ 0x0804D4FC
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D508
sub_0804D508: @ 0x0804D508
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D50C
sub_0804D50C: @ 0x0804D50C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D518
sub_0804D518: @ 0x0804D518
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D51C
sub_0804D51C: @ 0x0804D51C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D528
sub_0804D528: @ 0x0804D528
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D52C
sub_0804D52C: @ 0x0804D52C
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D538
sub_0804D538: @ 0x0804D538
	movs r0, #1
	bx lr

	thumb_func_start nullsub_59
nullsub_59: @ 0x0804D53C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D540
sub_0804D540: @ 0x0804D540
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D544
sub_0804D544: @ 0x0804D544
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D550
sub_0804D550: @ 0x0804D550
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D554
sub_0804D554: @ 0x0804D554
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D560
sub_0804D560: @ 0x0804D560
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D564
sub_0804D564: @ 0x0804D564
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D570
sub_0804D570: @ 0x0804D570
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D574
sub_0804D574: @ 0x0804D574
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D580
sub_0804D580: @ 0x0804D580
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D584
sub_0804D584: @ 0x0804D584
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D590
sub_0804D590: @ 0x0804D590
	movs r0, #1
	bx lr

	thumb_func_start nullsub_60
nullsub_60: @ 0x0804D594
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D598
sub_0804D598: @ 0x0804D598
	movs r0, #1
	bx lr

	thumb_func_start nullsub_61
nullsub_61: @ 0x0804D59C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D5A0
sub_0804D5A0: @ 0x0804D5A0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_62
nullsub_62: @ 0x0804D5A4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D5A8
sub_0804D5A8: @ 0x0804D5A8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_63
nullsub_63: @ 0x0804D5AC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D5B0
sub_0804D5B0: @ 0x0804D5B0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_64
nullsub_64: @ 0x0804D5B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D5B8
sub_0804D5B8: @ 0x0804D5B8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_65
nullsub_65: @ 0x0804D5BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D5C0
sub_0804D5C0: @ 0x0804D5C0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D5C4
sub_0804D5C4: @ 0x0804D5C4
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D5D0
sub_0804D5D0: @ 0x0804D5D0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D5D4
sub_0804D5D4: @ 0x0804D5D4
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D5E0
sub_0804D5E0: @ 0x0804D5E0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D5E4
sub_0804D5E4: @ 0x0804D5E4
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D5F0
sub_0804D5F0: @ 0x0804D5F0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D5F4
sub_0804D5F4: @ 0x0804D5F4
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D600
sub_0804D600: @ 0x0804D600
	movs r0, #1
	bx lr

	thumb_func_start nullsub_66
nullsub_66: @ 0x0804D604
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D608
sub_0804D608: @ 0x0804D608
	movs r0, #1
	bx lr

	thumb_func_start nullsub_67
nullsub_67: @ 0x0804D60C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D610
sub_0804D610: @ 0x0804D610
	movs r0, #1
	bx lr

	thumb_func_start nullsub_68
nullsub_68: @ 0x0804D614
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D618
sub_0804D618: @ 0x0804D618
	movs r0, #1
	bx lr

	thumb_func_start nullsub_69
nullsub_69: @ 0x0804D61C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D620
sub_0804D620: @ 0x0804D620
	movs r0, #1
	bx lr

	thumb_func_start nullsub_70
nullsub_70: @ 0x0804D624
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D628
sub_0804D628: @ 0x0804D628
	movs r0, #1
	bx lr

	thumb_func_start nullsub_71
nullsub_71: @ 0x0804D62C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D630
sub_0804D630: @ 0x0804D630
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D634
sub_0804D634: @ 0x0804D634
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D640
sub_0804D640: @ 0x0804D640
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D644
sub_0804D644: @ 0x0804D644
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	movs r0, #0x70
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D65C
	ldr r0, _0804D660 @ =gUnk_080EA09C
	bl LoadRoomEntityList
_0804D65C:
	pop {pc}
	.align 2, 0
_0804D660: .4byte gUnk_080EA09C

	thumb_func_start sub_0804D664
sub_0804D664: @ 0x0804D664
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D668
sub_0804D668: @ 0x0804D668
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D674
sub_0804D674: @ 0x0804D674
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D678
sub_0804D678: @ 0x0804D678
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D684
sub_0804D684: @ 0x0804D684
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D688
sub_0804D688: @ 0x0804D688
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D694
sub_0804D694: @ 0x0804D694
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D698
sub_0804D698: @ 0x0804D698
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D6A4
sub_0804D6A4: @ 0x0804D6A4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D6A8
sub_0804D6A8: @ 0x0804D6A8
	push {lr}
	movs r0, #0
	bl sub_0805AF60
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D6B4
sub_0804D6B4: @ 0x0804D6B4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_72
nullsub_72: @ 0x0804D6B8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D6BC
sub_0804D6BC: @ 0x0804D6BC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_73
nullsub_73: @ 0x0804D6C0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D6C4
sub_0804D6C4: @ 0x0804D6C4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D6C8
sub_0804D6C8: @ 0x0804D6C8
	push {lr}
	ldr r0, _0804D6E4 @ =0x80100000
	bl PlaySFX
	ldr r0, _0804D6E8 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	pop {pc}
	.align 2, 0
_0804D6E4: .4byte 0x80100000
_0804D6E8: .4byte gArea

	thumb_func_start sub_0804D6EC
sub_0804D6EC: @ 0x0804D6EC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D6F0
sub_0804D6F0: @ 0x0804D6F0
	push {lr}
	movs r0, #0
	bl sub_0805D3C8
	ldr r2, _0804D72C @ =gUnk_030010A0
	adds r0, r2, #0
	adds r0, #0x38
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0804D74C
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _0804D74C
	adds r0, r2, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #1
	bne _0804D734
	ldr r1, _0804D730 @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x48
	ldrh r0, [r0]
	strh r0, [r1, #0x2e]
	adds r0, r2, #0
	adds r0, #0x4a
	b _0804D746
	.align 2, 0
_0804D72C: .4byte gUnk_030010A0
_0804D730: .4byte gLinkEntity
_0804D734:
	cmp r0, #0
	bne _0804D74C
	ldr r1, _0804D750 @ =gLinkEntity
	adds r0, r2, #0
	adds r0, #0x44
	ldrh r0, [r0]
	strh r0, [r1, #0x2e]
	adds r0, r2, #0
	adds r0, #0x46
_0804D746:
	ldrh r0, [r0]
	adds r0, #8
	strh r0, [r1, #0x32]
_0804D74C:
	pop {pc}
	.align 2, 0
_0804D750: .4byte gLinkEntity

	thumb_func_start sub_0804D754
sub_0804D754: @ 0x0804D754
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D758
sub_0804D758: @ 0x0804D758
	push {lr}
	movs r0, #6
	bl sub_0805B4D0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D764
sub_0804D764: @ 0x0804D764
	movs r0, #1
	bx lr

	thumb_func_start nullsub_74
nullsub_74: @ 0x0804D768
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D76C
sub_0804D76C: @ 0x0804D76C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_75
nullsub_75: @ 0x0804D770
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D774
sub_0804D774: @ 0x0804D774
	push {lr}
	bl sub_080534AC
	movs r0, #1
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804D780
sub_0804D780: @ 0x0804D780
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0805B4D0
	movs r0, #0x77
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D7A0
	ldr r0, _0804D79C @ =gUnk_080EAD68
	bl LoadRoomEntityList
	b _0804D7D0
	.align 2, 0
_0804D79C: .4byte gUnk_080EAD68
_0804D7A0:
	movs r0, #0x79
	bl CheckLocalFlag
	adds r5, r0, #0
	cmp r5, #0
	bne _0804D7D0
	ldr r0, _0804D7D4 @ =gUnk_080EADB8
	bl LoadRoomEntityList
	ldr r4, _0804D7D8 @ =0x00004072
	ldr r1, _0804D7DC @ =0x00000145
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804D7E0 @ =0x00000149
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r0, _0804D7E4 @ =gArea
	ldr r1, _0804D7E8 @ =0x00000864
	adds r0, r0, r1
	str r5, [r0]
_0804D7D0:
	pop {r4, r5, pc}
	.align 2, 0
_0804D7D4: .4byte gUnk_080EADB8
_0804D7D8: .4byte 0x00004072
_0804D7DC: .4byte 0x00000145
_0804D7E0: .4byte 0x00000149
_0804D7E4: .4byte gArea
_0804D7E8: .4byte 0x00000864

	thumb_func_start sub_0804D7EC
sub_0804D7EC: @ 0x0804D7EC
	push {r4, lr}
	ldr r4, _0804D7F4 @ =gUnk_080EAE00
	b _0804D804
	.align 2, 0
_0804D7F4: .4byte gUnk_080EAE00
_0804D7F8:
	ldrh r1, [r4]
	adds r4, #2
	ldr r0, _0804D80C @ =0x00004072
	movs r2, #1
	bl SetTileType
_0804D804:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804D7F8
	pop {r4, pc}
	.align 2, 0
_0804D80C: .4byte 0x00004072

	thumb_func_start sub_0804D810
sub_0804D810: @ 0x0804D810
	push {r4, lr}
	ldr r4, _0804D818 @ =gUnk_080EAE00
	b _0804D826
	.align 2, 0
_0804D818: .4byte gUnk_080EAE00
_0804D81C:
	ldrh r0, [r4]
	adds r4, #2
	movs r1, #1
	bl sub_0807BA8C
_0804D826:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804D81C
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0804D830
sub_0804D830: @ 0x0804D830
	movs r0, #1
	bx lr

	thumb_func_start sub_0804D834
sub_0804D834: @ 0x0804D834
	push {r4, lr}
	ldr r4, _0804D86C @ =gArea
	movs r0, #0
	movs r1, #0x40
	strb r1, [r4]
	strb r0, [r4, #1]
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804D894
	movs r0, #0x7f
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D878
	ldr r0, _0804D870 @ =gUnk_080EAEC0
	bl LoadRoomEntityList
	movs r0, #0x7f
	bl SetLocalFlag
	ldr r0, _0804D874 @ =0x00000864
	adds r1, r4, r0
	movs r0, #0x11
	str r0, [r1]
	b _0804D8BC
	.align 2, 0
_0804D86C: .4byte gArea
_0804D870: .4byte gUnk_080EAEC0
_0804D874: .4byte 0x00000864
_0804D878:
	ldr r0, _0804D88C @ =gUnk_080EAF20
	bl LoadRoomEntityList
	ldr r2, _0804D890 @ =0x00000864
	adds r1, r4, r2
	subs r2, #4
	adds r0, r4, r2
	ldr r0, [r0]
	str r0, [r1]
	b _0804D8BC
	.align 2, 0
_0804D88C: .4byte gUnk_080EAF20
_0804D890: .4byte 0x00000864
_0804D894:
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804D8AC
	ldr r1, _0804D8C4 @ =0x00000864
	adds r0, r4, r1
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r4, r2
	ldr r1, [r1]
	str r1, [r0]
_0804D8AC:
	movs r0, #1
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804D8BC
	ldr r0, _0804D8C8 @ =gUnk_080EAE60
	bl LoadRoomEntityList
_0804D8BC:
	movs r0, #0x5d
	bl ClearGlobalFlag
	pop {r4, pc}
	.align 2, 0
_0804D8C4: .4byte 0x00000864
_0804D8C8: .4byte gUnk_080EAE60

	thumb_func_start sub_0804D8CC
sub_0804D8CC: @ 0x0804D8CC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_320
nullsub_320: @ 0x0804D8D0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D8D4
sub_0804D8D4: @ 0x0804D8D4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_321
nullsub_321: @ 0x0804D8D8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D8DC
sub_0804D8DC: @ 0x0804D8DC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_322
nullsub_322: @ 0x0804D8E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D8E4
sub_0804D8E4: @ 0x0804D8E4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_323
nullsub_323: @ 0x0804D8E8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D8EC
sub_0804D8EC: @ 0x0804D8EC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_324
nullsub_324: @ 0x0804D8F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D8F4
sub_0804D8F4: @ 0x0804D8F4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_325
nullsub_325: @ 0x0804D8F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D8FC
sub_0804D8FC: @ 0x0804D8FC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_326
nullsub_326: @ 0x0804D900
	bx lr
	.align 2, 0

	thumb_func_start sub_0804D904
sub_0804D904: @ 0x0804D904
	push {r4, r5, lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	adds r5, r0, #0
	cmp r5, #0
	beq _0804D93C
	ldr r1, _0804D930 @ =gRoomVars
	ldr r0, _0804D934 @ =gUnk_080EB604
	str r0, [r1, #0x6c]
	movs r0, #0
	str r0, [r1, #0x74]
	ldr r0, _0804D938 @ =gArea
	movs r1, #0x86
	lsls r1, r1, #4
	adds r2, r0, r1
	adds r1, #4
	adds r0, r0, r1
	movs r1, #0x11
	str r1, [r0]
	str r1, [r2]
	b _0804D96A
	.align 2, 0
_0804D930: .4byte gRoomVars
_0804D934: .4byte gUnk_080EB604
_0804D938: .4byte gArea
_0804D93C:
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804D96A
	ldr r4, _0804D970 @ =gRoomVars
	str r5, [r4, #0x6c]
	movs r0, #0x7a
	bl CheckLocalFlag
	adds r5, r0, #0
	cmp r5, #0
	bne _0804D96A
	movs r0, #0x1c
	bl SetGlobalFlag
	ldr r0, _0804D974 @ =gUnk_080EB5D4
	str r0, [r4, #0x6c]
	adds r1, r4, #0
	adds r1, #0x88
	ldr r0, _0804D978 @ =sub_0804D9B0
	str r0, [r1]
	str r5, [r4, #0x74]
_0804D96A:
	movs r0, #1
	pop {r4, r5, pc}
	.align 2, 0
_0804D970: .4byte gRoomVars
_0804D974: .4byte gUnk_080EB5D4
_0804D978: .4byte sub_0804D9B0

	thumb_func_start sub_0804D97C
sub_0804D97C: @ 0x0804D97C
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804D996
	ldr r0, _0804D9A8 @ =gArea
	ldr r2, _0804D9AC @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804D996:
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804D9A4
	bl sub_0804D9B0
_0804D9A4:
	pop {pc}
	.align 2, 0
_0804D9A8: .4byte gArea
_0804D9AC: .4byte 0x00000864

	thumb_func_start sub_0804D9B0
sub_0804D9B0: @ 0x0804D9B0
	push {lr}
	ldr r0, _0804D9EC @ =0x00000797
	movs r1, #1
	movs r2, #5
	movs r3, #1
	bl sub_0807BB98
	ldr r0, _0804D9F0 @ =0x00000357
	movs r1, #1
	movs r2, #5
	movs r3, #1
	bl sub_0807BB98
	ldr r0, _0804D9F4 @ =0x0000055F
	movs r1, #1
	movs r2, #2
	movs r3, #1
	bl sub_0807BB98
	ldr r0, _0804D9F8 @ =gUnk_080EB684
	bl LoadRoomEntityList
	ldr r0, _0804D9FC @ =gArea
	ldr r2, _0804DA00 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	pop {pc}
	.align 2, 0
_0804D9EC: .4byte 0x00000797
_0804D9F0: .4byte 0x00000357
_0804D9F4: .4byte 0x0000055F
_0804D9F8: .4byte gUnk_080EB684
_0804D9FC: .4byte gArea
_0804DA00: .4byte 0x00000864

	thumb_func_start sub_0804DA04
sub_0804DA04: @ 0x0804DA04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_327
nullsub_327: @ 0x0804DA08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DA0C
sub_0804DA0C: @ 0x0804DA0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_328
nullsub_328: @ 0x0804DA10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DA14
sub_0804DA14: @ 0x0804DA14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_329
nullsub_329: @ 0x0804DA18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DA1C
sub_0804DA1C: @ 0x0804DA1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_330
nullsub_330: @ 0x0804DA20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DA24
sub_0804DA24: @ 0x0804DA24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_331
nullsub_331: @ 0x0804DA28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DA2C
sub_0804DA2C: @ 0x0804DA2C
	push {lr}
	movs r0, #0x77
	bl CheckLocalFlag
	adds r1, r0, #0
	cmp r1, #0
	bne _0804DA40
	ldr r0, _0804DA44 @ =gRoomVars
	str r1, [r0, #0x6c]
	str r1, [r0, #0x74]
_0804DA40:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804DA44: .4byte gRoomVars

	thumb_func_start sub_0804DA48
sub_0804DA48: @ 0x0804DA48
	push {lr}
	movs r0, #0x77
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DA60
	ldr r0, _0804DA5C @ =gUnk_080EB9F4
	bl LoadRoomEntityList
	b _0804DA8C
	.align 2, 0
_0804DA5C: .4byte gUnk_080EB9F4
_0804DA60:
	movs r0, #0x78
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DA76
	ldr r0, _0804DA90 @ =gUnk_080EBAA4
	bl LoadRoomEntityList
	movs r0, #0x75
	bl SetLocalFlag
_0804DA76:
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DA8C
	ldr r0, _0804DA94 @ =gUnk_080EBAF4
	bl LoadRoomEntityList
	movs r0, #0x76
	bl SetLocalFlag
_0804DA8C:
	pop {pc}
	.align 2, 0
_0804DA90: .4byte gUnk_080EBAA4
_0804DA94: .4byte gUnk_080EBAF4

	thumb_func_start sub_0804DA98
sub_0804DA98: @ 0x0804DA98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_332
nullsub_332: @ 0x0804DA9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAA0
sub_0804DAA0: @ 0x0804DAA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_333
nullsub_333: @ 0x0804DAA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAA8
sub_0804DAA8: @ 0x0804DAA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_334
nullsub_334: @ 0x0804DAAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAB0
sub_0804DAB0: @ 0x0804DAB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_335
nullsub_335: @ 0x0804DAB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAB8
sub_0804DAB8: @ 0x0804DAB8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_336
nullsub_336: @ 0x0804DABC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAC0
sub_0804DAC0: @ 0x0804DAC0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_337
nullsub_337: @ 0x0804DAC4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAC8
sub_0804DAC8: @ 0x0804DAC8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_338
nullsub_338: @ 0x0804DACC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DAD0
sub_0804DAD0: @ 0x0804DAD0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804DAD4
sub_0804DAD4: @ 0x0804DAD4
	push {lr}
	movs r0, #0x86
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DAF0
	movs r0, #0x4c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DAF0
	ldr r0, _0804DAF4 @ =gUnk_080EC2CC
	bl LoadRoomEntityList
_0804DAF0:
	pop {pc}
	.align 2, 0
_0804DAF4: .4byte gUnk_080EC2CC

	thumb_func_start sub_0804DAF8
sub_0804DAF8: @ 0x0804DAF8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_339
nullsub_339: @ 0x0804DAFC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DB00
sub_0804DB00: @ 0x0804DB00
	movs r0, #1
	bx lr

	thumb_func_start sub_0804DB04
sub_0804DB04: @ 0x0804DB04
	push {lr}
	movs r0, #0x86
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DB20
	movs r0, #0x4d
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DB20
	ldr r0, _0804DB24 @ =gUnk_080EC4E8
	bl LoadRoomEntityList
_0804DB20:
	pop {pc}
	.align 2, 0
_0804DB24: .4byte gUnk_080EC4E8

	thumb_func_start sub_0804DB28
sub_0804DB28: @ 0x0804DB28
	movs r0, #1
	bx lr

	thumb_func_start nullsub_340
nullsub_340: @ 0x0804DB2C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DB30
sub_0804DB30: @ 0x0804DB30
	movs r0, #1
	bx lr

	thumb_func_start nullsub_341
nullsub_341: @ 0x0804DB34
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DB38
sub_0804DB38: @ 0x0804DB38
	movs r0, #1
	bx lr

	thumb_func_start sub_0804DB3C
sub_0804DB3C: @ 0x0804DB3C
	push {lr}
	movs r0, #0x86
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DB58
	movs r0, #0x53
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DB58
	ldr r0, _0804DB5C @ =gUnk_080EC820
	bl LoadRoomEntityList
_0804DB58:
	pop {pc}
	.align 2, 0
_0804DB5C: .4byte gUnk_080EC820

	thumb_func_start sub_0804DB60
sub_0804DB60: @ 0x0804DB60
	movs r0, #1
	bx lr

	thumb_func_start nullsub_342
nullsub_342: @ 0x0804DB64
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DB68
sub_0804DB68: @ 0x0804DB68
	movs r0, #1
	bx lr

	thumb_func_start sub_0804DB6C
sub_0804DB6C: @ 0x0804DB6C
	push {lr}
	movs r0, #0x86
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DB88
	movs r0, #0x56
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DB88
	ldr r0, _0804DB8C @ =gUnk_080ECA60
	bl LoadRoomEntityList
_0804DB88:
	pop {pc}
	.align 2, 0
_0804DB8C: .4byte gUnk_080ECA60

	thumb_func_start sub_0804DB90
sub_0804DB90: @ 0x0804DB90
	movs r0, #1
	bx lr

	thumb_func_start nullsub_343
nullsub_343: @ 0x0804DB94
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DB98
sub_0804DB98: @ 0x0804DB98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_344
nullsub_344: @ 0x0804DB9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DBA0
sub_0804DBA0: @ 0x0804DBA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_345
nullsub_345: @ 0x0804DBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DBA8
sub_0804DBA8: @ 0x0804DBA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_346
nullsub_346: @ 0x0804DBAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DBB0
sub_0804DBB0: @ 0x0804DBB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_347
nullsub_347: @ 0x0804DBB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DBB8
sub_0804DBB8: @ 0x0804DBB8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_348
nullsub_348: @ 0x0804DBBC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DBC0
sub_0804DBC0: @ 0x0804DBC0
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DBD2
	ldr r1, _0804DBD8 @ =gRoomVars
	movs r0, #0
	str r0, [r1, #0x74]
_0804DBD2:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804DBD8: .4byte gRoomVars

	thumb_func_start sub_0804DBDC
sub_0804DBDC: @ 0x0804DBDC
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DC08
	movs r0, #0x90
	movs r1, #1
	movs r2, #1
	movs r3, #5
	bl sub_0807BB98
	ldr r0, _0804DC0C @ =gUnk_080ECFCC
	bl LoadRoomEntityList
	ldr r0, _0804DC10 @ =gArea
	ldr r2, _0804DC14 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804DC08:
	pop {pc}
	.align 2, 0
_0804DC0C: .4byte gUnk_080ECFCC
_0804DC10: .4byte gArea
_0804DC14: .4byte 0x00000864

	thumb_func_start sub_0804DC18
sub_0804DC18: @ 0x0804DC18
	movs r0, #1
	bx lr

	thumb_func_start nullsub_349
nullsub_349: @ 0x0804DC1C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC20
sub_0804DC20: @ 0x0804DC20
	movs r0, #1
	bx lr

	thumb_func_start nullsub_350
nullsub_350: @ 0x0804DC24
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC28
sub_0804DC28: @ 0x0804DC28
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804DC3E
	ldr r0, _0804DC44 @ =gRoomVars
	ldr r1, _0804DC48 @ =gUnk_080ED1E4
	str r1, [r0, #0x6c]
	movs r1, #0
	str r1, [r0, #0x74]
_0804DC3E:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804DC44: .4byte gRoomVars
_0804DC48: .4byte gUnk_080ED1E4

	thumb_func_start sub_0804DC4C
sub_0804DC4C: @ 0x0804DC4C
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804DC66
	ldr r0, _0804DC68 @ =gArea
	ldr r2, _0804DC6C @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804DC66:
	pop {pc}
	.align 2, 0
_0804DC68: .4byte gArea
_0804DC6C: .4byte 0x00000864

	thumb_func_start sub_0804DC70
sub_0804DC70: @ 0x0804DC70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_351
nullsub_351: @ 0x0804DC74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC78
sub_0804DC78: @ 0x0804DC78
	movs r0, #1
	bx lr

	thumb_func_start nullsub_352
nullsub_352: @ 0x0804DC7C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC80
sub_0804DC80: @ 0x0804DC80
	movs r0, #1
	bx lr

	thumb_func_start nullsub_353
nullsub_353: @ 0x0804DC84
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC88
sub_0804DC88: @ 0x0804DC88
	movs r0, #1
	bx lr

	thumb_func_start nullsub_354
nullsub_354: @ 0x0804DC8C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC90
sub_0804DC90: @ 0x0804DC90
	movs r0, #1
	bx lr

	thumb_func_start nullsub_355
nullsub_355: @ 0x0804DC94
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DC98
sub_0804DC98: @ 0x0804DC98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_356
nullsub_356: @ 0x0804DC9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCA0
sub_0804DCA0: @ 0x0804DCA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_357
nullsub_357: @ 0x0804DCA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCA8
sub_0804DCA8: @ 0x0804DCA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_358
nullsub_358: @ 0x0804DCAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCB0
sub_0804DCB0: @ 0x0804DCB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_359
nullsub_359: @ 0x0804DCB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCB8
sub_0804DCB8: @ 0x0804DCB8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_360
nullsub_360: @ 0x0804DCBC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCC0
sub_0804DCC0: @ 0x0804DCC0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_361
nullsub_361: @ 0x0804DCC4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCC8
sub_0804DCC8: @ 0x0804DCC8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_362
nullsub_362: @ 0x0804DCCC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCD0
sub_0804DCD0: @ 0x0804DCD0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_363
nullsub_363: @ 0x0804DCD4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCD8
sub_0804DCD8: @ 0x0804DCD8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_364
nullsub_364: @ 0x0804DCDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCE0
sub_0804DCE0: @ 0x0804DCE0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_365
nullsub_365: @ 0x0804DCE4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCE8
sub_0804DCE8: @ 0x0804DCE8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_366
nullsub_366: @ 0x0804DCEC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCF0
sub_0804DCF0: @ 0x0804DCF0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_367
nullsub_367: @ 0x0804DCF4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DCF8
sub_0804DCF8: @ 0x0804DCF8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_368
nullsub_368: @ 0x0804DCFC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DD00
sub_0804DD00: @ 0x0804DD00
	movs r0, #1
	bx lr

	thumb_func_start nullsub_369
nullsub_369: @ 0x0804DD04
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DD08
sub_0804DD08: @ 0x0804DD08
	movs r0, #1
	bx lr

	thumb_func_start nullsub_370
nullsub_370: @ 0x0804DD0C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DD10
sub_0804DD10: @ 0x0804DD10
	movs r0, #1
	bx lr

	thumb_func_start nullsub_371
nullsub_371: @ 0x0804DD14
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DD18
sub_0804DD18: @ 0x0804DD18
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DD2C
	ldr r1, _0804DD30 @ =gRoomVars
	movs r0, #0
	str r0, [r1, #0x74]
	str r0, [r1, #0x6c]
_0804DD2C:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804DD30: .4byte gRoomVars

	thumb_func_start sub_0804DD34
sub_0804DD34: @ 0x0804DD34
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DD60
	movs r0, #3
	movs r1, #2
	movs r2, #5
	movs r3, #1
	bl sub_0807BB98
	ldr r0, _0804DD64 @ =gUnk_080EE314
	bl LoadRoomEntityList
	ldr r0, _0804DD68 @ =gArea
	ldr r2, _0804DD6C @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804DD60:
	pop {pc}
	.align 2, 0
_0804DD64: .4byte gUnk_080EE314
_0804DD68: .4byte gArea
_0804DD6C: .4byte 0x00000864

	thumb_func_start sub_0804DD70
sub_0804DD70: @ 0x0804DD70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_372
nullsub_372: @ 0x0804DD74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DD78
sub_0804DD78: @ 0x0804DD78
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DD8A
	ldr r1, _0804DD90 @ =gRoomVars
	movs r0, #0
	str r0, [r1, #0x74]
_0804DD8A:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804DD90: .4byte gRoomVars

	thumb_func_start sub_0804DD94
sub_0804DD94: @ 0x0804DD94
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DDC0
	ldr r0, _0804DDC4 @ =0x00000392
	movs r1, #2
	movs r2, #2
	movs r3, #5
	bl sub_0807BB98
	ldr r0, _0804DDC8 @ =gUnk_080EE5DC
	bl LoadRoomEntityList
	ldr r0, _0804DDCC @ =gArea
	ldr r2, _0804DDD0 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804DDC0:
	pop {pc}
	.align 2, 0
_0804DDC4: .4byte 0x00000392
_0804DDC8: .4byte gUnk_080EE5DC
_0804DDCC: .4byte gArea
_0804DDD0: .4byte 0x00000864

	thumb_func_start sub_0804DDD4
sub_0804DDD4: @ 0x0804DDD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_373
nullsub_373: @ 0x0804DDD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DDDC
sub_0804DDDC: @ 0x0804DDDC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804DDE0
sub_0804DDE0: @ 0x0804DDE0
	push {lr}
	movs r0, #1
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804DDF2
	ldr r0, _0804DDF4 @ =gUnk_080EE71C
	bl LoadRoomEntityList
_0804DDF2:
	pop {pc}
	.align 2, 0
_0804DDF4: .4byte gUnk_080EE71C

	thumb_func_start sub_0804DDF8
sub_0804DDF8: @ 0x0804DDF8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_374
nullsub_374: @ 0x0804DDFC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804DE00
sub_0804DE00: @ 0x0804DE00
	push {r4, r5, r6, lr}
	bl sub_080530C8
	movs r0, #0xb
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804DE32
	movs r0, #0x19
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804DE22
	movs r0, #0x19
	bl SetGlobalFlag
	b _0804DE32
_0804DE22:
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804DE32
	movs r0, #0x18
	bl SetGlobalFlag
_0804DE32:
	ldr r5, _0804DE50 @ =gUnk_080D4250
	ldr r4, _0804DE54 @ =gUnk_02002A40
	ldrb r0, [r4, #8]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl sub_0804AFB0
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq _0804DE5C
	ldr r1, _0804DE58 @ =gUnk_02017654
	ldr r0, [r5]
	str r0, [r1]
	b _0804DECC
	.align 2, 0
_0804DE50: .4byte gUnk_080D4250
_0804DE54: .4byte gUnk_02002A40
_0804DE58: .4byte gUnk_02017654
_0804DE5C:
	movs r0, #0x1c
	bl SetGlobalFlag
	ldr r4, _0804DEB4 @ =gArea
	ldr r0, _0804DEB8 @ =0x0000085C
	adds r4, r4, r0
	ldr r0, [r4]
	ldrh r5, [r0, #4]
	ldrh r6, [r0, #6]
	ldr r1, _0804DEBC @ =gRoomControls
	movs r2, #0
	movs r0, #0x15
	strb r0, [r1, #4]
	strb r2, [r1, #5]
	bl sub_08052CFC
	ldr r0, [r4]
	movs r1, #0x98
	lsls r1, r1, #1
	adds r5, r5, r1
	strh r5, [r0, #4]
	ldr r0, [r4]
	strh r6, [r0, #6]
	ldr r1, _0804DEC0 @ =gUnk_030010A0
	ldr r0, [r4]
	ldrh r0, [r0]
	lsrs r0, r0, #1
	strh r0, [r1, #0x10]
	bl sub_08052EA0
	bl sub_0804AF90
	movs r0, #0xcd
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804DEC4
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
	b _0804DECC
	.align 2, 0
_0804DEB4: .4byte gArea
_0804DEB8: .4byte 0x0000085C
_0804DEBC: .4byte gRoomControls
_0804DEC0: .4byte gUnk_030010A0
_0804DEC4:
	movs r0, #6
	movs r1, #0x10
	bl DoFade
_0804DECC:
	movs r0, #1
	pop {r4, r5, r6, pc}

	thumb_func_start sub_0804DED0
sub_0804DED0: @ 0x0804DED0
	push {r4, lr}
	bl sub_08054570
	bl sub_08059D18
	movs r0, #0xbb
	lsls r0, r0, #1
	ldr r1, _0804DEF8 @ =0x0000066B
	movs r2, #1
	bl SetTileType
	ldr r0, _0804DEFC @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0804DF00
	movs r0, #0
	bl sub_0801D000
	b _0804E112
	.align 2, 0
_0804DEF8: .4byte 0x0000066B
_0804DEFC: .4byte gUnk_02002A40
_0804DF00:
	ldr r0, _0804DF7C @ =0x00000DB4
	bl sub_08018C58
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r4, #0
	movs r1, #0x84
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804DF1C
	ldr r0, _0804DF80 @ =gUnk_080EEB6C
	bl LoadRoomEntityList
_0804DF1C:
	adds r0, r4, #0
	movs r1, #0x85
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804DF2E
	ldr r0, _0804DF84 @ =gUnk_080EEB8C
	bl LoadRoomEntityList
_0804DF2E:
	movs r0, #0x67
	bl GetInventoryValue
	cmp r0, #0
	bne _0804DF48
	movs r0, #2
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804DF48
	ldr r0, _0804DF88 @ =gUnk_080EE88C
	bl LoadRoomEntityList
_0804DF48:
	movs r0, #0x28
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804DF58
	ldr r0, _0804DF8C @ =gUnk_080EE8FC
	bl LoadRoomEntityList
_0804DF58:
	movs r0, #0x33
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804DF68
	ldr r0, _0804DF90 @ =gUnk_080EE91C
	bl LoadRoomEntityList
_0804DF68:
	movs r0, #0x12
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804DF98
	ldr r0, _0804DF94 @ =gUnk_080EE93C
	bl LoadRoomEntityList
	b _0804DF9E
	.align 2, 0
_0804DF7C: .4byte 0x00000DB4
_0804DF80: .4byte gUnk_080EEB6C
_0804DF84: .4byte gUnk_080EEB8C
_0804DF88: .4byte gUnk_080EE88C
_0804DF8C: .4byte gUnk_080EE8FC
_0804DF90: .4byte gUnk_080EE91C
_0804DF94: .4byte gUnk_080EE93C
_0804DF98:
	ldr r0, _0804DFF4 @ =gUnk_080EECBC
	bl LoadRoomEntityList
_0804DF9E:
	movs r0, #0x1b
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804E02A
	ldr r0, _0804DFF8 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804E02A
	movs r0, #0x2e
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E024
	movs r0, #0x2f
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E024
	movs r0, #0x30
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E024
	movs r0, #0x2b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E000
	movs r0, #0x2c
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E000
	movs r0, #0x2d
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E000
	ldr r0, _0804DFFC @ =gUnk_080EE95C
	bl LoadRoomEntityList
	b _0804E02A
	.align 2, 0
_0804DFF4: .4byte gUnk_080EECBC
_0804DFF8: .4byte gUnk_02002A40
_0804DFFC: .4byte gUnk_080EE95C
_0804E000:
	movs r0, #0x18
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E018
	ldr r0, _0804E014 @ =gUnk_080EE97C
	bl LoadRoomEntityList
	b _0804E02A
	.align 2, 0
_0804E014: .4byte gUnk_080EE97C
_0804E018:
	ldr r0, _0804E020 @ =gUnk_080EE9BC
	bl LoadRoomEntityList
	b _0804E02A
	.align 2, 0
_0804E020: .4byte gUnk_080EE9BC
_0804E024:
	ldr r0, _0804E03C @ =gUnk_080EE99C
	bl LoadRoomEntityList
_0804E02A:
	movs r0, #0x2b
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E044
	ldr r0, _0804E040 @ =gUnk_080EE9FC
	bl LoadRoomEntityList
	b _0804E07A
	.align 2, 0
_0804E03C: .4byte gUnk_080EE99C
_0804E040: .4byte gUnk_080EE9FC
_0804E044:
	movs r0, #0x2c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E05C
	ldr r0, _0804E058 @ =gUnk_080EEA1C
	bl LoadRoomEntityList
	b _0804E07A
	.align 2, 0
_0804E058: .4byte gUnk_080EEA1C
_0804E05C:
	movs r0, #0x2d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E074
	ldr r0, _0804E070 @ =gUnk_080EEA3C
	bl LoadRoomEntityList
	b _0804E07A
	.align 2, 0
_0804E070: .4byte gUnk_080EEA3C
_0804E074:
	ldr r0, _0804E114 @ =gUnk_080EE9DC
	bl LoadRoomEntityList
_0804E07A:
	ldr r0, _0804E118 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #4
	bls _0804E0B0
	movs r0, #0xb
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804E0B0
	movs r0, #0x2b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E0AA
	movs r0, #0x2c
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E0AA
	movs r0, #0x2d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E0B0
_0804E0AA:
	ldr r0, _0804E11C @ =gUnk_080EEA5C
	bl LoadRoomEntityList
_0804E0B0:
	movs r0, #0xd0
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E0CA
	movs r0, #0x14
	bl GetInventoryValue
	cmp r0, #0
	beq _0804E0CA
	ldr r0, _0804E120 @ =gUnk_080EEABC
	bl LoadRoomEntityList
_0804E0CA:
	ldr r0, _0804E118 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804E0E2
	movs r0, #0x1d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E0E2
	ldr r0, _0804E124 @ =gUnk_080EEA7C
	bl LoadRoomEntityList
_0804E0E2:
	ldr r0, _0804E118 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #5
	bhi _0804E0FA
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E0FA
	ldr r0, _0804E128 @ =gUnk_080EEA9C
	bl LoadRoomEntityList
_0804E0FA:
	ldr r0, _0804E118 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0804E10E
	ldr r0, _0804E12C @ =gUnk_080EEBAC
	bl LoadRoomEntityList
_0804E10E:
	bl sub_0804E150
_0804E112:
	pop {r4, pc}
	.align 2, 0
_0804E114: .4byte gUnk_080EE9DC
_0804E118: .4byte gUnk_02002A40
_0804E11C: .4byte gUnk_080EEA5C
_0804E120: .4byte gUnk_080EEABC
_0804E124: .4byte gUnk_080EEA7C
_0804E128: .4byte gUnk_080EEA9C
_0804E12C: .4byte gUnk_080EEBAC

	thumb_func_start sub_0804E130
sub_0804E130: @ 0x0804E130
	push {lr}
	ldr r0, _0804E148 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	bne _0804E146
	ldr r0, _0804E14C @ =gUnk_080EEBAC
	bl LoadRoomEntityList
_0804E146:
	pop {pc}
	.align 2, 0
_0804E148: .4byte gUnk_02002A40
_0804E14C: .4byte gUnk_080EEBAC

	thumb_func_start sub_0804E150
sub_0804E150: @ 0x0804E150
	push {r4, r5, lr}
	ldr r4, _0804E160 @ =gUnk_080EED2C
	ldr r0, _0804E164 @ =gUnk_02002A40
	movs r5, #1
	ldrb r0, [r0, #8]
	lsls r5, r0
	b _0804E17C
	.align 2, 0
_0804E160: .4byte gUnk_080EED2C
_0804E164: .4byte gUnk_02002A40
_0804E168:
	ldrh r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0804E17A
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	movs r2, #1
	bl SetTile
_0804E17A:
	adds r4, #6
_0804E17C:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0804E168
	movs r0, #0xd1
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E1BA
	ldr r4, _0804E198 @ =gUnk_080EED7A
	ldr r0, _0804E19C @ =gUnk_02002A40
	movs r5, #1
	ldrb r0, [r0, #8]
	lsls r5, r0
	b _0804E1B4
	.align 2, 0
_0804E198: .4byte gUnk_080EED7A
_0804E19C: .4byte gUnk_02002A40
_0804E1A0:
	ldrh r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0804E1B2
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	movs r2, #1
	bl SetTile
_0804E1B2:
	adds r4, #6
_0804E1B4:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804E1A0
_0804E1BA:
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E1F2
	ldr r4, _0804E1D0 @ =gUnk_080EED8C
	ldr r0, _0804E1D4 @ =gUnk_02002A40
	movs r5, #1
	ldrb r0, [r0, #8]
	lsls r5, r0
	b _0804E1EC
	.align 2, 0
_0804E1D0: .4byte gUnk_080EED8C
_0804E1D4: .4byte gUnk_02002A40
_0804E1D8:
	ldrh r0, [r4]
	ands r0, r5
	cmp r0, #0
	beq _0804E1EA
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #2]
	movs r2, #1
	bl SetTile
_0804E1EA:
	adds r4, #6
_0804E1EC:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0804E1D8
_0804E1F2:
	pop {r4, r5, pc}

	thumb_func_start sub_0804E1F4
sub_0804E1F4: @ 0x0804E1F4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_76
nullsub_76: @ 0x0804E1F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E1FC
sub_0804E1FC: @ 0x0804E1FC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_77
nullsub_77: @ 0x0804E200
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E204
sub_0804E204: @ 0x0804E204
	movs r0, #1
	bx lr

	thumb_func_start nullsub_78
nullsub_78: @ 0x0804E208
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E20C
sub_0804E20C: @ 0x0804E20C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_79
nullsub_79: @ 0x0804E210
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E214
sub_0804E214: @ 0x0804E214
	movs r0, #1
	bx lr

	thumb_func_start nullsub_080
nullsub_080: @ 0x0804E218
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E21C
sub_0804E21C: @ 0x0804E21C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_081
nullsub_081: @ 0x0804E220
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E224
sub_0804E224: @ 0x0804E224
	movs r0, #1
	bx lr

	thumb_func_start nullsub_082
nullsub_082: @ 0x0804E228
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E22C
sub_0804E22C: @ 0x0804E22C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_083
nullsub_083: @ 0x0804E230
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E234
sub_0804E234: @ 0x0804E234
	movs r0, #1
	bx lr

	thumb_func_start nullsub_084
nullsub_084: @ 0x0804E238
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E23C
sub_0804E23C: @ 0x0804E23C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_085
nullsub_085: @ 0x0804E240
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E244
sub_0804E244: @ 0x0804E244
	movs r0, #1
	bx lr

	thumb_func_start nullsub_086
nullsub_086: @ 0x0804E248
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E24C
sub_0804E24C: @ 0x0804E24C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_087
nullsub_087: @ 0x0804E250
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E254
sub_0804E254: @ 0x0804E254
	movs r0, #1
	bx lr

	thumb_func_start nullsub_088
nullsub_088: @ 0x0804E258
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E25C
sub_0804E25C: @ 0x0804E25C
	push {lr}
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	beq _0804E26E
	ldr r1, _0804E274 @ =gRoomVars
	ldr r0, _0804E278 @ =gUnk_080F09A0
	str r0, [r1, #0x70]
_0804E26E:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804E274: .4byte gRoomVars
_0804E278: .4byte gUnk_080F09A0

	thumb_func_start sub_0804E27C
sub_0804E27C: @ 0x0804E27C
	push {r4, lr}
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E2AC
	ldr r0, _0804E2A0 @ =gUnk_080F0650
	bl LoadRoomEntityList
	ldr r0, _0804E2A4 @ =gArea
	ldr r1, _0804E2A8 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x13
	str r1, [r0]
	movs r0, #0x64
	bl SetGlobalFlag
	b _0804E2C0
	.align 2, 0
_0804E2A0: .4byte gUnk_080F0650
_0804E2A4: .4byte gArea
_0804E2A8: .4byte 0x00000864
_0804E2AC:
	movs r0, #0x64
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E2C0
	ldr r0, _0804E300 @ =gArea
	ldr r1, _0804E304 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x1b
	str r1, [r0]
_0804E2C0:
	movs r0, #0x9c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E318
	ldr r0, _0804E308 @ =gUnk_080F0800
	bl LoadRoomEntityList
	ldr r4, _0804E30C @ =0x00004072
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804E310 @ =0x00000266
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804E314 @ =0x000002A6
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	b _0804E3A6
	.align 2, 0
_0804E300: .4byte gArea
_0804E304: .4byte 0x00000864
_0804E308: .4byte gUnk_080F0800
_0804E30C: .4byte 0x00004072
_0804E310: .4byte 0x00000266
_0804E314: .4byte 0x000002A6
_0804E318:
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E348
	ldr r0, _0804E360 @ =gUnk_080F08F0
	bl LoadRoomEntityList
	ldr r4, _0804E364 @ =0x00004072
	adds r0, r4, #0
	movs r1, #0x9e
	movs r2, #1
	bl SetTileType
	adds r0, r4, #0
	movs r1, #0x9f
	movs r2, #1
	bl SetTileType
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #1
	bl SetTileType
_0804E348:
	ldr r0, _0804E368 @ =gUnk_080F0850
	bl LoadRoomEntityList
	movs r0, #0x42
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E370
	ldr r0, _0804E36C @ =gUnk_080F0870
	bl LoadRoomEntityList
	b _0804E376
	.align 2, 0
_0804E360: .4byte gUnk_080F08F0
_0804E364: .4byte 0x00004072
_0804E368: .4byte gUnk_080F0850
_0804E36C: .4byte gUnk_080F0870
_0804E370:
	ldr r0, _0804E3AC @ =gUnk_080F0890
	bl LoadRoomEntityList
_0804E376:
	ldr r4, _0804E3B0 @ =0x00004072
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0x10
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804E3A6
	ldr r0, _0804E3B4 @ =gUnk_080F0920
	bl LoadRoomEntityList
	movs r0, #0x10
	bl ClearLocalFlag
_0804E3A6:
	bl sub_080AF284
	pop {r4, pc}
	.align 2, 0
_0804E3AC: .4byte gUnk_080F0890
_0804E3B0: .4byte 0x00004072
_0804E3B4: .4byte gUnk_080F0920

	thumb_func_start sub_0804E3B8
sub_0804E3B8: @ 0x0804E3B8
	push {lr}
	movs r0, #1
	bl ClearLocalFlag
	movs r0, #1
	pop {pc}

	thumb_func_start sub_0804E3C4
sub_0804E3C4: @ 0x0804E3C4
	push {r4, r5, r6, lr}
	movs r0, #5
	bl CheckGlobalFlag
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r6, r1, #0x1f
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E3DE
	movs r6, #2
_0804E3DE:
	movs r0, #0x55
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E3EA
	movs r6, #3
_0804E3EA:
	bl Random
	adds r4, r0, #0
	ldr r1, _0804E448 @ =gUnk_080F0D58
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r5, #0x1f
	adds r1, r4, #0
	ands r1, r5
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r6, [r0]
	ldr r1, _0804E44C @ =gUnk_080F0CB8
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl LoadRoomEntityList
	lsrs r6, r6, #4
	lsrs r4, r4, #8
	ldr r1, _0804E450 @ =gUnk_080F0E08
	lsls r0, r6, #2
	adds r0, r0, r1
	ands r4, r5
	ldr r0, [r0]
	adds r0, r0, r4
	ldrb r6, [r0]
	movs r0, #0xc6
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E436
	movs r0, #0xc6
	bl SetLocalFlag
	movs r6, #0xe
_0804E436:
	lsls r0, r6, #3
	ldr r1, _0804E454 @ =gUnk_080F0E1C
	adds r0, r0, r1
	bl sub_0804B3C4
	ldr r0, _0804E458 @ =0x80100000
	bl PlaySFX
	pop {r4, r5, r6, pc}
	.align 2, 0
_0804E448: .4byte gUnk_080F0D58
_0804E44C: .4byte gUnk_080F0CB8
_0804E450: .4byte gUnk_080F0E08
_0804E454: .4byte gUnk_080F0E1C
_0804E458: .4byte 0x80100000

	thumb_func_start sub_0804E45C
sub_0804E45C: @ 0x0804E45C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E460
sub_0804E460: @ 0x0804E460
	push {lr}
	movs r0, #0x4a
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E478
	ldr r0, _0804E474 @ =gUnk_080F1C68
	bl LoadRoomEntityList
	b _0804E47E
	.align 2, 0
_0804E474: .4byte gUnk_080F1C68
_0804E478:
	ldr r0, _0804E480 @ =gUnk_080F1C88
	bl LoadRoomEntityList
_0804E47E:
	pop {pc}
	.align 2, 0
_0804E480: .4byte gUnk_080F1C88

	thumb_func_start sub_0804E484
sub_0804E484: @ 0x0804E484
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E488
sub_0804E488: @ 0x0804E488
	push {lr}
	movs r0, #0x2e
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E4A0
	ldr r0, _0804E49C @ =gUnk_080F1D90
	bl LoadRoomEntityList
	b _0804E4C8
	.align 2, 0
_0804E49C: .4byte gUnk_080F1D90
_0804E4A0:
	movs r0, #0x2f
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E4B8
	ldr r0, _0804E4B4 @ =gUnk_080F1DB0
	bl LoadRoomEntityList
	b _0804E4C8
	.align 2, 0
_0804E4B4: .4byte gUnk_080F1DB0
_0804E4B8:
	movs r0, #0x30
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E4C8
	ldr r0, _0804E4CC @ =gUnk_080F1DD0
	bl LoadRoomEntityList
_0804E4C8:
	pop {pc}
	.align 2, 0
_0804E4CC: .4byte gUnk_080F1DD0

	thumb_func_start sub_0804E4D0
sub_0804E4D0: @ 0x0804E4D0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_375
nullsub_375: @ 0x0804E4D4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E4D8
sub_0804E4D8: @ 0x0804E4D8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_376
nullsub_376: @ 0x0804E4DC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E4E0
sub_0804E4E0: @ 0x0804E4E0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E4E4
sub_0804E4E4: @ 0x0804E4E4
	push {lr}
	ldr r0, _0804E518 @ =gUnk_080F2174
	bl LoadRoomEntityList
	movs r0, #0x3a
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E506
	movs r0, #0x2a
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E506
	ldr r0, _0804E51C @ =gUnk_080F2194
	bl LoadRoomEntityList
_0804E506:
	ldr r0, _0804E520 @ =gUnk_030010A0
	ldrb r0, [r0, #0xf]
	cmp r0, #1
	bne _0804E514
	ldr r0, _0804E524 @ =gUnk_080F21B4
	bl LoadRoomEntityList
_0804E514:
	pop {pc}
	.align 2, 0
_0804E518: .4byte gUnk_080F2174
_0804E51C: .4byte gUnk_080F2194
_0804E520: .4byte gUnk_030010A0
_0804E524: .4byte gUnk_080F21B4

	thumb_func_start sub_0804E528
sub_0804E528: @ 0x0804E528
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E52C
sub_0804E52C: @ 0x0804E52C
	push {lr}
	ldr r0, _0804E558 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #7
	bls _0804E53C
	ldr r0, _0804E55C @ =gUnk_080F23BC
	bl LoadRoomEntityList
_0804E53C:
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E564
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E564
	ldr r0, _0804E560 @ =gUnk_080F238C
	bl LoadRoomEntityList
	b _0804E56A
	.align 2, 0
_0804E558: .4byte gUnk_02002A40
_0804E55C: .4byte gUnk_080F23BC
_0804E560: .4byte gUnk_080F238C
_0804E564:
	ldr r0, _0804E56C @ =gUnk_080F236C
	bl LoadRoomEntityList
_0804E56A:
	pop {pc}
	.align 2, 0
_0804E56C: .4byte gUnk_080F236C

	thumb_func_start sub_0804E570
sub_0804E570: @ 0x0804E570
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E574
sub_0804E574: @ 0x0804E574
	push {lr}
	ldr r0, _0804E588 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #9
	bhi _0804E608
	lsls r0, r0, #2
	ldr r1, _0804E58C @ =_0804E590
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0804E588: .4byte gUnk_02002A40
_0804E58C: .4byte _0804E590
_0804E590: @ jump table
	.4byte _0804E5CC @ case 0
	.4byte _0804E608 @ case 1
	.4byte _0804E5CC @ case 2
	.4byte _0804E608 @ case 3
	.4byte _0804E5CC @ case 4
	.4byte _0804E5B8 @ case 5
	.4byte _0804E602 @ case 6
	.4byte _0804E602 @ case 7
	.4byte _0804E5FC @ case 8
	.4byte _0804E5FC @ case 9
_0804E5B8:
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E5F0
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E5D8
_0804E5CC:
	ldr r0, _0804E5D4 @ =gUnk_080F2570
	bl LoadRoomEntityList
	b _0804E608
	.align 2, 0
_0804E5D4: .4byte gUnk_080F2570
_0804E5D8:
	movs r0, #0x39
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E608
	ldr r0, _0804E5EC @ =gUnk_080F25C0
	bl LoadRoomEntityList
	b _0804E608
	.align 2, 0
_0804E5EC: .4byte gUnk_080F25C0
_0804E5F0:
	ldr r0, _0804E5F8 @ =gUnk_080F2590
	bl LoadRoomEntityList
	b _0804E608
	.align 2, 0
_0804E5F8: .4byte gUnk_080F2590
_0804E5FC:
	ldr r0, _0804E60C @ =gUnk_080F2600
	bl LoadRoomEntityList
_0804E602:
	ldr r0, _0804E610 @ =gUnk_080F2590
	bl LoadRoomEntityList
_0804E608:
	pop {pc}
	.align 2, 0
_0804E60C: .4byte gUnk_080F2600
_0804E610: .4byte gUnk_080F2590

	thumb_func_start sub_0804E614
sub_0804E614: @ 0x0804E614
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E618
sub_0804E618: @ 0x0804E618
	push {lr}
	movs r0, #0x21
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804E67A
	movs r0, #0x42
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E65C
	movs r0, #0x43
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E650
	ldr r0, _0804E648 @ =gUnk_080F2718
	bl LoadRoomEntityList
	ldr r0, _0804E64C @ =gUnk_080F2860
	bl sub_0804B1AC
	b _0804E67A
	.align 2, 0
_0804E648: .4byte gUnk_080F2718
_0804E64C: .4byte gUnk_080F2860
_0804E650:
	ldr r0, _0804E658 @ =gUnk_080F2758
	bl LoadRoomEntityList
	b _0804E67A
	.align 2, 0
_0804E658: .4byte gUnk_080F2758
_0804E65C:
	movs r0, #0x3f
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E674
	ldr r0, _0804E670 @ =gUnk_080F27D8
	bl LoadRoomEntityList
	b _0804E67A
	.align 2, 0
_0804E670: .4byte gUnk_080F27D8
_0804E674:
	ldr r0, _0804E67C @ =gUnk_080F2798
	bl LoadRoomEntityList
_0804E67A:
	pop {pc}
	.align 2, 0
_0804E67C: .4byte gUnk_080F2798

	thumb_func_start sub_0804E680
sub_0804E680: @ 0x0804E680
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E684
sub_0804E684: @ 0x0804E684
	push {lr}
	movs r0, #0x2b
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E69C
	ldr r0, _0804E698 @ =gUnk_080F28D4
	bl LoadRoomEntityList
	b _0804E6C4
	.align 2, 0
_0804E698: .4byte gUnk_080F28D4
_0804E69C:
	movs r0, #0x2c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E6B4
	ldr r0, _0804E6B0 @ =gUnk_080F28F4
	bl LoadRoomEntityList
	b _0804E6C4
	.align 2, 0
_0804E6B0: .4byte gUnk_080F28F4
_0804E6B4:
	movs r0, #0x2d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E6C4
	ldr r0, _0804E6C8 @ =gUnk_080F2914
	bl LoadRoomEntityList
_0804E6C4:
	pop {pc}
	.align 2, 0
_0804E6C8: .4byte gUnk_080F2914

	thumb_func_start sub_0804E6CC
sub_0804E6CC: @ 0x0804E6CC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_377
nullsub_377: @ 0x0804E6D0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E6D4
sub_0804E6D4: @ 0x0804E6D4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_378
nullsub_378: @ 0x0804E6D8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E6DC
sub_0804E6DC: @ 0x0804E6DC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_379
nullsub_379: @ 0x0804E6E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E6E4
sub_0804E6E4: @ 0x0804E6E4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E6E8
sub_0804E6E8: @ 0x0804E6E8
	push {lr}
	movs r0, #0x49
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E70A
	ldr r0, _0804E71C @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0804E720 @ =0x800B0036
	bl PlaySFX
_0804E70A:
	movs r0, #0x13
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E71A
	ldr r0, _0804E724 @ =gUnk_080F2E2C
	bl LoadRoomEntityList
_0804E71A:
	pop {pc}
	.align 2, 0
_0804E71C: .4byte gArea
_0804E720: .4byte 0x800B0036
_0804E724: .4byte gUnk_080F2E2C

	thumb_func_start sub_0804E728
sub_0804E728: @ 0x0804E728
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E72C
sub_0804E72C: @ 0x0804E72C
	push {lr}
	movs r0, #0x49
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E74E
	ldr r0, _0804E760 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0804E764 @ =0x800B0036
	bl PlaySFX
_0804E74E:
	movs r0, #0x13
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E76C
	ldr r0, _0804E768 @ =gUnk_080F2E94
	bl LoadRoomEntityList
	b _0804E772
	.align 2, 0
_0804E760: .4byte gArea
_0804E764: .4byte 0x800B0036
_0804E768: .4byte gUnk_080F2E94
_0804E76C:
	ldr r0, _0804E774 @ =gUnk_080F2EC4
	bl LoadRoomEntityList
_0804E772:
	pop {pc}
	.align 2, 0
_0804E774: .4byte gUnk_080F2EC4

	thumb_func_start sub_0804E778
sub_0804E778: @ 0x0804E778
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E77C
sub_0804E77C: @ 0x0804E77C
	push {lr}
	movs r0, #0x69
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804E792
	movs r0, #0x3c
	bl GetInventoryValue
	cmp r0, #1
	bls _0804E798
_0804E792:
	ldr r0, _0804E79C @ =gUnk_080F2FD4
	bl LoadRoomEntityList
_0804E798:
	pop {pc}
	.align 2, 0
_0804E79C: .4byte gUnk_080F2FD4

	thumb_func_start sub_0804E7A0
sub_0804E7A0: @ 0x0804E7A0
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E7A4
sub_0804E7A4: @ 0x0804E7A4
	push {lr}
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #1
	bne _0804E7CC
	movs r0, #0x5b
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E7CC
	ldr r0, _0804E7D0 @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0804E7CC
	ldr r0, _0804E7D4 @ =gUnk_080F30CC
	bl LoadRoomEntityList
_0804E7CC:
	pop {pc}
	.align 2, 0
_0804E7D0: .4byte gLinkState
_0804E7D4: .4byte gUnk_080F30CC

	thumb_func_start sub_0804E7D8
sub_0804E7D8: @ 0x0804E7D8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E7DC
sub_0804E7DC: @ 0x0804E7DC
	push {r4, lr}
	movs r0, #0x13
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E818
	movs r0, #0x46
	bl CheckLocalFlag
	adds r4, r0, #0
	cmp r4, #0
	bne _0804E818
	movs r0, #5
	movs r1, #1
	movs r2, #4
	movs r3, #4
	bl sub_080A71C4
	ldr r0, _0804E84C @ =gUnk_02000070
	strb r4, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #5
	bl DoFade
	ldr r2, _0804E850 @ =gUnk_08009B30
	movs r0, #0
	movs r1, #6
	bl sub_080751E8
_0804E818:
	movs r0, #0x49
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E838
	ldr r0, _0804E854 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _0804E858 @ =0x800B0036
	bl PlaySFX
_0804E838:
	ldr r0, _0804E85C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0804E84A
	ldr r0, _0804E860 @ =gUnk_080F31D8
	bl LoadRoomEntityList
_0804E84A:
	pop {r4, pc}
	.align 2, 0
_0804E84C: .4byte gUnk_02000070
_0804E850: .4byte gUnk_08009B30
_0804E854: .4byte gArea
_0804E858: .4byte 0x800B0036
_0804E85C: .4byte gLinkState
_0804E860: .4byte gUnk_080F31D8

	thumb_func_start sub_0804E864
sub_0804E864: @ 0x0804E864
	push {lr}
	ldr r2, _0804E888 @ =gLinkEntity
	ldr r1, _0804E88C @ =gRoomControls
	ldrh r0, [r1, #6]
	adds r0, #0x90
	strh r0, [r2, #0x2e]
	ldrh r0, [r1, #8]
	adds r0, #0x38
	strh r0, [r2, #0x32]
	ldr r2, _0804E890 @ =gUnk_08009E58
	movs r0, #1
	movs r1, #6
	bl sub_080751E8
	movs r0, #0xa0
	bl ModHealth
	pop {pc}
	.align 2, 0
_0804E888: .4byte gLinkEntity
_0804E88C: .4byte gRoomControls
_0804E890: .4byte gUnk_08009E58

	thumb_func_start sub_0804E894
sub_0804E894: @ 0x0804E894
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E898
sub_0804E898: @ 0x0804E898
	push {r4, lr}
	movs r0, #0x12
	bl GetInventoryValue
	cmp r0, #0
	beq _0804E8D8
	ldr r0, _0804E8DC @ =gUnk_080F3260
	bl LoadRoomEntityList
	ldr r4, _0804E8E0 @ =0x00004072
	ldr r1, _0804E8E4 @ =0x00000202
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804E8E8 @ =0x00000242
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r1, #0x91
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804E8D8:
	pop {r4, pc}
	.align 2, 0
_0804E8DC: .4byte gUnk_080F3260
_0804E8E0: .4byte 0x00004072
_0804E8E4: .4byte 0x00000202
_0804E8E8: .4byte 0x00000242

	thumb_func_start sub_0804E8EC
sub_0804E8EC: @ 0x0804E8EC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E8F0
sub_0804E8F0: @ 0x0804E8F0
	push {lr}
	bl sub_08054564
	pop {pc}

	thumb_func_start sub_0804E8F8
sub_0804E8F8: @ 0x0804E8F8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E8FC
sub_0804E8FC: @ 0x0804E8FC
	push {lr}
	movs r0, #0x1d
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804E914
	ldr r0, _0804E910 @ =gUnk_080F36FC
	bl LoadRoomEntityList
	b _0804E922
	.align 2, 0
_0804E910: .4byte gUnk_080F36FC
_0804E914:
	ldr r0, _0804E924 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bhi _0804E922
	ldr r0, _0804E928 @ =gUnk_080F3604
	bl LoadRoomEntityList
_0804E922:
	pop {pc}
	.align 2, 0
_0804E924: .4byte gUnk_02002A40
_0804E928: .4byte gUnk_080F3604

	thumb_func_start sub_0804E92C
sub_0804E92C: @ 0x0804E92C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E930
sub_0804E930: @ 0x0804E930
	push {lr}
	movs r0, #0x1d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E942
	ldr r0, _0804E944 @ =gUnk_080F37D0
	bl LoadRoomEntityList
_0804E942:
	pop {pc}
	.align 2, 0
_0804E944: .4byte gUnk_080F37D0

	thumb_func_start sub_0804E948
sub_0804E948: @ 0x0804E948
	movs r0, #1
	bx lr

	thumb_func_start nullsub_380
nullsub_380: @ 0x0804E94C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804E950
sub_0804E950: @ 0x0804E950
	movs r0, #1
	bx lr

	thumb_func_start sub_0804E954
sub_0804E954: @ 0x0804E954
	push {lr}
	movs r0, #0x46
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E97A
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E97A
	movs r0, #0x3b
	bl GetInventoryValue
	cmp r0, #0
	bne _0804E97A
	ldr r0, _0804E988 @ =gUnk_080F3A48
	bl LoadRoomEntityList
_0804E97A:
	ldr r0, _0804E98C @ =gUnk_030010A0
	ldr r1, _0804E990 @ =0x00000F28
	strh r1, [r0, #0x20]
	ldr r1, _0804E994 @ =0x0000082D
	strh r1, [r0, #0x22]
	pop {pc}
	.align 2, 0
_0804E988: .4byte gUnk_080F3A48
_0804E98C: .4byte gUnk_030010A0
_0804E990: .4byte 0x00000F28
_0804E994: .4byte 0x0000082D

	thumb_func_start sub_0804E998
sub_0804E998: @ 0x0804E998
	push {lr}
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E9BC
	movs r0, #4
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E9BC
	ldr r1, _0804E9B4 @ =gRoomVars
	ldr r0, _0804E9B8 @ =gUnk_080F3EA4
	b _0804E9C0
	.align 2, 0
_0804E9B4: .4byte gRoomVars
_0804E9B8: .4byte gUnk_080F3EA4
_0804E9BC:
	ldr r1, _0804E9C8 @ =gRoomVars
	ldr r0, _0804E9CC @ =gUnk_080F3D44
_0804E9C0:
	str r0, [r1, #0x74]
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804E9C8: .4byte gRoomVars
_0804E9CC: .4byte gUnk_080F3D44

	thumb_func_start sub_0804E9D0
sub_0804E9D0: @ 0x0804E9D0
	push {r4, lr}
	movs r0, #5
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804E9EC
	movs r0, #4
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804E9EC
	ldr r0, _0804EAC4 @ =gUnk_080F3C64
	bl LoadRoomEntityList
_0804E9EC:
	movs r0, #0x12
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804E9FC
	ldr r0, _0804EAC8 @ =gUnk_080F3C94
	bl LoadRoomEntityList
_0804E9FC:
	ldr r0, _0804EACC @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804EA14
	movs r0, #0x5c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EA14
	ldr r0, _0804EAD0 @ =gUnk_080F3C44
	bl LoadRoomEntityList
_0804EA14:
	ldr r4, _0804EAD4 @ =0x00004091
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAD8 @ =0x00000591
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EADC @ =0x00000592
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAE0 @ =0x00000593
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAE4 @ =0x00000594
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	movs r1, #0xba
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	movs r1, #0xca
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAE8 @ =0x000005D4
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAEC @ =0x00000614
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAF0 @ =0x00000654
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	movs r1, #0xd2
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAF4 @ =0x00000691
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAF8 @ =0x00000692
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EAFC @ =0x00000693
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	ldr r1, _0804EB00 @ =0x00000694
	adds r0, r4, #0
	movs r2, #1
	bl SetTile
	pop {r4, pc}
	.align 2, 0
_0804EAC4: .4byte gUnk_080F3C64
_0804EAC8: .4byte gUnk_080F3C94
_0804EACC: .4byte gUnk_02002A40
_0804EAD0: .4byte gUnk_080F3C44
_0804EAD4: .4byte 0x00004091
_0804EAD8: .4byte 0x00000591
_0804EADC: .4byte 0x00000592
_0804EAE0: .4byte 0x00000593
_0804EAE4: .4byte 0x00000594
_0804EAE8: .4byte 0x000005D4
_0804EAEC: .4byte 0x00000614
_0804EAF0: .4byte 0x00000654
_0804EAF4: .4byte 0x00000691
_0804EAF8: .4byte 0x00000692
_0804EAFC: .4byte 0x00000693
_0804EB00: .4byte 0x00000694

	thumb_func_start sub_0804EB04
sub_0804EB04: @ 0x0804EB04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_381
nullsub_381: @ 0x0804EB08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB0C
sub_0804EB0C: @ 0x0804EB0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_382
nullsub_382: @ 0x0804EB10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB14
sub_0804EB14: @ 0x0804EB14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_383
nullsub_383: @ 0x0804EB18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB1C
sub_0804EB1C: @ 0x0804EB1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_384
nullsub_384: @ 0x0804EB20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB24
sub_0804EB24: @ 0x0804EB24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_385
nullsub_385: @ 0x0804EB28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB2C
sub_0804EB2C: @ 0x0804EB2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_386
nullsub_386: @ 0x0804EB30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB34
sub_0804EB34: @ 0x0804EB34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_387
nullsub_387: @ 0x0804EB38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB3C
sub_0804EB3C: @ 0x0804EB3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_388
nullsub_388: @ 0x0804EB40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB44
sub_0804EB44: @ 0x0804EB44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_389
nullsub_389: @ 0x0804EB48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB4C
sub_0804EB4C: @ 0x0804EB4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_390
nullsub_390: @ 0x0804EB50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB54
sub_0804EB54: @ 0x0804EB54
	ldr r2, _0804EB64 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0804EB64: .4byte gArea

	thumb_func_start nullsub_391
nullsub_391: @ 0x0804EB68
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB6C
sub_0804EB6C: @ 0x0804EB6C
	ldr r2, _0804EB7C @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0804EB7C: .4byte gArea

	thumb_func_start nullsub_392
nullsub_392: @ 0x0804EB80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB84
sub_0804EB84: @ 0x0804EB84
	ldr r2, _0804EB94 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	bx lr
	.align 2, 0
_0804EB94: .4byte gArea

	thumb_func_start nullsub_393
nullsub_393: @ 0x0804EB98
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EB9C
sub_0804EB9C: @ 0x0804EB9C
	push {lr}
	movs r0, #0x58
	movs r1, #5
	bl sub_0801DD58
	ldr r2, _0804EBB4 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EBB4: .4byte gArea

	thumb_func_start nullsub_394
nullsub_394: @ 0x0804EBB8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EBBC
sub_0804EBBC: @ 0x0804EBBC
	push {lr}
	movs r0, #0x58
	movs r1, #6
	bl sub_0801DD58
	ldr r2, _0804EBD4 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x48
	orrs r0, r1
	strb r0, [r2]
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EBD4: .4byte gArea

	thumb_func_start nullsub_395
nullsub_395: @ 0x0804EBD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EBDC
sub_0804EBDC: @ 0x0804EBDC
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EBF2
	ldr r0, _0804EBF8 @ =gRoomVars
	ldr r1, _0804EBFC @ =gUnk_080F4EB0
	str r1, [r0, #0x6c]
	movs r1, #0
	str r1, [r0, #0x74]
_0804EBF2:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EBF8: .4byte gRoomVars
_0804EBFC: .4byte gUnk_080F4EB0

	thumb_func_start sub_0804EC00
sub_0804EC00: @ 0x0804EC00
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EC1A
	ldr r0, _0804EC48 @ =gArea
	ldr r2, _0804EC4C @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
_0804EC1A:
	movs r0, #0x14
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804EC2A
	ldr r0, _0804EC50 @ =gUnk_080F4D50
	bl LoadRoomEntityList
_0804EC2A:
	movs r0, #0x3e
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EC64
	movs r0, #0x3b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EC58
	ldr r0, _0804EC54 @ =gUnk_080F4DB0
	bl LoadRoomEntityList
	b _0804EC5E
	.align 2, 0
_0804EC48: .4byte gArea
_0804EC4C: .4byte 0x00000864
_0804EC50: .4byte gUnk_080F4D50
_0804EC54: .4byte gUnk_080F4DB0
_0804EC58:
	ldr r0, _0804EC84 @ =gUnk_080F4DD0
	bl LoadRoomEntityList
_0804EC5E:
	ldr r0, _0804EC88 @ =gUnk_080F4DF0
	bl LoadRoomEntityList
_0804EC64:
	movs r0, #0x4e
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804EC74
	ldr r0, _0804EC8C @ =gUnk_080F4F10
	bl LoadRoomEntityList
_0804EC74:
	ldr r0, _0804EC90 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	cmp r0, #0
	blt _0804EC82
	ldr r0, _0804EC94 @ =gUnk_080F4E10
	bl LoadRoomEntityList
_0804EC82:
	pop {pc}
	.align 2, 0
_0804EC84: .4byte gUnk_080F4DD0
_0804EC88: .4byte gUnk_080F4DF0
_0804EC8C: .4byte gUnk_080F4F10
_0804EC90: .4byte gUnk_02002A40
_0804EC94: .4byte gUnk_080F4E10

	thumb_func_start sub_0804EC98
sub_0804EC98: @ 0x0804EC98
	push {lr}
	ldr r0, _0804ECAC @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	cmp r0, #0
	blt _0804ECA8
	ldr r0, _0804ECB0 @ =gUnk_080F4E10
	bl LoadRoomEntityList
_0804ECA8:
	pop {pc}
	.align 2, 0
_0804ECAC: .4byte gUnk_02002A40
_0804ECB0: .4byte gUnk_080F4E10

	thumb_func_start sub_0804ECB4
sub_0804ECB4: @ 0x0804ECB4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_396
nullsub_396: @ 0x0804ECB8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804ECBC
sub_0804ECBC: @ 0x0804ECBC
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804ECDA
	ldr r1, _0804ECE0 @ =gRoomVars
	ldr r0, _0804ECE4 @ =gUnk_080F5348
	str r0, [r1, #0x6c]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _0804ECE8 @ =sub_0804ED18
	str r0, [r2]
	movs r0, #0
	str r0, [r1, #0x74]
_0804ECDA:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804ECE0: .4byte gRoomVars
_0804ECE4: .4byte gUnk_080F5348
_0804ECE8: .4byte sub_0804ED18

	thumb_func_start sub_0804ECEC
sub_0804ECEC: @ 0x0804ECEC
	push {lr}
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0804ED0E
	ldr r0, _0804ED10 @ =gUnk_080F5328
	bl LoadRoomEntityList
	movs r0, #0x14
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804ED0E
	ldr r0, _0804ED14 @ =gUnk_080F5308
	bl LoadRoomEntityList
_0804ED0E:
	pop {pc}
	.align 2, 0
_0804ED10: .4byte gUnk_080F5328
_0804ED14: .4byte gUnk_080F5308

	thumb_func_start sub_0804ED18
sub_0804ED18: @ 0x0804ED18
	ldr r0, _0804ED28 @ =gArea
	ldr r2, _0804ED2C @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bx lr
	.align 2, 0
_0804ED28: .4byte gArea
_0804ED2C: .4byte 0x00000864

	thumb_func_start sub_0804ED30
sub_0804ED30: @ 0x0804ED30
	movs r0, #1
	bx lr

	thumb_func_start sub_0804ED34
sub_0804ED34: @ 0x0804ED34
	push {lr}
	bl sub_080AF2E4
	movs r0, #0x5d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804ED4E
	ldr r0, _0804ED50 @ =gArea
	ldr r1, _0804ED54 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x31
	str r1, [r0]
_0804ED4E:
	pop {pc}
	.align 2, 0
_0804ED50: .4byte gArea
_0804ED54: .4byte 0x00000864

	thumb_func_start sub_0804ED58
sub_0804ED58: @ 0x0804ED58
	movs r0, #1
	bx lr

	thumb_func_start sub_0804ED5C
sub_0804ED5C: @ 0x0804ED5C
	push {lr}
	movs r0, #0x79
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804ED6E
	ldr r0, _0804EDA8 @ =gUnk_080F54E8
	bl LoadRoomEntityList
_0804ED6E:
	movs r0, #0x7a
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EDB0
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EE16
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	movs r0, #0x41
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	ldr r0, _0804EDAC @ =gUnk_080F5508
	bl LoadRoomEntityList
	b _0804EE16
	.align 2, 0
_0804EDA8: .4byte gUnk_080F54E8
_0804EDAC: .4byte gUnk_080F5508
_0804EDB0:
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EDE4
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	movs r0, #4
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EE16
	movs r0, #0x42
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	ldr r0, _0804EDE0 @ =gUnk_080F5558
	bl LoadRoomEntityList
	b _0804EE16
	.align 2, 0
_0804EDE0: .4byte gUnk_080F5558
_0804EDE4:
	movs r0, #0x7c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EE10
	movs r0, #6
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EE16
	movs r0, #0x43
	bl GetInventoryValue
	cmp r0, #0
	beq _0804EE16
	ldr r0, _0804EE0C @ =gUnk_080F5598
	bl LoadRoomEntityList
	b _0804EE16
	.align 2, 0
_0804EE0C: .4byte gUnk_080F5598
_0804EE10:
	ldr r0, _0804EE5C @ =gUnk_080F55D8
	bl LoadRoomEntityList
_0804EE16:
	movs r0, #0x7a
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE26
	ldr r0, _0804EE60 @ =gUnk_080F5528
	bl LoadRoomEntityList
_0804EE26:
	movs r0, #0x7b
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE36
	ldr r0, _0804EE64 @ =gUnk_080F5578
	bl LoadRoomEntityList
_0804EE36:
	movs r0, #0x7c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE46
	ldr r0, _0804EE68 @ =gUnk_080F55B8
	bl LoadRoomEntityList
_0804EE46:
	movs r0, #0x5d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EE5A
	ldr r0, _0804EE6C @ =gArea
	ldr r1, _0804EE70 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x31
	str r1, [r0]
_0804EE5A:
	pop {pc}
	.align 2, 0
_0804EE5C: .4byte gUnk_080F55D8
_0804EE60: .4byte gUnk_080F5528
_0804EE64: .4byte gUnk_080F5578
_0804EE68: .4byte gUnk_080F55B8
_0804EE6C: .4byte gArea
_0804EE70: .4byte 0x00000864

	thumb_func_start sub_0804EE74
sub_0804EE74: @ 0x0804EE74
	movs r0, #1
	bx lr

	thumb_func_start sub_0804EE78
sub_0804EE78: @ 0x0804EE78
	push {lr}
	movs r0, #0x78
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EE94
	movs r0, #0x7c
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804EE94
	ldr r0, _0804EEAC @ =gUnk_080F5660
	bl LoadRoomEntityList
_0804EE94:
	movs r0, #0x5d
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EEA8
	ldr r0, _0804EEB0 @ =gArea
	ldr r1, _0804EEB4 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x31
	str r1, [r0]
_0804EEA8:
	pop {pc}
	.align 2, 0
_0804EEAC: .4byte gUnk_080F5660
_0804EEB0: .4byte gArea
_0804EEB4: .4byte 0x00000864

	thumb_func_start sub_0804EEB8
sub_0804EEB8: @ 0x0804EEB8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804EEBC
sub_0804EEBC: @ 0x0804EEBC
	push {lr}
	ldr r0, _0804EEF4 @ =gUnk_080F5758
	bl LoadRoomEntityList
	movs r0, #0x36
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EEE2
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0x8f
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804EEE2
	ldr r0, _0804EEF8 @ =gUnk_080F57E8
	bl LoadRoomEntityList
_0804EEE2:
	movs r0, #0x55
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EF00
	ldr r0, _0804EEFC @ =gUnk_080F57A8
	bl LoadRoomEntityList
	b _0804EF54
	.align 2, 0
_0804EEF4: .4byte gUnk_080F5758
_0804EEF8: .4byte gUnk_080F57E8
_0804EEFC: .4byte gUnk_080F57A8
_0804EF00:
	ldr r1, _0804EF34 @ =gBombBagSizes
	ldr r0, _0804EF38 @ =gUnk_02002A40
	adds r0, #0xae
	ldrb r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0x1d
	bls _0804EF16
	ldr r0, _0804EF3C @ =gUnk_080F57C8
	bl LoadRoomEntityList
_0804EF16:
	movs r0, #0xb
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EF44
	movs r0, #0xc
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EF44
	ldr r0, _0804EF40 @ =gUnk_080F5888
	bl LoadRoomEntityList
	b _0804EF54
	.align 2, 0
_0804EF34: .4byte gBombBagSizes
_0804EF38: .4byte gUnk_02002A40
_0804EF3C: .4byte gUnk_080F57C8
_0804EF40: .4byte gUnk_080F5888
_0804EF44:
	movs r0, #0xcd
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EF54
	ldr r0, _0804EF80 @ =gUnk_080F58A8
	bl LoadRoomEntityList
_0804EF54:
	movs r0, #9
	bl GetInventoryValue
	cmp r0, #0
	bne _0804EF68
	movs r0, #4
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EF92
_0804EF68:
	ldr r0, _0804EF84 @ =gUnk_080F5868
	bl LoadRoomEntityList
	movs r0, #0x56
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804EF8C
	ldr r0, _0804EF88 @ =gUnk_080F5828
	bl LoadRoomEntityList
	b _0804EF92
	.align 2, 0
_0804EF80: .4byte gUnk_080F58A8
_0804EF84: .4byte gUnk_080F5868
_0804EF88: .4byte gUnk_080F5828
_0804EF8C:
	ldr r0, _0804EFA4 @ =gUnk_080F5848
	bl LoadRoomEntityList
_0804EF92:
	ldr r0, _0804EFA8 @ =gUnk_02002A40
	adds r0, #0xbb
	ldrb r0, [r0]
	cmp r0, #0
	bne _0804EFA2
	ldr r0, _0804EFAC @ =gUnk_080F5788
	bl LoadRoomEntityList
_0804EFA2:
	pop {pc}
	.align 2, 0
_0804EFA4: .4byte gUnk_080F5848
_0804EFA8: .4byte gUnk_02002A40
_0804EFAC: .4byte gUnk_080F5788

	thumb_func_start sub_0804EFB0
sub_0804EFB0: @ 0x0804EFB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_397
nullsub_397: @ 0x0804EFB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EFB8
sub_0804EFB8: @ 0x0804EFB8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804EFBC
sub_0804EFBC: @ 0x0804EFBC
	push {lr}
	movs r0, #0x38
	bl GetInventoryValue
	cmp r0, #1
	bne _0804EFCE
	ldr r0, _0804EFD0 @ =gUnk_080F5B3C
	bl LoadRoomEntityList
_0804EFCE:
	pop {pc}
	.align 2, 0
_0804EFD0: .4byte gUnk_080F5B3C

	thumb_func_start sub_0804EFD4
sub_0804EFD4: @ 0x0804EFD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_398
nullsub_398: @ 0x0804EFD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804EFDC
sub_0804EFDC: @ 0x0804EFDC
	push {lr}
	movs r0, #0x50
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804EFEE
	ldr r1, _0804EFF4 @ =gUnk_030010A0
	movs r0, #5
	strb r0, [r1, #0xf]
_0804EFEE:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804EFF4: .4byte gUnk_030010A0

	thumb_func_start sub_0804EFF8
sub_0804EFF8: @ 0x0804EFF8
	push {lr}
	ldr r0, _0804F020 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #7
	bls _0804F008
	ldr r0, _0804F024 @ =gUnk_080F5DD0
	bl LoadRoomEntityList
_0804F008:
	movs r0, #0x50
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F01C
	ldr r2, _0804F028 @ =gUnk_08011C50
	movs r0, #1
	movs r1, #2
	bl sub_080751E8
_0804F01C:
	pop {pc}
	.align 2, 0
_0804F020: .4byte gUnk_02002A40
_0804F024: .4byte gUnk_080F5DD0
_0804F028: .4byte gUnk_08011C50

	thumb_func_start sub_0804F02C
sub_0804F02C: @ 0x0804F02C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F030
sub_0804F030: @ 0x0804F030
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xd1
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804F046
	ldr r0, _0804F048 @ =gUnk_080F5E68
	bl LoadRoomEntityList
_0804F046:
	pop {pc}
	.align 2, 0
_0804F048: .4byte gUnk_080F5E68

	thumb_func_start sub_0804F04C
sub_0804F04C: @ 0x0804F04C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F050
sub_0804F050: @ 0x0804F050
	push {lr}
	ldr r0, _0804F074 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #4
	bls _0804F060
	ldr r0, _0804F078 @ =gUnk_080F5F38
	bl LoadRoomEntityList
_0804F060:
	movs r0, #0x92
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F080
	ldr r0, _0804F07C @ =gUnk_080F5F58
	bl LoadRoomEntityList
	b _0804F086
	.align 2, 0
_0804F074: .4byte gUnk_02002A40
_0804F078: .4byte gUnk_080F5F38
_0804F07C: .4byte gUnk_080F5F58
_0804F080:
	ldr r0, _0804F088 @ =gUnk_080F5F78
	bl LoadRoomEntityList
_0804F086:
	pop {pc}
	.align 2, 0
_0804F088: .4byte gUnk_080F5F78

	thumb_func_start sub_0804F08C
sub_0804F08C: @ 0x0804F08C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_399
nullsub_399: @ 0x0804F090
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F094
sub_0804F094: @ 0x0804F094
	movs r0, #1
	bx lr

	thumb_func_start nullsub_400
nullsub_400: @ 0x0804F098
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F09C
sub_0804F09C: @ 0x0804F09C
	push {lr}
	movs r0, #0x24
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F0BC
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xdc
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804F0BC
	movs r0, #0x58
	bl SetGlobalFlag
_0804F0BC:
	movs r0, #1
	pop {pc}

	thumb_func_start sub_0804F0C0
sub_0804F0C0: @ 0x0804F0C0
	push {r4, lr}
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0xdc
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804F0D6
	movs r0, #0x90
	bl SetLocalFlag
_0804F0D6:
	movs r0, #0xf
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804F0E6
	ldr r0, _0804F118 @ =gUnk_080F61BC
	bl LoadRoomEntityList
_0804F0E6:
	movs r0, #0x58
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F106
	ldr r4, _0804F11C @ =0x00004072
	ldr r1, _0804F120 @ =0x000004C7
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F124 @ =0x00000507
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804F106:
	movs r2, #0xf4
	lsls r2, r2, #1
	movs r3, #0xac
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	bl sub_08052CA4
	pop {r4, pc}
	.align 2, 0
_0804F118: .4byte gUnk_080F61BC
_0804F11C: .4byte 0x00004072
_0804F120: .4byte 0x000004C7
_0804F124: .4byte 0x00000507

	thumb_func_start sub_0804F128
sub_0804F128: @ 0x0804F128
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F12C
sub_0804F12C: @ 0x0804F12C
	push {lr}
	movs r0, #0x58
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F144
	ldr r0, _0804F140 @ =gUnk_080F62E4
	bl LoadRoomEntityList
	b _0804F154
	.align 2, 0
_0804F140: .4byte gUnk_080F62E4
_0804F144:
	movs r0, #0x63
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804F154
	ldr r0, _0804F158 @ =gUnk_080F6324
	bl LoadRoomEntityList
_0804F154:
	pop {pc}
	.align 2, 0
_0804F158: .4byte gUnk_080F6324

	thumb_func_start sub_0804F15C
sub_0804F15C: @ 0x0804F15C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_401
nullsub_401: @ 0x0804F160
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F164
sub_0804F164: @ 0x0804F164
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F168
sub_0804F168: @ 0x0804F168
	push {lr}
	movs r0, #0xb1
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F180
	ldr r0, _0804F17C @ =gUnk_080F6564
	bl LoadRoomEntityList
	b _0804F186
	.align 2, 0
_0804F17C: .4byte gUnk_080F6564
_0804F180:
	ldr r0, _0804F188 @ =gUnk_080F6584
	bl LoadRoomEntityList
_0804F186:
	pop {pc}
	.align 2, 0
_0804F188: .4byte gUnk_080F6584

	thumb_func_start sub_0804F18C
sub_0804F18C: @ 0x0804F18C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F190
sub_0804F190: @ 0x0804F190
	push {lr}
	movs r0, #5
	bl sub_0805B4D0
	movs r0, #6
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F1B6
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #5
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804F1B6
	ldr r0, _0804F1D4 @ =gUnk_080F66AC
	bl LoadRoomEntityList
_0804F1B6:
	movs r2, #0xf4
	lsls r2, r2, #1
	movs r3, #0xac
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	bl sub_08052CA4
	ldr r2, _0804F1D8 @ =gArea
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	pop {pc}
	.align 2, 0
_0804F1D4: .4byte gUnk_080F66AC
_0804F1D8: .4byte gArea

	thumb_func_start sub_0804F1DC
sub_0804F1DC: @ 0x0804F1DC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_402
nullsub_402: @ 0x0804F1E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1E4
sub_0804F1E4: @ 0x0804F1E4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_403
nullsub_403: @ 0x0804F1E8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1EC
sub_0804F1EC: @ 0x0804F1EC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_404
nullsub_404: @ 0x0804F1F0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1F4
sub_0804F1F4: @ 0x0804F1F4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_405
nullsub_405: @ 0x0804F1F8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F1FC
sub_0804F1FC: @ 0x0804F1FC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_406
nullsub_406: @ 0x0804F200
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F204
sub_0804F204: @ 0x0804F204
	movs r0, #1
	bx lr

	thumb_func_start nullsub_407
nullsub_407: @ 0x0804F208
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F20C
sub_0804F20C: @ 0x0804F20C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_408
nullsub_408: @ 0x0804F210
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F214
sub_0804F214: @ 0x0804F214
	movs r0, #1
	bx lr

	thumb_func_start nullsub_409
nullsub_409: @ 0x0804F218
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F21C
sub_0804F21C: @ 0x0804F21C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_410
nullsub_410: @ 0x0804F220
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F224
sub_0804F224: @ 0x0804F224
	movs r0, #1
	bx lr

	thumb_func_start nullsub_411
nullsub_411: @ 0x0804F228
	bx lr
	.align 2, 0

	thumb_func_start sub_0804F22C
sub_0804F22C: @ 0x0804F22C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F230
sub_0804F230: @ 0x0804F230
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F23C
sub_0804F23C: @ 0x0804F23C
	push {lr}
	movs r0, #0x6d
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F252
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	bl DoFade
_0804F252:
	movs r0, #0x49
	bl SetGlobalFlag
	movs r0, #1
	pop {pc}

	thumb_func_start sub_0804F25C
sub_0804F25C: @ 0x0804F25C
	push {r4, lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #0x6d
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F27A
	ldr r0, _0804F2B0 @ =gUnk_080F70A8
	bl LoadRoomEntityList
	movs r0, #0x1c
	bl ClearGlobalFlag
_0804F27A:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F28E
	ldr r0, _0804F2B4 @ =gArea
	ldr r1, _0804F2B8 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x10
	str r1, [r0]
_0804F28E:
	ldr r4, _0804F2BC @ =gUnk_02002A40
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0804F2A2
	ldr r0, _0804F2C0 @ =gUnk_080F70D8
	bl LoadRoomEntityList
_0804F2A2:
	ldrb r0, [r4, #8]
	cmp r0, #3
	bls _0804F2AE
	ldr r0, _0804F2C4 @ =gUnk_080F7088
	bl LoadRoomEntityList
_0804F2AE:
	pop {r4, pc}
	.align 2, 0
_0804F2B0: .4byte gUnk_080F70A8
_0804F2B4: .4byte gArea
_0804F2B8: .4byte 0x00000864
_0804F2BC: .4byte gUnk_02002A40
_0804F2C0: .4byte gUnk_080F70D8
_0804F2C4: .4byte gUnk_080F7088

	thumb_func_start sub_0804F2C8
sub_0804F2C8: @ 0x0804F2C8
	push {lr}
	ldr r0, _0804F2E0 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0804F2DE
	ldr r0, _0804F2E4 @ =gUnk_080F70D8
	bl LoadRoomEntityList
_0804F2DE:
	pop {pc}
	.align 2, 0
_0804F2E0: .4byte gUnk_02002A40
_0804F2E4: .4byte gUnk_080F70D8

	thumb_func_start sub_0804F2E8
sub_0804F2E8: @ 0x0804F2E8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F2EC
sub_0804F2EC: @ 0x0804F2EC
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F2F8
sub_0804F2F8: @ 0x0804F2F8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F2FC
sub_0804F2FC: @ 0x0804F2FC
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F308
sub_0804F308: @ 0x0804F308
	push {lr}
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F324
	movs r0, #0x12
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F324
	ldr r1, _0804F328 @ =gRoomVars
	ldr r0, _0804F32C @ =gUnk_080F7680
	str r0, [r1, #0x74]
_0804F324:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804F328: .4byte gRoomVars
_0804F32C: .4byte gUnk_080F7680

	thumb_func_start sub_0804F330
sub_0804F330: @ 0x0804F330
	push {r4, lr}
	movs r0, #0
	bl sub_0805ADD8
	ldr r0, _0804F38C @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804F346
	ldr r0, _0804F390 @ =gUnk_080F7500
	bl LoadRoomEntityList
_0804F346:
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F38A
	movs r0, #0x12
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F38A
	ldr r0, _0804F394 @ =gUnk_080F7550
	bl LoadRoomEntityList
	ldr r4, _0804F398 @ =0x00004072
	ldr r1, _0804F39C @ =0x00000311
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F3A0 @ =0x00000351
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F3A4 @ =0x000003D9
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F3A8 @ =0x00000419
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804F38A:
	pop {r4, pc}
	.align 2, 0
_0804F38C: .4byte gUnk_02002A40
_0804F390: .4byte gUnk_080F7500
_0804F394: .4byte gUnk_080F7550
_0804F398: .4byte 0x00004072
_0804F39C: .4byte 0x00000311
_0804F3A0: .4byte 0x00000351
_0804F3A4: .4byte 0x000003D9
_0804F3A8: .4byte 0x00000419

	thumb_func_start sub_0804F3AC
sub_0804F3AC: @ 0x0804F3AC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804F3B0
sub_0804F3B0: @ 0x0804F3B0
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0x8f
	bl CheckLocalFlagByOffset
	cmp r0, #0
	beq _0804F3DC
	movs r0, #0x1d
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F3EC
	ldr r0, _0804F3D8 @ =gUnk_080F77C0
	bl LoadRoomEntityList
	b _0804F3EC
	.align 2, 0
_0804F3D8: .4byte gUnk_080F77C0
_0804F3DC:
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F3EC
	ldr r0, _0804F444 @ =gUnk_080F77F0
	bl LoadRoomEntityList
_0804F3EC:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F406
	movs r0, #0x40
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F406
	ldr r0, _0804F448 @ =gUnk_080F7810
	bl LoadRoomEntityList
_0804F406:
	movs r0, #0x29
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804F42A
	ldr r0, _0804F44C @ =gUnk_080F7860
	bl LoadRoomEntityList
	ldr r0, _0804F450 @ =0x00004072
	ldr r1, _0804F454 @ =0x00000D88
	movs r2, #1
	bl SetTile
	ldr r0, _0804F458 @ =0x00004096
	ldr r1, _0804F45C @ =0x00000DC8
	movs r2, #1
	bl SetTile
_0804F42A:
	ldr r0, _0804F460 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804F442
	movs r0, #0x5c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F442
	ldr r0, _0804F464 @ =gUnk_080F78A0
	bl LoadRoomEntityList
_0804F442:
	pop {pc}
	.align 2, 0
_0804F444: .4byte gUnk_080F77F0
_0804F448: .4byte gUnk_080F7810
_0804F44C: .4byte gUnk_080F7860
_0804F450: .4byte 0x00004072
_0804F454: .4byte 0x00000D88
_0804F458: .4byte 0x00004096
_0804F45C: .4byte 0x00000DC8
_0804F460: .4byte gUnk_02002A40
_0804F464: .4byte gUnk_080F78A0

	thumb_func_start sub_0804F468
sub_0804F468: @ 0x0804F468
	push {lr}
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F48A
	movs r0, #0x11
	bl GetInventoryValue
	cmp r0, #0
	bne _0804F48A
	ldr r0, _0804F4D0 @ =gRoomVars
	ldr r1, _0804F4D4 @ =gUnk_080F7CD0
	str r1, [r0, #0x6c]
	adds r0, #0x88
	ldr r1, _0804F4D8 @ =sub_0804F5E8
	str r1, [r0]
_0804F48A:
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F4BA
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0804F4BA
	movs r0, #0x8c
	bl CheckLocalFlag
	adds r3, r0, #0
	cmp r3, #0
	bne _0804F4BA
	ldr r1, _0804F4D0 @ =gRoomVars
	ldr r0, _0804F4DC @ =gUnk_080F7C80
	str r0, [r1, #0x6c]
	adds r2, r1, #0
	adds r2, #0x88
	ldr r0, _0804F4E0 @ =sub_0804F4E4
	str r0, [r2]
	str r3, [r1, #0x74]
_0804F4BA:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804F4CA
	movs r0, #0x64
	bl ClearGlobalFlag
_0804F4CA:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804F4D0: .4byte gRoomVars
_0804F4D4: .4byte gUnk_080F7CD0
_0804F4D8: .4byte sub_0804F5E8
_0804F4DC: .4byte gUnk_080F7C80
_0804F4E0: .4byte sub_0804F4E4

	thumb_func_start sub_0804F4E4
sub_0804F4E4: @ 0x0804F4E4
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	bl sub_0804F578
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804F4F4
sub_0804F4F4: @ 0x0804F4F4
	push {r4, lr}
	bl sub_0804F4E4
	movs r0, #0x8b
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F540
	ldr r0, _0804F558 @ =gUnk_080F7D70
	bl LoadRoomEntityList
	movs r4, #0xba
	lsls r4, r4, #1
	ldr r1, _0804F55C @ =0x000007A2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F560 @ =0x000007A3
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F564 @ =0x000007A5
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F568 @ =0x000007A6
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F56C @ =0x000007A7
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
_0804F540:
	movs r0, #0x15
	bl CheckGlobalFlag
	cmp r0, #0
	bne _0804F554
	ldr r0, _0804F570 @ =gArea
	ldr r1, _0804F574 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x13
	str r1, [r0]
_0804F554:
	pop {r4, pc}
	.align 2, 0
_0804F558: .4byte gUnk_080F7D70
_0804F55C: .4byte 0x000007A2
_0804F560: .4byte 0x000007A3
_0804F564: .4byte 0x000007A5
_0804F568: .4byte 0x000007A6
_0804F56C: .4byte 0x000007A7
_0804F570: .4byte gArea
_0804F574: .4byte 0x00000864

	thumb_func_start sub_0804F578
sub_0804F578: @ 0x0804F578
	push {lr}
	movs r0, #0x8e
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804F590
	ldr r0, _0804F58C @ =gUnk_080F7DC0
	bl LoadRoomEntityList
	b _0804F5CC
	.align 2, 0
_0804F58C: .4byte gUnk_080F7DC0
_0804F590:
	ldr r1, _0804F5D0 @ =0x0000094A
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5D4 @ =0x0000094B
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5D8 @ =0x0000094C
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5DC @ =0x0000098A
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5E0 @ =0x0000098B
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F5E4 @ =0x0000098C
	movs r0, #0x37
	movs r2, #1
	bl SetTileType
_0804F5CC:
	pop {pc}
	.align 2, 0
_0804F5D0: .4byte 0x0000094A
_0804F5D4: .4byte 0x0000094B
_0804F5D8: .4byte 0x0000094C
_0804F5DC: .4byte 0x0000098A
_0804F5E0: .4byte 0x0000098B
_0804F5E4: .4byte 0x0000098C

	thumb_func_start sub_0804F5E8
sub_0804F5E8: @ 0x0804F5E8
	push {r4, lr}
	bl sub_0804F4E4
	ldr r0, _0804F654 @ =0x000001D3
	ldr r1, _0804F658 @ =0x00000BDE
	movs r2, #1
	bl SetTileType
	movs r4, #0xeb
	lsls r4, r4, #1
	ldr r1, _0804F65C @ =0x00000BE2
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r0, #0xea
	lsls r0, r0, #1
	ldr r1, _0804F660 @ =0x00000C1F
	movs r2, #1
	bl SetTileType
	ldr r0, _0804F664 @ =0x000001D5
	movs r1, #0xc2
	lsls r1, r1, #4
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F668 @ =0x00000C5E
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r4, _0804F66C @ =0x00004072
	ldr r1, _0804F670 @ =0x00000B9B
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F674 @ =0x00000BDB
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F678 @ =0x00000AA4
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F67C @ =0x00000AE4
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_0804F654: .4byte 0x000001D3
_0804F658: .4byte 0x00000BDE
_0804F65C: .4byte 0x00000BE2
_0804F660: .4byte 0x00000C1F
_0804F664: .4byte 0x000001D5
_0804F668: .4byte 0x00000C5E
_0804F66C: .4byte 0x00004072
_0804F670: .4byte 0x00000B9B
_0804F674: .4byte 0x00000BDB
_0804F678: .4byte 0x00000AA4
_0804F67C: .4byte 0x00000AE4

	thumb_func_start sub_0804F680
sub_0804F680: @ 0x0804F680
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	movs r1, #2
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0804F6A2
	ldr r0, _0804F6A4 @ =gRoomControls
	ldrh r1, [r0, #6]
	adds r1, r1, r4
	strh r1, [r2, #0x2e]
	ldrh r0, [r0, #8]
	adds r0, r0, r5
	strh r0, [r2, #0x32]
_0804F6A2:
	pop {r4, r5, pc}
	.align 2, 0
_0804F6A4: .4byte gRoomControls

	thumb_func_start sub_0804F6A8
sub_0804F6A8: @ 0x0804F6A8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xec
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x86
	lsls r1, r1, #2
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, pc}

	thumb_func_start sub_0804F6C8
sub_0804F6C8: @ 0x0804F6C8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0xf4
	lsls r1, r1, #1
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x82
	lsls r1, r1, #2
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, pc}

	thumb_func_start sub_0804F6E8
sub_0804F6E8: @ 0x0804F6E8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0xfc
	lsls r5, r5, #1
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, #0
	bl sub_0804F680
	movs r1, #0x96
	lsls r1, r1, #2
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0804F680
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, r5, pc}

	thumb_func_start sub_0804F724
sub_0804F724: @ 0x0804F724
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x82
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x96
	lsls r1, r1, #2
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0804F680
	movs r1, #0xf4
	lsls r1, r1, #1
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_0804F680
	pop {r4, r5, pc}

	thumb_func_start sub_0804F760
sub_0804F760: @ 0x0804F760
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x86
	lsls r1, r1, #2
	movs r2, #0x84
	lsls r2, r2, #1
	bl sub_0804F680
	movs r1, #0x96
	lsls r1, r1, #2
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r1, #0xec
	lsls r1, r1, #1
	movs r2, #0xc4
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r4, #0
	bl sub_0804F680
	pop {r4, pc}

	thumb_func_start sub_0804F79C
sub_0804F79C: @ 0x0804F79C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0804F7D0
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2, #0x19]
	ldr r1, _0804F804 @ =gRoomControls
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_0804F7D0:
	adds r0, r4, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFx
	adds r2, r0, #0
	cmp r2, #0
	beq _0804F802
	ldrb r1, [r2, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2, #0x19]
	ldr r1, _0804F804 @ =gRoomControls
	movs r3, #0x8e
	lsls r3, r3, #2
	adds r0, r3, #0
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
_0804F802:
	pop {r4, pc}
	.align 2, 0
_0804F804: .4byte gRoomControls

	thumb_func_start sub_0804F808
sub_0804F808: @ 0x0804F808
	push {r4, lr}
	ldr r4, _0804F824 @ =0x000001D3
	ldr r1, _0804F828 @ =0x0000041D
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F82C @ =0x00000621
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_0804F824: .4byte 0x000001D3
_0804F828: .4byte 0x0000041D
_0804F82C: .4byte 0x00000621

	thumb_func_start sub_0804F830
sub_0804F830: @ 0x0804F830
	push {r4, lr}
	movs r4, #0xea
	lsls r4, r4, #1
	ldr r1, _0804F850 @ =0x0000041E
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, pc}
	.align 2, 0
_0804F850: .4byte 0x0000041E

	thumb_func_start sub_0804F854
sub_0804F854: @ 0x0804F854
	push {r4, r5, lr}
	ldr r5, _0804F888 @ =0x000001D5
	ldr r1, _0804F88C @ =0x0000041F
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	movs r4, #0xea
	lsls r4, r4, #1
	ldr r1, _0804F890 @ =0x000004E5
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F894 @ =0x0000061F
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F898 @ =0x00000559
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, r5, pc}
	.align 2, 0
_0804F888: .4byte 0x000001D5
_0804F88C: .4byte 0x0000041F
_0804F890: .4byte 0x000004E5
_0804F894: .4byte 0x0000061F
_0804F898: .4byte 0x00000559

	thumb_func_start sub_0804F89C
sub_0804F89C: @ 0x0804F89C
	push {r4, r5, lr}
	movs r5, #0xeb
	lsls r5, r5, #1
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r4, _0804F8D0 @ =0x000001D5
	ldr r1, _0804F8D4 @ =0x00000525
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F8D8 @ =0x0000061E
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F8DC @ =0x00000519
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, r5, pc}
	.align 2, 0
_0804F8D0: .4byte 0x000001D5
_0804F8D4: .4byte 0x00000525
_0804F8D8: .4byte 0x0000061E
_0804F8DC: .4byte 0x00000519

	thumb_func_start sub_0804F8E0
sub_0804F8E0: @ 0x0804F8E0
	push {r4, r5, lr}
	ldr r5, _0804F914 @ =0x000001D3
	ldr r1, _0804F918 @ =0x00000421
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	movs r4, #0xeb
	lsls r4, r4, #1
	ldr r1, _0804F91C @ =0x00000565
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F920 @ =0x0000061D
	adds r0, r5, #0
	movs r2, #1
	bl SetTileType
	ldr r1, _0804F924 @ =0x000004D9
	adds r0, r4, #0
	movs r2, #1
	bl SetTileType
	pop {r4, r5, pc}
	.align 2, 0
_0804F914: .4byte 0x000001D3
_0804F918: .4byte 0x00000421
_0804F91C: .4byte 0x00000565
_0804F920: .4byte 0x0000061D
_0804F924: .4byte 0x000004D9

	thumb_func_start sub_0804F928
sub_0804F928: @ 0x0804F928
	push {lr}
	ldr r0, _0804F93C @ =0x0000041D
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F940 @ =0x00000621
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F93C: .4byte 0x0000041D
_0804F940: .4byte 0x00000621

	thumb_func_start sub_0804F944
sub_0804F944: @ 0x0804F944
	push {lr}
	ldr r0, _0804F95C @ =0x0000041E
	movs r1, #1
	bl sub_0807BA8C
	movs r0, #0xc4
	lsls r0, r0, #3
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F95C: .4byte 0x0000041E

	thumb_func_start sub_0804F960
sub_0804F960: @ 0x0804F960
	push {lr}
	ldr r0, _0804F984 @ =0x0000041F
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F988 @ =0x000004E5
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F98C @ =0x0000061F
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F990 @ =0x00000559
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F984: .4byte 0x0000041F
_0804F988: .4byte 0x000004E5
_0804F98C: .4byte 0x0000061F
_0804F990: .4byte 0x00000559

	thumb_func_start sub_0804F994
sub_0804F994: @ 0x0804F994
	push {lr}
	movs r0, #0x84
	lsls r0, r0, #3
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9BC @ =0x00000525
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9C0 @ =0x0000061E
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9C4 @ =0x00000519
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F9BC: .4byte 0x00000525
_0804F9C0: .4byte 0x0000061E
_0804F9C4: .4byte 0x00000519

	thumb_func_start sub_0804F9C8
sub_0804F9C8: @ 0x0804F9C8
	push {lr}
	ldr r0, _0804F9EC @ =0x00000421
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9F0 @ =0x00000565
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9F4 @ =0x0000061D
	movs r1, #1
	bl sub_0807BA8C
	ldr r0, _0804F9F8 @ =0x000004D9
	movs r1, #1
	bl sub_0807BA8C
	pop {pc}
	.align 2, 0
_0804F9EC: .4byte 0x00000421
_0804F9F0: .4byte 0x00000565
_0804F9F4: .4byte 0x0000061D
_0804F9F8: .4byte 0x000004D9

	thumb_func_start sub_0804F9FC
sub_0804F9FC: @ 0x0804F9FC
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA00
sub_0804FA00: @ 0x0804FA00
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	ldr r0, _0804FA24 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	cmp r0, #3
	bls _0804FA20
	movs r0, #0x5c
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FA20
	ldr r0, _0804FA28 @ =gUnk_080F806C
	bl LoadRoomEntityList
_0804FA20:
	pop {pc}
	.align 2, 0
_0804FA24: .4byte gUnk_02002A40
_0804FA28: .4byte gUnk_080F806C

	thumb_func_start sub_0804FA2C
sub_0804FA2C: @ 0x0804FA2C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA30
sub_0804FA30: @ 0x0804FA30
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FA5C
	movs r0, #3
	bl GetInventoryValue
	cmp r0, #0
	beq _0804FA5C
	movs r0, #0x9c
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FA5C
	ldr r0, _0804FA60 @ =gUnk_080F82E0
	bl LoadRoomEntityList
_0804FA5C:
	pop {pc}
	.align 2, 0
_0804FA60: .4byte gUnk_080F82E0

	thumb_func_start sub_0804FA64
sub_0804FA64: @ 0x0804FA64
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA68
sub_0804FA68: @ 0x0804FA68
	push {lr}
	movs r0, #0
	bl sub_0805ADD8
	movs r0, #0x21
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804FA8E
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0x42
	bl CheckLocalFlagByOffset
	cmp r0, #0
	bne _0804FA8E
	ldr r0, _0804FA90 @ =gUnk_080F8430
	bl LoadRoomEntityList
_0804FA8E:
	pop {pc}
	.align 2, 0
_0804FA90: .4byte gUnk_080F8430

	thumb_func_start sub_0804FA94
sub_0804FA94: @ 0x0804FA94
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FA98
sub_0804FA98: @ 0x0804FA98
	push {lr}
	movs r0, #0x57
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FAB0
	ldr r0, _0804FAAC @ =gUnk_080F85D8
	bl LoadRoomEntityList
	b _0804FAB6
	.align 2, 0
_0804FAAC: .4byte gUnk_080F85D8
_0804FAB0:
	ldr r0, _0804FAC8 @ =gUnk_080F85F8
	bl LoadRoomEntityList
_0804FAB6:
	movs r0, #0xc
	bl GetInventoryValue
	cmp r0, #0
	bne _0804FAC6
	movs r0, #8
	bl ClearLocalFlag
_0804FAC6:
	pop {pc}
	.align 2, 0
_0804FAC8: .4byte gUnk_080F85F8

	thumb_func_start sub_0804FACC
sub_0804FACC: @ 0x0804FACC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_412
nullsub_412: @ 0x0804FAD0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAD4
sub_0804FAD4: @ 0x0804FAD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_413
nullsub_413: @ 0x0804FAD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FADC
sub_0804FADC: @ 0x0804FADC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_414
nullsub_414: @ 0x0804FAE0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAE4
sub_0804FAE4: @ 0x0804FAE4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_415
nullsub_415: @ 0x0804FAE8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAEC
sub_0804FAEC: @ 0x0804FAEC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_416
nullsub_416: @ 0x0804FAF0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAF4
sub_0804FAF4: @ 0x0804FAF4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_417
nullsub_417: @ 0x0804FAF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FAFC
sub_0804FAFC: @ 0x0804FAFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_418
nullsub_418: @ 0x0804FB00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB04
sub_0804FB04: @ 0x0804FB04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_419
nullsub_419: @ 0x0804FB08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB0C
sub_0804FB0C: @ 0x0804FB0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_420
nullsub_420: @ 0x0804FB10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB14
sub_0804FB14: @ 0x0804FB14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_421
nullsub_421: @ 0x0804FB18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB1C
sub_0804FB1C: @ 0x0804FB1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_422
nullsub_422: @ 0x0804FB20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB24
sub_0804FB24: @ 0x0804FB24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_423
nullsub_423: @ 0x0804FB28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB2C
sub_0804FB2C: @ 0x0804FB2C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FB30
sub_0804FB30: @ 0x0804FB30
	push {lr}
	movs r0, #0x11
	bl CheckLocalFlag
	cmp r0, #0
	beq _0804FB64
	movs r0, #0
	bl SetRoomFlag
	movs r0, #1
	bl SetRoomFlag
	movs r0, #0x80
	lsls r0, r0, #1
	bl sub_0805308C
	movs r0, #0x12
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FB64
	movs r0, #0x73
	movs r1, #0xcb
	movs r2, #1
	bl SetTileType
_0804FB64:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804FB68
sub_0804FB68: @ 0x0804FB68
	movs r0, #1
	bx lr

	thumb_func_start nullsub_089
nullsub_089: @ 0x0804FB6C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB70
sub_0804FB70: @ 0x0804FB70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_90
nullsub_90: @ 0x0804FB74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB78
sub_0804FB78: @ 0x0804FB78
	movs r0, #1
	bx lr

	thumb_func_start nullsub_91
nullsub_91: @ 0x0804FB7C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB80
sub_0804FB80: @ 0x0804FB80
	movs r0, #1
	bx lr

	thumb_func_start nullsub_92
nullsub_92: @ 0x0804FB84
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB88
sub_0804FB88: @ 0x0804FB88
	movs r0, #1
	bx lr

	thumb_func_start nullsub_93
nullsub_93: @ 0x0804FB8C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB90
sub_0804FB90: @ 0x0804FB90
	movs r0, #1
	bx lr

	thumb_func_start nullsub_94
nullsub_94: @ 0x0804FB94
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FB98
sub_0804FB98: @ 0x0804FB98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_95
nullsub_95: @ 0x0804FB9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBA0
sub_0804FBA0: @ 0x0804FBA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_96
nullsub_96: @ 0x0804FBA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBA8
sub_0804FBA8: @ 0x0804FBA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_97
nullsub_97: @ 0x0804FBAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBB0
sub_0804FBB0: @ 0x0804FBB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_98
nullsub_98: @ 0x0804FBB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FBB8
sub_0804FBB8: @ 0x0804FBB8
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FBBC
sub_0804FBBC: @ 0x0804FBBC
	push {lr}
	ldr r0, _0804FBD4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0804FBD2
	ldr r0, _0804FBD8 @ =gUnk_080F9304
	bl LoadRoomEntityList
_0804FBD2:
	pop {pc}
	.align 2, 0
_0804FBD4: .4byte gUnk_02002A40
_0804FBD8: .4byte gUnk_080F9304

	thumb_func_start sub_0804FBDC
sub_0804FBDC: @ 0x0804FBDC
	push {lr}
	ldr r0, _0804FBF4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	cmp r0, #0
	bne _0804FBF2
	ldr r0, _0804FBF8 @ =gUnk_080F9304
	bl LoadRoomEntityList
_0804FBF2:
	pop {pc}
	.align 2, 0
_0804FBF4: .4byte gUnk_02002A40
_0804FBF8: .4byte gUnk_080F9304

	thumb_func_start sub_0804FBFC
sub_0804FBFC: @ 0x0804FBFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_424
nullsub_424: @ 0x0804FC00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC04
sub_0804FC04: @ 0x0804FC04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_425
nullsub_425: @ 0x0804FC08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC0C
sub_0804FC0C: @ 0x0804FC0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_426
nullsub_426: @ 0x0804FC10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC14
sub_0804FC14: @ 0x0804FC14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_427
nullsub_427: @ 0x0804FC18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC1C
sub_0804FC1C: @ 0x0804FC1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_428
nullsub_428: @ 0x0804FC20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC24
sub_0804FC24: @ 0x0804FC24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_429
nullsub_429: @ 0x0804FC28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC2C
sub_0804FC2C: @ 0x0804FC2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_430
nullsub_430: @ 0x0804FC30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC34
sub_0804FC34: @ 0x0804FC34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_431
nullsub_431: @ 0x0804FC38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC3C
sub_0804FC3C: @ 0x0804FC3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_432
nullsub_432: @ 0x0804FC40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC44
sub_0804FC44: @ 0x0804FC44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_433
nullsub_433: @ 0x0804FC48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC4C
sub_0804FC4C: @ 0x0804FC4C
	push {lr}
	movs r0, #0xe
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804FC5E
	ldr r1, _0804FC64 @ =gRoomVars
	ldr r0, _0804FC68 @ =gUnk_080F9BF8
	str r0, [r1, #0x6c]
_0804FC5E:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804FC64: .4byte gRoomVars
_0804FC68: .4byte gUnk_080F9BF8

	thumb_func_start sub_0804FC6C
sub_0804FC6C: @ 0x0804FC6C
	push {lr}
	movs r0, #2
	bl sub_0805B4D0
	movs r0, #0
	bl sub_0806D0B0
	pop {pc}

	thumb_func_start sub_0804FC7C
sub_0804FC7C: @ 0x0804FC7C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_99
nullsub_99: @ 0x0804FC80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC84
sub_0804FC84: @ 0x0804FC84
	movs r0, #1
	bx lr

	thumb_func_start nullsub_100
nullsub_100: @ 0x0804FC88
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC8C
sub_0804FC8C: @ 0x0804FC8C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_101
nullsub_101: @ 0x0804FC90
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC94
sub_0804FC94: @ 0x0804FC94
	movs r0, #1
	bx lr

	thumb_func_start nullsub_102
nullsub_102: @ 0x0804FC98
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FC9C
sub_0804FC9C: @ 0x0804FC9C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_103
nullsub_103: @ 0x0804FCA0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCA4
sub_0804FCA4: @ 0x0804FCA4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FCA8
sub_0804FCA8: @ 0x0804FCA8
	push {lr}
	movs r0, #0x14
	bl CheckKinstoneFused
	cmp r0, #0
	beq _0804FCBA
	ldr r0, _0804FCCC @ =gUnk_080F9FA8
	bl LoadRoomEntityList
_0804FCBA:
	movs r0, #0x38
	bl GetInventoryValue
	cmp r0, #0
	bne _0804FCCA
	ldr r0, _0804FCD0 @ =gUnk_080F9F88
	bl LoadRoomEntityList
_0804FCCA:
	pop {pc}
	.align 2, 0
_0804FCCC: .4byte gUnk_080F9FA8
_0804FCD0: .4byte gUnk_080F9F88

	thumb_func_start sub_0804FCD4
sub_0804FCD4: @ 0x0804FCD4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_434
nullsub_434: @ 0x0804FCD8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCDC
sub_0804FCDC: @ 0x0804FCDC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_435
nullsub_435: @ 0x0804FCE0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCE4
sub_0804FCE4: @ 0x0804FCE4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_436
nullsub_436: @ 0x0804FCE8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCEC
sub_0804FCEC: @ 0x0804FCEC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_437
nullsub_437: @ 0x0804FCF0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCF4
sub_0804FCF4: @ 0x0804FCF4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_438
nullsub_438: @ 0x0804FCF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FCFC
sub_0804FCFC: @ 0x0804FCFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_439
nullsub_439: @ 0x0804FD00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD04
sub_0804FD04: @ 0x0804FD04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_440
nullsub_440: @ 0x0804FD08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD0C
sub_0804FD0C: @ 0x0804FD0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_441
nullsub_441: @ 0x0804FD10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD14
sub_0804FD14: @ 0x0804FD14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_442
nullsub_442: @ 0x0804FD18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD1C
sub_0804FD1C: @ 0x0804FD1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_443
nullsub_443: @ 0x0804FD20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD24
sub_0804FD24: @ 0x0804FD24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_444
nullsub_444: @ 0x0804FD28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD2C
sub_0804FD2C: @ 0x0804FD2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_445
nullsub_445: @ 0x0804FD30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD34
sub_0804FD34: @ 0x0804FD34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_446
nullsub_446: @ 0x0804FD38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD3C
sub_0804FD3C: @ 0x0804FD3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_447
nullsub_447: @ 0x0804FD40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD44
sub_0804FD44: @ 0x0804FD44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_448
nullsub_448: @ 0x0804FD48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD4C
sub_0804FD4C: @ 0x0804FD4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_449
nullsub_449: @ 0x0804FD50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD54
sub_0804FD54: @ 0x0804FD54
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FD58
sub_0804FD58: @ 0x0804FD58
	push {lr}
	movs r0, #0x21
	bl CheckKinstoneFused
	cmp r0, #0
	bne _0804FD6A
	ldr r0, _0804FD6C @ =gUnk_080FA5D0
	bl LoadRoomEntityList
_0804FD6A:
	pop {pc}
	.align 2, 0
_0804FD6C: .4byte gUnk_080FA5D0

	thumb_func_start sub_0804FD70
sub_0804FD70: @ 0x0804FD70
	movs r0, #1
	bx lr

	thumb_func_start nullsub_450
nullsub_450: @ 0x0804FD74
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD78
sub_0804FD78: @ 0x0804FD78
	movs r0, #1
	bx lr

	thumb_func_start nullsub_451
nullsub_451: @ 0x0804FD7C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD80
sub_0804FD80: @ 0x0804FD80
	movs r0, #1
	bx lr

	thumb_func_start nullsub_452
nullsub_452: @ 0x0804FD84
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD88
sub_0804FD88: @ 0x0804FD88
	movs r0, #1
	bx lr

	thumb_func_start nullsub_453
nullsub_453: @ 0x0804FD8C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD90
sub_0804FD90: @ 0x0804FD90
	movs r0, #1
	bx lr

	thumb_func_start nullsub_454
nullsub_454: @ 0x0804FD94
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FD98
sub_0804FD98: @ 0x0804FD98
	movs r0, #1
	bx lr

	thumb_func_start nullsub_455
nullsub_455: @ 0x0804FD9C
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDA0
sub_0804FDA0: @ 0x0804FDA0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_456
nullsub_456: @ 0x0804FDA4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDA8
sub_0804FDA8: @ 0x0804FDA8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_457
nullsub_457: @ 0x0804FDAC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDB0
sub_0804FDB0: @ 0x0804FDB0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_458
nullsub_458: @ 0x0804FDB4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDB8
sub_0804FDB8: @ 0x0804FDB8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_459
nullsub_459: @ 0x0804FDBC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDC0
sub_0804FDC0: @ 0x0804FDC0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_460
nullsub_460: @ 0x0804FDC4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDC8
sub_0804FDC8: @ 0x0804FDC8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_461
nullsub_461: @ 0x0804FDCC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDD0
sub_0804FDD0: @ 0x0804FDD0
	movs r0, #1
	bx lr

	thumb_func_start nullsub_462
nullsub_462: @ 0x0804FDD4
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDD8
sub_0804FDD8: @ 0x0804FDD8
	movs r0, #1
	bx lr

	thumb_func_start nullsub_463
nullsub_463: @ 0x0804FDDC
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FDE0
sub_0804FDE0: @ 0x0804FDE0
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FDF6
	ldr r0, _0804FDFC @ =gRoomVars
	ldr r1, _0804FE00 @ =gUnk_080FAD48
	str r1, [r0, #0x6c]
	movs r1, #0
	str r1, [r0, #0x74]
_0804FDF6:
	movs r0, #1
	pop {pc}
	.align 2, 0
_0804FDFC: .4byte gRoomVars
_0804FE00: .4byte gUnk_080FAD48

	thumb_func_start sub_0804FE04
sub_0804FE04: @ 0x0804FE04
	push {lr}
	movs r0, #0x51
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FE28
	ldr r0, _0804FE20 @ =gArea
	ldr r2, _0804FE24 @ =0x00000864
	adds r1, r0, r2
	subs r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	b _0804FE2E
	.align 2, 0
_0804FE20: .4byte gArea
_0804FE24: .4byte 0x00000864
_0804FE28:
	ldr r0, _0804FE3C @ =gUnk_080FACB8
	bl LoadRoomEntityList
_0804FE2E:
	movs r0, #0
	bl sub_0805B4D0
	bl sub_08059994
	pop {pc}
	.align 2, 0
_0804FE3C: .4byte gUnk_080FACB8

	thumb_func_start sub_0804FE40
sub_0804FE40: @ 0x0804FE40
	push {lr}
	movs r0, #0
	bl sub_0805B4D0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0804FE4C
sub_0804FE4C: @ 0x0804FE4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_104
nullsub_104: @ 0x0804FE50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FE54
sub_0804FE54: @ 0x0804FE54
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FE58
sub_0804FE58: @ 0x0804FE58
	push {lr}
	movs r0, #1
	bl sub_0805B4D0
	movs r0, #3
	bl CheckGlobalFlag
	cmp r0, #0
	beq _0804FE7A
	movs r0, #2
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FE7A
	ldr r0, _0804FEA0 @ =gUnk_080FAFE4
	bl LoadRoomEntityList
_0804FE7A:
	ldr r0, _0804FEA4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804FE8E
	ldr r0, _0804FEA8 @ =gUnk_080FB004
	bl LoadRoomEntityList
_0804FE8E:
	movs r0, #2
	bl GetInventoryValue
	cmp r0, #0
	beq _0804FE9E
	movs r0, #0x56
	bl SetGlobalFlag
_0804FE9E:
	pop {pc}
	.align 2, 0
_0804FEA0: .4byte gUnk_080FAFE4
_0804FEA4: .4byte gUnk_02002A40
_0804FEA8: .4byte gUnk_080FB004

	thumb_func_start sub_0804FEAC
sub_0804FEAC: @ 0x0804FEAC
	push {lr}
	ldr r0, _0804FEC4 @ =gUnk_02002A40
	ldr r0, [r0, #0x40]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0804FEC2
	ldr r0, _0804FEC8 @ =gUnk_080FB004
	bl LoadRoomEntityList
_0804FEC2:
	pop {pc}
	.align 2, 0
_0804FEC4: .4byte gUnk_02002A40
_0804FEC8: .4byte gUnk_080FB004

	thumb_func_start sub_0804FECC
sub_0804FECC: @ 0x0804FECC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_464
nullsub_464: @ 0x0804FED0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FED4
sub_0804FED4: @ 0x0804FED4
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FED8
sub_0804FED8: @ 0x0804FED8
	push {lr}
	movs r0, #0xbb
	lsls r0, r0, #1
	ldr r1, _0804FEE8 @ =0x0000066F
	movs r2, #1
	bl SetTileType
	pop {pc}
	.align 2, 0
_0804FEE8: .4byte 0x0000066F

	thumb_func_start sub_0804FEEC
sub_0804FEEC: @ 0x0804FEEC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_465
nullsub_465: @ 0x0804FEF0
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FEF4
sub_0804FEF4: @ 0x0804FEF4
	movs r0, #1
	bx lr

	thumb_func_start nullsub_466
nullsub_466: @ 0x0804FEF8
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FEFC
sub_0804FEFC: @ 0x0804FEFC
	movs r0, #1
	bx lr

	thumb_func_start nullsub_467
nullsub_467: @ 0x0804FF00
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF04
sub_0804FF04: @ 0x0804FF04
	movs r0, #1
	bx lr

	thumb_func_start nullsub_468
nullsub_468: @ 0x0804FF08
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF0C
sub_0804FF0C: @ 0x0804FF0C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_469
nullsub_469: @ 0x0804FF10
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF14
sub_0804FF14: @ 0x0804FF14
	movs r0, #1
	bx lr

	thumb_func_start nullsub_470
nullsub_470: @ 0x0804FF18
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF1C
sub_0804FF1C: @ 0x0804FF1C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_471
nullsub_471: @ 0x0804FF20
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF24
sub_0804FF24: @ 0x0804FF24
	movs r0, #1
	bx lr

	thumb_func_start nullsub_472
nullsub_472: @ 0x0804FF28
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF2C
sub_0804FF2C: @ 0x0804FF2C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_473
nullsub_473: @ 0x0804FF30
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF34
sub_0804FF34: @ 0x0804FF34
	movs r0, #1
	bx lr

	thumb_func_start nullsub_474
nullsub_474: @ 0x0804FF38
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF3C
sub_0804FF3C: @ 0x0804FF3C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_475
nullsub_475: @ 0x0804FF40
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF44
sub_0804FF44: @ 0x0804FF44
	movs r0, #1
	bx lr

	thumb_func_start nullsub_476
nullsub_476: @ 0x0804FF48
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF4C
sub_0804FF4C: @ 0x0804FF4C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_477
nullsub_477: @ 0x0804FF50
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF54
sub_0804FF54: @ 0x0804FF54
	movs r0, #1
	bx lr

	thumb_func_start nullsub_478
nullsub_478: @ 0x0804FF58
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF5C
sub_0804FF5C: @ 0x0804FF5C
	movs r0, #1
	bx lr

	thumb_func_start sub_0804FF60
sub_0804FF60: @ 0x0804FF60
	push {lr}
	movs r0, #0x70
	bl CheckLocalFlag
	cmp r0, #0
	bne _0804FF72
	movs r0, #0x70
	bl SetLocalFlag
_0804FF72:
	pop {pc}

	thumb_func_start sub_0804FF74
sub_0804FF74: @ 0x0804FF74
	movs r0, #1
	bx lr

	thumb_func_start nullsub_105
nullsub_105: @ 0x0804FF78
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF7C
sub_0804FF7C: @ 0x0804FF7C
	movs r0, #1
	bx lr

	thumb_func_start nullsub_106
nullsub_106: @ 0x0804FF80
	bx lr
	.align 2, 0

	thumb_func_start sub_0804FF84
sub_0804FF84: @ 0x0804FF84
	movs r1, #0x80
	lsls r1, r1, #0x12
	strb r0, [r1, #6]
	ldr r1, _0804FF94 @ =gUnk_0200B644
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0804FF94: .4byte gUnk_0200B644

	thumb_func_start sub_0804FF98
sub_0804FF98: @ 0x0804FF98
	push {r4, r5, r6, r7, lr}
	ldr r6, _0804FFD4 @ =gUnk_020354C0
	ldr r1, _0804FFD8 @ =gUnk_0200B644
	ldr r4, [r1]
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	cmp r4, #0
	beq _0804FFD0
	ldr r7, _0804FFDC @ =gUnk_03005E98
_0804FFAC:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0804FFC6
	ldr r0, _0804FFE0 @ =gUnk_020176A0
	adds r0, r5, r0
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r5, r2
	ldrh r2, [r6, #2]
	ldrb r3, [r6, #1]
	bl _call_via_r7
_0804FFC6:
	adds r5, #0x20
	adds r6, #4
	lsrs r4, r4, #1
	cmp r4, #0
	bne _0804FFAC
_0804FFD0:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0804FFD4: .4byte gUnk_020354C0
_0804FFD8: .4byte gUnk_0200B644
_0804FFDC: .4byte gUnk_03005E98
_0804FFE0: .4byte gUnk_020176A0

	thumb_func_start sub_0804FFE4
sub_0804FFE4: @ 0x0804FFE4
	push {r4, lr}
	ldr r4, _08050000 @ =gUnk_03000FD0
	adds r0, r4, #0
	movs r1, #0x1c
	bl _DmaZero
	ldr r0, _08050004 @ =gUnk_020354C0
	movs r1, #0x80
	bl _DmaZero
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_08050000: .4byte gUnk_03000FD0
_08050004: .4byte gUnk_020354C0
