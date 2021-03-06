SCRIPT_START script_0800B574
	StartScript 
	_0807EF80 0x0007
	CheckGlobalFlag 0x001d
	JumpIf script_0800B5BC
	StopScript 
	WaitForSomething2 0x00000010
	_0807EF80 0x0008
	SoundReq 0x0111
	WaitForSomething2 0x00000010
	_0807EF80 0x0007
	SoundReq 0x0111
	WaitForSomething2 0x00000010
	_0807EF80 0x0008
	SoundReq 0x0111
	WaitForSomething2 0x00000010
	_0807EF80 0x0007
	SoundReq 0x0111
script_0800B5BC:
	Call sub_0808692C
SCRIPT_END
