	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r2, _0805A154 @ =gUnk_03003DE4
	ldrb r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	ldr r1, _0805A158 @ =gUnk_02017AA0
	adds r4, r0, r1
	movs r5, #0
	mov r8, r2
	mov sb, r1
	ldr r2, _0805A15C @ =gScreen
	ldr r0, _0805A160 @ =gSineTable
	mov ip, r0
_0805A13A:
	movs r1, #0x30
	ldrsh r0, [r2, r1]
	adds r3, r5, r0
	asrs r1, r3, #3
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _0805A190
	lsls r0, r1, #2
	ldr r1, _0805A164 @ =_0805A168
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0805A154: .4byte gUnk_03003DE4
_0805A158: .4byte gUnk_02017AA0
_0805A15C: .4byte gScreen
_0805A160: .4byte gSineTable
_0805A164: .4byte _0805A168
_0805A168: @ jump table
	.4byte _0805A190 @ case 0
	.4byte _0805A18C @ case 1
	.4byte _0805A190 @ case 2
	.4byte _0805A190 @ case 3
	.4byte _0805A188 @ case 4
	.4byte _0805A190 @ case 5
	.4byte _0805A190 @ case 6
	.4byte _0805A18C @ case 7
_0805A188:
	subs r3, #8
	b _0805A190
_0805A18C:
	movs r0, #0xf0
	b _0805A192
_0805A190:
	movs r0, #0xf8
_0805A192:
	ands r3, r0
	adds r0, r6, r3
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #1
	add r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r7, r0
	lsrs r0, r0, #8
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r4]
	adds r4, #2
	adds r5, #1
	cmp r5, #0x9f
	ble _0805A13A
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #9
	add r0, sb
	ldr r1, _0805A1D0 @ =0x0400001C
	ldr r2, _0805A1D4 @ =0xA2600001
	bl sub_0805622C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0805A1D0: .4byte 0x0400001C
_0805A1D4: .4byte 0xA2600001
	.syntax divided
