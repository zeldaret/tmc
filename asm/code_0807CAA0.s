	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_0807CAA0
sub_0807CAA0: @ 0x0807CAA0
	push {r4, lr}
	adds r3, r0, #0
	lsrs r4, r3, #2
	ldr r0, _0807CAC4 @ =gUnk_02002B32
	adds r4, r4, r0
	movs r0, #3
	ands r3, r0
	lsls r3, r3, #1
	lsls r1, r3
	ldrb r2, [r4]
	lsls r0, r3
	ands r0, r2
	eors r2, r0
	orrs r2, r1
	strb r2, [r4]
	lsrs r0, r3
	pop {r4, pc}
	.align 2, 0
_0807CAC4: .4byte gUnk_02002B32

	thumb_func_start sub_0807CAC8
sub_0807CAC8: @ 0x0807CAC8
	ldr r2, _0807CAE0 @ =gSave
	ldr r1, _0807CAE4 @ =gArea
	ldr r3, _0807CAE8 @ =0x0000047C
	adds r2, r2, r3
	ldrb r1, [r1, #3]
	adds r2, r2, r1
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_0807CAE0: .4byte gSave
_0807CAE4: .4byte gArea
_0807CAE8: .4byte 0x0000047C

	thumb_func_start sub_0807CAEC
sub_0807CAEC: @ 0x0807CAEC
	adds r2, r0, #0
	ldr r0, _0807CB04 @ =gSave
	ldr r1, _0807CB08 @ =gArea
	ldr r3, _0807CB0C @ =0x0000047C
	adds r0, r0, r3
	ldrb r1, [r1, #3]
	adds r0, r0, r1
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_0807CB04: .4byte gSave
_0807CB08: .4byte gArea
_0807CB0C: .4byte 0x0000047C

	thumb_func_start CheckLocalFlagByBank
CheckLocalFlagByBank: @ 0x0807CB10
	push {lr}
	adds r2, r0, #0
	ldr r0, _0807CB20 @ =gGlobalFlags
	adds r2, r2, r1
	adds r1, r2, #0
	bl ReadBit
	pop {pc}
	.align 2, 0
_0807CB20: .4byte gGlobalFlags

	thumb_func_start sub_0807CB24
sub_0807CB24: @ 0x0807CB24
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0x11
	bhi _0807CB84
	lsls r0, r2, #2
	ldr r1, _0807CB38 @ =_0807CB3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0807CB38: .4byte _0807CB3C
_0807CB3C: @ jump table
	.4byte _0807CB84 @ case 0
	.4byte _0807CB88 @ case 1
	.4byte _0807CB88 @ case 2
	.4byte _0807CB88 @ case 3
	.4byte _0807CB88 @ case 4
	.4byte _0807CB88 @ case 5
	.4byte _0807CB88 @ case 6
	.4byte _0807CB88 @ case 7
	.4byte _0807CB88 @ case 8
	.4byte _0807CB88 @ case 9
	.4byte _0807CB88 @ case 10
	.4byte _0807CB88 @ case 11
	.4byte _0807CB88 @ case 12
	.4byte _0807CB88 @ case 13
	.4byte _0807CB84 @ case 14
	.4byte _0807CBA0 @ case 15
	.4byte _0807CBAE @ case 16
	.4byte _0807CBBC @ case 17
_0807CB84:
	movs r1, #0
	b _0807CBCA
_0807CB88:
	ldr r0, _0807CB9C @ =gLocalFlagBanks
	lsls r1, r2, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r3, #0
	bl CheckLocalFlagByBank
_0807CB96:
	adds r1, r0, #0
	b _0807CBCA
	.align 2, 0
_0807CB9C: .4byte gLocalFlagBanks
_0807CBA0:
	adds r0, r3, #0
	bl GetInventoryValue
	cmp r0, #0
	beq _0807CB96
	movs r0, #1
	b _0807CB96
_0807CBAE:
	adds r0, r3, #0
	bl GetInventoryValue
	movs r1, #0
	cmp r0, #1
	bne _0807CBCA
	b _0807CBC8
_0807CBBC:
	adds r0, r3, #0
	bl GetInventoryValue
	movs r1, #0
	cmp r0, #2
	bne _0807CBCA
_0807CBC8:
	movs r1, #1
_0807CBCA:
	adds r0, r1, #0
	pop {pc}
	.align 2, 0
