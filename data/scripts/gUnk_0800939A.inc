SCRIPT_START gUnk_0800939A
CheckLocalFlag 0x00ae
JumpIf 0x009e
CheckInventory1 0x000d
JumpIf 0x0014
CheckInventory1 0x000e
JumpIf 0x000c
TextboxNoOverlap 0x1d02
_0807EA94 
Jump 0xffbc
CheckInventory1 0x000e
JumpIfNot 0x0018
Call 0x0806d789
TextboxNoOverlap 0x1d03
_0807EA94 
Call 0x0806d70d
Jump 0xff9e
_0807E914 0x00001d05
CheckLocalFlag 0x00ad
JumpIf 0x0008
_0807E914 0x00001d04
TextboxNoOverlapVar 
_0807EA94 
_0807E3E8 
JumpIfNot 0xff80
Wait 0x001e
TextboxNoOverlap 0x1d08
_0807EA94 
LoadRoomEntityList 0x080f9c38
Wait 0x0078
Call 0x0806d6d1
Wait 0x00b4
Call 0x0806d70d
Wait 0x0078
SetLocalFlag 0x00ae
SetLocalFlag 0x00ad
Call 0x0806d5d5
_0807EB8C 
TextboxNoOverlap 0x1d09
_0807EA94 
Wait 0x000a
Jump 0xff3a
Call 0x0806d601
JumpIf 0x000c
TextboxNoOverlap 0x1d0a
_0807EA94 
JumpIfNot 0xff26
TextboxNoOverlap 0x1d0b
_0807EA94 
Call 0x0806d74d
_0807F0C8 0xffff, 0x0000
