
    .section .text

    .syntax unified

	push {r4, r5, r6, lr}
	ldr r5, _08056CB8 @ =gCurrentWindow
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _08056CB4
	movs r0, #0
	strb r0, [r5, #1]
	ldrb r0, [r5, #5]
	lsls r0, r0, #5
	ldrb r1, [r5, #4]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08056CBC @ =gBG0Buffer
	adds r1, r0, r1
	ldrb r0, [r5, #7]
	adds r0, #2
	movs r6, #0
_08056C8A:
	movs r2, #0
	adds r4, r1, #0
	adds r4, #0x40
	subs r3, r0, #1
_08056C92:
	strh r6, [r1]
	adds r1, #2
	adds r2, #1
	ldrb r0, [r5, #6]
	adds r0, #2
	cmp r2, r0
	blt _08056C92
	adds r1, r4, #0
	adds r0, r3, #0
	cmp r0, #0
	bgt _08056C8A
	ldrb r0, [r5, #5]
	ldrb r1, [r5, #7]
	bl sub_0801C4A0
	bl sub_0801C494
_08056CB4:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08056CB8: .4byte gCurrentWindow
_08056CBC: .4byte gBG0Buffer

    .syntax divided
