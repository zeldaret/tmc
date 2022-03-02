	.syntax unified
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	movs r0, #0x20
	ldr r6, _0807C698 @ =gRoomControls
_0807C5FE:
	movs r3, #0
	subs r4, r0, #1
_0807C602:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C602
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C5FE
	ldrh r0, [r6, #0x1e]
	cmp r0, #0xff
	bls _0807C63E
	adds r2, r5, #0
	adds r2, #0x40
	movs r0, #0x20
_0807C624:
	movs r3, #0
	subs r4, r0, #1
_0807C628:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C628
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C624
_0807C63E:
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bls _0807C666
	movs r0, #0x80
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r0, #0x20
_0807C64C:
	movs r3, #0
	subs r4, r0, #1
_0807C650:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C650
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C64C
_0807C666:
	ldrh r0, [r6, #0x1e]
	cmp r0, #0xff
	bls _0807C694
	ldrh r0, [r6, #0x20]
	cmp r0, #0xff
	bls _0807C694
	movs r0, #0x81
	lsls r0, r0, #6
	adds r2, r5, r0
	movs r0, #0x20
_0807C67A:
	movs r3, #0
	subs r4, r0, #1
_0807C67E:
	ldrh r0, [r1]
	strh r0, [r2]
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #0x1f
	bls _0807C67E
	adds r2, #0xc0
	adds r0, r4, #0
	cmp r0, #0
	bne _0807C67A
_0807C694:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807C698: .4byte gRoomControls
	.syntax divided
