#include "global.h"
#include "entity.h"
#include "functions.h"
#include "room.h"
#include "flags.h"
#include "script.h"

extern Entity* FindEntityBySubtype(u32, u32);
void sub_08068680(Entity*, Entity*);
void sub_08068694(Entity*, Entity*);
extern Entity* GetEntityByType(u32, u32);
extern void sub_080686C4(Entity*, Entity*);

extern void (*gUnk_08110BD8[])(Entity* ent);
extern u16 gUnk_08110BE0[];

void Zelda(Entity* ent) {
    gUnk_08110BD8[ent->action](ent);
}

void sub_08066CCC(Entity* ent) {
    ent->action = 1;
    ent->spriteSettings.b.draw = 1;
    PrependEntityToList(ent, 7);
    sub_0805E3A0(ent, 2);
    sub_0807DD50(ent);
}

void sub_08066CF8(Entity* ent) {
    sub_0807DD94(ent, NULL);
}

void sub_08066D04(Entity* ent) {
    ent->parent = FindEntityBySubtype(7, 0x2E);
}

void sub_08066D14(Entity* ent, u32* param_2) {
    Entity* parent;

    parent = ent->parent;
    if (parent != NULL) {
        ent->animationState = parent->animationState;
        ent->spriteSettings.b.draw = 1;
        CopyPosition(parent, ent);
        sub_08068680(ent, ent->parent);
        param_2[5] = 1;
    } else {
        param_2[5] = 0;
    }
}

void sub_08066D4C(Entity* ent, u32* param_2) {
    Entity* parent;

    parent = ent->parent;
    if (ent->parent != NULL) {
        CopyPosition(ent, parent);
        ent->parent->spriteSettings.b.draw = 1;
        ent->parent->animationState = ent->animationState;
        ent->spriteSettings.b.draw = 0;
        ent->field_0x17 &= 0xFE;
        sub_08068694(ent, ent->parent);
        param_2[5] = 1;
    } else {
        param_2[5] = 0;
    }
}

void sub_08066D94(Entity* ent) {
    u32 roomID;
    Entity* npc;

    SetGlobalFlag(ZELDA_CHASE);
    npc = CreateNPC(0x2E, 0, 0);
    if (npc != NULL) {
        npc->animationState = gPlayerEntity.animationState;
        npc->flags |= 0x20;
        npc->animationState = GetAnimationState(ent);
        roomID = gRoomControls.roomID;
        npc->field_0x74.HWORD = roomID;
        CopyPosition(ent, npc);
    }
    DeleteThisEntity();
}

void sub_08066DE4(Entity* ent) {
    Entity* pEVar1;

    pEVar1 = FindEntityBySubtype(7, 0x2E);
    if (pEVar1 != NULL) {
        CopyPosition(ent, pEVar1);
        sub_080686C4(ent, pEVar1);
    }
}

void sub_08066E08(Entity* ent) {
    InitAnimationForceUpdate(ent, 0x50);
    ent->field_0x80.HWORD = ent->animIndex;
}

void sub_08066E20(Entity* ent) {
    InitAnimationForceUpdate(ent, 0x44);
    ent->field_0x80.HWORD = ent->animIndex;
}

void sub_08066E38(Entity* ent) {
    InitAnimationForceUpdate(ent, 0x48);
    ent->field_0x80.HWORD = ent->animIndex;
}

void sub_08066E50(Entity* ent) {
    InitAnimationForceUpdate(ent, 0x4C);
    ent->field_0x80.HWORD = ent->animIndex;
}

void sub_08066E68(Entity* ent) {
    InitAnimationForceUpdate(ent, 0x54);
    ent->field_0x80.HWORD = ent->animIndex;
}

void sub_08066E80(Entity* ent, u8* param_2) {
    switch (param_2[0x18]) {
        case 0:
            param_2[0x18]++;
            InitAnimationForceUpdate(ent, 0x16);
            break;
        case 1:
            UpdateAnimationSingleFrame(ent);
            if (ent->frames.all & 1) {
                param_2[0x18]++;
                ent->field_0x20 = 0x20000;
                ent->frames.all &= 0xFE;
                SoundReq(0x7C);
            }
            break;
        case 2:
            sub_0806F62C(ent, 0x100, 0x80);
            sub_08003FC4(ent, 0x2000);
            if (!(ent->frames.all & 1)) {
                UpdateAnimationSingleFrame(ent);
            }
            if (ent->field_0x20 < 0) {
                param_2[0x18]++;
            }
            break;
        case 3:
            sub_0806F62C(ent, 0x100, 0x80);
            UpdateAnimationSingleFrame(ent);
            if (sub_08003FC4(ent, 0x2000) == 0) {
                param_2[0x18]++;
                InitAnimationForceUpdate(ent, 0x1E);
            }
            break;
        case 4:
            UpdateAnimationSingleFrame(ent);
            if (ent->frames.b.f3) {
                gUnk_02033280.unk_07 |= 1;
                return;
            }
    }
    ent->field_0x80.HWORD = ent->animIndex;
    gUnk_02033280.unk_06 = 0;
}

void sub_08066F94(void) {
    u16 uVar1;
    u16* puVar2;

    puVar2 = gUnk_08110BE0;
    while (*puVar2 != 0) {
        uVar1 = *puVar2;
        puVar2++;
        SetTileType(16498, uVar1, 1);
    }
}

void sub_08066FB8(void) {
    u16 uVar1;
    u16* puVar2;

    puVar2 = gUnk_08110BE0;
    while (*puVar2 != 0) {
        uVar1 = *puVar2;
        puVar2++;
        sub_0807BA8C(uVar1, 1);
    }
}
