SCRIPT_START gUnk_08013BA8
.short 0x140c @ CallWithArg with 4 parameters
.short 0x5e7d
.short 0x0809
.short 0x4248
.short 0x0801
@ End of parameters
SoundReq 0x01d3
.short 0x140c @ CallWithArg with 4 parameters
.short 0xf239
.short 0x0807
.short 0x08e3
.short 0x0000
@ End of parameters
Call 0x08096029
Wait 0x0078
_0807E5F8 0x00020000
Call 0x0807f305
Wait 0x0078
WaitForSomething2 0x00040000
Call 0x080791bd
SCRIPT_END
