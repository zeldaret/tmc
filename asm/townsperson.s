	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text


	thumb_func_start sub_08061B8C
sub_08061B8C: @ 0x08061B8C
	push {lr}
	adds r2, r0, #0
	ldrb r1, [r2, #0x10]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08061BB0
	ldr r0, _08061BAC @ =gUnk_0810B77C
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
	b _08061BC0
	.align 2, 0
_08061BAC: .4byte gUnk_0810B77C
_08061BB0:
	ldr r0, _08061BC4 @ =gUnk_0810B774
	ldrb r1, [r2, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r2, #0
	bl _call_via_r1
_08061BC0:
	pop {pc}
	.align 2, 0
_08061BC4: .4byte gUnk_0810B774

	thumb_func_start sub_08061BC8
sub_08061BC8: @ 0x08061BC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08061BFC @ =gUnk_0810B6EC
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08061BF8
	movs r0, #2
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0xa]
	adds r0, #1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08061CB4
_08061BF8:
	pop {r4, pc}
	.align 2, 0
_08061BFC: .4byte gUnk_0810B6EC

	thumb_func_start sub_08061C00
sub_08061C00: @ 0x08061C00
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	movs r2, #0x20
	bl sub_0806ED9C
	adds r1, r0, #0
	cmp r1, #0
	bge _08061C18
	ldrb r0, [r4, #0x14]
	adds r1, r0, #4
	b _08061C32
_08061C18:
	ldrb r0, [r4, #0xf]
	cmp r0, #0
	bne _08061C24
	movs r0, #0x10
	strb r0, [r4, #0xf]
	b _08061C32
_08061C24:
	subs r0, #1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	movs r1, #3
	ands r1, r0
_08061C32:
	adds r0, r4, #0
	bl sub_08061CB4
	adds r0, r4, #0
	bl sub_0806ED78
	adds r1, r4, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08061C58
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r4, #0xb]
	ldr r1, _08061C5C @ =0x00000A01
	adds r0, r0, r1
	bl TextboxNoOverlapFollow
_08061C58:
	pop {r4, pc}
	.align 2, 0
_08061C5C: .4byte 0x00000A01

	thumb_func_start sub_08061C60
sub_08061C60: @ 0x08061C60
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	ldr r1, _08061CAC @ =gUnk_0810B78C
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r5, _08061CB0 @ =gUnk_0810B680
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r2, [r0]
	adds r2, r1, r2
	adds r0, r4, #0
	movs r1, #0
	bl sub_0806FF60
	ldrb r2, [r4, #0x1e]
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrb r0, [r0, #1]
	adds r2, r2, r0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0806FF60
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_0806FF88
	adds r0, r4, #0
	bl sub_0807000C
	pop {r4, r5, pc}
	.align 2, 0
_08061CAC: .4byte gUnk_0810B78C
_08061CB0: .4byte gUnk_0810B680

	thumb_func_start sub_08061CB4
sub_08061CB4: @ 0x08061CB4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r0, r1
	beq _08061CC8
	adds r0, r4, #0
	bl InitializeAnimation
	b _08061CCE
_08061CC8:
	adds r0, r4, #0
	bl sub_08004274
_08061CCE:
	adds r2, r4, #0
	adds r2, #0x59
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08061CE4
	ldr r0, _08061CE8 @ =gUnk_0810B680
	ldrb r1, [r4, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r2]
_08061CE4:
	pop {r4, pc}
	.align 2, 0
_08061CE8: .4byte gUnk_0810B680

	thumb_func_start sub_08061CEC
sub_08061CEC: @ 0x08061CEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08061D38 @ =gUnk_0810B6EC
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _08061D62
	movs r2, #1
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	subs r0, #5
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0x18]
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x14]
	adds r1, r4, #0
	adds r1, #0x69
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0805ACC0
	adds r1, r0, #0
	cmp r1, #0
	bne _08061D3C
	ldrh r0, [r4, #0x2e]
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	ldrh r1, [r4, #0x32]
	b _08061D44
	.align 2, 0
_08061D38: .4byte gUnk_0810B6EC
_08061D3C:
	lsrs r0, r1, #0x10
	adds r2, r4, #0
	adds r2, #0x6a
	strh r0, [r2]
_08061D44:
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0801E99C
	adds r1, r4, #0
	adds r1, #0x68
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0807DD64
	adds r0, r4, #0
	bl sub_08061D64
_08061D62:
	pop {r4, pc}

	thumb_func_start sub_08061D64
sub_08061D64: @ 0x08061D64
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x39
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #2
	bne _08061DB0
	movs r1, #0
	movs r0, #3
	strb r0, [r5, #0xc]
	strb r1, [r4]
	adds r0, r5, #0
	bl sub_0806F118
	adds r4, #0x1f
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _08061DAC @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	bl sub_0806F5A4
	ldrb r1, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
	b _08061E18
	.align 2, 0
_08061DAC: .4byte gLinkEntity
_08061DB0:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0807DDAC
	adds r0, r5, #0
	bl sub_0807DDE4
	adds r2, r5, #0
	adds r2, #0x59
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08061DD4
	ldr r0, _08061E1C @ =gUnk_0810B680
	ldrb r1, [r5, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r2]
_08061DD4:
	adds r0, r5, #0
	bl sub_08004274
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08061E18
	movs r1, #0
	movs r0, #2
	strb r0, [r5, #0xc]
	strb r1, [r4]
	adds r0, r5, #0
	bl sub_08062048
	adds r4, r5, #0
	adds r4, #0x58
	ldrb r0, [r4]
	adds r1, r5, #0
	adds r1, #0x69
	strb r0, [r1]
	ldr r1, _08061E20 @ =gLinkEntity
	adds r0, r5, #0
	bl sub_080045C4
	bl sub_0806F5A4
	ldrb r1, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	ands r1, r2
	adds r1, r1, r0
	adds r0, r5, #0
	bl InitializeAnimation
_08061E18:
	pop {r4, r5, pc}
	.align 2, 0
_08061E1C: .4byte gUnk_0810B680
_08061E20: .4byte gLinkEntity

	thumb_func_start sub_08061E24
sub_08061E24: @ 0x08061E24
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08004274
	ldr r0, _08061E4C @ =gTextBox
	ldrb r1, [r0]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _08061E48
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_08061E48:
	pop {r4, pc}
	.align 2, 0
_08061E4C: .4byte gTextBox

	thumb_func_start sub_08061E50
sub_08061E50: @ 0x08061E50
	push {r4, lr}
	adds r4, r0, #0
	bl UpdateFuseInteraction
	cmp r0, #0
	beq _08061E6C
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x69
	ldrb r1, [r0]
	adds r0, r4, #0
	bl InitializeAnimation
_08061E6C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08061E70
sub_08061E70: @ 0x08061E70
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #9]
	cmp r0, #6
	bne _08061E88
	adds r0, r2, #0
	adds r0, #0x68
	ldrb r1, [r0]
	adds r0, r2, #0
	bl sub_08078784
	b _08061E8E
_08061E88:
	adds r0, r2, #0
	bl sub_08078778
_08061E8E:
	pop {pc}

	thumb_func_start sub_08061E90
sub_08061E90: @ 0x08061E90
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _08061F04
	adds r0, #1
	strb r0, [r5, #0x18]
	bl Random
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x20
	strh r0, [r5, #0x12]
	bl Random
	adds r1, r0, #0
	movs r0, #0x18
	ands r1, r0
	ldrb r0, [r4, #0x15]
	cmp r0, #8
	beq _08061ED8
	cmp r0, #8
	bgt _08061EC6
	cmp r0, #0
	beq _08061ED0
	b _08061EEE
_08061EC6:
	cmp r0, #0x10
	beq _08061EE0
	cmp r0, #0x18
	beq _08061EE8
	b _08061EEE
_08061ED0:
	cmp r1, #0x10
	bne _08061EEE
	movs r1, #8
	b _08061EEE
_08061ED8:
	cmp r1, #0x18
	bne _08061EEE
	movs r1, #0x10
	b _08061EEE
_08061EE0:
	cmp r1, #0
	bne _08061EEE
	movs r1, #0x18
	b _08061EEE
_08061EE8:
	cmp r1, #8
	bne _08061EEE
	movs r1, #0
_08061EEE:
	strb r1, [r4, #0x15]
	adds r0, r1, #0
	bl sub_0806F5B0
	strb r0, [r4, #0x14]
	ldr r1, _08061F8C @ =gUnk_0810B74A
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x24]
_08061F04:
	ldrb r0, [r4, #0x14]
	lsrs r0, r0, #1
	adds r1, r0, #4
	adds r0, r4, #0
	adds r0, #0x58
	ldrb r0, [r0]
	cmp r1, r0
	beq _08061F1A
	adds r0, r4, #0
	bl InitializeAnimation
_08061F1A:
	adds r0, r4, #0
	bl sub_080AEF88
	movs r0, #0x2e
	ldrsh r1, [r4, r0]
	adds r2, r4, #0
	adds r2, #0x6a
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _08061F3C
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x12]
_08061F3C:
	movs r3, #0x10
	rsbs r3, r3, #0
	cmp r1, r3
	bge _08061F4E
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x2e]
	movs r0, #1
	strh r0, [r5, #0x12]
_08061F4E:
	movs r6, #0x32
	ldrsh r1, [r4, r6]
	adds r2, r4, #0
	adds r2, #0x6c
	movs r6, #0
	ldrsh r0, [r2, r6]
	subs r1, r1, r0
	cmp r1, #0x10
	ble _08061F6A
	ldrh r0, [r2]
	adds r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r5, #0x12]
_08061F6A:
	cmp r1, r3
	bge _08061F78
	ldrh r0, [r2]
	subs r0, #0x10
	strh r0, [r4, #0x32]
	movs r0, #1
	strh r0, [r5, #0x12]
_08061F78:
	ldrh r0, [r5, #0x12]
	subs r0, #1
	strh r0, [r5, #0x12]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08061F8A
	ldr r1, _08061F90 @ =gUnk_02033280
	movs r0, #0
	strb r0, [r1, #6]
_08061F8A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_08061F8C: .4byte gUnk_0810B74A
_08061F90: .4byte gUnk_02033280

	thumb_func_start sub_08061F94
sub_08061F94: @ 0x08061F94
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x35
	movs r2, #0
	bl CreateFx
	adds r1, r0, #0
	cmp r1, #0
	beq _08061FAC
	adds r0, r4, #0
	bl sub_0806FAB0
_08061FAC:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08061FB0
sub_08061FB0: @ 0x08061FB0
	movs r1, #0
	str r1, [r0, #0x48]
	bx lr
	.align 2, 0

	thumb_func_start sub_08061FB8
sub_08061FB8: @ 0x08061FB8
	push {lr}
	ldr r2, _08061FD0 @ =gUnk_0810B748
	ldr r3, [r1, #4]
	adds r2, r3, r2
	ldrb r2, [r2]
	lsls r3, r3, #2
	ldr r1, _08061FD4 @ =gUnk_0810B740
	adds r3, r3, r1
	movs r1, #1
	bl sub_08078850
	pop {pc}
	.align 2, 0
_08061FD0: .4byte gUnk_0810B748
_08061FD4: .4byte gUnk_0810B740

	thumb_func_start sub_08061FD8
sub_08061FD8: @ 0x08061FD8
	push {lr}
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	bl InitializeAnimation
	pop {pc}

	thumb_func_start sub_08061FE4
sub_08061FE4: @ 0x08061FE4
	push {lr}
	ldrb r1, [r0, #0x14]
	lsrs r1, r1, #1
	adds r1, #4
	bl InitializeAnimation
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08061FF4
sub_08061FF4: @ 0x08061FF4
	push {lr}
	adds r1, r0, #0
	ldr r2, _08062008 @ =gUnk_0810B790
	ldrb r0, [r1, #0xa]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bl TextboxNoOverlap
	pop {pc}
	.align 2, 0
_08062008: .4byte gUnk_0810B790

	thumb_func_start sub_0806200C
sub_0806200C: @ 0x0806200C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0x29
	bl CheckGlobalFlag
	cmp r0, #0
	beq _08062034
	movs r0, #0x6b
	bl CheckLocalFlag
	cmp r0, #0
	beq _08062034
	movs r0, #0x39
	bl GetInventoryValue
	movs r4, #1
	cmp r0, #2
	bne _08062034
	movs r4, #2
_08062034:
	ldr r0, _08062044 @ =gUnk_0810B7BA
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r1, r5, #0
	bl TextboxNoOverlap
	pop {r4, r5, pc}
	.align 2, 0
_08062044: .4byte gUnk_0810B7BA

	thumb_func_start sub_08062048
sub_08062048: @ 0x08062048
	push {lr}
	adds r3, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #6
	bne _0806207C
	ldr r0, _08062074 @ =gUnk_02002A40
	ldrb r0, [r0, #8]
	subs r0, #2
	cmp r0, #0
	bge _0806205E
	movs r0, #0
_0806205E:
	ldrb r1, [r3, #0xa]
	lsls r1, r1, #6
	lsls r0, r0, #3
	ldr r2, _08062078 @ =gUnk_0810B7C0
	adds r0, r0, r2
	adds r1, r1, r0
	adds r0, r3, #0
	bl ShowNPCDialogue
	b _08062084
	.align 2, 0
_08062074: .4byte gUnk_02002A40
_08062078: .4byte gUnk_0810B7C0
_0806207C:
	movs r0, #0
	adds r1, r3, #0
	bl TextboxNoOverlap
_08062084:
	pop {pc}
	.align 2, 0

	thumb_func_start sub_08062088
sub_08062088: @ 0x08062088
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080620BA
	ldr r1, _080620C4 @ =gUnk_0810B6EC
	ldrb r0, [r4, #0xa]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl LoadExtraSpriteData
	cmp r0, #0
	beq _080620C2
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #0x18]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #0x18]
_080620BA:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08061CB4
_080620C2:
	pop {r4, pc}
	.align 2, 0
_080620C4: .4byte gUnk_0810B6EC
