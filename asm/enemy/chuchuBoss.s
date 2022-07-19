	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text













	thumb_func_start sub_08027C54
sub_08027C54: @ 0x08027C54
	push {lr}
	ldr r2, _08027C74 @ =gUnk_080CC2DC
	adds r1, r0, #0
	adds r1, #0x84
	ldr r1, [r1]
	ldrb r1, [r1, #4]
	adds r1, r1, r2
	ldr r0, [r0, #0x54]
	adds r0, #0x45
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bhi _08027C78
	movs r0, #0
	b _08027C7A
	.align 2, 0
_08027C74: .4byte gUnk_080CC2DC
_08027C78:
	movs r0, #1
_08027C7A:
	pop {pc}

	thumb_func_start sub_08027C7C
sub_08027C7C: @ 0x08027C7C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x54]
	bl sub_08027C9C
	ldr r0, [r4, #0x68]
	adds r1, r5, #0
	bl sub_08027C9C
	ldr r0, [r4, #0x50]
	adds r1, r5, #0
	bl sub_08027C9C
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_08027C9C
sub_08027C9C: @ 0x08027C9C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl Random
	ands r0, r4
	cmp r0, #0
	bne _08027D1E
	adds r0, r5, #0
	movs r1, #0x48
	movs r2, #0
	bl CreateFx
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D1E
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	subs r0, r0, r1
	ldrh r1, [r4, #0x2e]
	adds r0, r0, r1
	strh r0, [r4, #0x2e]
	bl Random
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #6]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x2e]
	adds r1, r1, r0
	strh r1, [r4, #0x2e]
	adds r0, r5, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	subs r0, r0, r1
	ldrh r1, [r4, #0x32]
	adds r0, r0, r1
	strh r0, [r4, #0x32]
	bl Random
	ldr r1, [r5, #0x48]
	ldrb r1, [r1, #7]
	lsls r1, r1, #1
	bl __modsi3
	ldrh r1, [r4, #0x32]
	adds r1, r1, r0
	strh r1, [r4, #0x32]
	adds r2, r4, #0
	adds r2, #0x29
	ldrb r1, [r2]
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
_08027D1E:
	pop {r4, r5, pc}

	thumb_func_start sub_08027D20
sub_08027D20: @ 0x08027D20
.ifdef EU
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r3, r0, #0
	cmp r3, #0
	beq _08027D44
	movs r0, #0xc9
	strh r0, [r3, #0x12]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x60
	strh r1, [r0]
	ldrb r1, [r4, #0x1a]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldrb r2, [r3, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0x1a]
	ldrh r0, [r3, #0x32]
	adds r0, #1
	strh r0, [r3, #0x32]
	adds r1, r3, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
_08027D44:
	adds r0, r3, #0
	pop {r4, pc}
.else
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x15
	movs r2, #0
	movs r3, #0
	bl CreateObjectWithParent
	adds r4, r0, #0
	cmp r4, #0
	beq _08027D66
	movs r0, #0xc9
	strh r0, [r4, #0x12]
	ldrh r0, [r4, #0x32]
	adds r0, #1
	strh r0, [r4, #0x32]
	adds r1, r4, #0
	adds r1, #0x63
	movs r0, #8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0x3e
	bl LoadFixedGFX
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _08027D5E
	adds r0, r4, #0
	movs r1, #0x2b
	bl LoadObjPalette
	b _08027D66
_08027D5E:
	adds r0, r4, #0
	movs r1, #0x2c
	bl LoadObjPalette
_08027D66:
	adds r0, r4, #0
	pop {r4, r5, pc}
	.align 2, 0
.endif
