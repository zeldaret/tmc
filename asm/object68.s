	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_0809475C
sub_0809475C: @ 0x0809475C
	push {lr}
	ldr r2, _08094770 @ =gUnk_08122A10
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08094770: .4byte gUnk_08122A10

	thumb_func_start sub_08094774
sub_08094774: @ 0x08094774
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #0xc]
	ldrb r0, [r5, #0xa]
	cmp r0, #8
	bls _08094784
	b _080948C6
_08094784:
	lsls r0, r0, #2
	ldr r1, _08094790 @ =_08094794
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08094790: .4byte _08094794
_08094794: @ jump table
	.4byte _080947B8 @ case 0
	.4byte _08094824 @ case 1
	.4byte _080948B0 @ case 2
	.4byte _080948C6 @ case 3
	.4byte _080948C6 @ case 4
	.4byte _080948C6 @ case 5
	.4byte _080948C6 @ case 6
	.4byte _080948C6 @ case 7
	.4byte _080948C6 @ case 8
_080947B8:
	adds r0, r5, #0
	movs r1, #0xb
	movs r2, #0
	bl CreateFx
	adds r6, r0, #0
	str r6, [r5, #0x54]
	cmp r6, #0
	beq _080947EE
	ldr r0, _0809480C @ =gLinkEntity
	ldr r4, _08094810 @ =gUnk_08122A18
	ldrb r3, [r0, #0x14]
	movs r1, #6
	ands r1, r3
	adds r1, r1, r4
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r1, #1
	orrs r1, r3
	adds r1, r1, r4
	movs r3, #0
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r1, r6, #0
	bl PositionRelative
_080947EE:
	ldr r0, [r5, #0x54]
	adds r1, r5, #0
	bl CopyPosition
	ldr r1, _08094814 @ =0x00004032
	ldr r2, _08094818 @ =0x00004033
	adds r0, r5, #0
	bl sub_08094980
	ldr r1, _0809481C @ =0x00004061
	ldr r2, _08094820 @ =0x00004022
	adds r0, r5, #0
	bl sub_08094980
	b _080948C6
	.align 2, 0
_0809480C: .4byte gLinkEntity
_08094810: .4byte gUnk_08122A18
_08094814: .4byte 0x00004032
_08094818: .4byte 0x00004033
_0809481C: .4byte 0x00004061
_08094820: .4byte 0x00004022
_08094824:
	adds r0, r5, #0
	movs r1, #0x2b
	movs r2, #0
	bl CreateFx
	adds r6, r0, #0
	str r6, [r5, #0x54]
	cmp r6, #0
	beq _0809485A
	ldr r0, _08094898 @ =gLinkEntity
	ldr r4, _0809489C @ =gUnk_08122A18
	ldrb r3, [r0, #0x14]
	movs r1, #6
	ands r1, r3
	adds r1, r1, r4
	movs r2, #0
	ldrsb r2, [r1, r2]
	lsls r2, r2, #0x10
	movs r1, #1
	orrs r1, r3
	adds r1, r1, r4
	movs r3, #0
	ldrsb r3, [r1, r3]
	lsls r3, r3, #0x10
	adds r1, r6, #0
	bl PositionRelative
_0809485A:
	ldrb r4, [r5, #0xb]
	cmp r4, #0
	bne _080948C6
	ldr r0, [r5, #0x54]
	adds r1, r5, #0
	bl CopyPosition
	strb r4, [r5, #0xe]
	adds r2, r5, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
	ldrb r1, [r5, #0x19]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r5, #0x19]
	ldr r1, _080948A0 @ =0x0000403B
	ldr r2, _080948A4 @ =0x0000403C
	adds r0, r5, #0
	bl sub_08094980
	ldr r1, _080948A8 @ =0x00004061
	ldr r2, _080948AC @ =0x00004022
	adds r0, r5, #0
	bl sub_08094980
	b _080948CA
	.align 2, 0
_08094898: .4byte gLinkEntity
_0809489C: .4byte gUnk_08122A18
_080948A0: .4byte 0x0000403B
_080948A4: .4byte 0x0000403C
_080948A8: .4byte 0x00004061
_080948AC: .4byte 0x00004022
_080948B0:
	ldr r0, _080948CC @ =gLinkEntity
	movs r1, #0x60
	movs r2, #0
	bl sub_080A2A20
	adds r1, r0, #0
	str r1, [r5, #0x54]
	cmp r1, #0
	beq _080948C6
	movs r0, #1
	strb r0, [r1, #0xe]
_080948C6:
	bl DeleteThisEntity
_080948CA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_080948CC: .4byte gLinkEntity

	thumb_func_start sub_080948D0
sub_080948D0: @ 0x080948D0
	push {lr}
	ldr r2, _080948E4 @ =gUnk_08122A20
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080948E4: .4byte gUnk_08122A20

	thumb_func_start sub_080948E8
sub_080948E8: @ 0x080948E8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	cmp r1, #0x3b
	bhi _08094978
	ldr r0, [r4, #0x34]
	ldr r2, _0809495C @ =0xFFFFC000
	adds r0, r0, r2
	str r0, [r4, #0x34]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08094970
	adds r0, r4, #0
	movs r1, #0x11
	movs r2, #0x40
	bl CreateFx
	adds r3, r0, #0
	str r3, [r4, #0x54]
	cmp r3, #0
	beq _08094970
	ldrb r1, [r4, #0x19]
	lsrs r1, r1, #6
	lsls r1, r1, #6
	ldrb r2, [r3, #0x19]
	movs r0, #0x3f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x19]
	ldr r2, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x29
	ldrb r1, [r0]
	lsls r1, r1, #0x1d
	adds r2, #0x29
	lsrs r1, r1, #0x1d
	ldrb r3, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
	bl Random
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08094960
	bl Random
	ldr r2, [r4, #0x54]
	movs r1, #0xf
	ands r0, r1
	ldrh r1, [r2, #0x2e]
	adds r0, r0, r1
	strh r0, [r2, #0x2e]
	b _08094970
	.align 2, 0
_0809495C: .4byte 0xFFFFC000
_08094960:
	bl Random
	ldr r2, [r4, #0x54]
	movs r1, #0xf
	ands r0, r1
	ldrh r1, [r2, #0x2e]
	subs r1, r1, r0
	strh r1, [r2, #0x2e]
_08094970:
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	b _0809497C
_08094978:
	bl DeleteThisEntity
_0809497C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08094980
sub_08094980: @ 0x08094980
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	movs r0, #0
	mov r8, r0
	ldr r1, _08094A04 @ =gRoomControls
	mov sl, r1
	movs r2, #0x3f
	mov sb, r2
	ldr r7, _08094A08 @ =gUnk_08122A28
_080949A0:
	movs r4, #0
	ldrsb r4, [r7, r4]
	movs r5, #1
	ldrsb r5, [r7, r5]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800029C
	ldr r3, [sp]
	cmp r3, r0
	bne _080949EC
	movs r0, #0x2e
	ldrsh r1, [r6, r0]
	adds r1, r1, r4
	mov r2, sl
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	asrs r1, r1, #4
	mov r3, sb
	ands r1, r3
	movs r2, #0x32
	ldrsh r0, [r6, r2]
	adds r0, r0, r5
	mov r3, sl
	ldrh r2, [r3, #8]
	subs r0, r0, r2
	asrs r0, r0, #4
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #6
	orrs r1, r0
	adds r0, r6, #0
	adds r0, #0x38
	ldrb r2, [r0]
	ldr r0, [sp, #4]
	bl SetTile
_080949EC:
	adds r7, #2
	movs r3, #2
	add r8, r3
	mov r0, r8
	cmp r0, #9
	bls _080949A0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08094A04: .4byte gRoomControls
_08094A08: .4byte gUnk_08122A28
