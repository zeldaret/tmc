    .syntax unified
	push {lr}
	ldr r0, _08054550 @ =gArea
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _08054534
	ldr r0, _08054554 @ =gScreenTransition
	adds r0, #0x2e
	ldrb r1, [r0]
_08054534:
	cmp r1, #0x16
	bls _0805453A
	movs r1, #0
_0805453A:
	ldr r0, _08054558 @ =gUnk_080FE1C6
	adds r0, r1, r0
	ldrb r1, [r0]
	lsls r0, r1, #5
	ldr r1, _0805455C @ =gUnk_080015BC
	adds r0, r0, r1
	ldr r1, _08054560 @ =gUnk_02034398
	movs r2, #0x20
	bl _DmaCopy
	pop {pc}
	.align 2, 0
_08054550: .4byte gArea
_08054554: .4byte gScreenTransition
_08054558: .4byte gUnk_080FE1C6
_0805455C: .4byte gUnk_080015BC
_08054560: .4byte gUnk_02034398
    .syntax divided
