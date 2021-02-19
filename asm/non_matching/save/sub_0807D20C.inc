
	.syntax unified

	.text

	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	lsrs r5, r2, #3
	adds r0, r5, #0
	lsrs r6, r6, #3
	b _0807D242
_0807D21A:
	lsls r0, r6, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080B18DC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0807D23C
	adds r0, r4, #0
	ldr r1, _0807D238 @ =gUnk_0811E4B4
	bl sub_080B18DC
	movs r0, #0
	b _0807D24A
	.align 2, 0
_0807D238: .4byte gUnk_0811E4B4
_0807D23C:
	adds r6, #1
	adds r7, #8
	adds r0, r5, #0
_0807D242:
	subs r5, #1
	cmp r0, #0
	bne _0807D21A
	movs r0, #1
_0807D24A:
	pop {r4, r5, r6, r7, pc}

	.syntax divided
