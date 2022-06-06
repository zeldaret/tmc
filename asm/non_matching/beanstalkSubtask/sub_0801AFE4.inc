	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _0801B018 @ =gMapBottom+0x2004
	ldr r0, _0801B01C @ =gRoomControls
	ldrh r1, [r0, #0x1e]
	lsrs r1, r1, #4
	mov sl, r1
	ldrh r0, [r0, #0x20]
	lsrs r0, r0, #4
	mov sb, r0
	movs r7, #0
	cmp r7, sb
	bhs _0801B054
_0801B004:
	movs r2, #0
	adds r0, r7, #1
	mov r8, r0
	cmp r2, sl
	bhs _0801B046
_0801B00E:
	ldr r1, _0801B020 @ =gUnk_080B44D0
	adds r4, r3, #1
	adds r5, r2, #1
	b _0801B026
	.align 2, 0
_0801B018: .4byte gMapBottom+0x2004
_0801B01C: .4byte gRoomControls
_0801B020: .4byte gUnk_080B44D0
_0801B024:
	adds r1, #4
_0801B026:
	ldrh r0, [r1]
	cmp r0, #0
	beq _0801B03E
	ldrb r6, [r3]
	cmp r0, r6
	bne _0801B024
	ldrh r0, [r1, #2]
	lsls r1, r7, #6
	adds r1, r1, r2
	movs r2, #1
	bl SetTile
_0801B03E:
	adds r3, r4, #0
	adds r2, r5, #0
	cmp r2, sl
	blo _0801B00E
_0801B046:
	adds r0, r3, #0
	adds r0, #0x40
	mov r1, sl
	subs r3, r0, r1
	mov r7, r8
	cmp r7, sb
	blo _0801B004
_0801B054:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	.syntax divided
