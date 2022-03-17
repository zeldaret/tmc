	.syntax unified
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r3, #0
	ldr r7, _0801CAA8 @ =gUnk_0200AF34
	movs r0, #1
	mov ip, r0
	ldr r1, _0801CAAC @ =gUIElementDefinitions
	lsls r0, r5, #4
	adds r4, r0, r1
_0801CA80:
	lsls r0, r3, #5
	adds r1, r0, r7
	ldrb r2, [r1]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne _0801CAB0
	strb r5, [r1, #1]
	strb r6, [r1, #2]
	movs r0, #0xff
	strb r0, [r1, #0x10]
	mov r0, ip
	orrs r0, r2
	strb r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #0x1a]
	ldrb r0, [r4, #0xc]
	strb r0, [r1, #3]
	b _0801CAB6
	.align 2, 0
_0801CAA8: .4byte gUnk_0200AF34
_0801CAAC: .4byte gUIElementDefinitions
_0801CAB0:
	adds r3, #1
	cmp r3, #0x17
	bls _0801CA80
_0801CAB6:
	pop {r4, r5, r6, r7, pc}
	.syntax divided
