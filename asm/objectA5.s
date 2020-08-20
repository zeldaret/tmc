	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start ObjectA5
ObjectA5: @ 0x0809F8A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, _0809F904 @ =gEntCount
	ldrb r0, [r0]
	cmp r0, #0x42
	bhi _0809F8FC
	movs r5, #0
_0809F8B6:
	movs r0, #0x1d
	bl sub_080A7EE0
	adds r4, r0, #0
	cmp r5, #0
	bne _0809F8C6
	mov r8, r4
	adds r7, r4, #0
_0809F8C6:
	strb r5, [r4, #0xa]
	mov r0, r8
	str r0, [r4, #0x50]
	str r7, [r4, #0x54]
	adds r0, r6, #0
	adds r1, r4, #0
	bl CopyPosition
	adds r1, r4, #0
	adds r1, #0x68
	adds r3, r5, #1
	movs r2, #7
_0809F8DE:
	ldrh r0, [r6, #0x2e]
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r6, #0x32]
	strh r0, [r1]
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bge _0809F8DE
	adds r7, r4, #0
	adds r5, r3, #0
	cmp r5, #4
	ble _0809F8B6
	bl DeleteThisEntity
_0809F8FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809F904: .4byte gEntCount
