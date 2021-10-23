#ifndef SCRIPT_H
#define SCRIPT_H

#include "entity.h"

typedef struct ScriptExecutionContext {
    u16* scriptInstructionPointer;
    u32 intVariable;
    u32 postScriptActions;
    u8 unk_0C[0x4]; // unused
    u16 wait;
    u16 unk_12;
    u32 condition;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B; // unused
    union SplitWord x;
    union SplitWord y;
} ScriptExecutionContext;

void ExecuteScript(Entity* entity, ScriptExecutionContext* context);

extern u32 GetNextScriptCommandHalfword(u16*);
extern u32 GetNextScriptCommandWord(u16*);
extern u32 GetNextScriptCommandWordAfterCommandMetadata(u16*);
extern u32 GetNextScriptCommandHalfwordAfterCommandMetadata(u16*);

void UnloadCutsceneData(Entity* entity);
void StartPlayerScript(u16*);

void sub_0807DD50(Entity* entity);
void sub_0807DD64(Entity* entity);
void sub_0807DD80(Entity* entity, u16* script);
void sub_0807DEDC(Entity*, ScriptExecutionContext*, u32, u32);

ScriptExecutionContext* StartCutscene(Entity* entity, u16* script);
void ExecuteScriptForEntity(Entity* entity, void (*postScriptCallback)(Entity*, ScriptExecutionContext*));
void HandlePostScriptActions(Entity* entity, ScriptExecutionContext* context);
void HandleEntity0x82Actions(Entity* entity);
void sub_0807DD94(Entity*, void (*function)(Entity*, ScriptExecutionContext*));
#endif
