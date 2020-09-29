	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start SensorBladeTrap
SensorBladeTrap: @ 0x0802B9D4
	push {lr}
	ldr r2, _0802B9E8 @ =gUnk_080CD3C4
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0802B9E8: .4byte gUnk_080CD3C4

	thumb_func_start sub_0802B9EC
sub_0802B9EC: @ 0x0802B9EC
	adds r2, r0, #0
	movs r0, #1
	strb r0, [r2, #0xc]
	ldr r1, _0802BA14 @ =gUnk_080CD3D4
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x78
	strh r1, [r0]
	adds r0, #0xc
	ldrh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	adds r0, #0xa
	ldrh r1, [r0]
	subs r0, #8
	strh r1, [r0]
	bx lr
	.align 2, 0
_0802BA14: .4byte gUnk_080CD3D4

	thumb_func_start sub_0802BA18
sub_0802BA18: @ 0x0802BA18
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	movs r2, #0xe
	bl sub_0804A024
	adds r5, r0, #0
	cmp r5, #0xff
	beq _0802BA88
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802BB2C
	cmp r0, #0
	bne _0802BA88
	movs r0, #2
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
	strb r5, [r4, #0x15]
	lsrs r0, r5, #3
	cmp r0, #1
	beq _0802BA60
	cmp r0, #1
	blo _0802BA58
	cmp r0, #2
	beq _0802BA6C
	cmp r0, #3
	beq _0802BA78
	b _0802BA88
_0802BA58:
	adds r1, r4, #0
	adds r1, #0x7e
	ldrh r0, [r4, #0x32]
	b _0802BA7E
_0802BA60:
	adds r0, r4, #0
	adds r0, #0x7c
	ldrh r0, [r0]
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	b _0802BA82
_0802BA6C:
	adds r0, r4, #0
	adds r0, #0x7e
	ldrh r0, [r0]
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	b _0802BA82
_0802BA78:
	adds r1, r4, #0
	adds r1, #0x7c
	ldrh r0, [r4, #0x2e]
_0802BA7E:
	ldrh r1, [r1]
	subs r0, r0, r1
_0802BA82:
	adds r1, r4, #0
	adds r1, #0x7a
	strh r0, [r1]
_0802BA88:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0802BA8C
sub_0802BA8C: @ 0x0802BA8C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF038
	cmp r0, #0
	beq _0802BADE
	ldrb r0, [r4, #0x15]
	lsrs r0, r0, #3
	cmp r0, #1
	beq _0802BAC4
	cmp r0, #1
	bgt _0802BAAA
	cmp r0, #0
	beq _0802BAB4
	b _0802BAFA
_0802BAAA:
	cmp r0, #2
	beq _0802BAD0
	cmp r0, #3
	beq _0802BAE6
	b _0802BAFA
_0802BAB4:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802BAFA
	b _0802BADE
_0802BAC4:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	b _0802BADA
_0802BAD0:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x32
	ldrsh r0, [r4, r2]
_0802BADA:
	cmp r1, r0
	bgt _0802BAFA
_0802BADE:
	adds r0, r4, #0
	bl sub_0802BB10
	b _0802BAFA
_0802BAE6:
	adds r0, r4, #0
	adds r0, #0x7a
	ldrh r1, [r0]
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt _0802BAFA
	adds r0, r4, #0
	bl sub_0802BB10
_0802BAFA:
	pop {r4, pc}

	thumb_func_start sub_0802BAFC
sub_0802BAFC: @ 0x0802BAFC
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080AF038
	cmp r0, #0
	bne _0802BB0C
	movs r0, #1
	strb r0, [r4, #0xc]
_0802BB0C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_0802BB10
sub_0802BB10: @ 0x0802BB10
	push {lr}
	movs r1, #3
	strb r1, [r0, #0xc]
	movs r1, #0xc0
	strh r1, [r0, #0x24]
	ldrb r1, [r0, #0x15]
	movs r2, #0x10
	eors r1, r2
	strb r1, [r0, #0x15]
	movs r0, #0x74
	bl EnqueueSFX
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0802BB2C
sub_0802BB2C: @ 0x0802BB2C
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x38
	ldrb r0, [r0]
	ldr r4, _0802BB60 @ =gUnk_02027EB4
	cmp r0, #2
	bne _0802BB3C
	ldr r4, _0802BB64 @ =gUnk_0200D654
_0802BB3C:
	lsrs r3, r1, #2
	ldr r0, _0802BB68 @ =gUnk_080CD3DC
	adds r3, r3, r0
	movs r0, #0x2e
	ldrsh r1, [r2, r0]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r1, r1, r0
	movs r0, #0x32
	ldrsh r2, [r2, r0]
	movs r0, #1
	ldrsb r0, [r3, r0]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0
	bl sub_080AE4CC
	pop {r4, pc}
	.align 2, 0
_0802BB60: .4byte gUnk_02027EB4
_0802BB64: .4byte gUnk_0200D654
_0802BB68: .4byte gUnk_080CD3DC
