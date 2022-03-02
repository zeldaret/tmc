	.syntax unified
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
	.syntax divided
