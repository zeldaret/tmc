	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x30]
	cmp r0, #0
	bne _0807FC88
	b _0807FDA6
_0807FC88:
	movs r1, #0xa
	ldrsh r4, [r2, r1]
	movs r1, #0x2e
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FD16
	ldrh r6, [r2, #0xa]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FCDC
	ldrh r0, [r2, #6]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FCBC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCBC:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FCCE
	ldr r1, _0807FCD8 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FCCE:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FD16
	b _0807FD14
	.align 2, 0
_0807FCD8: .4byte gUpdateVisibleTiles
_0807FCDC:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #0x1e]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xf0
	cmp r4, r5
	bge _0807FD16
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FCFC
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FCFC:
	subs r0, r6, r3
	strh r0, [r2, #0xa]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD0C
	ldr r1, _0807FD68 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FD0C:
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FD16
_0807FD14:
	strh r5, [r2, #0xa]
_0807FD16:
	movs r0, #0xc
	ldrsh r4, [r2, r0]
	ldr r0, [r2, #0x30]
	movs r1, #0x32
	ldrsh r0, [r0, r1]
	subs r0, #0x50
	subs r3, r4, r0
	cmp r3, #0
	beq _0807FDA6
	ldrh r6, [r2, #0xc]
	movs r7, #7
	ands r7, r6
	mov ip, r6
	cmp r3, #0
	ble _0807FD6C
	ldrh r0, [r2, #8]
	adds r5, r0, #0
	cmp r5, r4
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	cmp r0, r3
	bgt _0807FD4C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD4C:
	mov r1, ip
	subs r0, r1, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #0
	bgt _0807FD5E
	ldr r1, _0807FD68 @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FD5E:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r5, r0
	blt _0807FDA6
	b _0807FDA4
	.align 2, 0
_0807FD68: .4byte gUpdateVisibleTiles
_0807FD6C:
	ldrh r0, [r2, #8]
	ldrh r1, [r2, #0x20]
	adds r0, r0, r1
	adds r5, r0, #0
	subs r5, #0xa0
	cmp r4, r5
	bge _0807FDA6
	ldrb r0, [r2, #0xe]
	rsbs r0, r0, #0
	cmp r0, r3
	blt _0807FD8C
	adds r3, r0, #0
	ldrb r1, [r2, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0xf]
_0807FD8C:
	subs r0, r6, r3
	strh r0, [r2, #0xc]
	subs r0, r7, r3
	cmp r0, #7
	ble _0807FD9C
	ldr r1, _0807FDAC @ =gUpdateVisibleTiles
	movs r0, #1
	strb r0, [r1]
_0807FD9C:
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	cmp r0, r5
	blt _0807FDA6
_0807FDA4:
	strh r5, [r2, #0xc]
_0807FDA6:
	bl sub_08080BC4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0807FDAC: .4byte gUpdateVisibleTiles
	.syntax divided
