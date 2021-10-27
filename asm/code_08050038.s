	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start UpdateFade
UpdateFade: @ 0x08050154
	push {r4, r5, r6, lr}
	ldr r4, _08050180 @ =gFadeControl
	ldrh r0, [r4, #8]
	movs r5, #0x1c
	ands r5, r0
	movs r6, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _080501BE
	ldrh r0, [r4, #0xc]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r4, #0xe]
	movs r3, #0xe
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bgt _080501B8
	strh r2, [r4, #0xc]
	b _080501B8
	.align 2, 0
_08050180: .4byte gFadeControl
_08050184:
	mvns r0, r5
	adds r0, #1
	ands r0, r5
	eors r5, r0
	cmp r0, #8
	beq _080501A8
	cmp r0, #8
	bhi _0805019A
	cmp r0, #4
	beq _080501A0
	b _080501B8
_0805019A:
	cmp r0, #0x10
	beq _080501B0
	b _080501B8
_080501A0:
	adds r0, r4, #0
	bl sub_080501C0
	b _080501B6
_080501A8:
	adds r0, r4, #0
	bl sub_08050230
	b _080501B6
_080501B0:
	adds r0, r4, #0
	bl sub_080502A4
_080501B6:
	orrs r6, r0
_080501B8:
	cmp r5, #0
	bne _08050184
	strb r6, [r4]
_080501BE:
	pop {r4, r5, r6, pc}

	thumb_func_start sub_080501C0
sub_080501C0: @ 0x080501C0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080501DA
	movs r0, #0xc
	ldrsh r1, [r3, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	subs r5, r0, r1
	b _080501DE
_080501DA:
	movs r2, #0xc
	ldrsh r5, [r3, r2]
_080501DE:
	ldr r0, _080501F8 @ =gFadeControl
	ldr r2, [r0, #4]
	ldr r1, _080501FC @ =gUnk_020354C0
	movs r4, #0
	ldr r7, _08050200 @ =gUsedPalettes
	movs r6, #1
_080501EA:
	adds r0, r2, #0
	ands r0, r6
	cmp r0, #0
	beq _08050204
	strb r6, [r1]
	strh r5, [r1, #2]
	b _08050208
	.align 2, 0
_080501F8: .4byte gFadeControl
_080501FC: .4byte gUnk_020354C0
_08050200: .4byte gUsedPalettes
_08050204:
	strb r0, [r1]
	strh r0, [r1, #2]
_08050208:
	ldrb r0, [r3, #2]
	strb r0, [r1, #1]
	lsrs r2, r2, #1
	adds r4, #1
	adds r1, #4
	cmp r4, #0x1f
	bls _080501EA
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7]
	movs r0, #0xe
	ldrsh r1, [r3, r0]
	movs r2, #0xc
	ldrsh r0, [r3, r2]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08050230
sub_08050230: @ 0x08050230
	push {r4, r5, lr}
	ldrh r4, [r0, #8]
	ldrh r0, [r0, #0xc]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x14
	movs r0, #0xf
	ands r2, r0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0805024A
	movs r0, #0xf
	subs r2, r0, r2
_0805024A:
	ldr r3, _08050264 @ =gScreen
	ldr r1, _08050268 @ =gUnk_080FC3C4
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	strh r1, [r0]
	cmp r5, #0
	beq _0805026C
	movs r0, #1
	b _08050298
	.align 2, 0
_08050264: .4byte gScreen
_08050268: .4byte gUnk_080FC3C4
_0805026C:
	ldr r1, _0805029C @ =gUnk_03000000
	movs r0, #0
	strb r0, [r1, #2]
	cmp r4, #0
	bne _08050296
	ldrh r2, [r3, #8]
	ldr r1, _080502A0 @ =0x0000FFBF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #8]
	ldrh r2, [r3, #0x14]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #0x14]
	ldrh r2, [r3, #0x20]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3, #0x20]
	ldrh r0, [r3, #0x2c]
	ands r1, r0
	strh r1, [r3, #0x2c]
_08050296:
	movs r0, #0
_08050298:
	pop {r4, r5, pc}
	.align 2, 0
_0805029C: .4byte gUnk_03000000
_080502A0: .4byte 0x0000FFBF

	thumb_func_start sub_080502A4
sub_080502A4: @ 0x080502A4
	push {r4, lr}
	ldrh r1, [r0, #8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080502E4
	ldr r4, _080502E0 @ =gFadeControl
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0xa]
	subs r0, r0, r1
	strh r0, [r4, #0x10]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080502C4
	movs r0, #0
	strh r0, [r4, #0x10]
_080502C4:
	movs r1, #0x12
	ldrsh r0, [r4, r1]
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	bl sub_0801E1EC
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _08050314
	movs r0, #0
	b _08050316
	.align 2, 0
_080502E0: .4byte gFadeControl
_080502E4:
	ldr r4, _08050310 @ =gFadeControl
	ldrh r0, [r4, #0xa]
	ldrh r2, [r4, #0x10]
	adds r0, r0, r2
	strh r0, [r4, #0x10]
	movs r3, #0x12
	ldrsh r0, [r4, r3]
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	movs r3, #0x10
	ldrsh r2, [r4, r3]
	bl sub_0801E1EC
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	cmp r0, #0x96
	ble _08050314
	bl sub_0801E104
	movs r0, #0
	b _08050316
	.align 2, 0
_08050310: .4byte gFadeControl
_08050314:
	movs r0, #1
_08050316:
	pop {r4, pc}
