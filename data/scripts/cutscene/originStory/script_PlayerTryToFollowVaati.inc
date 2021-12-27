@ Player trying to follow Vaati outside castle
SCRIPT_START script_PlayerTryToFollowVaati
	BeginBlock
	SetEntitySpeed 0x0200
	EndBlock
	DoPostScriptAction 0x0001
	_0807EDD4 0x01f8, 0x0148
	_0807EB44 0x0004
	DoPostScriptAction 0x0000
	SetSyncFlag 0x00000001
	Call sub_080791BC
SCRIPT_END
