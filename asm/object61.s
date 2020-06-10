	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08093428
sub_08093428: @ 0x08093428
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0809345C @ =gLinkState
	ldr r0, [r0, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0809344A
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _08093446
	ldr r1, _08093460 @ =gRoomControls
	ldr r0, _08093464 @ =gLinkEntity
	str r0, [r1, #0x30]
_08093446:
	bl sub_0805E780
_0809344A:
	ldr r0, _08093468 @ =gUnk_081228C8
	ldrb r1, [r4, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, pc}
	.align 2, 0
_0809345C: .4byte gLinkState
_08093460: .4byte gRoomControls
_08093464: .4byte gLinkEntity
_08093468: .4byte gUnk_081228C8

	thumb_func_start sub_0809346C
sub_0809346C: @ 0x0809346C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xc]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	ldr r0, _080934C0 @ =gLinkEntity
	ldrb r1, [r0, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r4, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _080934B8
	ldr r0, _080934C4 @ =gRoomControls
	str r4, [r0, #0x30]
	ldrb r0, [r4, #0x19]
	movs r1, #3
	orrs r0, r1
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x6e
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #4
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #0x61
	movs r2, #1
	movs r3, #0
	bl CreateObjectWithParent
_080934B8:
	adds r0, r4, #0
	bl sub_080934C8
	pop {r4, pc}
	.align 2, 0
_080934C0: .4byte gLinkEntity
_080934C4: .4byte gRoomControls

	thumb_func_start sub_080934C8
sub_080934C8: @ 0x080934C8
	push {lr}
	ldr r2, _080934DC @ =gUnk_081228D0
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080934DC: .4byte gUnk_081228D0

	thumb_func_start sub_080934E0
sub_080934E0: @ 0x080934E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x6e
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _080934F6
	rsbs r0, r1, #0
	strh r0, [r4]
_080934F6:
	ldr r0, _08093518 @ =gLinkEntity
	ldrb r0, [r0, #0xd]
	cmp r0, #2
	beq _0809351C
	cmp r0, #2
	bgt _080935B0
	cmp r0, #1
	bne _080935B0
	adds r1, r5, #0
	adds r1, #0x72
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	adds r6, r4, #0
	adds r7, r1, #0
	b _080935BE
	.align 2, 0
_08093518: .4byte gLinkEntity
_0809351C:
	ldrb r2, [r5, #0xf]
	adds r0, r2, #0
	cmp r0, #0
	bne _08093560
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x80
	bls _08093538
	adds r0, r1, #0
	subs r0, #0x20
	strh r0, [r7]
	b _08093544
_08093538:
	adds r0, r2, #1
	strb r0, [r5, #0xf]
	movs r0, #0x92
	lsls r0, r0, #1
	bl PlaySFX
_08093544:
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r2, [r0]
	ldr r1, _0809355C @ =0x0000011F
	adds r6, r0, #0
	cmp r2, r1
	bhi _080935BE
	adds r0, r2, #0
	adds r0, #0x40
	strh r0, [r6]
	b _080935BE
	.align 2, 0
_0809355C: .4byte 0x0000011F
_08093560:
	cmp r0, #0xff
	beq _080935A6
	adds r0, r5, #0
	adds r0, #0x72
	ldrh r1, [r0]
	adds r7, r0, #0
	cmp r1, #0xff
	bhi _08093576
	adds r0, r1, #0
	adds r0, #0x20
	b _0809357A
_08093576:
	movs r0, #0x80
	lsls r0, r0, #1
_0809357A:
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x6e
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r6, r0, #0
	cmp r1, r2
	bls _08093594
	adds r0, r1, #0
	subs r0, #0x20
	strh r0, [r6]
	b _08093596
_08093594:
	strh r2, [r6]
_08093596:
	ldrh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _080935BE
	movs r0, #0xff
	strb r0, [r5, #0xf]
	b _080935BE
_080935A6:
	adds r0, r5, #0
	bl sub_080936C8
	adds r6, r4, #0
	b _080935BA
_080935B0:
	adds r0, r5, #0
	bl sub_080936C8
	adds r6, r5, #0
	adds r6, #0x6e
_080935BA:
	adds r7, r5, #0
	adds r7, #0x72
_080935BE:
	ldr r0, _080935E4 @ =gLinkEntity
	ldrb r1, [r0, #0x14]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _080935E8
	movs r0, #1
	strb r0, [r5, #0x1e]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080935EA
	ldrh r0, [r6]
	rsbs r0, r0, #0
	strh r0, [r6]
	b _080935EA
	.align 2, 0
_080935E4: .4byte gLinkEntity
_080935E8:
	strb r0, [r5, #0x1e]
_080935EA:
	ldrb r0, [r5, #0x1e]
	ldrb r1, [r5, #0x1f]
	cmp r0, r1
	beq _080935FE
	strb r0, [r5, #0x1f]
	ldrb r1, [r5, #0x1e]
	ldrh r2, [r5, #0x12]
	adds r0, r5, #0
	bl sub_080042D0
_080935FE:
	ldr r4, _0809364C @ =gLinkEntity
	adds r0, r4, #0
	adds r1, r5, #0
	bl CopyPosition
	ldrb r2, [r4, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r5, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r5, #0x1b]
	ldrb r0, [r4, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r5, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #0x19]
	ldrh r1, [r7]
	adds r0, r5, #0
	movs r2, #0xa
	movs r3, #2
	bl sub_0806FCF4
	ldrh r1, [r6]
	ldrh r2, [r7]
	adds r0, r5, #0
	movs r3, #0
	bl sub_0805EC9C
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	bl sub_0806FEBC
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0809364C: .4byte gLinkEntity

	thumb_func_start sub_08093650
sub_08093650: @ 0x08093650
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080936C4 @ =gLinkEntity
	ldrb r0, [r5, #0x15]
	lsrs r1, r0, #1
	adds r0, r0, r1
	asrs r0, r0, #2
	adds r0, #2
	strb r0, [r4, #0x1e]
	ldrb r1, [r4, #0x1f]
	cmp r0, r1
	beq _08093674
	strb r0, [r4, #0x1f]
	ldrb r1, [r4, #0x1e]
	ldrh r2, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080042D0
_08093674:
	adds r0, r5, #0
	adds r1, r4, #0
	bl CopyPosition
	ldrb r2, [r5, #0x1b]
	lsrs r2, r2, #6
	lsls r2, r2, #6
	ldrb r3, [r4, #0x1b]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0x1b]
	ldrb r0, [r5, #0x19]
	lsrs r0, r0, #6
	lsls r0, r0, #6
	ldrb r2, [r4, #0x19]
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x19]
	ldr r0, [r4, #0x50]
	adds r0, #0x72
	ldrh r1, [r0]
	adds r0, r4, #0
	movs r2, #0x18
	movs r3, #0
	bl sub_0806FCF4
	adds r1, r4, #0
	adds r1, #0x63
	ldrb r0, [r1]
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl sub_0806FEBC
	pop {r4, r5, pc}
	.align 2, 0
_080936C4: .4byte gLinkEntity

	thumb_func_start sub_080936C8
sub_080936C8: @ 0x080936C8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08093714 @ =gLinkEntity
	ldr r0, [r0, #0x7c]
	lsrs r2, r0, #2
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r1, r3, #0
	subs r1, r1, r2
	adds r5, r4, #0
	adds r5, #0x76
	strh r1, [r5]
	movs r1, #0x3c
	bl __divsi3
	movs r1, #8
	subs r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x74
	strh r1, [r0]
	ldrb r3, [r4, #0xe]
	cmp r3, #0
	bne _0809372C
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r2, [r1]
	ldrh r0, [r5]
	cmp r0, r2
	bhs _08093718
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	b _0809375C
	.align 2, 0
_08093714: .4byte gLinkEntity
_08093718:
	adds r0, r3, #1
	strb r0, [r4, #0xe]
	ldrh r0, [r5]
	strh r0, [r1]
	ldrh r0, [r5]
	adds r0, #0x30
	adds r1, r4, #0
	adds r1, #0x72
	strh r0, [r1]
	b _0809375C
_0809372C:
	ldrh r0, [r5]
	adds r0, #0x30
	adds r1, r4, #0
	adds r1, #0x6e
	ldrh r2, [r1]
	cmp r0, r2
	ble _0809374A
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	adds r1, #4
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	b _0809375C
_0809374A:
	movs r0, #0
	strb r0, [r4, #0xe]
	ldrh r0, [r5]
	adds r0, #0x30
	strh r0, [r1]
	ldrh r1, [r5]
	adds r0, r4, #0
	adds r0, #0x72
	strh r1, [r0]
_0809375C:
	pop {r4, r5, pc}
	.align 2, 0
