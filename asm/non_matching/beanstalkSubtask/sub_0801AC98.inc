	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0801ACD0 @ =gRoomControls
	ldrh r1, [r0, #0x1e]
	lsrs r1, r1, #4
	mov r8, r1
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	str r0, [sp]
	movs r6, #0
	movs r1, #0
	cmp r1, r0
	bhs _0801AD5C
_0801ACBA:
	movs r0, #0
	adds r1, #1
	str r1, [sp, #4]
	cmp r0, r8
	bhs _0801AD4C
_0801ACC4:
	ldr r5, _0801ACD4 @ =gUnk_080B44C0
	adds r0, #1
	mov sl, r0
	adds r0, r6, #1
	mov sb, r0
	b _0801ACDA
	.align 2, 0
_0801ACD0: .4byte gRoomControls
_0801ACD4: .4byte gUnk_080B44C0
_0801ACD8:
	adds r5, #0xc
_0801ACDA:
	ldrh r0, [r5]
	ldr r1, _0801AD0C @ =0x0000FFFF
	cmp r0, r1
	beq _0801AD06
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #1
	bl GetTileType
	cmp r4, r0
	bne _0801ACD8
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _0801AD10 @ =gUnk_080B44B8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801ACD8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801AD6C
_0801AD06:
	ldr r5, _0801AD14 @ =gUnk_080B44C2
	ldr r7, _0801AD0C @ =0x0000FFFF
	b _0801AD1A
	.align 2, 0
_0801AD0C: .4byte 0x0000FFFF
_0801AD10: .4byte gUnk_080B44B8
_0801AD14: .4byte gUnk_080B44C2
_0801AD18:
	adds r5, #0xc
_0801AD1A:
	ldrh r0, [r5]
	cmp r0, r7
	beq _0801AD44
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl GetTileType
	cmp r4, r0
	bne _0801AD18
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #2
	ldr r1, _0801AD68 @ =gUnk_080B44B8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801AD18
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801AD6C
_0801AD44:
	mov r0, sl
	mov r6, sb
	cmp r0, r8
	blo _0801ACC4
_0801AD4C:
	adds r0, r6, #0
	adds r0, #0x40
	mov r1, r8
	subs r6, r0, r1
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	blo _0801ACBA
_0801AD5C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801AD68: .4byte gUnk_080B44B8
	.syntax divided
