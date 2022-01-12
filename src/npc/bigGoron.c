#include "npc.h"
#include "functions.h"
#include "screen.h"

extern void (*gUnk_081140D4[])(Entity*);

extern u16 gUnk_081140CC[];

void sub_0806D520(Entity*, u32);

void sub_0806D41C(Entity* this);

extern u8 gMapDataTopSpecial[];

void sub_0806D138(u8* param_1, u8* param_2);

extern void InitBiggoronTimer(void);

extern u32 gUnk_0200B650;
void sub_0806D110(void);
void sub_0806D164(Entity* this);

extern Hitbox gHitbox_3;
Entity* sub_0806D00C(Entity* this);

void sub_0806D4C0(Entity*, u32);

void BigGoron(Entity* this) {
    gUnk_081140D4[this->type](this);
}

void sub_0806CF30(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->subAction = 1;
        this->field_0x68.HWORD = this->x.HALF.HI;
        SetDefaultPriority(this, PRIO_MESSAGE);
        sub_0806D0B0(this);
        sub_0807DD64(this);
    } else {
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
    }

    switch (this->subAction) {
        case 0:
        case 1:
            if (gRoomTransition.frameCount % 4 == 0) {
                if (gPlayerEntity.x.HALF.HI < this->x.HALF.HI && this->field_0x68.HWORD - 32 < this->x.HALF.HI) {
                    this->x.HALF.HI--;
                }
                if (gPlayerEntity.x.HALF.HI > this->x.HALF.HI && this->field_0x68.HWORD + 32 > this->x.HALF.HI) {
                    this->x.HALF.HI++;
                }
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                u32 uVar2 = Random();
                SoundReq(gUnk_081140CC[uVar2 % 4]);
                this->actionDelay = ((u8)uVar2 & 7) * 16;
                this->actionDelay += 128;
            }
            break;
        case 3:
            break;
    }
    sub_0806D02C(this);
}

Entity* sub_0806D00C(Entity* this) {
    Entity* entity = FindEntity(7, 76, 7, 0, 0);
    if (entity != NULL) {
        this->parent = entity;
    }
    return entity;
}

ASM_FUNC("asm/non_matching/bigGoron/sub_0806D02C.inc", void sub_0806D02C(Entity* this))

void sub_0806D0B0(Entity* this) {
    gUnk_0200B650 = 0;
    LoadGfxGroup(0x30);
    sub_0806D110();
    MemClear(&gMapDataTopSpecial, 0x2000);
    if (this != NULL) {
        sub_0806D164(this);
    }
    gScreen.bg1.control = 0x1d47;
    gScreen.bg1.tilemap = &gMapDataTopSpecial;
    gScreen.bg1.updated = 1;
}

void sub_0806D0F8(void) {
    Entity* entity = FindEntityByID(7, 0x4c, 7);
    if (entity != NULL) {
        sub_0806D0B0(entity);
    }
}

void sub_0806D110(void) {
    u8* tmp = gMapDataTopSpecial;
    u8* tmp2 = tmp + 0x4000;
    sub_0806D138(tmp, tmp2);
    tmp += 0x800;
    tmp2 += 0x40;
    sub_0806D138(tmp, tmp2);
}

ASM_FUNC("asm/non_matching/bigGoron/sub_0806D138.inc", void sub_0806D138(u8* param_1, u8* param_2))

ASM_FUNC("asm/non_matching/bigGoron/sub_0806D164.inc", void sub_0806D164(Entity* this))

void sub_0806D1D0(Entity* this) {
    if (this->action == 0) {
        if (sub_0806D00C(this) == NULL) {
            DeleteThisEntity();
        }
        this->action = 1;
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
        this->spriteSettings.draw = 3;
        this->frameIndex = 0;
        this->actionDelay = 0x1e;
        SetDefaultPriority(this, PRIO_MESSAGE);
    }

    switch (this->subAction) {
        case 0:
        default:
            if (--this->actionDelay == 0) {
                this->actionDelay = (Random() & 0x7f) + 0x30;
                this->field_0xf = 8;
                this->frameIndex = 1;
            }
            if (this->field_0xf != 0) {
                if (--this->field_0xf == 0) {
                    this->frameIndex = 0;
                }
            }
            break;
        case 1:
            this->frameIndex = this->subAction;
            break;
        case 2:
            this->spriteSettings.draw = 0;
            break;
    }
    this->x.HALF.HI = this->parent->x.HALF.HI;
    this->y.HALF.HI = this->parent->y.HALF.HI;
}

void sub_0806D274(Entity* this) {
    Entity* npc;

    if (this->action == 0) {
        if (sub_0806D00C(this) == NULL) {
            DeleteThisEntity();
        }
        this->action = 1;
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 7;
        this->frameIndex = 2;
        this->actionDelay = 8;
        SetDefaultPriority(this, PRIO_MESSAGE);
        npc = CreateNPC(0x4c, 3, 0);
        if (npc != NULL) {
            npc->child = this;
        }
    }
    switch (this->subAction) {
        case 0:
        case 1:
        default:
            if ((gMessage.doTextBox & 0x7f) == 0) {
                this->frameIndex = 2;
                break;
            }
            if (--this->actionDelay == 0) {
                this->actionDelay = 8;
                this->frameIndex ^= 1;
            }
            break;
        case 2:
            if (--this->actionDelay == 0) {
                this->actionDelay = 8;
                this->frameIndex ^= 1;
            }
            break;
        case 3:
            this->frameIndex = 4;
            break;
        case 4:
            this->frameIndex = 2;
            break;
    }
    this->x.HALF.HI = this->parent->x.HALF.HI;
    this->y.HALF.HI = this->parent->y.HALF.HI;
}

void sub_0806D348(Entity* this) {
    if (this->action == 0) {
        if (sub_0806D00C(this) == NULL) {
            DeleteThisEntity();
        }
        this->action = 1;
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
        this->spritePriority.b0 = 6;
        this->spriteSettings.draw = 0;
        this->frameIndex = 5;
        SetDefaultPriority(this, PRIO_MESSAGE);
    }
    if (this->child->frameIndex == 4) {
        this->spriteSettings.draw = 3;
    } else {
        this->spriteSettings.draw = 0;
    }
    this->x.HALF.HI = this->parent->x.HALF.HI;
    this->y.HALF.HI = this->parent->y.HALF.HI;
}

void sub_0806D3C0(Entity* this) {
    if (this->action == 0) {
        if (sub_0806D00C(this) == NULL) {
            DeleteThisEntity();
        }
        this->action = 1;
        this->hitbox = &gHitbox_3;
        SetDefaultPriority(this, PRIO_MESSAGE);
        sub_0807DD64(this);
    } else {
        this->x.HALF.HI = this->parent->x.HALF.HI;
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
    }
}

void sub_0806D40C(Entity* this) {
    this->spriteSettings.flipX = 1;
    sub_0806D41C(this);
}

void sub_0806D41C(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->frameIndex = 6;
        sub_0807DD64(this);
        sub_0806D4C0(this, 0);
        sub_0806D4C0(this, 1);
        sub_0806D4C0(this, 2);
        sub_0806D4C0(this, 3);
        SetDefaultPriority(this, PRIO_MESSAGE);
    } else {
        ExecuteScriptForEntity(this, NULL);
        HandleEntity0x82Actions(this);
    }
    if ((gRoomTransition.frameCount & 1) == 0) {
        if (CheckPlayerProximity(this->x.HALF.HI - 0x20, this->y.HALF.HI, 0x40, 0x40) != 0) {
            if (this->spriteOffsetY > -8) {
                this->spriteOffsetY -= 1;
            }
        } else {
            if (this->spriteOffsetY < 0) {
                this->spriteOffsetY += 1;
            }
        }
    }
}

void sub_0806D4C0(Entity* this, u32 param) {
    Entity* npc = CreateNPC(0x4c, param + 6, 0);
    if (npc != NULL) {
        npc->parent = this;
        CopyPosition(this, npc);
        ResolveEntityOnTop(this, npc);
        SetDefaultPriority(npc, PRIO_MESSAGE);
    }
}

void sub_0806D4F0(Entity* this) {
    sub_0806D520(this, 0);
}

void sub_0806D4FC(Entity* this) {
    sub_0806D520(this, 1);
}

void sub_0806D508(Entity* this) {
    sub_0806D520(this, 2);
}

void sub_0806D514(Entity* this) {
    sub_0806D520(this, 3);
}

ASM_FUNC("asm/non_matching/bigGoron/sub_0806D520.inc", void sub_0806D520(Entity* this, u32 param))

void sub_0806D5D4(void) {
    u32 itemSlot;

    InitBiggoronTimer();
    itemSlot = IsItemEquipped(0xd);
    if (itemSlot != 2) {
        gSave.stats.itemButtons[itemSlot] = 0;
    }
    sub_0807CAA0(0xd, 0);
}

void sub_0806D600(Entity* this, ScriptExecutionContext* context) {
    context->condition = gSave.timers[2] == 0;
}

void sub_0806D620(void) {
    sub_0807CAA0(0xd, 0);
    sub_080A7C18(0xe, 0, 0);
}

void sub_0806D638(Entity* this) {
    this->y.HALF.HI -= 0x20;
}

void sub_0806D640(Entity* this) {
    this->y.HALF.HI += 0x20;
    this->interactType = 0;
}

void sub_0806D650(Entity* this) {
    this->subAction = 2;
}

void sub_0806D658(Entity* this, ScriptExecutionContext* context) {
    this->subAction = context->intVariable;
}

void sub_0806D660(Entity* this) {
    this->spriteOrientation.flipY = 3;
}

void sub_0806D66C(Entity* this) {
    this->spriteOrientation.flipY = 2;
}

ASM_FUNC("asm/non_matching/bigGoron/sub_0806D67C.inc", void sub_0806D67C(Entity* this))

void sub_0806D6D0(void) {
    Entity* entity = FindEntity(7, 0x4c, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 2;
    }
    entity = FindEntity(7, 0x4c, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 1;
    }
}

void sub_0806D70C(void) {
    Entity* entity = FindEntity(7, 0x4c, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 0;
    }
    entity = FindEntity(7, 0x4c, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 0;
        entity->spriteSettings.draw = 3;
    }
}

void sub_0806D74C(void) {
    Entity* entity = FindEntity(7, 0x4c, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 3;
    }
    entity = FindEntity(7, 0x4c, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 2;
    }
}

void sub_0806D788(void) {
    Entity* entity = FindEntity(7, 0x4c, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 4;
    }
    entity = FindEntity(7, 0x4c, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 1;
    }
}

void sub_0806D7C4(Entity* this, ScriptExecutionContext* context) {
    Entity* entity;

    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
    this->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0x18;
    entity = FindEntity(7, 0x4c, 7, 2, 0);
    if (entity != NULL) {
        sub_0807DEDC(this, context, entity->x.HALF.HI, entity->y.HALF.HI);
    }
}

void sub_0806D804(Entity* this, ScriptExecutionContext* context) {
    Entity* entity = FindEntity(7, 0x4c, 7, 2, 0);
    if (entity != NULL) {
        this->x.HALF.HI = entity->x.HALF.HI;
        this->y.HALF.HI = entity->y.HALF.HI - 0x10;
        this->spritePriority.b1 = 0;
    }
    sub_0807DEDC(this, context, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI - 0x10);
}

void sub_0806D858(Entity* this) {
    this->spritePriority.b1 = 1;
}
