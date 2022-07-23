	.syntax unified
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, _080A4210 @ =gOamCmd
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, _080A4214 @ =gMenu
	ldrh r0, [r0, #0x10]
	ldr r1, _080A4218 @ =0x00000B21
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #3
	rsbs r5, r5, #0
	movs r1, #0xff
	mov r8, r1
	adds r7, r4, #0
	ldr r6, _080A421C @ =gSineTable
	rsbs r0, r0, #0
	adds r4, r0, #0
	subs r4, #0x45
	ldr r2, _080A4220 @ =gSave+0x12b
	mov sb, r2
_080A4180:
	adds r2, r4, #0
	mov r3, r8
	ands r2, r3
	lsls r0, r2, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #2
	cmp r0, #0
	bge _080A419A
	adds r0, #0xff
_080A419A:
	asrs r0, r0, #8
	adds r0, #0x4f
	strh r0, [r7, #2]
	adds r0, r2, #0
	adds r0, #0x40
	mov r1, r8
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	cmp r0, #0
	bge _080A41BC
	adds r0, #0xff
_080A41BC:
	asrs r0, r0, #8
	subs r0, #0x10
	strh r0, [r7]
	ldr r2, _080A4214 @ =gMenu
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bge _080A41CE
	ldr r3, _080A4224 @ =0x0000FFFF
	adds r0, r0, r3
_080A41CE:
	asrs r0, r0, #0x10
	adds r3, r0, r5
	cmp r3, #0
	blt _080A4200
	mov r1, sb
	adds r0, r3, r1
	ldrb r1, [r0]
	ldr r0, _080A4228 @ =gSave
	cmp r5, #0
	bne _080A41EE
	ldrb r2, [r2, #1]
	cmp r2, #4
	bgt _080A41EE
	cmp r2, #3
	blt _080A41EE
	subs r1, #1
_080A41EE:
	cmp r1, #0
	ble _080A4200
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r0, r3, r0
	ldrb r0, [r0]
	bl sub_080A42E0
_080A4200:
	adds r4, #0x17
	adds r5, #1
	cmp r5, #3
	ble _080A4180
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080A4210: .4byte gOamCmd
_080A4214: .4byte gMenu
_080A4218: .4byte 0x00000B21
_080A421C: .4byte gSineTable
_080A4220: .4byte gSave+0x12b
_080A4224: .4byte 0x0000FFFF
_080A4228: .4byte gSave
	.syntax divided
