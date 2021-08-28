	.syntax unified
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0805B528 @ =gUnk_08108C5C
	adds r0, r5, r0
	ldrb r0, [r0]
	bl LoadGfxGroup
	ldr r4, _0805B52C @ =gScreen
	ldr r0, _0805B530 @ =0x00001E07
	strh r0, [r4, #0x2c]
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r2, _0805B534 @ =gRoomControls
	movs r1, #0xa
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	asrs r0, r0, #2
	strh r0, [r4, #0x2e]
	movs r1, #0xc
	ldrsh r0, [r2, r1]
	ldrh r1, [r2, #8]
	subs r0, r0, r1
	asrs r3, r0, #1
	ldrh r1, [r2, #0x20]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r2, r0, r1
	cmp r2, #0
	bge _0805B516
	movs r2, #0
_0805B516:
	ldr r0, _0805B538 @ =gUnk_08108C44
	lsls r1, r5, #1
	adds r1, r1, r0
	adds r0, r3, r2
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x30]
	pop {r4, r5, pc}
	.align 2, 0
_0805B528: .4byte gUnk_08108C5C
_0805B52C: .4byte gScreen
_0805B530: .4byte 0x00001E07
_0805B534: .4byte gRoomControls
_0805B538: .4byte gUnk_08108C44
	.syntax divided
