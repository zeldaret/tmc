	.syntax unified
	push {lr}
	ldr r3, _0805BAF4 @ =gArea
	ldrb r0, [r3, #0xc]
	cmp r0, #0
	beq _0805BAF2
	ldr r1, _0805BAF8 @ =gScreen
	ldr r2, _0805BAFC @ =gUnk_08108CA8
	ldrh r0, [r3, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, #0x68
	strh r0, [r1]
_0805BAF2:
	pop {pc}
	.align 2, 0
_0805BAF4: .4byte gArea
_0805BAF8: .4byte gScreen
_0805BAFC: .4byte gUnk_08108CA8
	.syntax divided
