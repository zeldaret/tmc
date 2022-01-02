    .syntax unified
	push {r4, r5, lr}
	lsls r1, r1, #1
	ldr r2, _0801E278 @ =gUnk_02018EE0
	adds r5, r1, r2
	movs r3, #0
	adds r2, r0, #0
	lsls r4, r2, #1
	movs r0, #3
	subs r1, r0, r4
	cmp r3, r2
	bgt _0801E28E
	adds r4, r4, r5
_0801E264:
	lsls r0, r3, #1
	adds r0, r0, r5
	strh r2, [r0]
	strh r3, [r4]
	cmp r1, #0
	bge _0801E27C
	adds r1, #6
	lsls r0, r3, #2
	adds r1, r1, r0
	b _0801E288
	.align 2, 0
_0801E278: .4byte gUnk_02018EE0
_0801E27C:
	adds r1, #0xa
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r1, r1, r0
	subs r4, #2
	subs r2, #1
_0801E288:
	adds r3, #1
	cmp r3, r2
	ble _0801E264
_0801E28E:
	pop {r4, r5, pc}
    .syntax divided
