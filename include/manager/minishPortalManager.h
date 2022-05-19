#ifndef MINISHPORTALMANAGER_H
#define MINISHPORTALMANAGER_H

#include "manager.h"

typedef struct {
    Manager base;
    u32 unk_20;
    u32 unk_24;
    u8 unk_28[0xC];
    u8 unk_34;
    u8 unk_35;
    u16 unk_36;
    u16 unk_38;
    u16 unk_3a;
    u16 unk_3c;
    u16 unk_3e;
} MinishPortalManager;

#endif // MINISHPORTALMANAGER_H
