	.syntax unified
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r2, #0
	movs r2, #0
	ldr r5, _0801AA0C @ =0xFFFFFCA0
	adds r0, r1, r5
	cmp r0, #4
	bhi _0801AA40
	lsls r0, r0, #2
	ldr r1, _0801AA10 @ =_0801AA14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801AA0C: .4byte 0xFFFFFCA0
_0801AA10: .4byte _0801AA14
_0801AA14: @ jump table
	.4byte _0801AA44 @ case 0
	.4byte _0801AA28 @ case 1
	.4byte _0801AA34 @ case 2
	.4byte _0801AA3A @ case 3
	.4byte _0801AA2E @ case 4
_0801AA28:
	cmp r3, #0
	bne _0801AA40
	b _0801AA44
_0801AA2E:
	cmp r3, #8
	bne _0801AA40
	b _0801AA44
_0801AA34:
	cmp r3, #0x10
	bne _0801AA40
	b _0801AA44
_0801AA3A:
	cmp r3, #0x18
	bne _0801AA40
	movs r2, #1
_0801AA40:
	cmp r2, #0
	beq _0801AA54
_0801AA44:
	ldr r0, _0801AA50 @ =gPlayerEntity
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_0801AA58
	b _0801AA56
	.align 2, 0
_0801AA50: .4byte gPlayerEntity
_0801AA54:
	movs r0, #0
_0801AA56:
	pop {r4, r5, pc}
	.syntax divided
