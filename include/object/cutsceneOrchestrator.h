#ifndef CUTSCENEORCHESTRATOR_H
#define CUTSCENEORCHESTRATOR_H

#include "script.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[28];
    /*0x84*/ ScriptExecutionContext* context;
} CutsceneOrchestratorEntity;

#endif // CUTSCENEORCHESTRATOR_H
