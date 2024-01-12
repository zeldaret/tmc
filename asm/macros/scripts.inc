@ All the macro functions for scripts

@ helper macros

.macro RecursiveOpcodeN count:req, opcode:req, size:req, arg:req, args:vararg
    .ifnb \args
    RecursiveOpcodeN \count + 1 \opcode \size \args
    .else
    .2byte 0x400 * (((\count) * \size) + 1) + \opcode
    .endif
.endm

.macro RecursiveOpcode opcode:req, size:req, args:vararg
    RecursiveOpcodeN 1 \opcode \size \args
.endm

.macro RecursiveArgs size:req, arg:req, args:vararg
    \size \arg
    .ifnb \args
    RecursiveArgs \size \args
    .endif
.endm

@ script macros

.macro SCRIPT_START name
	.globl \name
	.section .text
\name:
.endm

.macro SCRIPT_END
	.2byte 0xffff
.endm

.macro Nop
	.2byte 0x0400
.endm

.macro BeginBlock
	.2byte 0x0401
.endm

.macro EndBlock
	.2byte 0x0402
.endm

.macro Jump label:req
	.2byte 0x0803
1:	.2byte \label - 1b
.endm

.macro JumpIf label:req
	.2byte 0x0804
1:	.2byte \label - 1b
.endm

.macro JumpIfNot label:req
	.2byte 0x0805
1:	.2byte \label - 1b
.endm

.macro JumpTableLabel temp:req, label:req, labels:vararg
    .2byte \label - \temp
    .ifnb \labels
    JumpTableLabel \temp - 2 \labels
    .endif
.endm

.macro JumpTable labels:vararg
    RecursiveOpcode 0x6 1 \labels
1:
    JumpTableLabel 1b \labels
.endm

.macro JumpAbsolute label:req
	.2byte 0x0c07
	.4byte \label
.endm

.macro JumpAbsoluteIf label:req
	.2byte 0x0c08
	.4byte \label
.endm

.macro JumpAbsoluteIfNot label:req
	.2byte 0x0c09
	.4byte \label
.endm

.macro JumpAbsoluteTable labels:vararg
    RecursiveOpcode 0xa 2 \labels
    RecursiveArgs .4byte \labels
.endm

.macro Call function:req
	.2byte 0x0c0b
	.4byte \function
.endm

@this shouldn't be use without an argument
.macro CallWithArg function:req, argument
    .ifnb \argument
	.2byte 0x140c
	.4byte \function
	.4byte \argument
	.else
	.2byte 0x0c0c
	.4byte \function
	.endif
.endm

.macro LoadRoomEntityList entityDataList:req
	.2byte 0x0c0d
	.4byte \entityDataList
.endm

.macro CheckSyncFlagAndClear bitmask:req
	.2byte 0x0c0e
	.4byte \bitmask
.endm

.macro CheckInventory1 s:req
	.2byte 0x080f
	.2byte \s
.endm

.macro CheckInventory2 s:req
	.2byte 0x0810
	.2byte \s
.endm

.macro HasRoomItemForSale
	.2byte 0x0411
.endm

.macro CheckLocalFlag s:req
	.2byte 0x0812
	.2byte \s
.endm

.macro CheckLocalFlagByBank a:req, b:req
	.2byte 0x0c13
	.2byte \a
	.2byte \b
.endm

.macro CheckGlobalFlag s:req
	.2byte 0x0814
	.2byte \s
.endm

.macro CheckRoomFlag s:req
	.2byte 0x0815
	.2byte \s
.endm

.macro CheckPlayerInRegion x:req, y:req, dimension:req
	.2byte 0x1016
	.2byte \x
	.2byte \y
	.2byte \dimension
.endm

.macro CheckPlayerInRegion2 dimension:req
	.2byte 0x0817
	.2byte \dimension
.endm

.macro CheckEntityInteractType
	.2byte 0x0418
.endm

.macro FacePlayerAndCheckDist
	.2byte 0x0419
.endm

.macro HasRupees amount:req
	.2byte 0x081a
	.2byte \amount
.endm

.macro HasShells s:req
	.2byte 0x081b
	.2byte \s
.endm

.macro CheckTextboxResult
	.2byte 0x041c
.endm

.macro CheckKinstoneFused s:req
	.2byte 0x081d
	.2byte \s
.endm

.macro BuyItem item, b
	.2byte 0x0c1e
	.ifnb \item
	.2byte \item
	.2byte \b
	.else
	.4byte 0
	.endif
.endm

.macro CheckBottleContaining s:req
	.2byte 0x081f
	.2byte \s
.endm

.macro VariableBitSet w:req
	.2byte 0x0c20
	.4byte \w
.endm

.macro VariableOnlyBitSet w:req
	.2byte 0x0c21
	.4byte \w
.endm

.macro VariableEqual w:req
	.2byte 0x0c22
	.4byte \w
.endm

.macro CheckPlayerFlags w:req
	.2byte 0x0c23
	.4byte \w
.endm

.macro CheckPlayerMinish
	.2byte 0x0424
.endm

.macro EntityHasHeight
	.2byte 0x0425
.endm

.macro ComparePlayerAction s:req
	.2byte 0x0826
	.2byte \s
.endm

.macro ComparePlayerAnimationState s:req
	.2byte 0x0827
	.2byte \s
.endm

.macro SetSyncFlag w:req
	.2byte 0x0c28
	.4byte \w
.endm

.macro ClearSyncFlag w:req
	.2byte 0x0c29
	.4byte \w
.endm

.macro SetLocalFlag s:req
	.2byte 0x082a
	.2byte \s
.endm

.macro SetLocalFlagByBank a:req, b:req
	.2byte 0x0c2b
	.2byte \a
	.2byte \b
.endm

.macro ClearLocalFlag s:req
	.2byte 0x082c
	.2byte \s
.endm

.macro SetGlobalFlag s:req
	.2byte 0x082d
	.2byte \s
.endm

.macro ClearGlobalFlag s:req
	.2byte 0x082e
	.2byte \s
.endm

.macro SetRoomFlag s:req
	.2byte 0x082f
	.2byte \s
.endm

.macro ClearRoomFlag s:req
	.2byte 0x0830
	.2byte \s
.endm

.macro Wait frames:req
	.2byte 0x0831
	.2byte \frames
.endm

.macro WaitForSyncFlag w:req
	.2byte 0x0c32
	.4byte \w
.endm

.macro WaitForSyncFlagAndClear w:req
	.2byte 0x0c33
	.4byte \w
.endm

.macro WaitPlayerGetItem
	.2byte 0x0434
.endm

.macro WaitForPlayerEnterRoom
	.2byte 0x0435
.endm

.macro WaitFor_1
	.2byte 0x0436
.endm

.macro WaitForFadeFinish
	.2byte 0x0437
.endm

.macro SetFadeTime s:req
	.2byte 0x0838
	.2byte \s
.endm

.macro SetFadeMask w:req
	.2byte 0x0c39
	.4byte \w
.endm

.macro FadeInvert
	.2byte 0x043a
.endm

.macro Nop2 s:req
	.2byte 0x083b
	.2byte \s
.endm

.macro SetFade4
	.2byte 0x043c
.endm

.macro SetFade5
	.2byte 0x043d
.endm

.macro SetFade6
	.2byte 0x043e
.endm

.macro SetFade7
	.2byte 0x043f
.endm

.macro _0807E800 w:req
	.2byte 0x0c40
	.4byte \w
.endm

.macro _0807E80C w:req
	.2byte 0x0c41
	.4byte \w
.endm

.macro _0807E858 s:req
	.2byte 0x0842
	.2byte \s
.endm

.macro _0807E858_0
	.2byte 0x0442
.endm

.macro SetPlayerIdle
	.2byte 0x0443
.endm

.macro EnablePlayerControl
	.2byte 0x0444
.endm

.macro DisablePlayerControl
	.2byte 0x0445
.endm

.macro SetPlayerAction w:req
	.2byte 0x0c46
	.4byte \w
.endm

.macro StartPlayerScript script:req
	.2byte 0x0c47
	.4byte \script
.endm

.macro SetPlayerAnimation s:req
	.2byte 0x0848
	.2byte \s
.endm

.macro _0807E8E4_0
	.2byte 0x0449
.endm

.macro _0807E8E4_1
	.2byte 0x044a
.endm

.macro _0807E8E4_2
	.2byte 0x044b
.endm

.macro _0807E8E4_3
	.2byte 0x044c
.endm

.macro SetAction s:req
	.2byte 0x084d
	.2byte \s
.endm

.macro SetIntVariable value:req
	.2byte 0x0c4e
	.4byte \value
.endm

.macro SetVariableToFrame
	.2byte 0x044f
.endm

.macro SetAnimation s:req
	.2byte 0x0850
	.2byte \s
.endm

.macro TriggerInteract
	.2byte 0x0451
.endm

.macro _0807E974 s:req
	.2byte 0x0852
	.2byte \s
.endm

.macro _0807E9D4
	.2byte 0x0453
.endm

.macro _0807E9DC
	.2byte 0x0454
.endm

.macro _0807E9E4 s:req
	.2byte 0x0855
	.2byte \s
.endm

.macro UpdateFusion
	.2byte 0x0456
.endm

.macro _0807EA4C
	.2byte 0x0457
.endm

.macro _0807EA88 s:req
	.2byte 0x0858
	.2byte \s
.endm

.macro WaitUntilTextboxCloses
	.2byte 0x0459
.endm

.macro MessageFromTarget a:req, b
	.2byte 0x085a
	.ifnb \b
	.byte \b
	.byte \a
	.else
	.2byte \a
	.endif
.endm

.macro MessageNoOverlap a:req, b
	.2byte 0x085b
	.ifnb \b
	.byte \b
	.byte \a
	.else
	.2byte \a
	.endif
.endm

.macro MessageFromTargetPos a:req, b:req, c
	.2byte 0x0c5c
	.ifnb \c
	.byte \b
	.byte \a
	.2byte \c
	.else
	.2byte \a
	.2byte \b
	.endif
.endm

.macro MessageFromTargetPos_1 a:req, b
	.2byte 0x085c
	.ifnb \b
	.byte \b
	.byte \a
	.else
	.2byte \a
	.endif
.endm

.macro MessageFromTargetTable labels:vararg
    RecursiveOpcode 0x5d 1 \labels
    RecursiveArgs .2byte \labels
.endm

.macro MessageNoOverlapVar
	.2byte 0x045e
.endm

.macro EzloMessage a:req, b
	.2byte 0x085f
	.ifnb \b
	.byte \b
	.byte \a
	.else
	.2byte \a
	.endif
.endm

.macro _0807EB38
	.2byte 0x0460
.endm

.macro SetAnimationState s:req
	.2byte 0x0861
	.2byte \s
.endm

.macro _0807EB4C a:req, b:req
	.2byte 0x0c62
	.2byte \a
	.2byte \b
.endm

.macro FacePlayer
	.2byte 0x0463
.endm

.macro FaceAwayFromPlayer
	.2byte 0x0464
.endm

.macro SetEntityDirection direction:req
	.2byte 0x0865
	.2byte \direction
.endm

.macro SetEntityDirectionWithAnimationState direction:req
	.2byte 0x0866
	.2byte \direction
.endm

.macro SetEntitySpeed speed:req
	.2byte 0x0867
	.2byte \speed
.endm

.macro SetEntityVelocity value:req
	.2byte 0x0c68
	.4byte \value
.endm

.macro SetEntityPositionRelative xOffset:req, yOffset:req
	.2byte 0x0c69
	.2byte \xOffset
	.2byte \yOffset
.endm

.macro OffsetEntityPosition x:req, y:req
	.2byte 0x0c6a
	.2byte \x
	.2byte \y
.endm

.macro MoveEntityToPlayer
	.2byte 0x046b
.endm

.macro Nop3
	.2byte 0x046c
.endm

.macro WalkForward s:req
	.2byte 0x086d
	.2byte \s
.endm

.macro WalkNorth s:req
	.2byte 0x086e
	.2byte \s
.endm

.macro WalkEast s:req
	.2byte 0x086f
	.2byte \s
.endm

.macro WalkSouth s:req
	.2byte 0x0870
	.2byte \s
.endm

.macro WalkWest s:req
	.2byte 0x0871
	.2byte \s
.endm

.macro _0807ED24 a:req, b:req, c:req
	.2byte 0x1072
	.2byte \a
	.2byte \b
	.2byte \c
.endm

.macro MoveTo a:req, b:req
	.2byte 0x0c73
	.2byte \a
	.2byte \b
.endm

.macro LookAt a:req, b:req
	.2byte 0x0c74
	.2byte \a
	.2byte \b
.endm

.macro MoveTowardsTarget
	.2byte 0x0475
.endm

.macro MoveToPlayer
	.2byte 0x0476
.endm

.macro MoveToOffset a:req, b:req
	.2byte 0x0c77
	.2byte \a
	.2byte \b
.endm

.macro _0807EF3C a:req, b:req
	.2byte 0x0c78
	.2byte \a
	.2byte \b
.endm

.macro DoPostScriptAction action:req
	.2byte 0x0879
	.2byte \action
.endm

.macro DoPostScriptAction2 action:req
	.2byte 0x087a
	.2byte \action
.endm

.macro PlaySound s:req
	.2byte 0x087b
	.2byte \s
.endm

.macro PlayBgm s
	.2byte 0x087c
	.ifnb \s
	.2byte \s
	.else
	.2byte -1
	.endif
.endm

.macro SoundReq w:req
	.2byte 0x0c7d
	.4byte \w
.endm

.macro StopBgm
	.2byte 0x047e
.endm

.macro ModRupees amount:req
	.2byte 0x087f
	.2byte \amount
.endm

.macro ModHealth amount:req
	.2byte 0x0880
	.2byte \amount
.endm

@ this command doesn't actually take an argument
.macro IncreaseMaxHealth
	.2byte 0x0881
	.2byte 8
.endm

.macro GivePlayerItem s:req
	.2byte 0x0882
	.2byte \s
.endm

.macro GiveKinstone s:req
	.2byte 0x0883
	.2byte \s
.endm

.macro GetInventoryValue s:req
	.2byte 0x0884
	.2byte \s
.endm

.macro SetInventoryValue a:req, b:req
	.2byte 0x0c85
	.2byte \a
	.2byte \b
.endm

.macro InitItemGetSequence s:req
	.2byte 0x0886
	.2byte \s
.endm

.macro CameraTargetEntity
	.2byte 0x0487
.endm

.macro CameraTargetPlayer
	.2byte 0x0488
.endm

.macro SetScrollSpeed s:req
	.2byte 0x0889
	.2byte \s
.endm

.macro _0807F0C8 a:req, b:req
	.2byte 0x0c8a
	.2byte \a
	.2byte \b
.endm


