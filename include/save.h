#ifndef SAVE_H
#define SAVE_H

#include "global.h"
#include "entity.h"
#include "functions.h"
#include "menu.h"
#include "structures.h"

typedef enum {
    SAVE_BUSY = 0,
    SAVE_OK  = 1,
    SAVE_ERROR = 0xFFFFFFFF,
} SaveResult;

typedef enum {
    SAVE_INIT,
    SAVE_IN_PROGRESS,
    SAVE_DONE,
} SaveState;

extern u32 sub_0807CDA4(SaveState state);

#endif