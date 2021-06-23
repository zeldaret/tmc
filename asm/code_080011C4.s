	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start EnemyUpdate
EnemyUpdate: @ 0x080011C4
	mov r3, lr
	push {r3, r4}
	adds r4, r0, #0
	ldrb r2, [r0, #0xc]
	cmp r2, #0
	bne _080011DC
	bl EnemyInit
	cmp r0, #0
	bne _080011EA
	bl DeleteThisEntity
_080011DC:
	bl sub_0805E3B0
	cmp r0, #0
	bne _0800120A
	adds r0, r4, #0
	bl sub_080028E0
_080011EA:
	adds r0, r4, #0
	movs r1, #0x6d
	ldrb r1, [r0, r1]
	lsrs r1, r1, #5
	bhs _0800120A
	ldrb r1, [r0, #9]
	lsls r1, r1, #2
	ldr r2, _08001358 @ =gEnemyFunctions
	ldr r1, [r2, r1]
	bl _call_via_r1
	movs r1, #0x41
	movs r3, #0x7f
	ldrb r2, [r4, r1]
	ands r2, r3
	strb r2, [r4, r1]
_0800120A:
	adds r0, r4, #0
	bl DrawEntity
	pop {r3, r4}
	bx r3

	thumb_func_start sub_08001214
sub_08001214: @ 0x08001214
	movs r3, #0x3a
	ldrb r1, [r0, r3]
	movs r2, #1
	tst r1, r2
	bne _08001230
	orrs r1, r2
	strb r2, [r0, r3]
	movs r1, #1
	movs r2, #0x5a
	ldrb r2, [r0, r2]
	lsrs r2, r2, #7
	blo _0800122E
	movs r1, #0x20
_0800122E:
	strb r1, [r0, #0xe]
_08001230:
	ldrb r1, [r0, #0xe]
	subs r1, #1
	beq _0800123E
	strb r1, [r0, #0xe]
	movs r1, #4
	ldr r3, _0800135C @ =UpdateAnimationVariableFrames
	bx r3
_0800123E:
	ldr r3, _08001360 @ =CreateItemOnGround
	bx r3

	non_word_aligned_thumb_func_start sub_08001242
sub_08001242: @ 0x08001242
	push {lr}
	movs r1, #0x43
	ldrb r2, [r0, r1]
	subs r2, #1
	strb r2, [r0, r1]
	cmp r2, #0x3c
	bhs _08001282
	movs r3, #3
	ands r3, r2
	add r1, pc, #0x34
	ldrsb r1, [r1, r3]
	movs r3, #0x62
	strb r1, [r0, r3]
	cmp r2, #0
	bne _08001282
	movs r1, #0x68
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _08001282
	ldrb r2, [r1, #8]
	cmp r2, #6
	bne _08001282
	ldrb r2, [r1, #9]
	cmp r2, #0xf
	bne _08001282
	ldrb r2, [r1, #0xa]
	cmp r2, #0x1c
	bne _08001282
	push {r0}
	bl sub_0804AA1C
	pop {r0}
_08001282:
	ldr r1, _08001364 @ =0x00001800
	bl sub_08003FC4
	pop {pc}
	.align 2, 0
_0800128C:
	.byte 0x00, 0x01, 0x00, 0xFF

	thumb_func_start sub_08001290
sub_08001290: @ 0x08001290
	cmp r1, #0
	beq _0800129C
	ldr r2, _08001368 @ =gUnk_080012C8
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bx r1
_0800129C:
	bx lr

	non_word_aligned_thumb_func_start EnemyFunctionHandler
EnemyFunctionHandler: @ 0x0800129E
	mov r3, lr
	push {r3, r4, r5}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080012DC
	cmp r0, #0
	beq _080012B2
	ldr r1, _0800136C @ =gUnk_080012C8
	b _080012BA
_080012B2:
	adds r0, r4, #0
	bl GetNextFunction
	adds r1, r5, #0
_080012BA:
	lsls r0, r0, #2
	ldr r1, [r1, r0]
	adds r0, r4, #0
	pop {r3, r4, r5}
	mov lr, r3
	bx r1
	.align 2, 0

gUnk_080012C8::
	.4byte 0x00000000
_080012CC: .4byte sub_08001214
_080012D0: .4byte sub_080043A8
_080012D4: .4byte CreateChestSpawner
_080012D8: .4byte sub_080043B0

	thumb_func_start sub_080012DC
sub_080012DC: @ 0x080012DC
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0x3a
	ldrb r1, [r4, r5]
	lsrs r1, r1, #3
	bhs _08001302
	bl sub_080043E8
	cmp r0, #4
	beq _08001302
	cmp r0, #0
	bne _08001306
	ldrb r1, [r4, r5]
	lsrs r1, r1, #1
	blo _08001302
	ldrb r1, [r4, #0x10]
	movs r2, #0x80
	orrs r1, r2
	strb r1, [r4, #0x10]
_08001302:
	movs r0, #0
	pop {r4, r5, pc}
_08001306:
	cmp r0, #1
	beq _08001316
	movs r1, #1
	strb r1, [r4, #0xe]
	ldrb r2, [r4, r5]
	movs r1, #1
	orrs r1, r2
	strb r1, [r4, r5]
_08001316:
	pop {r4, r5, pc}

	thumb_func_start sub_08001318
sub_08001318: @ 0x08001318
	movs r1, #0x36
	ldrsh r1, [r0, r1]
	cmp r1, #0
	bpl sub_08001324
	movs r2, #0xff
	strb r2, [r0, #0x15]

	thumb_func_start sub_08001324
sub_08001324: @ 0x08001324
	ldr r3, _08001370 @ =sub_080AF18C
	bx r3

	thumb_func_start sub_08001328
sub_08001328: @ 0x08001328
	ldr r3, _08001374 @ =sub_080AF1BC
	bx r3

	thumb_func_start sub_0800132C
sub_0800132C: @ 0x0800132C
	movs r2, #0x38
	ldrb r3, [r1, r2]
	ldrb r2, [r0, r2]
	ands r2, r3
	beq _08001352
	ldrh r2, [r0, #0x2e]
	ldrh r3, [r1, #0x2e]
	subs r2, r2, r3
	adds r2, #8
	cmp r2, #0x11
	bhs _0800134E
	ldrh r2, [r0, #0x32]
	ldrh r3, [r1, #0x32]
	subs r2, r2, r3
	adds r2, #8
	cmp r2, #0x11
	blo _08001352
_0800134E:
	ldr r3, _08001378 @ =GetFacingDirection
	bx r3
_08001352:
	movs r0, #0xff
	bx lr
	.align 2, 0
_08001358: .4byte gEnemyFunctions
_0800135C: .4byte UpdateAnimationVariableFrames
_08001360: .4byte CreateItemOnGround
_08001364: .4byte 0x00001800
_08001368: .4byte gUnk_080012C8
_0800136C: .4byte gUnk_080012C8
_08001370: .4byte sub_080AF18C
_08001374: .4byte sub_080AF1BC
_08001378: .4byte GetFacingDirection

gUnk_0800137C:: @ 0800137C
	.incbin "baserom.gba", 0x00137C, 0x0000004

gUnk_08001380:: @ 08001380
	.incbin "baserom.gba", 0x001380, 0x0000074

gUnk_080013F4:: @ 080013F4
	.incbin "baserom.gba", 0x0013F4, 0x000000C

gUnk_08001400:: @ 08001400
	.incbin "baserom.gba", 0x001400, 0x0000006

gUnk_08001406:: @ 08001406
	.incbin "baserom.gba", 0x001406, 0x000000A

gUnk_08001410:: @ 08001410
	.incbin "baserom.gba", 0x001410, 0x000000C

gUnk_0800141C:: @ 0800141C
	.incbin "baserom.gba", 0x00141C, 0x0000020

gUnk_0800143C:: @ 0800143C
	.incbin "baserom.gba", 0x00143C, 0x00000E5

gUnk_08001521:: @ 08001521
	.incbin "baserom.gba", 0x001521, 0x0000012

gUnk_08001533:: @ 08001533
	.incbin "baserom.gba", 0x001533, 0x000000D

gUnk_08001540:: @ 08001540
	.incbin "baserom.gba", 0x001540, 0x000007C

gUnk_080015BC:: @ 080015BC
	.incbin "baserom.gba", 0x0015BC, 0x0000035

gUnk_080015F1:: @ 080015F1
	.incbin "baserom.gba", 0x0015F1, 0x000002B

gUnk_0800161C:: @ 0800161C
	.incbin "baserom.gba", 0x00161C, 0x000001B

gUnk_08001637:: @ 08001637
	.incbin "baserom.gba", 0x001637, 0x00000C9

gUnk_08001700:: @ 08001700
	.incbin "baserom.gba", 0x001700, 0x0000001

gUnk_08001701:: @ 08001701
	.incbin "baserom.gba", 0x001701, 0x0000001

gUnk_08001702:: @ 08001702
.ifdef EU
    @ TODO only small differences
	.incbin "baserom_eu.gba", 0x00174A, 0x0000014
.else
	.incbin "baserom.gba", 0x001702, 0x0000014
.endif

gUnk_08001716:: @ 08001716
	.incbin "baserom.gba", 0x001716, 0x0000017

gUnk_0800172D:: @ 0800172D
	.incbin "baserom.gba", 0x00172D, 0x00000D4

gUnk_08001801:: @ 08001801
	.incbin "baserom.gba", 0x001801, 0x000000F

gUnk_08001810:: @ 08001810
	.incbin "baserom.gba", 0x001810, 0x0000008

gUnk_08001818:: @ 08001818
	.incbin "baserom.gba", 0x001818, 0x0000027

gUnk_0800183F:: @ 0800183F
	.incbin "baserom.gba", 0x00183F, 0x0000005

gUnk_08001844:: @ 08001844
	.incbin "baserom.gba", 0x001844, 0x0000006

gUnk_0800184A:: @ 0800184A
	.incbin "baserom.gba", 0x00184A, 0x0000006

gUnk_08001850:: @ 08001850
	.incbin "baserom.gba", 0x001850, 0x0000010

gUnk_08001860:: @ 08001860
	.incbin "baserom.gba", 0x001860, 0x0000040

gUnk_080018A0:: @ 080018A0
	.incbin "baserom.gba", 0x0018A0, 0x0000004

.ifdef EU
	.incbin "baserom_eu.gba", 0x0018EC, 0x7E
.else
gUnk_080018A4:: @ 080018A4
	.incbin "baserom.gba", 0x0018A4, 0x000005E
.endif

gUnk_08001902:: @ 08001902
	.incbin "baserom.gba", 0x001902, 0x000000F

gUnk_08001911:: @ 08001911
	.incbin "baserom.gba", 0x001911, 0x000000B

gUnk_0800191C:: @ 0800191C
.ifdef EU
	@ TODO mostly 0 bytes?
	.incbin "baserom_eu.gba", 0x001984, 0x000008F
.else
	.incbin "baserom.gba", 0x00191C, 0x000004F
.endif

gUnk_0800196B:: @ 0800196B
	.incbin "baserom.gba", 0x00196B, 0x0000015

gUnk_08001980:: @ 08001980
	.incbin "baserom.gba", 0x001980, 0x0000098

gUnk_08001A18:: @ 08001A18
	.incbin "baserom.gba", 0x001A18, 0x0000004

gUnk_08001A1C:: @ 08001A1C
	.incbin "baserom.gba", 0x001A1C, 0x0000060

gUnk_08001A7C:: @ 08001A7C
	.4byte gUnk_08001C5C
	.4byte gUnk_08001C62
	.4byte gUnk_08001C68
	.4byte gUnk_08001C6E
	.4byte gUnk_08001C74
	.4byte gUnk_08001C6E
	.4byte gUnk_08001C7A
	.4byte gUnk_08001C7A
	.4byte gUnk_08001C7A
	.4byte gUnk_08001C80
	.4byte gUnk_08001C86
	.4byte gUnk_08001C8C
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001C98
	.4byte gUnk_08001C9E
	.4byte gUnk_08001C86
	.4byte gUnk_08001C9E
	.4byte gUnk_08001C86
	.4byte gUnk_08001CA4
	.4byte gUnk_08001C9E
	.4byte gUnk_08001C9E
	.4byte gUnk_08001CAA
	.4byte gUnk_08001CB0
	.4byte gUnk_08001CB6
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001C92
	.4byte gUnk_08001CBC
	.4byte gUnk_08001CC2
	.4byte gUnk_08001CC2
	.4byte gUnk_08001CC2
	.4byte gUnk_08001CC2
	.4byte gUnk_08001C9E
	.4byte gUnk_08001C86
	.4byte gUnk_08001C86
	.4byte gUnk_08001C9E
	.4byte gUnk_08001C86
	.4byte gUnk_08001C86
	.4byte gUnk_08001C86
	.4byte gUnk_08001DAC
	.4byte gUnk_08001C6E
	.4byte gUnk_08001C6E
	.4byte gUnk_08001CA4
	.4byte gUnk_08001C9E
	.4byte gUnk_08001C86
	.4byte gUnk_08001C86
	.4byte gUnk_08001C92
	.4byte gUnk_08001CA4
	.4byte gUnk_08001CC8
	.4byte gUnk_08001C6E
	.4byte gUnk_08001CCE
	.4byte gUnk_08001CD4
	.4byte gUnk_08001CDA
	.4byte gUnk_08001CE0
	.4byte gUnk_08001CE6
	.4byte gUnk_08001CEC
	.4byte gUnk_08001CF2
	.4byte gUnk_08001CF8
	.4byte gUnk_08001CFE
	.4byte gUnk_08001D04
	.4byte gUnk_08001D0A
	.4byte gUnk_08001D16
	.4byte gUnk_08001D1C
	.4byte gUnk_08001D22
	.4byte gUnk_08001D28
	.4byte gUnk_08001D2E
	.4byte gUnk_08001D34
	.4byte gUnk_08001D3A
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D46
	.4byte gUnk_08001D4C
	.4byte gUnk_08001D4C
	.4byte gUnk_08001D4C
	.4byte gUnk_08001D4C
	.4byte gUnk_08001D52
	.4byte gUnk_08001D58
	.4byte gUnk_08001D5E
	.4byte gUnk_08001D64
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D6A
	.4byte gUnk_08001DB8
	.4byte gUnk_08001D40
	.4byte gUnk_08001DBE
	.4byte gUnk_08001D70
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D40
	.4byte gUnk_08001D76
	.4byte gUnk_08001DC4
	.4byte gUnk_08001D7C
	.4byte gUnk_08001D7C
	.4byte gUnk_08001D7C
	.4byte gUnk_08001D7C
	.4byte gUnk_08001D7C
	.4byte gUnk_08001D82
	.4byte gUnk_08001D82
	.4byte gUnk_08001D88
	.4byte gUnk_08001D88
	.4byte gUnk_08001D88
	.4byte gUnk_08001D8E
	.4byte gUnk_08001D8E
	.4byte gUnk_08001D8E
	.4byte gUnk_08001D94
	.4byte gUnk_08001D94
	.4byte gUnk_08001D9A
	.4byte gUnk_08001DA0
	.4byte gUnk_08001DA6

gUnk_08001C5C:: @ 08001C5C
	.incbin "baserom.gba", 0x001C5C, 0x0000006

gUnk_08001C62:: @ 08001C62
	.incbin "baserom.gba", 0x001C62, 0x0000006

gUnk_08001C68:: @ 08001C68
	.incbin "baserom.gba", 0x001C68, 0x0000006

gUnk_08001C6E:: @ 08001C6E
	.incbin "baserom.gba", 0x001C6E, 0x0000006

gUnk_08001C74:: @ 08001C74
	.incbin "baserom.gba", 0x001C74, 0x0000006

gUnk_08001C7A:: @ 08001C7A
	.incbin "baserom.gba", 0x001C7A, 0x0000006

gUnk_08001C80:: @ 08001C80
	.incbin "baserom.gba", 0x001C80, 0x0000006

gUnk_08001C86:: @ 08001C86
	.incbin "baserom.gba", 0x001C86, 0x0000006

gUnk_08001C8C:: @ 08001C8C
	.incbin "baserom.gba", 0x001C8C, 0x0000006

gUnk_08001C92:: @ 08001C92
	.incbin "baserom.gba", 0x001C92, 0x0000006

gUnk_08001C98:: @ 08001C98
	.incbin "baserom.gba", 0x001C98, 0x0000006

gUnk_08001C9E:: @ 08001C9E
	.incbin "baserom.gba", 0x001C9E, 0x0000002

gUnk_08001CA0:: @ 08001CA0
	.incbin "baserom.gba", 0x001CA0, 0x0000004

gUnk_08001CA4:: @ 08001CA4
	.incbin "baserom.gba", 0x001CA4, 0x0000006

gUnk_08001CAA:: @ 08001CAA
	.incbin "baserom.gba", 0x001CAA, 0x0000006

gUnk_08001CB0:: @ 08001CB0
	.incbin "baserom.gba", 0x001CB0, 0x0000006

gUnk_08001CB6:: @ 08001CB6
	.incbin "baserom.gba", 0x001CB6, 0x0000006

gUnk_08001CBC:: @ 08001CBC
	.incbin "baserom.gba", 0x001CBC, 0x0000006

gUnk_08001CC2:: @ 08001CC2
	.incbin "baserom.gba", 0x001CC2, 0x0000006

gUnk_08001CC8:: @ 08001CC8
	.incbin "baserom.gba", 0x001CC8, 0x0000006

gUnk_08001CCE:: @ 08001CCE
	.incbin "baserom.gba", 0x001CCE, 0x0000006

gUnk_08001CD4:: @ 08001CD4
	.incbin "baserom.gba", 0x001CD4, 0x0000006

gUnk_08001CDA:: @ 08001CDA
	.incbin "baserom.gba", 0x001CDA, 0x0000006

gUnk_08001CE0:: @ 08001CE0
	.incbin "baserom.gba", 0x001CE0, 0x0000006

gUnk_08001CE6:: @ 08001CE6
	.incbin "baserom.gba", 0x001CE6, 0x0000006

gUnk_08001CEC:: @ 08001CEC
	.incbin "baserom.gba", 0x001CEC, 0x0000006

gUnk_08001CF2:: @ 08001CF2
	.incbin "baserom.gba", 0x001CF2, 0x0000006

gUnk_08001CF8:: @ 08001CF8
	.incbin "baserom.gba", 0x001CF8, 0x0000006

gUnk_08001CFE:: @ 08001CFE
	.incbin "baserom.gba", 0x001CFE, 0x0000006

gUnk_08001D04:: @ 08001D04
	.incbin "baserom.gba", 0x001D04, 0x0000001

gUnk_08001D05:: @ 08001D05
	.incbin "baserom.gba", 0x001D05, 0x0000005

gUnk_08001D0A:: @ 08001D0A
	.incbin "baserom.gba", 0x001D0A, 0x0000006

gUnk_08001D10:: @ 08001D10
	.incbin "baserom.gba", 0x001D10, 0x0000006

gUnk_08001D16:: @ 08001D16
	.incbin "baserom.gba", 0x001D16, 0x0000006

gUnk_08001D1C:: @ 08001D1C
	.incbin "baserom.gba", 0x001D1C, 0x0000006

gUnk_08001D22:: @ 08001D22
	.incbin "baserom.gba", 0x001D22, 0x0000006

gUnk_08001D28:: @ 08001D28
	.incbin "baserom.gba", 0x001D28, 0x0000006

gUnk_08001D2E:: @ 08001D2E
	.incbin "baserom.gba", 0x001D2E, 0x0000006

gUnk_08001D34:: @ 08001D34
	.incbin "baserom.gba", 0x001D34, 0x0000002

gUnk_08001D36:: @ 08001D36
	.incbin "baserom.gba", 0x001D36, 0x0000004

gUnk_08001D3A:: @ 08001D3A
	.incbin "baserom.gba", 0x001D3A, 0x0000006

gUnk_08001D40:: @ 08001D40
	.incbin "baserom.gba", 0x001D40, 0x0000006

gUnk_08001D46:: @ 08001D46
	.incbin "baserom.gba", 0x001D46, 0x0000006

gUnk_08001D4C:: @ 08001D4C
	.incbin "baserom.gba", 0x001D4C, 0x0000006

gUnk_08001D52:: @ 08001D52
	.incbin "baserom.gba", 0x001D52, 0x0000006

gUnk_08001D58:: @ 08001D58
	.incbin "baserom.gba", 0x001D58, 0x0000006

gUnk_08001D5E:: @ 08001D5E
	.incbin "baserom.gba", 0x001D5E, 0x0000006

gUnk_08001D64:: @ 08001D64
	.incbin "baserom.gba", 0x001D64, 0x0000006

gUnk_08001D6A:: @ 08001D6A
	.incbin "baserom.gba", 0x001D6A, 0x0000006

gUnk_08001D70:: @ 08001D70
	.incbin "baserom.gba", 0x001D70, 0x0000006

gUnk_08001D76:: @ 08001D76
	.incbin "baserom.gba", 0x001D76, 0x0000006

gUnk_08001D7C:: @ 08001D7C
	.incbin "baserom.gba", 0x001D7C, 0x0000006

gUnk_08001D82:: @ 08001D82
	.incbin "baserom.gba", 0x001D82, 0x0000006

gUnk_08001D88:: @ 08001D88
	.incbin "baserom.gba", 0x001D88, 0x0000006

gUnk_08001D8E:: @ 08001D8E
	.incbin "baserom.gba", 0x001D8E, 0x0000006

gUnk_08001D94:: @ 08001D94
	.incbin "baserom.gba", 0x001D94, 0x0000006

gUnk_08001D9A:: @ 08001D9A
	.incbin "baserom.gba", 0x001D9A, 0x0000006

gUnk_08001DA0:: @ 08001DA0
	.incbin "baserom.gba", 0x001DA0, 0x0000006

gUnk_08001DA6:: @ 08001DA6
	.incbin "baserom.gba", 0x001DA6, 0x0000006

gUnk_08001DAC:: @ 08001DAC
	.incbin "baserom.gba", 0x001DAC, 0x000000C

gUnk_08001DB8:: @ 08001DB8
	.incbin "baserom.gba", 0x001DB8, 0x0000006

gUnk_08001DBE:: @ 08001DBE
	.incbin "baserom.gba", 0x001DBE, 0x0000006

gUnk_08001DC4:: @ 08001DC4
	.incbin "baserom.gba", 0x001DC4, 0x0000008

gUnk_08001DCC:: @ 08001DCC
	.4byte gUnk_08001FAC
	.4byte gUnk_08001FB4
	.4byte gUnk_08001FBC
	.4byte gUnk_08001FC3
	.4byte gUnk_08001FCA
	.4byte gUnk_08001FD1
	.4byte gUnk_08001FD8
	.4byte gUnk_08001FDF
	.4byte gUnk_08001FE6
	.4byte gUnk_08001FED
	.4byte gUnk_08001FF8
	.4byte gUnk_08001FFF
	.4byte gUnk_08002006
	.4byte gUnk_0800200D
	.4byte gUnk_08002014
	.4byte gUnk_0800201B
	.4byte gUnk_08002022
	.4byte gUnk_08002029
	.4byte gUnk_08002030
	.4byte gUnk_08002037
	.4byte gUnk_0800203E
	.4byte gUnk_08002045
	.4byte gUnk_0800204C
	.4byte gUnk_08002053
	.4byte gUnk_0800205A
	.4byte gUnk_08002061
	.4byte gUnk_08002068
	.4byte gUnk_08002071
	.4byte gUnk_0800207A
	.4byte gUnk_08002081
	.4byte gUnk_0800208A
	.4byte gUnk_08002091
	.4byte gUnk_08002098
	.4byte gUnk_0800209F
	.4byte gUnk_080020A6
	.4byte gUnk_080020AD
	.4byte gUnk_080020B4
	.4byte gUnk_080020BB
	.4byte gUnk_080020C2
	.4byte gUnk_080020C9
	.4byte gUnk_080020D0
	.4byte gUnk_080020D7
	.4byte gUnk_080020DE
	.4byte gUnk_080020E5
	.4byte gUnk_080020EC
	.4byte gUnk_080020F4
	.4byte gUnk_080020FB
	.4byte gUnk_08002102
	.4byte gUnk_08002109
	.4byte gUnk_08002110
	.4byte gUnk_08002117
	.4byte gUnk_0800211E
	.4byte gUnk_08002125
	.4byte gUnk_0800212D
	.4byte gUnk_08002135
	.4byte gUnk_0800213D
	.4byte gUnk_08002144
	.4byte gUnk_0800214B
	.4byte gUnk_08002152
	.4byte gUnk_0800215A
	.4byte gUnk_08002162
	.4byte gUnk_08002169
	.4byte gUnk_08002170
	.4byte gUnk_08002178
	.4byte gUnk_08002184
	.4byte gUnk_0800218B
	.4byte gUnk_08002193
	.4byte gUnk_0800219B
	.4byte gUnk_080021A3
	.4byte gUnk_080021AB
	.4byte gUnk_080021B3
	.4byte gUnk_080021BC
	.4byte gUnk_080021C3
	.4byte gUnk_080021CA
	.4byte gUnk_080021D1
	.4byte gUnk_080021D8
	.4byte gUnk_080021E1
	.4byte gUnk_080021E8
	.4byte gUnk_080021F1
	.4byte gUnk_080021F8
	.4byte gUnk_080021FF
	.4byte gUnk_08002206
	.4byte gUnk_0800220D
	.4byte gUnk_08002214
	.4byte gUnk_0800221B
	.4byte gUnk_08002222
	.4byte gUnk_08002229
	.4byte gUnk_08002230
	.4byte gUnk_08002239
	.4byte gUnk_08002240
	.4byte gUnk_08002247
	.4byte gUnk_0800224E
	.4byte gUnk_08002255
	.4byte gUnk_0800225C
	.4byte gUnk_08002263
	.4byte gUnk_0800226A
	.4byte gUnk_08002271
	.4byte gUnk_08002278
	.4byte gUnk_0800227F
	.4byte gUnk_08002286
	.4byte gUnk_0800228D
	.4byte gUnk_08002294
	.4byte gUnk_0800229B
	.4byte gUnk_080022A7
	.4byte gUnk_080022B3
	.4byte gUnk_080022BF
	.4byte gUnk_080022CB
	.4byte gUnk_080022D7
	.4byte gUnk_080022DE
	.4byte gUnk_080022E5
	.4byte gUnk_080022EC
	.4byte gUnk_080022F3
	.4byte gUnk_080022FB
	.4byte gUnk_08002302
	.4byte gUnk_08002309
	.4byte gUnk_08002310
	.4byte gUnk_08002317
	.4byte gUnk_0800231E
	.4byte gUnk_08002325
	.4byte gUnk_0800232C

gUnk_08001FAC:: @ 08001FAC
	.incbin "baserom.gba", 0x001FAC, 0x0000008

gUnk_08001FB4:: @ 08001FB4
	.incbin "baserom.gba", 0x001FB4, 0x0000008

gUnk_08001FBC:: @ 08001FBC
	.incbin "baserom.gba", 0x001FBC, 0x0000007

gUnk_08001FC3:: @ 08001FC3
	.incbin "baserom.gba", 0x001FC3, 0x0000007

gUnk_08001FCA:: @ 08001FCA
	.incbin "baserom.gba", 0x001FCA, 0x0000007

gUnk_08001FD1:: @ 08001FD1
	.incbin "baserom.gba", 0x001FD1, 0x0000007

gUnk_08001FD8:: @ 08001FD8
	.incbin "baserom.gba", 0x001FD8, 0x0000007

gUnk_08001FDF:: @ 08001FDF
	.incbin "baserom.gba", 0x001FDF, 0x0000007

gUnk_08001FE6:: @ 08001FE6
	.incbin "baserom.gba", 0x001FE6, 0x0000007

gUnk_08001FED:: @ 08001FED
	.incbin "baserom.gba", 0x001FED, 0x000000B

gUnk_08001FF8:: @ 08001FF8
	.incbin "baserom.gba", 0x001FF8, 0x0000007

gUnk_08001FFF:: @ 08001FFF
	.incbin "baserom.gba", 0x001FFF, 0x0000001

gUnk_08002000:: @ 08002000
	.incbin "baserom.gba", 0x002000, 0x0000005

gUnk_08002005:: @ 08002005
	.incbin "baserom.gba", 0x002005, 0x0000001

gUnk_08002006:: @ 08002006
	.incbin "baserom.gba", 0x002006, 0x0000007

gUnk_0800200D:: @ 0800200D
	.incbin "baserom.gba", 0x00200D, 0x0000007

gUnk_08002014:: @ 08002014
	.incbin "baserom.gba", 0x002014, 0x0000007

gUnk_0800201B:: @ 0800201B
	.incbin "baserom.gba", 0x00201B, 0x0000007

gUnk_08002022:: @ 08002022
	.incbin "baserom.gba", 0x002022, 0x0000007

gUnk_08002029:: @ 08002029
	.incbin "baserom.gba", 0x002029, 0x0000007

gUnk_08002030:: @ 08002030
	.incbin "baserom.gba", 0x002030, 0x0000007

gUnk_08002037:: @ 08002037
	.incbin "baserom.gba", 0x002037, 0x0000007

gUnk_0800203E:: @ 0800203E
	.incbin "baserom.gba", 0x00203E, 0x0000007

gUnk_08002045:: @ 08002045
	.incbin "baserom.gba", 0x002045, 0x0000007

gUnk_0800204C:: @ 0800204C
	.incbin "baserom.gba", 0x00204C, 0x0000007

gUnk_08002053:: @ 08002053
	.incbin "baserom.gba", 0x002053, 0x0000007

gUnk_0800205A:: @ 0800205A
	.incbin "baserom.gba", 0x00205A, 0x0000007

gUnk_08002061:: @ 08002061
	.incbin "baserom.gba", 0x002061, 0x0000007

gUnk_08002068:: @ 08002068
	.incbin "baserom.gba", 0x002068, 0x0000009

gUnk_08002071:: @ 08002071
	.incbin "baserom.gba", 0x002071, 0x0000009

gUnk_0800207A:: @ 0800207A
	.incbin "baserom.gba", 0x00207A, 0x0000006

gUnk_08002080:: @ 08002080
	.incbin "baserom.gba", 0x002080, 0x0000001

gUnk_08002081:: @ 08002081
	.incbin "baserom.gba", 0x002081, 0x0000009

gUnk_0800208A:: @ 0800208A
	.incbin "baserom.gba", 0x00208A, 0x0000007

gUnk_08002091:: @ 08002091
	.incbin "baserom.gba", 0x002091, 0x0000007

gUnk_08002098:: @ 08002098
	.incbin "baserom.gba", 0x002098, 0x0000007

gUnk_0800209F:: @ 0800209F
	.incbin "baserom.gba", 0x00209F, 0x0000001

gUnk_080020A0:: @ 080020A0
	.incbin "baserom.gba", 0x0020A0, 0x0000006

gUnk_080020A6:: @ 080020A6
	.incbin "baserom.gba", 0x0020A6, 0x0000007

gUnk_080020AD:: @ 080020AD
	.incbin "baserom.gba", 0x0020AD, 0x0000007

gUnk_080020B4:: @ 080020B4
	.incbin "baserom.gba", 0x0020B4, 0x0000007

gUnk_080020BB:: @ 080020BB
	.incbin "baserom.gba", 0x0020BB, 0x0000007

gUnk_080020C2:: @ 080020C2
	.incbin "baserom.gba", 0x0020C2, 0x0000007

gUnk_080020C9:: @ 080020C9
	.incbin "baserom.gba", 0x0020C9, 0x0000007

gUnk_080020D0:: @ 080020D0
	.incbin "baserom.gba", 0x0020D0, 0x0000007

gUnk_080020D7:: @ 080020D7
	.incbin "baserom.gba", 0x0020D7, 0x0000007

gUnk_080020DE:: @ 080020DE
	.incbin "baserom.gba", 0x0020DE, 0x0000007

gUnk_080020E5:: @ 080020E5
	.incbin "baserom.gba", 0x0020E5, 0x0000007

gUnk_080020EC:: @ 080020EC
	.incbin "baserom.gba", 0x0020EC, 0x0000008

gUnk_080020F4:: @ 080020F4
	.incbin "baserom.gba", 0x0020F4, 0x0000007

gUnk_080020FB:: @ 080020FB
	.incbin "baserom.gba", 0x0020FB, 0x0000007

gUnk_08002102:: @ 08002102
	.incbin "baserom.gba", 0x002102, 0x0000007

gUnk_08002109:: @ 08002109
	.incbin "baserom.gba", 0x002109, 0x0000007

gUnk_08002110:: @ 08002110
	.incbin "baserom.gba", 0x002110, 0x0000007

gUnk_08002117:: @ 08002117
	.incbin "baserom.gba", 0x002117, 0x0000007

gUnk_0800211E:: @ 0800211E
	.incbin "baserom.gba", 0x00211E, 0x0000007

gUnk_08002125:: @ 08002125
	.incbin "baserom.gba", 0x002125, 0x0000008

gUnk_0800212D:: @ 0800212D
	.incbin "baserom.gba", 0x00212D, 0x0000008

gUnk_08002135:: @ 08002135
	.incbin "baserom.gba", 0x002135, 0x0000008

gUnk_0800213D:: @ 0800213D
	.incbin "baserom.gba", 0x00213D, 0x0000006

gUnk_08002143:: @ 08002143
	.incbin "baserom.gba", 0x002143, 0x0000001

gUnk_08002144:: @ 08002144
	.incbin "baserom.gba", 0x002144, 0x0000001

gUnk_08002145:: @ 08002145
	.incbin "baserom.gba", 0x002145, 0x0000006

gUnk_0800214B:: @ 0800214B
	.incbin "baserom.gba", 0x00214B, 0x0000007

gUnk_08002152:: @ 08002152
	.incbin "baserom.gba", 0x002152, 0x0000008

gUnk_0800215A:: @ 0800215A
	.incbin "baserom.gba", 0x00215A, 0x0000008

gUnk_08002162:: @ 08002162
	.incbin "baserom.gba", 0x002162, 0x0000007

gUnk_08002169:: @ 08002169
	.incbin "baserom.gba", 0x002169, 0x0000007

gUnk_08002170:: @ 08002170
	.incbin "baserom.gba", 0x002170, 0x0000008

gUnk_08002178:: @ 08002178
	.incbin "baserom.gba", 0x002178, 0x000000C

gUnk_08002184:: @ 08002184
	.incbin "baserom.gba", 0x002184, 0x0000007

gUnk_0800218B:: @ 0800218B
	.incbin "baserom.gba", 0x00218B, 0x0000008

gUnk_08002193:: @ 08002193
	.incbin "baserom.gba", 0x002193, 0x0000008

gUnk_0800219B:: @ 0800219B
	.incbin "baserom.gba", 0x00219B, 0x0000008

gUnk_080021A3:: @ 080021A3
	.incbin "baserom.gba", 0x0021A3, 0x0000008

gUnk_080021AB:: @ 080021AB
	.incbin "baserom.gba", 0x0021AB, 0x0000008

gUnk_080021B3:: @ 080021B3
	.incbin "baserom.gba", 0x0021B3, 0x0000009

gUnk_080021BC:: @ 080021BC
	.incbin "baserom.gba", 0x0021BC, 0x0000007

gUnk_080021C3:: @ 080021C3
	.incbin "baserom.gba", 0x0021C3, 0x0000007

gUnk_080021CA:: @ 080021CA
	.incbin "baserom.gba", 0x0021CA, 0x0000007

gUnk_080021D1:: @ 080021D1
	.incbin "baserom.gba", 0x0021D1, 0x0000007

gUnk_080021D8:: @ 080021D8
	.incbin "baserom.gba", 0x0021D8, 0x0000009

gUnk_080021E1:: @ 080021E1
	.incbin "baserom.gba", 0x0021E1, 0x0000007

gUnk_080021E8:: @ 080021E8
	.incbin "baserom.gba", 0x0021E8, 0x0000009

gUnk_080021F1:: @ 080021F1
	.incbin "baserom.gba", 0x0021F1, 0x0000007

gUnk_080021F8:: @ 080021F8
	.incbin "baserom.gba", 0x0021F8, 0x0000007

gUnk_080021FF:: @ 080021FF
	.incbin "baserom.gba", 0x0021FF, 0x0000007

gUnk_08002206:: @ 08002206
	.incbin "baserom.gba", 0x002206, 0x0000007

gUnk_0800220D:: @ 0800220D
	.incbin "baserom.gba", 0x00220D, 0x0000007

gUnk_08002214:: @ 08002214
	.incbin "baserom.gba", 0x002214, 0x0000007

gUnk_0800221B:: @ 0800221B
	.incbin "baserom.gba", 0x00221B, 0x0000007

gUnk_08002222:: @ 08002222
	.incbin "baserom.gba", 0x002222, 0x0000007

gUnk_08002229:: @ 08002229
	.incbin "baserom.gba", 0x002229, 0x0000007

gUnk_08002230:: @ 08002230
	.incbin "baserom.gba", 0x002230, 0x0000009

gUnk_08002239:: @ 08002239
	.incbin "baserom.gba", 0x002239, 0x0000007

gUnk_08002240:: @ 08002240
	.incbin "baserom.gba", 0x002240, 0x0000007

gUnk_08002247:: @ 08002247
	.incbin "baserom.gba", 0x002247, 0x0000007

gUnk_0800224E:: @ 0800224E
	.incbin "baserom.gba", 0x00224E, 0x0000007

gUnk_08002255:: @ 08002255
	.incbin "baserom.gba", 0x002255, 0x0000007

gUnk_0800225C:: @ 0800225C
	.incbin "baserom.gba", 0x00225C, 0x0000007

gUnk_08002263:: @ 08002263
	.incbin "baserom.gba", 0x002263, 0x0000001

gUnk_08002264:: @ 08002264
	.incbin "baserom.gba", 0x002264, 0x0000006

gUnk_0800226A:: @ 0800226A
	.incbin "baserom.gba", 0x00226A, 0x0000007

gUnk_08002271:: @ 08002271
	.incbin "baserom.gba", 0x002271, 0x0000007

gUnk_08002278:: @ 08002278
	.incbin "baserom.gba", 0x002278, 0x0000007

gUnk_0800227F:: @ 0800227F
	.incbin "baserom.gba", 0x00227F, 0x0000007

gUnk_08002286:: @ 08002286
	.incbin "baserom.gba", 0x002286, 0x0000007

gUnk_0800228D:: @ 0800228D
	.incbin "baserom.gba", 0x00228D, 0x0000007

gUnk_08002294:: @ 08002294
	.incbin "baserom.gba", 0x002294, 0x0000007

gUnk_0800229B:: @ 0800229B
	.incbin "baserom.gba", 0x00229B, 0x000000C

gUnk_080022A7:: @ 080022A7
	.incbin "baserom.gba", 0x0022A7, 0x000000C

gUnk_080022B3:: @ 080022B3
	.incbin "baserom.gba", 0x0022B3, 0x000000C

gUnk_080022BF:: @ 080022BF
	.incbin "baserom.gba", 0x0022BF, 0x000000C

gUnk_080022CB:: @ 080022CB
	.incbin "baserom.gba", 0x0022CB, 0x000000C

gUnk_080022D7:: @ 080022D7
	.incbin "baserom.gba", 0x0022D7, 0x0000007

gUnk_080022DE:: @ 080022DE
	.incbin "baserom.gba", 0x0022DE, 0x0000007

gUnk_080022E5:: @ 080022E5
	.incbin "baserom.gba", 0x0022E5, 0x0000007

gUnk_080022EC:: @ 080022EC
	.incbin "baserom.gba", 0x0022EC, 0x0000007

gUnk_080022F3:: @ 080022F3
	.incbin "baserom.gba", 0x0022F3, 0x0000008

gUnk_080022FB:: @ 080022FB
	.incbin "baserom.gba", 0x0022FB, 0x0000007

gUnk_08002302:: @ 08002302
	.incbin "baserom.gba", 0x002302, 0x0000007

gUnk_08002309:: @ 08002309
	.incbin "baserom.gba", 0x002309, 0x0000007

gUnk_08002310:: @ 08002310
	.incbin "baserom.gba", 0x002310, 0x0000007

gUnk_08002317:: @ 08002317
	.incbin "baserom.gba", 0x002317, 0x0000007

gUnk_0800231E:: @ 0800231E
	.incbin "baserom.gba", 0x00231E, 0x0000007

gUnk_08002325:: @ 08002325
	.incbin "baserom.gba", 0x002325, 0x0000007

gUnk_0800232C:: @ 0800232C
	.incbin "baserom.gba", 0x00232C, 0x0000002

gUnk_0800232E:: @ 0800232E
	.incbin "baserom.gba", 0x00232E, 0x0000005

gUnk_08002333:: @ 08002333
	.incbin "baserom.gba", 0x002333, 0x000000F

gUnk_08002342:: @ 08002342
	.incbin "baserom.gba", 0x002342, 0x00000CE

gUnk_08002410:: @ 08002410
	.incbin "baserom.gba", 0x002410, 0x0000040

gUnk_08002450:: @ 08002450
	.incbin "baserom.gba", 0x002450, 0x00000D0

gUnk_08002520:: @ 08002520
	.incbin "baserom.gba", 0x002520, 0x0000107

gUnk_08002627:: @ 08002627
	.incbin "baserom.gba", 0x002627, 0x000000B

	non_word_aligned_thumb_func_start sub_08002632
sub_08002632: @ 0x08002632
	push {r4, r5, r6, r7, lr}
	ldr r4, _0800269C @ =gUnk_0800232E
	ldrb r3, [r0, #8]
	cmp r3, #3
	beq _08002642
	cmp r3, #7
	bne _08002684
	ldr r4, _080026A0 @ =gUnk_08002342
_08002642:
	ldrb r3, [r0, #9]
	lsls r1, r3, #0x10
	ldrb r3, [r0, #0xa]
	lsls r3, r3, #8
	orrs r1, r3
	ldrb r3, [r0, #0xb]
	orrs r1, r3
	add r6, pc, #0x38
_08002652:
	adds r4, #6
	ldrb r3, [r4]
	lsls r2, r3, #0x10
	beq _08002684
	movs r5, #0
	ldrb r3, [r4, #1]
	cmp r3, #0xff
	bne _08002664
	movs r5, #8
_08002664:
	lsls r3, r3, #8
	orrs r2, r3
	ldrb r3, [r4, #2]
	cmp r3, #0xff
	bne _08002670
	adds r5, #4
_08002670:
	orrs r2, r3
	ldr r5, [r6, r5]
	adds r3, r1, #0
	ands r3, r5
	ands r2, r5
	cmp r3, r2
	bne _08002652
	ldrb r0, [r4, #3]
	ldrh r1, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_08002684:
	movs r0, #0
	movs r1, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800268C:
	.byte 0xFF, 0xFF, 0xFF, 0x00
	.byte 0x00, 0xFF, 0xFF, 0x00, 0xFF, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x00
_0800269C: .4byte gUnk_0800232E
_080026A0: .4byte gUnk_08002342
gUnk_080026A4::
	.4byte gUnk_020000B0
	.4byte gUnk_03003D68
	.4byte gUnk_03003DB0
	.4byte gUnk_03005FBC
	.4byte gUnk_020000B0
	.4byte gUnk_03003DA8
	.4byte gHitboxCount
	.4byte gUnk_03005FBC

	thumb_func_start sub_080026C4
sub_080026C4: @ 0x080026C4
	push {r4, r5, r6, lr}
	lsrs r4, r3, #3
	lsls r4, r4, #6
	adds r1, r1, r4
	movs r6, #0xf0
	lsls r4, r3, #0x1d
	lsrs r4, r4, #0x1e
	blo _080026D8
	movs r6, #0xf
	adds r2, #0x10
_080026D8:
	adds r1, r1, r4
	movs r3, #0x10
_080026DC:
	ldrb r4, [r0]
	ldrb r4, [r2, r4]
	ldrb r5, [r1]
	ands r5, r6
	orrs r5, r4
	strb r5, [r1]
	adds r1, #4
	adds r0, #8
	subs r3, #1
	bne _080026DC
	pop {r4, r5, r6, pc}

	non_word_aligned_thumb_func_start sub_080026F2
sub_080026F2: @ 0x080026F2
	push {r4, r5, r6, lr}
	lsrs r4, r3, #3
	lsls r4, r4, #6
	adds r1, r1, r4
	movs r6, #0xf0
	lsls r4, r3, #0x1d
	lsrs r4, r4, #0x1e
	blo _08002706
	movs r6, #0xf
	adds r2, #0x10
_08002706:
	adds r1, r1, r4
	movs r3, #0x10
_0800270A:
	ldrb r4, [r0]
	ldrb r4, [r2, r4]
	cmp r4, #0
	beq _0800271A
	ldrb r5, [r1]
	ands r5, r6
	orrs r5, r4
	strb r5, [r1]
_0800271A:
	adds r1, #4
	adds r0, #8
	subs r3, #1
	bne _0800270A
	pop {r4, r5, r6, pc}

	thumb_func_start sub_08002724
sub_08002724: @ 0x08002724
	push {r4, r5, lr}
	movs r2, #0x10
	movs r3, #0xf
_0800272A:
	ldrb r4, [r0]
	lsrs r5, r4, #4
	ands r4, r3
	strb r4, [r1]
	strb r5, [r1, #1]
	ldrb r4, [r0, #1]
	lsrs r5, r4, #4
	ands r4, r3
	strb r4, [r1, #2]
	strb r5, [r1, #3]
	ldrb r4, [r0, #2]
	lsrs r5, r4, #4
	ands r4, r3
	strb r4, [r1, #4]
	strb r5, [r1, #5]
	ldrb r4, [r0, #3]
	lsrs r5, r4, #4
	ands r4, r3
	strb r4, [r1, #6]
	strb r5, [r1, #7]
	adds r0, #4
	adds r1, #8
	subs r2, #1
	bne _0800272A
	pop {r4, r5, pc}

gUnk_0800275C::
	.byte 0x06, 0x00, 0x06, 0x60
	.byte 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x00, 0x60, 0x60, 0x60
	.byte 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x60, 0x00, 0x60, 0x06
	.byte 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x60, 0x06, 0x00, 0x06, 0x06, 0x06
	.byte 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06, 0x06

	thumb_func_start GetNextFunction
GetNextFunction: @ 0x0800279C
	movs r1, #0x3a
	ldrb r3, [r0, r1]
	movs r2, #4
	ands r2, r3
	bne _080027AE
	movs r1, #0x41
	ldrb r2, [r0, r1]
	lsrs r2, r2, #7
	bne _080027CE
_080027AE:
	movs r1, #0x42
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _080027D2
	movs r1, #0x45
	ldrb r2, [r0, r1]
	cmp r2, #0
	beq _080027D6
	lsrs r2, r3, #3
	bhs _080027E2
	movs r1, #0x43
	ldrb r2, [r0, r1]
	cmp r2, #0
	bne _080027E6
_080027CA:
	movs r0, #0
	bx lr
_080027CE:
	movs r0, #1
	bx lr
_080027D2:
	movs r0, #2
	bx lr
_080027D6:
	ldrb r2, [r0, #0xc]
	ldrb r0, [r0, #0xd]
	orrs r0, r2
	beq _080027CA
	movs r0, #3
	bx lr
_080027E2:
	movs r0, #5
	bx lr
_080027E6:
	movs r0, #4
	bx lr

	non_word_aligned_thumb_func_start sub_080027EA
sub_080027EA: @ 0x080027EA
	push {r4, r5, r6, r7, lr}
	movs r3, #0x80
	tst r2, r3
	bne _08002860
	movs r4, #0x2a
	ldrh r3, [r0, r4]
	movs r4, #7
	tst r2, r4
	bne _08002812
	push {r0, r1, r2, r3}
	adds r0, r2, #0
	adds r1, r3, #0
	bl sub_08002864
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	cmp r2, r4
	beq _08002812
	adds r2, r4, #0
	ldr r1, _0800296C @ =0x00000100
_08002812:
	ldr r4, _08002970 @ =gUnk_0800275C
	lsls r2, r2, #1
	ldrh r4, [r4, r2]
	lsls r2, r2, #3
	ands r3, r4
	ldr r4, _08002974 @ =0x0000EE00
	tst r3, r4
	bne _0800283E
	push {r0, r1, r2, r3}
	ldr r4, _08002978 @ =gSineTable
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _08002834
	adds r6, #1
	bl FixedMul
	lsls r0, r0, #8
_08002834:
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	ldr r5, [r0, #0x2c]
	adds r5, r5, r4
	str r5, [r0, #0x2c]
_0800283E:
	movs r4, #0xee
	tst r3, r4
	bne _08002860
	push {r0, r1, r2, r3}
	ldr r4, _0800297C @ =gCosineTable
	ldrh r0, [r4, r2]
	cmp r0, #0
	beq _08002856
	adds r6, #2
	bl FixedMul
	lsls r0, r0, #8
_08002856:
	adds r4, r0, #0
	pop {r0, r1, r2, r3}
	ldr r5, [r0, #0x30]
	subs r5, r5, r4
	str r5, [r0, #0x30]
_08002860:
	adds r1, r6, #0
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_08002864
sub_08002864: @ 0x08002864
	adds r2, r0, #0
	lsrs r2, r2, #3
	cmp r2, #0
	beq _080028A8
	subs r2, #1
	beq _0800288E
	subs r2, #1
	beq _080028C2
	ldr r3, _08002980 @ =0x00000E00
	ands r3, r1
	bne _0800287C
	bx lr
_0800287C:
	movs r2, #0
	ldr r3, _08002984 @ =0x0000020E
	tst r3, r1
	beq _080028DC
	movs r2, #0x10
	ldr r3, _08002988 @ =0x000004E0
	tst r3, r1
	beq _080028DC
	bx lr
_0800288E:
	ldr r3, _0800298C @ =0x0000E000
	ands r3, r1
	bne _08002896
	bx lr
_08002896:
	movs r2, #0
	ldr r3, _08002990 @ =0x0000200E
	tst r3, r1
	beq _080028DC
	movs r2, #0x10
	ldr r3, _08002994 @ =0x000040E0
	tst r3, r1
	beq _080028DC
	bx lr
_080028A8:
	movs r3, #0xe
	ands r3, r1
	bne _080028B0
	bx lr
_080028B0:
	movs r2, #8
	ldr r3, _08002998 @ =0x0000E004
	tst r3, r1
	beq _080028DC
	movs r2, #0x18
	ldr r3, _0800299C @ =0x00000E02
	tst r3, r1
	beq _080028DC
	bx lr
_080028C2:
	movs r3, #0xe0
	ands r3, r1
	bne _080028CA
	bx lr
_080028CA:
	movs r2, #8
	ldr r3, _080029A0 @ =0x0000E040
	tst r3, r1
	beq _080028DC
	movs r2, #0x18
	ldr r3, _080029A4 @ =0x00000E20
	tst r3, r1
	beq _080028DC
	bx lr
_080028DC:
	adds r0, r2, #0
	bx lr

	thumb_func_start sub_080028E0
sub_080028E0: @ 0x080028E0
	movs r1, #0x3d
	movs r3, #1
	ldrsb r2, [r0, r1]
	cmp r2, #0
	beq _080028F2
	bmi _080028EE
	rsbs r3, r3, #0
_080028EE:
	adds r2, r2, r3
	strb r2, [r0, r1]
_080028F2:
	bx lr

	thumb_func_start sub_080028F4
sub_080028F4: @ 0x080028F4
	push {r4, lr}
	adds r4, r0, #0
	bl Random
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0
_08002902:
	ldrb r2, [r4, r1]
	adds r1, #1
	subs r0, r0, r2
	bpl _08002902
	subs r0, r1, #1
	pop {r4, pc}

	non_word_aligned_thumb_func_start CheckRectOnScreen
CheckRectOnScreen: @ 0x0800290E
	push {r4, r5, r6, lr}
	ldr r4, _080029A8 @ =gRoomControls
	ldrh r5, [r4, #0xa]
	ldrh r6, [r4, #6]
	subs r5, r5, r6
	subs r5, r5, r2
	subs r0, r0, r5
	lsls r2, r2, #1
	adds r2, #0xf0
	cmp r0, r2
	bhs _0800293A
	ldrh r5, [r4, #0xc]
	ldrh r6, [r4, #8]
	subs r5, r5, r6
	subs r5, r5, r3
	subs r1, r1, r5
	lsls r3, r3, #1
	adds r3, #0xa0
	cmp r1, r3
	bhs _0800293A
	movs r0, #1
	pop {r4, r5, r6, pc}
_0800293A:
	movs r0, #0
	pop {r4, r5, r6, pc}

	non_word_aligned_thumb_func_start CheckPlayerInRegion
CheckPlayerInRegion: @ 0x0800293E
	push {r4, r5, r6, r7, lr}
	ldr r4, _080029AC @ =gRoomControls
	ldr r7, _080029B0 @ =gPlayerEntity
	ldrh r6, [r4, #6]
	ldrh r5, [r7, #0x2e]
	subs r5, r5, r6
	subs r5, r5, r2
	subs r0, r0, r5
	lsls r2, r2, #1
	cmp r0, r2
	bhs _08002968
	ldrh r6, [r4, #8]
	ldrh r5, [r7, #0x32]
	subs r5, r5, r6
	subs r5, r5, r3
	subs r1, r1, r5
	lsls r3, r3, #1
	cmp r1, r3
	bhs _08002968
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_08002968:
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800296C: .4byte 0x00000100
_08002970: .4byte gUnk_0800275C
_08002974: .4byte 0x0000EE00
_08002978: .4byte gSineTable
_0800297C: .4byte gCosineTable
_08002980: .4byte 0x00000E00
_08002984: .4byte 0x0000020E
_08002988: .4byte 0x000004E0
_0800298C: .4byte 0x0000E000
_08002990: .4byte 0x0000200E
_08002994: .4byte 0x000040E0
_08002998: .4byte 0x0000E004
_0800299C: .4byte 0x00000E02
_080029A0: .4byte 0x0000E040
_080029A4: .4byte 0x00000E20
_080029A8: .4byte gRoomControls
_080029AC: .4byte gRoomControls
_080029B0: .4byte gPlayerEntity
