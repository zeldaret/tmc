    .syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	movs r0, #3
	add ip, r0
	subs r0, #7
	mov r1, ip
	ands r1, r0
	mov ip, r1
	ldr r6, _0801D90C @ =gzHeap
	mov sb, r6
	ldrh r7, [r6]
	movs r5, #1
	movs r3, #0x80
	lsls r3, r3, #5
	add r3, sb
	subs r4, r3, r1
	movs r2, #0
	b _0801D926
	.align 2, 0
_0801D90C: .4byte gzHeap
_0801D910:
	cmp r1, r4
	bhi _0801D918
	cmp r3, r0
	bls _0801D952
_0801D918:
	cmp r4, r1
	bhi _0801D920
	cmp r0, r3
	bls _0801D952
_0801D920:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D926:
	cmp r2, r7
	bhs _0801D94A
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	ldr r6, _0801D95C @ =gzHeap
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D940
	cmp r4, r0
	bls _0801D952
_0801D940:
	cmp r1, r3
	bhi _0801D910
	cmp r3, r0
	bhi _0801D910
	movs r5, #0
_0801D94A:
	lsls r0, r7, #2
	mov sl, r0
	cmp r5, #0
	bne _0801D9D8
_0801D952:
	movs r1, #0
	mov r8, r1
	lsls r6, r7, #2
	mov sl, r6
	b _0801D970
	.align 2, 0
_0801D95C: .4byte gzHeap
_0801D960:
	movs r5, #0
_0801D962:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r7
	bhs _0801D9D4
_0801D970:
	mov r1, r8
	lsls r0, r1, #2
	add r0, sb
	ldrh r0, [r0, #2]
	ldr r6, _0801D994 @ =gzHeap
	adds r3, r0, r6
	mov r0, ip
	subs r4, r3, r0
	movs r5, #0
	mov r0, sl
	adds r0, #2
	add r0, sb
	adds r0, #4
	cmp r4, r0
	blo _0801D962
	movs r5, #1
	movs r2, #0
	b _0801D9AE
	.align 2, 0
_0801D994: .4byte gzHeap
_0801D998:
	cmp r1, r4
	bhi _0801D9A0
	cmp r3, r0
	bls _0801D960
_0801D9A0:
	cmp r4, r1
	bhi _0801D9A8
	cmp r0, r3
	bls _0801D960
_0801D9A8:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0801D9AE:
	cmp r2, r7
	bhs _0801D9D0
	lsls r0, r2, #2
	add r0, sb
	ldrh r1, [r0, #2]
	adds r1, r1, r6
	ldrh r0, [r0, #4]
	adds r0, r0, r6
	cmp r1, r4
	bhi _0801D9C6
	cmp r4, r0
	blo _0801D960
_0801D9C6:
	cmp r1, r3
	bhs _0801D998
	cmp r3, r0
	bhi _0801D998
	movs r5, #0
_0801D9D0:
	cmp r5, #0
	beq _0801D962
_0801D9D4:
	cmp r5, #0
	beq _0801DA00
_0801D9D8:
	ldr r0, _0801D9FC @ =gUnk_02035542
	mov r1, sl
	adds r2, r1, r0
	subs r3, r0, #2
	subs r1, r4, r3
	strh r1, [r2]
	adds r0, #2
	add r0, sl
	add r1, ip
	strh r1, [r0]
	adds r0, r7, #1
	strh r0, [r3]
	adds r0, r4, #0
	mov r1, ip
	bl MemClear
	adds r0, r4, #0
	b _0801DA02
	.align 2, 0
_0801D9FC: .4byte gUnk_02035542
_0801DA00:
	movs r0, #0
_0801DA02:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
    .syntax divided
