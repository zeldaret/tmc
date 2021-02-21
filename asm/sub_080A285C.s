	.include "asm/macros.inc"
	
	.include "constants/constants.inc"

	.syntax unified

	.text
	
	thumb_func_start sub_080A285C
sub_080A285C: @ 0x080A285C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	ldrb r3, [r4, #0x10]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _080A2870
	movs r0, #1
	b _080A2958
_080A2870:
	ldrb r2, [r5]
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	bne _080A288C
	lsls r0, r2, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	movs r1, #1
	orrs r0, r1
	orrs r0, r3
	strb r0, [r4, #0x10]
	movs r0, #1
	b _080A2958
_080A288C:
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A289C
	lsls r1, r1, #3
	ldr r0, [r5, #4]
	adds r5, r0, r1
_080A289C:
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x16
	lsrs r2, r0, #0x16
	adds r1, r2, #0
	ldrb r0, [r5, #3]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq _080A28BA
	cmp r0, #2
	bne _080A28C4
	adds r0, r4, #0
	adds r0, #0x60
	strh r2, [r0]
	b _080A28D2
_080A28BA:
	adds r0, r4, #0
	movs r2, #0
	bl sub_080AE008
	b _080A28CA
_080A28C4:
	adds r0, r4, #0
	bl LoadFixedGFX
_080A28CA:
	cmp r0, #0
	bne _080A28D2
	movs r0, #0
	b _080A2958
_080A28D2:
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	adds r0, r4, #0
	bl sub_0801D040
	movs r1, #0xff
	adds r0, r4, #0
	adds r0, #0x58
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #0x48
	strb r0, [r1]
	ldrh r0, [r5, #6]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	strh r0, [r4, #0x12]
	ldrb r0, [r5, #5]
	movs r3, #3
	movs r1, #0x30
	ands r1, r0
	ldrb r2, [r4, #0x18]
	movs r0, #0x31
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldrb r1, [r5, #7]
	lsls r1, r1, #0x1b
	movs r0, #0x29
	adds r0, r0, r4
	mov ip, r0
	lsrs r1, r1, #0x1d
	lsls r1, r1, #3
	ldrb r2, [r0]
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r5, #7]
	lsrs r1, r1, #5
	ands r1, r3
	ldrb r2, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x18]
	ldr r1, _080A295C @ =gUnk_08125104
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x48]
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	movs r1, #1
	orrs r0, r1
	ldrb r1, [r4, #0x10]
	orrs r0, r1
	strb r0, [r4, #0x10]
	movs r0, #2
_080A2958:
	pop {r4, r5, pc}
	.align 2, 0
_080A295C: .4byte gUnk_08125104
