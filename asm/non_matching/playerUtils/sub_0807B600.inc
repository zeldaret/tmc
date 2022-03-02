	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	subs r6, #0x40
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #1
	bl sub_080002C8
	cmp r0, #0x56
	beq _0807B61A
	movs r0, #0
	b _0807B76E
_0807B61A:
	adds r0, r5, #0
	movs r1, #1
	bl GetTileType
	adds r1, r0, #0
	ldr r0, _0807B634 @ =0x0000026A
	cmp r1, r0
	bne _0807B638
	adds r0, r5, #0
	bl sub_0807B820
	b _0807B76C
	.align 2, 0
_0807B634: .4byte 0x0000026A
_0807B638:
	ldr r0, _0807B648 @ =0x00000267
	cmp r1, r0
	bne _0807B64C
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B820
	b _0807B76C
	.align 2, 0
_0807B648: .4byte 0x00000267
_0807B64C:
	ldr r0, _0807B65C @ =0x0000027A
	cmp r1, r0
	bne _0807B660
	adds r0, r5, #0
	bl sub_0807B8A8
	b _0807B76C
	.align 2, 0
_0807B65C: .4byte 0x0000027A
_0807B660:
	ldr r0, _0807B670 @ =0x00000277
	cmp r1, r0
	bne _0807B674
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B8A8
	b _0807B76C
	.align 2, 0
_0807B670: .4byte 0x00000277
_0807B674:
	ldr r0, _0807B684 @ =0x0000028A
	cmp r1, r0
	bne _0807B688
	adds r0, r5, #0
	bl sub_0807B930
	b _0807B76C
	.align 2, 0
_0807B684: .4byte 0x0000028A
_0807B688:
	ldr r0, _0807B698 @ =0x00000287
	cmp r1, r0
	bne _0807B69C
	adds r0, r5, #0
	adds r0, #0x40
	bl sub_0807B930
	b _0807B76C
	.align 2, 0
_0807B698: .4byte 0x00000287
_0807B69C:
	adds r0, r5, #0
	movs r1, #2
	bl GetTileType
	cmp r0, #0
	beq _0807B6EC
	ldr r0, _0807B6E8 @ =0x000002F2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	adds r0, r6, #0
	movs r1, #1
	bl sub_080002E0
	cmp r0, #3
	bne _0807B6CA
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r6, #0
	movs r2, #1
	bl SetTileType
_0807B6CA:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #1
	bl sub_080002E0
	cmp r0, #3
	bne _0807B6F8
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
	b _0807B6F8
	.align 2, 0
_0807B6E8: .4byte 0x000002F2
_0807B6EC:
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r5, #0
	movs r2, #1
	bl SetTileType
_0807B6F8:
	adds r0, r6, #0
	movs r1, #2
	bl sub_0807B464
	cmp r0, #0
	beq _0807B748
	movs r0, #0
	adds r1, r6, #0
	movs r2, #2
	bl SetTileType
	adds r0, r6, #0
	movs r1, #1
	bl GetTileType
	ldr r1, _0807B770 @ =0x000002F2
	cmp r0, r1
	bne _0807B728
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r1, r6, #0
	movs r2, #1
	bl SetTileType
_0807B728:
	adds r0, r5, #1
	ldr r4, _0807B774 @ =gUnk_0811C2AC
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
	subs r0, r5, #1
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	bl sub_0807B55C
_0807B748:
	adds r0, r6, #1
	movs r1, #3
	bl sub_0807B480
	subs r0, r6, #1
	movs r1, #1
	bl sub_0807B480
	adds r0, r6, #0
	adds r0, #0x40
	movs r1, #0
	bl sub_0807B480
	adds r0, r6, #0
	subs r0, #0x40
	movs r1, #2
	bl sub_0807B480
_0807B76C:
	movs r0, #1
_0807B76E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807B770: .4byte 0x000002F2
_0807B774: .4byte gUnk_0811C2AC
	.syntax divided
