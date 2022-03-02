	.syntax unified
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	ldr r3, _0807A008 @ =gRoomControls
	ldrh r0, [r3, #6]
	subs r2, r2, r0
	asrs r2, r2, #4
	movs r4, #0x3f
	ands r2, r4
	movs r6, #0x32
	ldrsh r0, [r5, r6]
	ldrh r3, [r3, #8]
	subs r0, r0, r3
	asrs r0, r0, #4
	ands r0, r4
	lsls r0, r0, #6
	orrs r2, r0
	lsls r2, r2, #1
	ldr r6, _0807A00C @ =gUnk_02027EB4
	cmp r1, #2
	bne _0807A004
	ldr r6, _0807A010 @ =gUnk_0200D654
_0807A004:
	movs r4, #0
	b _0807A028
	.align 2, 0
_0807A008: .4byte gRoomControls
_0807A00C: .4byte gUnk_02027EB4
_0807A010: .4byte gUnk_0200D654
_0807A014:
	cmp r1, #0x23
	beq _0807A028
	cmp r1, #0x27
	beq _0807A028
	ldr r0, _0807A04C @ =gUnk_080082DC
	subs r1, #0x10
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0807A046
_0807A028:
	adds r4, #1
	adds r0, r5, #0
	mov r1, sp
	bl sub_08004202
	adds r2, r0, #0
	lsrs r0, r2, #1
	adds r0, r6, r0
	ldrb r1, [r0]
	cmp r1, #0xe
	bls _0807A046
	cmp r1, #0xf
	bls _0807A028
	cmp r1, #0x1d
	bne _0807A014
_0807A046:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0807A04C: .4byte gUnk_080082DC
	.syntax divided
