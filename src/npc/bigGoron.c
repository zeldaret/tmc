#include "npc.h"
#include "functions.h"
#include "screen.h"
#include "hitbox.h"
#include "item.h"

static const u16 goronSounds[] = {
    SFX_VO_GORON1,
    SFX_VO_GORON2,
    SFX_VO_GORON3,
    SFX_VO_GORON4,
};

extern u8 gMapDataTopSpecial[];

void sub_0806D520(Entity*, u32);
void sub_0806D41C(Entity*);
void sub_0806CF30(Entity*);
void sub_0806D1D0(Entity*);
void sub_0806D274(Entity*);
void sub_0806D348(Entity*);
void sub_0806D3C0(Entity*);
void sub_0806D41C(Entity*);
void sub_0806D4F0(Entity*);
void sub_0806D4FC(Entity*);
void sub_0806D508(Entity*);
void sub_0806D514(Entity*);
void sub_0806D40C(Entity*);

static void sub_0806D02C(Entity* this);

typedef struct {
    u8 filler[0x40];
} unk_0806D138param_1;

typedef struct {
    u8 filler[0x40];
    u8 filler2[0xC0];
} unk_0806D138param_2;

void sub_0806D138(unk_0806D138param_1* param_1, unk_0806D138param_2* param_2);

extern void InitBiggoronTimer(void);

void sub_0806D110(void);
void sub_0806D164(Entity* this);

Entity* sub_0806D00C(Entity* this);

void sub_0806D4C0(Entity*, u32);

typedef struct {
    s8 type;
    s8 x;
    s8 y;
    u8 direction;
} struct_08114104;

void BigGoron(Entity* this) {
    static void (*const typeFunctions[])(Entity*) = {
        sub_0806CF30, sub_0806D1D0, sub_0806D274, sub_0806D348, sub_0806D3C0, sub_0806D41C,
        sub_0806D4F0, sub_0806D4FC, sub_0806D508, sub_0806D514, sub_0806D40C,
    };
    typeFunctions[this->type](this);
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
            if (--this->timer == 0) {
                u32 uVar2 = Random();
                SoundReq(goronSounds[uVar2 % 4]);
                this->timer = ((u8)uVar2 & 7) * 16;
                this->timer += 128;
            }
            break;
        case 3:
            break;
    }
    sub_0806D02C(this);
}

Entity* sub_0806D00C(Entity* this) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 0, 0);
    if (entity != NULL) {
        this->parent = entity;
    }
    return entity;
}

static void sub_0806D02C(Entity* this) {
    s32 tmp1;
    s32 tmp2;
    sub_0806D164(this);

    gScreen.lcd.displayControl |= 0x4000;
    gScreen.controls.windowInsideControl = 0x3f3f;
    gScreen.controls.windowOutsideControl = 0x3d;

    tmp1 = -(s16)gScreen.bg1.xOffset;
    tmp2 = tmp1 + 0x100;
    tmp1 = min(max(0, tmp1), 0xf0);
    tmp2 = min(max(0, tmp2), 0xf0);
    gScreen.controls.window1HorizontalDimensions = (tmp1 << 8) | tmp2;

    tmp1 = -(s16)gScreen.bg1.yOffset;
    tmp2 = tmp1 + 0x100;
    tmp1 = min(max(0, tmp1), 0xa0);
    tmp2 = min(max(0, tmp2), 0xa0);
    gScreen.controls.window1VerticalDimensions = (tmp1 << 8) | tmp2;
}

void sub_0806D0B0(Entity* this) {
    gMapTop.bgSettings = 0;
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
    Entity* entity = FindEntityByID(NPC, BIG_GORON, 7);
    if (entity != NULL) {
        sub_0806D0B0(entity);
    }
}

void sub_0806D110(void) {
    u8* tmp = gMapDataTopSpecial;
    u8* tmp2 = tmp + 0x4000;
    sub_0806D138((unk_0806D138param_1*)tmp, (unk_0806D138param_2*)tmp2);
    tmp += 0x800;
    tmp2 += 0x40;
    sub_0806D138((unk_0806D138param_1*)tmp, (unk_0806D138param_2*)tmp2);
}

void sub_0806D138(unk_0806D138param_1* param_1, unk_0806D138param_2* param_2) {
    u32 uVar1;
    for (uVar1 = 0; uVar1 < 0x20; uVar1++, param_1++, param_2++) {
        DMA_COPY(3, param_1, param_2, sizeof(*param_1), 16);
    }
}

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
        this->timer = 30;
        SetDefaultPriority(this, PRIO_MESSAGE);
    }

    switch (this->subAction) {
        case 0:
        default:
            if (--this->timer == 0) {
                this->timer = (Random() & 0x7f) + 48;
                this->subtimer = 8;
                this->frameIndex = 1;
            }
            if (this->subtimer != 0) {
                if (--this->subtimer == 0) {
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
        this->timer = 8;
        SetDefaultPriority(this, PRIO_MESSAGE);
        npc = CreateNPC(BIG_GORON, 3, 0);
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
            if (--this->timer == 0) {
                this->timer = 8;
                this->frameIndex ^= 1;
            }
            break;
        case 2:
            if (--this->timer == 0) {
                this->timer = 8;
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
        this->hitbox = (Hitbox*)&gHitbox_3;
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
    Entity* npc = CreateNPC(BIG_GORON, param + 6, 0);
    if (npc != NULL) {
        npc->parent = this;
        CopyPosition(this, npc);
        SortEntityAbove(this, npc);
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

void sub_0806D520(Entity* this, u32 param_2) {
    static const u8 gUnk_08114100[] = {
        10,
        7,
        4,
        1,
    };
    if (this->action == 0) {
        this->action = 1;
        this->subtimer = gUnk_08114100[param_2] + 6;
        this->frameIndex = this->subtimer;
        this->timer = 8;
    }
    this->x.HALF.HI = this->parent->x.HALF.HI;
    this->y.HALF.HI = this->parent->y.HALF.HI;
    this->spriteOffsetX = this->parent->spriteOffsetX;
    this->spriteOffsetY = this->parent->spriteOffsetY;
    this->spriteOrientation.flipY = this->parent->spriteOrientation.flipY;
    if (this->subAction != 0 ||
        CheckPlayerProximity(this->x.HALF.HI + param_2 * -0x10 + 0xc, this->y.HALF.HI, 0x18, 0x40)) {
        if (this->frameIndex >= this->subtimer + 2) {
            return;
        }
        if (--this->timer != 0) {
            return;
        }
        this->timer = 8;
        this->frameIndex++;
    } else {
        if (this->frameIndex <= this->subtimer) {
            return;
        }
        if (--this->timer != 0) {
            return;
        }
        this->timer = 8;
        this->frameIndex--;
    }
}

void sub_0806D5D4(void) {
    u32 itemSlot;

    InitBiggoronTimer();
    itemSlot = IsItemEquipped(ITEM_SHIELD);
    if (itemSlot != 2) {
        gSave.stats.itemButtons[itemSlot] = 0;
    }
    SetInventoryValue(ITEM_SHIELD, 0);
}

void sub_0806D600(Entity* this, ScriptExecutionContext* context) {
    context->condition = gSave.timers[2] == 0;
}

void sub_0806D620(void) {
    SetInventoryValue(ITEM_SHIELD, 0);
    InitItemGetSequence(ITEM_MIRROR_SHIELD, 0, 0);
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

void sub_0806D67C(Entity* this) {
    static const struct_08114104 gUnk_08114104[] = {
        { FX_WHITE_PUFF, 0x30, 0x20, 0xa },   { FX_WHITE_PUFF, 0x2c, 0x24, 0xb },
        { FX_WHITE_PUFF, 0x28, 0x28, 0xc },   { FX_WHITE_PUFF, 0x20, 0x28, 0x10 },
        { FX_WHITE_PUFF, 0x10, 0x28, 0x10 },  { FX_WHITE_PUFF, 0x0, 0x28, 0x10 },
        { FX_WHITE_PUFF, -0x10, 0x28, 0x10 }, { FX_WHITE_PUFF, -0x20, 0x28, 0x10 },
        { FX_WHITE_PUFF, -0x28, 0x28, 0x14 }, { FX_WHITE_PUFF, -0x2C, 0x24, 0x15 },
        { FX_WHITE_PUFF, -0x30, 0x20, 0x16 }, { -1, 0, 0, 0 },
    };
    const struct_08114104* ptr = gUnk_08114104;
    while (ptr->type != -1) {
        Entity* effect = CreateFx(this, ptr->type, 0x40);
        if (effect != NULL) {
            effect->x.HALF.HI = ptr->x + effect->x.HALF.HI;
            effect->y.HALF.HI = ptr->y + effect->y.HALF.HI;
            effect->direction = ptr->direction;
            effect->speed = 0x100;
        }
        ptr++;
    }
}

void sub_0806D6D0(void) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 2;
    }
    entity = FindEntity(NPC, BIG_GORON, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 1;
    }
}

void sub_0806D70C(void) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 0;
    }
    entity = FindEntity(NPC, BIG_GORON, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 0;
        entity->spriteSettings.draw = 3;
    }
}

void sub_0806D74C(void) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 3;
    }
    entity = FindEntity(NPC, BIG_GORON, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 2;
    }
}

void sub_0806D788(void) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        entity->subAction = 4;
    }
    entity = FindEntity(NPC, BIG_GORON, 7, 1, 0);
    if (entity != NULL) {
        entity->subAction = 1;
    }
}

void sub_0806D7C4(Entity* this, ScriptExecutionContext* context) {
    Entity* entity;

    this->x.HALF.HI = gPlayerEntity.x.HALF.HI;
    this->y.HALF.HI = gPlayerEntity.y.HALF.HI - 0x18;
    entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        sub_0807DEDC(this, context, entity->x.HALF.HI, entity->y.HALF.HI);
    }
}

void sub_0806D804(Entity* this, ScriptExecutionContext* context) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
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
