#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "player.h"
#include "room.h"
#include "textbox.h"

extern void (*gUnk_081115C0[])(Entity*);
extern void (*gUnk_081115D0[])(Entity*);

extern u16 gUnk_081115DC[];
extern u8 gUnk_08111618[];
extern u32* gUnk_081115EC[];
extern u8 gUnk_08111623[];
extern u8 gUnk_0811162B[];
extern u16 gUnk_08111664[];
extern u16 gUnk_0811167A[];
extern u16 gUnk_08111690[];
extern u16 gUnk_081116A6[];
extern u16 gUnk_081116BC[];
extern u16 gUnk_081116D2[];
extern u16 gUnk_081116E8[];
extern u16 gUnk_081116FE[];
extern u16 gUnk_08111714[];
extern u32 gUnk_08111740[];
extern u16 gUnk_0811172A[];
extern u32 gUnk_0300402B;
extern EntityData gUnk_080F3494;

void BladeBrothers(Entity* this) {

    if ((this->flags & 2) != 0) {
        gUnk_081115D0[this->action](this);
    } else {
        gUnk_081115C0[this->action](this);
        sub_0806ED78(this);
    }
    if ((this->frames.all & 1) != 0) {
        this->frames.all &= 0xfe;
        sub_08068BEC(this, 0);
    }
}

void sub_08068A1C(Entity* this) {
    u8 bVar1;
    int offset;

    (this->entityType).parameter = (this->entityType).form;
    if (gScreenTransition.field_0x24[8] != 0) {
        offset = 6;
        bVar1 = 3;

    } else {
        sub_08078778(this);
        offset = 2;
        bVar1 = 1;
    }
    this->action = bVar1;
    InitializeAnimation(this, offset);
}

void sub_08068A4C(Entity* this) {
    s32 uVar1;
    s32 iVar2;

    uVar1 = sub_0806ED9C(this, 0x28, 0x28);
    if (uVar1 < 0) {
        uVar1 = 2;
    } else {
        if (this->field_0xf == 0) {
            this->field_0xf = 0x10;
        } else {
            this->field_0xf--;
            uVar1 = (u32)this->animIndex;
        }
    }
    iVar2 = sub_0806F078(this, uVar1);
    if (iVar2 == 0) {
        GetNextFrame(this);
    }
    if (this->interactType != 0) {
        this->interactType = 0;
        this->action = 2;
        TextboxNoOverlapFollow(0);
    }
}

void sub_08068AA4(Entity* this) {
    u8 bVar1;

    this->action = 1;
    if (this->entityType.form != 0) {
        this->entityType.parameter++;
        this->entityType.parameter &= 7;
        if (this->entityType.parameter == 0) {
            this->entityType.parameter += 1;
        }
        sub_0801D2B4(this, gUnk_081115DC[this->entityType.parameter]);
    }
}

void sub_08068ADC(Entity* this) {
    if (gScreenTransition.field_0x24[8] == 2) {
        GetNextFrame(this);
    }
    sub_0806FD3C(this);
}

void sub_08068AFC(Entity* this) {
    this->action = 1;
    this->spriteSettings.b.draw = 1;
    this->field_0x68.HALF.LO = sub_0801E99C(this);
    sub_08078784(this, this->field_0x68.HALF.LO);
    sub_0807DD50(this);
}

void FUN_08068b2c(Entity* this) {
    u32 uVar1;

    if (this->interactType == '\x02') {
        this->action = 2;
        this->interactType = '\0';
        uVar1 = sub_0806F5A4(GetFacingDirection(this, &gPlayerEntity));
        InitAnimationForceUpdate(this, uVar1);
        sub_0806F118(this);
    } else {
        sub_0807DD94(this, 0);
    }
}

void sub_08068B70(Entity* this) {
    if (UpdateFuseInteraction()) {
        this->action = 1;
    }
}

void sub_08068B84(Entity* this) {
    u8 p;

    if (gUnk_08111618) {}
    if (p = this->actionDelay, gUnk_08111618[p]) {
        ForceEquipItem(gUnk_08111618[this->actionDelay], 0);
    }
    sub_0805ED14(gUnk_081115EC[this->actionDelay]);
}

void sub_08068BB4(Entity* this) {
    u32 item = gUnk_02002A40.stats.itemOnA;

    this->field_0x68.HALF.HI = item;
    item = gUnk_02002A40.stats.itemOnB;
    *(&this->field_0x68.HALF.HI + 1) = item;
}

void sub_08068BD0(Entity* this) {
    ForceEquipItem(this->field_0x68.HALF.HI, 0);
    ForceEquipItem(*(u8*)(&this->field_0x68.HALF.HI + 1), 1);
}

void sub_08068BEC(Entity* this, u32 unused) {
    Entity* target;

    target = CreateFx(this, 0x44, 0);
    if (target) {
        target->spritePriority.b0 = 1;
        PositionRelative(this, target, 0, -0x100000);
        PlaySFX(0xfa);
    }
}

void sub_08068C28(Entity* this) {
    u8 bVar1;
    u32 uVar2;

    this->actionDelay = gUnk_08111623[(this->entityType).form];
    if ((this->entityType).form == 1) {
        if (GetInventoryValue(0x48)) {      // spin attack
            if (!GetInventoryValue(0x4b)) { // rock breaker
                this->actionDelay = 1;
            } else {
                if (!GetInventoryValue(0x4a)) { // dash attack
                    this->actionDelay = 2;
                } else {
                    this->actionDelay = 3;
                }
            }
        }
    }
}

void sub_08068C6C(Entity* this) {
    sub_080A7C18(gUnk_0811162B[this->actionDelay] & 0xffffff7f, 0, 0);
}

void sub_08068C8C(Entity* param_1, Entity* param_2) {
    u8* arr = gUnk_0811162B + 0xd;

    *(u32*)&param_2->animationState = *(u32*)(arr + param_1->actionDelay * 4);
}

void sub_08068CA0(Entity* param_1, Entity* param_2) {
    u8 bVar1;
    u32 uVar2;

    bVar1 = (param_1->entityType).form;
    if (bVar1 == 1) {
        *(u32*)&param_2->animationState = bVar1;
        uVar2 = GetInventoryValue(0x48); // spin attack
        if (uVar2 == 0) {
            *(u32*)&param_2->animationState = 0;
        }
        uVar2 = GetInventoryValue(0x4b); // rock breaker
        if (uVar2 == 0) {
            *(u32*)&param_2->animationState = 0;
        }
        uVar2 = GetInventoryValue(0x4a); // dash attack
        if (uVar2 == 0) {
            *(u32*)&param_2->animationState = 0;
        }
        uVar2 = GetInventoryValue(0x4e); // down thrust
        if (uVar2 != 0) {
            return;
        }
    } else {
        uVar2 = GetInventoryValue(gUnk_0811162B[param_1->actionDelay] & -0x81);
        if (uVar2 != 0) {
            uVar2 = 1;
        }
    }
    *(u32*)&param_2->animationState = uVar2;
}

void sub_08068CFC(Entity* param_1, Entity* param_2, u32 param_3, u32 param_4)

{
    u8 bVar1;
    u8 itemID;
    u32 uVar2;

    *(u32*)&param_2->animationState = 0;
    bVar1 = param_1->actionDelay;
    if (bVar1 > 10)
        return;

    switch (bVar1) {
        case 0:
        default:
            goto switchD_08068d12_caseD_0;
        case 1:
            itemID = 0x2;
            break;
        case 2:
            itemID = 0x15;
            break;
        case 3:
            itemID = 0x14;
            break;
        case 5:
            uVar2 = CheckLocalFlag(3);
            goto LABEL1;
            break;
        case 6:
            if (gUnk_02002A40.stats.maxHealth < 0x50)
                return;
            goto switchD_08068d12_caseD_0;
        case 7:
            uVar2 = GetInventoryValue(0x48); // spin attack
            if (uVar2 == 0) {
                return;
            }
            uVar2 = GetInventoryValue(0x49); // roll attack
            if (uVar2 == 0) {
                return;
            }
            uVar2 = GetInventoryValue(0x4a); // dash attack
            if (uVar2 == 0) {
                return;
            }
            uVar2 = GetInventoryValue(0x4b); // rock breaker
            if (uVar2 == 0) {
                return;
            }
            uVar2 = GetInventoryValue(0x4c); // sword beam
            if (uVar2 == 0) {
                return;
            }
            uVar2 = GetInventoryValue(0x4e); // down thrust
            if (uVar2 == 0) {
                return;
            }
            itemID = 0x4f; // peril beam
            break;
        case 10:
            itemID = 0x4d; // great spin
    }
    uVar2 = GetInventoryValue(itemID);
LABEL1:
    if (uVar2 == 0) {
        return;
    }
switchD_08068d12_caseD_0:
    *(u32*)&param_2->animationState = 1;
}

// Introduction dialoague
void sub_08068DB8(Entity* this) {
    TextboxNoOverlap(gUnk_08111664[this->actionDelay], this);
}

// Ask to teach dialoague
void sub_08068DD0(Entity* this) {
    TextboxNoOverlap(gUnk_0811167A[this->actionDelay], this);
}

// Technique Dialogue
void sub_08068DE8(Entity* this) {
    TextboxNoOverlap(gUnk_08111690[this->actionDelay], this);
}

// Posession dialogue
void sub_08068E00(Entity* this) {
    TextboxNoOverlap(gUnk_081116A6[this->actionDelay], this);
}

void sub_08068E18(Entity* this) {
    TextboxNoOverlap(gUnk_081116BC[this->actionDelay], this);
}

void sub_08068E30(Entity* this) {
    TextboxNoOverlap(gUnk_081116D2[this->actionDelay], this);
}

void sub_08068E48(Entity* this) {
    TextboxNoOverlap(gUnk_081116E8[this->actionDelay], this);
}

void sub_08068E60(Entity* this) {
    TextboxNoOverlap(gUnk_081116FE[this->actionDelay], this);
}

void sub_08068E78(Entity* this) {
    TextboxNoOverlap(gUnk_08111714[this->actionDelay], this);
}

void sub_08068E90(Entity* this) {
    PlayerState* s = &gPlayerState;
    *(u16*)&s->field_0xac = (1 << (gUnk_08111740[this->actionDelay] - 1)) | *(u16*)&s->field_0xac;
}

void sub_08068EB4(void) {
    gPlayerState.field_0xab = 0;
}

void sub_08068EC4(Entity* param_1, Entity* param_2) {
    if (gUnk_08111740[param_1->actionDelay] == gPlayerState.field_0xab) {
        *(u16*)&param_2->flags = gUnk_0811172A[param_1->actionDelay];
        *(u32*)&param_2->animationState = 1;
    } else {
        *(u32*)&param_2->animationState = 0;
    }
}

void sub_08068F00(Entity* this) {
    if (this->actionDelay == 1) {
        LoadRoomEntityList(&gUnk_080F3494);
    }
}

void sub_08068F14(Entity* this) {
    if (this->actionDelay == 5) {
        ModHealth(160);
    }
    if (this->actionDelay == 6) {
        ModHealth(-160);
        ModHealth(2);
    }
}

void sub_08068F3C(Entity* this) {
    if (this->actionDelay == 6) {
        ModHealth(160);
    }
}

void BladeBrothers_Fusion(Entity* this) {

    if (this->action == 0) {
        this->action += 1;
        this->spriteSettings.b.draw = 0;
        this->spriteSettings.b.draw = 1;
        InitAnimationForceUpdate(this, 4);
    } else {
        UpdateAnimationSingleFrame(this);
    }
    if ((this->frames.all & 1) != 0) {
        this->frames.all &= 0xfe;
        sub_08068BEC(this, 0);
    }
}
