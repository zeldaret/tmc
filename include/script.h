#ifndef SCRIPT_H
#define SCRIPT_H

#include "global.h"

typedef struct 
{
    u16 command;
    u16 metadata;
} ScriptCommand;


typedef struct {
    union {
        u16* raw;
        ScriptCommand* commands; // list of commands to execute
    } unk_00;
    u32 unk_04;
    u32 unk_08;
    u8 unk_0C[0x4]; // unused
    u16 unk_10;
    u16 unk_12;
    u32 compareResult; // result of a compare script command
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B; // unused
    union SplitWord unk_1C;
    union SplitWord unk_20;
} ScriptExecutionContext;

extern void ExecuteScriptCommandSet(Entity*, ScriptExecutionContext*);

extern u32 GetNextScriptCommandHalfword(u16*);
extern u32 GetNextScriptCommandWord(u16*);
extern u32 GetNextScriptCommandWordAfterCommandMetadata(u16*);
extern u32 GetNextScriptCommandHalfwordAfterCommandMetadata(u16*);

extern void StartPlayerScript(u16*);

extern void sub_0807DEDC(Entity*, ScriptExecutionContext*, u32, u32);

extern ScriptExecutionContext* StartCutscene(Entity*, u16*);
extern void sub_0807DDAC(Entity*, void (*function)(Entity*, ScriptExecutionContext*));
extern void sub_0807DD94(Entity*, void (*function)(Entity*, ScriptExecutionContext*));
#endif
