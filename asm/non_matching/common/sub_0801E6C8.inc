    .syntax unified
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x63
	bhi _0801E722
	movs r1, #0
	ldr r5, _0801E724 @ =gFuseInfo
	ldr r3, _0801E728 @ =gUnk_02002C01
	movs r2, #0xf1
_0801E6DA:
	adds r0, r1, r3
	ldrb r6, [r0]
	cmp r4, r6
	bne _0801E6E4
	strb r2, [r0]
_0801E6E4:
	adds r1, #1
	cmp r1, #0x7f
	bls _0801E6DA
	ldr r0, [r5, #0xc]
	bl sub_08002632
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, #0x7e
	bhi _0801E70A
	ldr r0, _0801E72C @ =gSave
	ldr r2, _0801E730 @ =0x000001C1
	adds r0, r0, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0xf1
	bne _0801E70A
	movs r0, #0xf2
	strb r0, [r1]
_0801E70A:
	movs r1, #0
	ldr r0, _0801E734 @ =gUnk_03003DF0
	movs r2, #0xf1
	adds r0, #0xb
_0801E712:
	ldrb r3, [r0]
	cmp r4, r3
	bne _0801E71A
	strb r2, [r0]
_0801E71A:
	adds r0, #0xc
	adds r1, #1
	cmp r1, #0x1f
	bls _0801E712
_0801E722:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0801E724: .4byte gFuseInfo
_0801E728: .4byte gUnk_02002C01
_0801E72C: .4byte gSave
_0801E730: .4byte 0x000001C1
_0801E734: .4byte gUnk_03003DF0
    .syntax divided
