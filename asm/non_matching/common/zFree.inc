    .syntax unified
	push {r4, r5, lr}
	ldr r3, _0801DA44 @ =gzHeap
	subs r1, r0, r3
	ldr r0, _0801DA48 @ =0x00000FFF
	cmp r1, r0
	bhi _0801DA74
	adds r4, r3, #0
	ldrh r5, [r4]
	adds r4, #2
	movs r2, #0
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r0, r5, #2
	subs r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r4]
	strh r2, [r0]
	adds r0, #2
	ldrh r1, [r0]
	strh r1, [r4, #2]
	strh r2, [r0]
	subs r0, r5, #1
	strh r0, [r3]
	b _0801DA74
	.align 2, 0
_0801DA44: .4byte gzHeap
_0801DA48: .4byte 0x00000FFF
_0801DA4C:
	adds r4, #4
	adds r2, #1
	cmp r2, r5
	bhs _0801DA74
	ldrh r0, [r4]
	cmp r0, r1
	bne _0801DA4C
	lsls r1, r5, #2
	ldr r3, _0801DA78 @ =gUnk_0203553E
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r0, [r4]
	movs r2, #0
	strh r2, [r1]
	adds r1, #2
	ldrh r0, [r1]
	strh r0, [r4, #2]
	strh r2, [r1]
	subs r0, r5, #1
	strh r0, [r3, #2]
_0801DA74:
	pop {r4, r5, pc}
	.align 2, 0
_0801DA78: .4byte gUnk_0203553E
    .syntax divided
