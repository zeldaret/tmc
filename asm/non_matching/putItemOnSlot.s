	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r5, #0x46
	bhi _080543A8
	movs r0, #0
	movs r1, #1
	bl sub_0807CAA0
_080543A8:
	subs r0, r5, #1
	cmp r0, #0x1e
	bhi _08054410
	movs r1, #2
	ldr r2, _080543C0 @ =gUnk_02002A40
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	cmp r0, #0
	bne _080543C4
	movs r1, #0
	b _080543D0
	.align 2, 0
_080543C0: .4byte gUnk_02002A40
_080543C4:
	adds r0, r2, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080543D0
	movs r1, #1
_080543D0:
	cmp r1, #2
	bne _0805440A
	ldr r3, _080543F0 @ =gUnk_080FD5B4
	lsls r0, r5, #3
	adds r0, r0, r3
	ldrb r4, [r0]
	adds r0, r2, #0
	adds r0, #0xb4
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _080543F4
	movs r1, #0
	b _08054406
	.align 2, 0
_080543F0: .4byte gUnk_080FD5B4
_080543F4:
	adds r0, r2, #0
	adds r0, #0xb5
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r4, r0
	bne _08054406
	movs r1, #1
_08054406:
	cmp r1, #2
	beq _08054410
_0805440A:
	adds r0, r5, #0
	bl ForceEquipItem
_08054410:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start ForceEquipItem
ForceEquipItem: @ 0x08054414
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	subs r0, r4, #1
	cmp r0, #0x1e
	bhi _08054456
	cmp r1, #1
	bhi _08054456
	movs r2, #0
	cmp r1, #0
	bne _0805442A
	movs r2, #1
_0805442A:
	ldr r0, _08054458 @ =gUnk_02002A40
	adds r0, #0xb4
	adds r6, r1, r0
	ldrb r7, [r6]
	adds r5, r2, r0
	ldrb r3, [r5]
	ldr r2, _0805445C @ =gUnk_080FD5B4
	lsls r1, r3, #3
	adds r1, r1, r2
	lsls r0, r4, #3
	adds r0, r0, r2
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _0805444A
	adds r3, r7, #0
_0805444A:
	strb r4, [r6]
	strb r3, [r5]
	ldr r1, _08054460 @ =gUnk_0200AF00
	movs r0, #0x7f
	strb r0, [r1, #0x13]
	strb r0, [r1, #0x14]
_08054456:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08054458: .4byte gUnk_02002A40
_0805445C: .4byte gUnk_080FD5B4
_08054460: .4byte gUnk_0200AF00
    .syntax divided
