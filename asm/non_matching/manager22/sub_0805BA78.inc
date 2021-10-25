	.syntax unified
	push {r4, lr}
	ldr r1, _0805BAA8 @ =gArea
	movs r0, #0xa
	ldrsh r3, [r1, r0]
	ldr r0, _0805BAAC @ =gRoomVars
	movs r4, #0xc
	ldrsh r2, [r0, r4]
	cmp r2, #0
	bge _0805BA8C
	movs r2, #0
_0805BA8C:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _0805BA96
	adds r2, r0, #0
_0805BA96:
	cmp r3, r2
	beq _0805BACE
	subs r0, r2, r3
	cmp r0, #0
	blt _0805BAB0
	cmp r0, #4
	bls _0805BAB6
	b _0805BABA
	.align 2, 0
_0805BAA8: .4byte gArea
_0805BAAC: .4byte gRoomVars
_0805BAB0:
	subs r0, r3, r2
	cmp r0, #4
	bhi _0805BABA
_0805BAB6:
	adds r3, r2, #0
	b _0805BAC8
_0805BABA:
	cmp r2, r3
	bge _0805BAC2
	subs r3, #4
	b _0805BAC8
_0805BAC2:
	cmp r2, r3
	ble _0805BAC8
	adds r3, #4
_0805BAC8:
	strh r3, [r1, #0xa]
	movs r0, #1
	b _0805BAD0
_0805BACE:
	movs r0, #0
_0805BAD0:
	pop {r4, pc}
	.align 2, 0
	.syntax divided
