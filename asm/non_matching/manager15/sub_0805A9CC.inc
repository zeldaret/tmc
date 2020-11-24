sub_0805A9CC: @ 0x0805A9CC
	push {r4, r5, lr}
	add r4, r0, #0
	ldr r3, _0805AA4C @ =gScreen
	ldr r5, _0805AA50 @ =gRoomControls
	ldrh r0, [r5, #0xa]
	ldrh r1, [r4, #0x24]
	sub r0, r0, r1
	ldrh r1, [r4, #0x34]
	add r0, r0, r1
	strh r0, [r3, #0x2e]
	mov r2, #0x2e
	ldrsh r0, [r3, r2]
	neg r2, r0
	mov r0, #0x80
	lsl r0, r0, #1
	add r1, r2, r0
	cmp r2, #0
	bge _0805A9F2
	mov r2, #0
_0805A9F2:
	cmp r2, #0xf0
	ble _0805A9F8
	mov r2, #0xf0
_0805A9F8:
	cmp r1, #0
	bge _0805A9FE
	mov r1, #0
_0805A9FE:
	cmp r1, #0xf0
	ble _0805AA04
	mov r1, #0xf0
_0805AA04:
	lsl r0, r2, #8
	orr r0, r1
	add r1, r3, #0
	add r1, #0x5a
	strh r0, [r1]
	mov r1, #0xc
	ldrsh r0, [r5, r1]
	ldrh r1, [r4, #0x26]
	sub r0, r0, r1
	mov r2, #0x36
	ldrsh r1, [r4, r2]
	add r2, r0, r1
	mov r1, #0x3f
	add r0, r2, #0
	and r0, r1
	strh r0, [r3, #0x30]
	add r0, r2, #0
	cmp r0, #0
	bge _0805AA2C
	add r0, #0x3f
_0805AA2C:
	asr r0, r0, #6
	lsl r0, r0, #9
	ldr r1, _0805AA54 @ =gBG3Buffer
	add r1, r0, r1
	str r1, [r3, #0x34]
	add r2, r3, #0
	add r2, #0x5e
	mov r0, #0xa0
	strh r0, [r2]
	ldr r0, [r4, #0x28]
	cmp r0, r1
	beq _0805AA4A
	str r1, [r4, #0x28]
	mov r0, #1
	strh r0, [r3, #0x32]
_0805AA4A:
	pop {r4, r5, pc}
	.align 2, 0
_0805AA4C: .4byte gScreen
_0805AA50: .4byte gRoomControls
_0805AA54: .4byte gBG3Buffer
