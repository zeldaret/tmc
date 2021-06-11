	.syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0x20
	movs r5, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	subs r0, #0x21
	cmp r0, #0xd
	bhi _0801BC98
	lsls r0, r0, #2
	ldr r1, _0801BC30 @ =_0801BC34
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801BC30: .4byte _0801BC34
_0801BC34: @ jump table
	.4byte _0801BC76 @ case 0
	.4byte _0801BC6C @ case 1
	.4byte _0801BC6E @ case 2
	.4byte _0801BC76 @ case 3
	.4byte _0801BC72 @ case 4
	.4byte _0801BC98 @ case 5
	.4byte _0801BC98 @ case 6
	.4byte _0801BC98 @ case 7
	.4byte _0801BC7A @ case 8
	.4byte _0801BC7A @ case 9
	.4byte _0801BC7A @ case 10
	.4byte _0801BC7A @ case 11
	.4byte _0801BC7A @ case 12
	.4byte _0801BC7A @ case 13
_0801BC6C:
	movs r6, #0x23
_0801BC6E:
	movs r5, #0x28
	b _0801BC98
_0801BC72:
	movs r5, #0x50
	b _0801BC98
_0801BC76:
	movs r5, #0xa0
	b _0801BC98
_0801BC7A:
	ldr r1, _0801BCB0 @ =gSave
	adds r0, r4, #0
	adds r0, #0x6f
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0xb3
	strb r0, [r2]
	adds r1, #0xc6
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x88
	lsls r0, r0, #2
	bl SoundReq
_0801BC98:
	adds r0, r5, #0
	bl ModHealth
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r1, [r0]
	subs r1, #0x1c
	adds r0, r6, #0
	bl SetBottleContents
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801BCB0: .4byte gSave
	.syntax divided
