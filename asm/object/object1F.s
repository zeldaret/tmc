	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start Object1F
Object1F: @ 0x08087690
	push {lr}
	ldr r2, _080876A4 @ =gUnk_08120A0C
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_080876A4: .4byte gUnk_08120A0C

	thumb_func_start sub_080876A8
sub_080876A8: @ 0x080876A8
	push {lr}
	mov ip, r0
	movs r0, #1
	mov r1, ip
	strb r0, [r1, #0xc]
	movs r0, #0xb0
	lsls r0, r0, #0xa
	str r0, [r1, #0x20]
	ldrb r2, [r1, #0x14]
	lsls r0, r2, #2
	movs r1, #0x10
	eors r0, r1
	mov r3, ip
	strb r0, [r3, #0x15]
	lsls r2, r2, #0x18
	cmp r2, #0
	bne _080876E2
	adds r3, #0x29
	ldrb r2, [r3]
	lsls r1, r2, #0x1d
	lsrs r1, r1, #0x1d
	subs r1, #1
	movs r0, #7
	ands r1, r0
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
_080876E2:
	ldr r1, _08087760 @ =gUnk_08120A20
	mov r2, ip
	ldrb r0, [r2, #0x14]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r3, [r2, #0x2e]
	adds r0, r0, r3
	strh r0, [r2, #0x2e]
	ldrb r0, [r2, #0x14]
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r2, #0x32]
	adds r0, r0, r1
	strh r0, [r2, #0x32]
	ldr r3, _08087764 @ =gUnk_08120A18
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #3]
	mov r0, ip
	adds r0, #0x60
	strh r1, [r0]
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #1]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r2, #0x1a]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	mov r2, ip
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	str r0, [r2, #0x6c]
	ldr r0, _08087768 @ =gPlayerEntity
	adds r0, #0x38
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x38
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x24]
	ldrb r0, [r2, #0xf]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0]
	mov r0, ip
	bl InitializeAnimation
	pop {pc}
	.align 2, 0
_08087760: .4byte gUnk_08120A20
_08087764: .4byte gUnk_08120A18
_08087768: .4byte gPlayerEntity

	thumb_func_start sub_0808776C
sub_0808776C: @ 0x0808776C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _08087788
	subs r0, #1
	str r0, [r4, #0x6c]
	ldr r0, _08087784 @ =gPlayerState
	adds r0, #0x3d
	ldrb r0, [r0]
	b _08087798
	.align 2, 0
_08087784: .4byte gPlayerState
_08087788:
	adds r0, r4, #0
	bl ProcessMovement2
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r4, #0
	bl GravityUpdate
_08087798:
	cmp r0, #0
	bne _080877A0
	movs r0, #2
	strb r0, [r4, #0xc]
_080877A0:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_080877A4
sub_080877A4: @ 0x080877A4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080002D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #0x25
	beq _080877D0
	cmp r0, #0x25
	bgt _080877C4
	cmp r0, #0x21
	beq _080877CA
	cmp r0, #0x24
	beq _080877D6
	b _080877E2
_080877C4:
	cmp r1, #0x30
	beq _080877D6
	b _080877E2
_080877CA:
	adds r0, r4, #0
	movs r1, #0
	b _080877DA
_080877D0:
	adds r0, r4, #0
	movs r1, #0xc
	b _080877DA
_080877D6:
	adds r0, r4, #0
	movs r1, #0xb
_080877DA:
	movs r2, #0
	bl CreateFx
	b _08087804
_080877E2:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08087804
	cmp r0, #0xf
	bne _080877F8
	ldrb r1, [r4, #0xe]
	adds r0, r4, #0
	movs r2, #0x80
	bl CreateFx
	b _08087804
_080877F8:
	ldrb r1, [r4, #0xb]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	movs r3, #0
	bl CreateObjectWithParent
_08087804:
	bl DeleteThisEntity
	pop {r4, pc}
	.align 2, 0
