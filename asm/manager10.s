	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08059570
sub_08059570: @ 0x08059570
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r5, [r4, #0xc]
	cmp r5, #0
	bne _080595C8
	movs r6, #1
	strb r6, [r4, #0xc]
	adds r0, #0x21
	strb r5, [r0]
	adds r0, #2
	strb r5, [r0]
	bl sub_0805986C
	cmp r0, #0
	beq _080595A8
	adds r0, r4, #0
	adds r0, #0x20
	strb r6, [r0]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080595A4 @ =gUnk_0200B650
	str r5, [r0]
	b _080595B8
	.align 2, 0
_080595A4: .4byte gUnk_0200B650
_080595A8:
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x1f
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x22
	movs r0, #5
	strb r0, [r1]
_080595B8:
	ldr r0, _080595DC @ =gRoomVars
	movs r1, #0xff
	strb r1, [r0, #0x10]
	ldr r1, _080595E0 @ =sub_080595E4
	adds r0, r4, #0
	movs r2, #0
	bl sub_08052D74
_080595C8:
	adds r0, r4, #0
	bl sub_08059608
	adds r0, r4, #0
	bl sub_08059690
	adds r0, r4, #0
	bl sub_080596E0
	pop {r4, r5, r6, pc}
	.align 2, 0
_080595DC: .4byte gRoomVars
_080595E0: .4byte sub_080595E4

	thumb_func_start sub_080595E4
sub_080595E4: @ 0x080595E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08059604 @ =gRoomVars
	movs r0, #0xff
	strb r0, [r1, #0x10]
	adds r0, r4, #0
	bl sub_08059690
	adds r0, r4, #0
	bl sub_080596E0
	movs r0, #0
	bl sub_0805B4D0
	pop {r4, pc}
	.align 2, 0
_08059604: .4byte gRoomVars

	thumb_func_start sub_08059608
sub_08059608: @ 0x08059608
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x23
	ldrb r0, [r4]
	cmp r0, #0
	beq _08059638
	subs r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08059682
	ldr r0, _08059634 @ =gArea
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, r2
	adds r2, #4
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	bl PlaySFX
	b _08059682
	.align 2, 0
_08059634: .4byte gArea
_08059638:
	bl sub_0805986C
	cmp r0, #0
	beq _08059668
	ldr r0, _0805965C @ =gArea
	ldr r2, _08059660 @ =0x00000864
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0x1e
	beq _08059682
	movs r0, #0x1e
	str r0, [r1]
	movs r0, #0x78
	strb r0, [r4]
	ldr r0, _08059664 @ =0x800D0000
	bl PlaySFX
	b _08059682
	.align 2, 0
_0805965C: .4byte gArea
_08059660: .4byte 0x00000864
_08059664: .4byte 0x800D0000
_08059668:
	ldr r0, _08059684 @ =gArea
	ldr r2, _08059688 @ =0x00000864
	adds r1, r0, r2
	ldr r0, [r1]
	cmp r0, #0x37
	beq _08059682
	movs r0, #0x37
	str r0, [r1]
	movs r0, #0x78
	strb r0, [r4]
	ldr r0, _0805968C @ =0x800D0000
	bl PlaySFX
_08059682:
	pop {r4, pc}
	.align 2, 0
_08059684: .4byte gArea
_08059688: .4byte 0x00000864
_0805968C: .4byte 0x800D0000

	thumb_func_start sub_08059690
sub_08059690: @ 0x08059690
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08059844
	cmp r0, #0
	beq _080596BC
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0
	beq _080596D8
	ldr r0, _080596B8 @ =gUnk_085A7320
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r4]
	bl sub_08059894
	ldrb r0, [r4]
	subs r0, #1
	b _080596D6
	.align 2, 0
_080596B8: .4byte gUnk_085A7320
_080596BC:
	adds r4, #0x20
	ldrb r0, [r4]
	cmp r0, #0x1f
	bhi _080596D8
	ldr r0, _080596DC @ =gUnk_085A7320
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r4]
	bl sub_08059894
	ldrb r0, [r4]
	adds r0, #1
_080596D6:
	strb r0, [r4]
_080596D8:
	pop {r4, pc}
	.align 2, 0
_080596DC: .4byte gUnk_085A7320

	thumb_func_start sub_080596E0
sub_080596E0: @ 0x080596E0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _08059730 @ =gUnk_030010A0
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080596FC
	ldr r0, _08059734 @ =gScreen
	ldrh r1, [r0, #0x16]
	adds r1, #8
	movs r2, #0x1f
	ands r1, r2
	strh r1, [r0, #0x16]
_080596FC:
	bl sub_0805986C
	cmp r0, #0
	beq _08059740
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0x22
	cmp r1, #0
	bne _08059764
	ldrb r0, [r2]
	cmp r0, #2
	beq _08059764
	movs r0, #1
	strb r0, [r5]
	movs r0, #3
	strb r0, [r2]
	ldr r0, _08059738 @ =gUnk_08108390
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xe]
	ldr r0, _0805973C @ =gUnk_0200B650
	str r1, [r0]
	b _08059764
	.align 2, 0
_08059730: .4byte gUnk_030010A0
_08059734: .4byte gScreen
_08059738: .4byte gUnk_08108390
_0805973C: .4byte gUnk_0200B650
_08059740:
	adds r0, r4, #0
	adds r0, #0x21
	ldrb r1, [r0]
	adds r5, r0, #0
	adds r2, r4, #0
	adds r2, #0x22
	cmp r1, #0
	bne _08059764
	ldrb r0, [r2]
	cmp r0, #5
	beq _08059764
	movs r0, #2
	strb r0, [r5]
	ldr r1, _08059774 @ =gUnk_08108390
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
_08059764:
	adds r6, r5, #0
	ldrb r0, [r6]
	cmp r0, #1
	beq _08059778
	cmp r0, #2
	beq _080597A8
	b _080597D0
	.align 2, 0
_08059774: .4byte gUnk_08108390
_08059778:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _080597D0
	ldr r1, _080597A4 @ =gUnk_08108390
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r2]
	cmp r0, #2
	bne _080597D0
	strb r5, [r6]
	b _080597D0
	.align 2, 0
_080597A4: .4byte gUnk_08108390
_080597A8:
	ldrb r0, [r4, #0xe]
	subs r0, #1
	strb r0, [r4, #0xe]
	movs r3, #0xff
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _080597D0
	ldr r1, _080597EC @ =gUnk_08108390
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ands r0, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0xe]
	ldrb r0, [r2]
	cmp r0, #5
	bne _080597D0
	strb r6, [r5]
_080597D0:
	ldr r3, _080597F0 @ =gRoomVars
	ldrb r1, [r2]
	ldrb r0, [r3, #0x10]
	cmp r0, r1
	beq _08059838
	strb r1, [r3, #0x10]
	ldrb r0, [r2]
	cmp r0, #4
	beq _08059800
	cmp r0, #4
	ble _080597F4
	cmp r0, #5
	beq _08059824
	b _08059838
	.align 2, 0
_080597EC: .4byte gUnk_08108390
_080597F0: .4byte gRoomVars
_080597F4:
	cmp r0, #0
	blt _08059838
	adds r0, #0x2b
	bl sub_0801D7EC
	b _08059838
_08059800:
	ldr r4, _0805981C @ =gUnk_02001A40
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801D630
	ldr r1, _08059820 @ =0x0600E800
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08000E96
	b _08059838
	.align 2, 0
_0805981C: .4byte gUnk_02001A40
_08059820: .4byte 0x0600E800
_08059824:
	ldr r0, _0805983C @ =gUnk_0200B650
	ldr r1, _08059840 @ =gBG1Settings
	str r1, [r0]
	subs r1, #0x14
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
_08059838:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0805983C: .4byte gUnk_0200B650
_08059840: .4byte gBG1Settings

	thumb_func_start sub_08059844
sub_08059844: @ 0x08059844
	push {lr}
	movs r3, #0
	ldr r0, _08059864 @ =gLinkEntity
	movs r2, #0x2e
	ldrsh r1, [r0, r2]
	ldr r2, _08059868 @ =gRoomControls
	ldrh r0, [r2, #6]
	subs r1, r1, r0
	ldrh r0, [r2, #0x1e]
	lsrs r0, r0, #1
	cmp r1, r0
	ble _0805985E
	movs r3, #1
_0805985E:
	adds r0, r3, #0
	pop {pc}
	.align 2, 0
_08059864: .4byte gLinkEntity
_08059868: .4byte gRoomControls

	thumb_func_start sub_0805986C
sub_0805986C: @ 0x0805986C
	push {lr}
	movs r2, #0
	ldr r0, _0805988C @ =gLinkEntity
	movs r3, #0x2e
	ldrsh r1, [r0, r3]
	ldr r0, _08059890 @ =gRoomControls
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	ble _08059886
	movs r2, #1
_08059886:
	adds r0, r2, #0
	pop {pc}
	.align 2, 0
_0805988C: .4byte gLinkEntity
_08059890: .4byte gRoomControls

	thumb_func_start sub_08059894
sub_08059894: @ 0x08059894
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _080598E8 @ =gUnk_020176E0
	mov sb, r0
	movs r6, #0
	lsls r2, r2, #0x18
	mov r8, r2
_080598AA:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, sb
	mov r7, r8
	lsrs r3, r7, #0x18
	bl sub_08059960
	adds r5, #0x20
	adds r4, #0x20
	movs r0, #0x20
	add sb, r0
	adds r6, #1
	cmp r6, #0xc
	bls _080598AA
	ldr r0, _080598EC @ =gUnk_02017700
	movs r2, #0x90
	lsls r2, r2, #2
	adds r1, r0, r2
	movs r2, #0x20
	bl sub_0801D66C
	ldr r2, _080598F0 @ =gUnk_0200B644
	ldr r0, [r2]
	ldr r1, _080598F4 @ =0x00207FFC
	orrs r0, r1
	str r0, [r2]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080598E8: .4byte gUnk_020176E0
_080598EC: .4byte gUnk_02017700
_080598F0: .4byte gUnk_0200B644
_080598F4: .4byte 0x00207FFC

	thumb_func_start sub_080598F8
sub_080598F8: @ 0x080598F8
	push {r4, r5, r6, r7, lr}
	movs r4, #0x1f
	adds r3, r0, #0
	ands r3, r4
	lsls r6, r3, #8
	adds r3, r6, #0
	muls r3, r2, r3
	lsrs r6, r3, #5
	adds r3, r1, #0
	ands r3, r4
	lsls r3, r3, #8
	movs r4, #0x20
	subs r4, r4, r2
	muls r3, r4, r3
	lsrs r3, r3, #5
	adds r3, r6, r3
	lsrs r6, r3, #8
	movs r5, #0xf8
	lsls r5, r5, #2
	adds r3, r0, #0
	ands r3, r5
	lsls r7, r3, #3
	adds r3, r7, #0
	muls r3, r2, r3
	lsrs r7, r3, #5
	adds r3, r1, #0
	ands r3, r5
	lsls r3, r3, #3
	muls r3, r4, r3
	lsrs r3, r3, #5
	adds r3, r7, r3
	lsrs r7, r3, #8
	movs r3, #0xf8
	lsls r3, r3, #7
	ands r0, r3
	lsrs r5, r0, #2
	adds r0, r5, #0
	muls r0, r2, r0
	lsrs r5, r0, #5
	ands r1, r3
	lsrs r0, r1, #2
	muls r0, r4, r0
	lsrs r0, r0, #5
	adds r0, r5, r0
	lsrs r5, r0, #8
	lsls r0, r7, #5
	orrs r6, r0
	lsls r0, r5, #0xa
	orrs r6, r0
	adds r0, r6, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08059960
sub_08059960: @ 0x08059960
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r7, #0
_08059974:
	ldrh r0, [r6]
	adds r6, #2
	ldrh r1, [r5]
	adds r5, #2
	mov r2, r8
	bl sub_080598F8
	strh r0, [r4]
	adds r4, #2
	adds r7, #1
	cmp r7, #0xf
	bls _08059974
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08059994
sub_08059994: @ 0x08059994
	push {lr}
	bl sub_0805986C
	cmp r0, #0
	beq _080599AE
	movs r0, #0x5b
	bl LoadPalettesByPaletteGroupIndex
	ldr r0, _080599B0 @ =gArea
	ldr r1, _080599B4 @ =0x00000864
	adds r0, r0, r1
	movs r1, #0x1e
	str r1, [r0]
_080599AE:
	pop {pc}
	.align 2, 0
_080599B0: .4byte gArea
_080599B4: .4byte 0x00000864
