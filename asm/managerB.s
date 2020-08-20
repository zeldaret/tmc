	.include "asm/macros.inc"

	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080585F0
sub_080585F0: @ 0x080585F0
	push {lr}
	ldr r2, _08058604 @ =gUnk_08108208
	ldrb r1, [r0, #0xa]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_08058604: .4byte gUnk_08108208

	thumb_func_start sub_08058608
sub_08058608: @ 0x08058608
	push {lr}
	ldr r2, _0805861C @ =gUnk_08108210
	ldrb r1, [r0, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {pc}
	.align 2, 0
_0805861C: .4byte gUnk_08108210

	thumb_func_start sub_08058620
sub_08058620: @ 0x08058620
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3e]
	bl CheckFlags
	cmp r0, #0
	bne _08058648
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _0805863E
	adds r0, r4, #0
	bl sub_080586EC
_0805863E:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
	b _0805864C
_08058648:
	bl DeleteThisEntity
_0805864C:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start sub_08058650
sub_08058650: @ 0x08058650
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x3c]
	bl CheckFlags
	cmp r0, #0
	beq _08058698
	adds r0, r4, #0
	bl sub_080586EC
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _08058692
	ldr r1, _0805869C @ =gRoomVars
	ldrb r0, [r1, #9]
	movs r3, #0x33
	cmp r0, #0
	beq _0805867A
	adds r3, r0, #0
_0805867A:
	ldr r0, _080586A0 @ =gArea
	movs r1, #0x86
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, [r0]
	adds r1, r4, #0
	adds r1, #0x20
	strb r2, [r1]
	str r3, [r0]
	adds r0, r3, #0
	bl PlaySFX
_08058692:
	ldr r0, _080586A4 @ =0x00000B0F
	bl sub_080186C0
_08058698:
	pop {r4, pc}
	.align 2, 0
_0805869C: .4byte gRoomVars
_080586A0: .4byte gArea
_080586A4: .4byte 0x00000B0F

	thumb_func_start sub_080586A8
sub_080586A8: @ 0x080586A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _080586E4
	ldrh r0, [r4, #0x3e]
	bl SetFlag
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _080586E0
	adds r0, r4, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _080586E0
	ldr r1, _080586E8 @ =gArea
	movs r0, #0x86
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0]
	str r0, [r1]
	bl PlaySFX
	bl sub_0801855C
_080586E0:
	bl DeleteThisEntity
_080586E4:
	pop {r4, pc}
	.align 2, 0
_080586E8: .4byte gArea

	thumb_func_start sub_080586EC
sub_080586EC: @ 0x080586EC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r1, #0
	movs r0, #2
	strb r0, [r7, #0xc]
	strb r1, [r7, #0xe]
	movs r6, #0
	adds r0, r7, #0
	bl sub_08058760
	adds r5, r0, #0
	cmp r5, #0
	bne _0805870A
	bl DeleteThisEntity
_0805870A:
	ldrb r0, [r7, #0xb]
	bl GetCurrentRoomProperty
	adds r4, r0, #0
	cmp r4, #0
	beq _0805875C
	b _08058756
_08058718:
	adds r0, r4, #0
	adds r4, #0x10
	bl CreateEntity
	adds r3, r0, #0
	cmp r3, #0
	beq _08058744
	ldrb r0, [r3, #8]
	cmp r0, #3
	bne _08058744
	adds r2, r3, #0
	adds r2, #0x6d
	ldrb r0, [r2]
	movs r1, #0x40
	orrs r1, r0
	strb r1, [r2]
	adds r2, r6, #0
	adds r6, #1
	adds r0, r5, #0
	adds r1, r3, #0
	bl sub_08058798
_08058744:
	cmp r6, #6
	bls _08058756
	movs r6, #0
	adds r0, r7, #0
	bl sub_08058760
	adds r5, r0, #0
	cmp r5, #0
	beq _0805875C
_08058756:
	ldrb r0, [r4]
	cmp r0, #0xff
	bne _08058718
_0805875C:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08058760
sub_08058760: @ 0x08058760
	push {r4, r5, lr}
	adds r5, r0, #0
	bl GetEmptyManager
	adds r4, r0, #0
	cmp r4, #0
	beq _08058794
	movs r0, #9
	strb r0, [r4, #8]
	movs r0, #0xb
	strb r0, [r4, #9]
	movs r0, #1
	strb r0, [r4, #0xa]
	str r5, [r4, #0x14]
	ldrb r0, [r5, #0xe]
	adds r0, #1
	strb r0, [r5, #0xe]
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0x20
	bl _DmaZero
	adds r0, r4, #0
	movs r1, #8
	bl AppendEntityToList
_08058794:
	adds r0, r4, #0
	pop {r4, r5, pc}

	thumb_func_start sub_08058798
sub_08058798: @ 0x08058798
	lsls r2, r2, #2
	adds r3, r0, #0
	adds r3, #0x20
	adds r3, r3, r2
	str r1, [r3]
	ldrb r1, [r0, #0xe]
	adds r1, #1
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0

	thumb_func_start sub_080587AC
sub_080587AC: @ 0x080587AC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne _080587C2
	movs r0, #1
	strb r0, [r4, #0xc]
	adds r0, r4, #0
	movs r1, #3
	bl sub_0805E3A0
_080587C2:
	movs r3, #0
	movs r2, #0
	adds r5, r4, #0
	adds r5, #0x20
_080587CA:
	lsls r0, r2, #2
	adds r1, r5, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _080587E0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _080587DE
	str r0, [r1]
	b _080587E0
_080587DE:
	movs r3, #1
_080587E0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080587CA
	cmp r3, #0
	bne _080587FE
	ldr r1, [r4, #0x14]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080587FA
	subs r0, #1
	strb r0, [r1, #0xe]
_080587FA:
	bl DeleteThisEntity
_080587FE:
	pop {r4, r5, pc}

	thumb_func_start sub_08058800
sub_08058800: @ 0x08058800
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08058830 @ =gUnk_03003DB0
	ldr r3, [r6, #4]
	cmp r3, r6
	beq _0805884A
	ldr r0, _08058834 @ =0x0000FFFF
	mov ip, r0
	ldr r7, _08058838 @ =0x00000B09
_08058814:
	ldrh r1, [r3, #8]
	mov r0, ip
	ands r0, r1
	cmp r0, r7
	bne _08058844
	movs r2, #0
	adds r1, r3, #0
	adds r1, #0x20
_08058824:
	ldr r0, [r1]
	cmp r4, r0
	bne _0805883C
	str r5, [r1]
	b _0805884A
	.align 2, 0
_08058830: .4byte gUnk_03003DB0
_08058834: .4byte 0x0000FFFF
_08058838: .4byte 0x00000B09
_0805883C:
	adds r1, #4
	adds r2, #1
	cmp r2, #7
	bls _08058824
_08058844:
	ldr r3, [r3, #4]
	cmp r3, r6
	bne _08058814
_0805884A:
	pop {r4, r5, r6, r7, pc}
