	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ItemJarEmpty
ItemJarEmpty: @ 0x0807751C
	push {lr}
	ldr r3, _08077530 @ =gUnk_0811BE28
	ldrb r2, [r0, #4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl _call_via_r2
	pop {pc}
	.align 2, 0
_08077530: .4byte gUnk_0811BE28

	thumb_func_start sub_08077534
sub_08077534: @ 0x08077534
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08077D38
	ldr r0, _08077570 @ =gPlayerEntity
	bl sub_0806F948
	adds r0, r4, #0
	bl sub_08077BB8
	ldrb r1, [r4, #9]
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r4, #9]
	ldrb r1, [r4, #1]
	ldr r0, _08077574 @ =gSave
	adds r0, r0, r1
	adds r0, #0x9a
	ldrb r0, [r0]
	strb r0, [r4, #7]
	ldrb r0, [r4, #7]
	subs r0, #0x20
	cmp r0, #0x11
	bhi _080775F8
	lsls r0, r0, #2
	ldr r1, _08077578 @ =_0807757C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08077570: .4byte gPlayerEntity
_08077574: .4byte gSave
_08077578: .4byte _0807757C
_0807757C: @ jump table
	.4byte _080775C4 @ case 0
	.4byte _080775D4 @ case 1
	.4byte _080775D4 @ case 2
	.4byte _080775D4 @ case 3
	.4byte _080775D4 @ case 4
	.4byte _080775D4 @ case 5
	.4byte _080775F8 @ case 6
	.4byte _080775F8 @ case 7
	.4byte _080775F8 @ case 8
	.4byte _080775D4 @ case 9
	.4byte _080775D4 @ case 10
	.4byte _080775D4 @ case 11
	.4byte _080775D4 @ case 12
	.4byte _080775D4 @ case 13
	.4byte _080775D4 @ case 14
	.4byte _080775F8 @ case 15
	.4byte _080775F8 @ case 16
	.4byte _080775F8 @ case 17
_080775C4:
	ldr r1, _080775D0 @ =0x00000614
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077610
	.align 2, 0
_080775D0: .4byte 0x00000614
_080775D4:
	movs r0, #3
	strb r0, [r4, #4]
	ldr r1, _080775F0 @ =gPlayerEntity
	movs r0, #4
	strb r0, [r1, #0x14]
	ldrb r2, [r1, #0x18]
	subs r0, #0x45
	ands r0, r2
	strb r0, [r1, #0x18]
	ldr r1, _080775F4 @ =0x000002DF
	adds r0, r4, #0
	bl sub_08077DF4
	b _08077606
	.align 2, 0
_080775F0: .4byte gPlayerEntity
_080775F4: .4byte 0x000002DF
_080775F8:
	movs r0, #3
	strb r0, [r4, #4]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
_08077606:
	ldr r2, _08077614 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #0x10]
_08077610:
	pop {r4, pc}
	.align 2, 0
_08077614: .4byte gPlayerEntity

	thumb_func_start sub_08077618
sub_08077618: @ 0x08077618
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077638
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r4, #0
	bl sub_08077DF4
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	b _0807763E
_08077638:
	adds r0, r4, #0
	bl UpdateItemAnim
_0807763E:
	pop {r4, pc}

	thumb_func_start sub_08077640
sub_08077640: @ 0x08077640
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077666
	ldr r2, _08077668 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077666:
	pop {r4, r5, pc}
	.align 2, 0
_08077668: .4byte gPlayerEntity

	thumb_func_start sub_0807766C
sub_0807766C: @ 0x0807766C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl UpdateItemAnim
	ldrb r1, [r4, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08077692
	ldr r2, _08077694 @ =gPlayerEntity
	ldrb r1, [r2, #0x10]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08077E78
_08077692:
	pop {r4, r5, pc}
	.align 2, 0
_08077694: .4byte gPlayerEntity
