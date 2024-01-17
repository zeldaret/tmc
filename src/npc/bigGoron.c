/**
 * @file bigGoron.c
 * @ingroup NPCs
 *
 * @brief BigGoron NPC
 */
#include "functions.h"
#include "hitbox.h"
#include "item.h"
#include "npc.h"
#include "screen.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u16 originalX;
} BigGoronEntity;

static const u16 goronSounds[] = {
    SFX_VO_GORON1,
    SFX_VO_GORON2,
    SFX_VO_GORON3,
    SFX_VO_GORON4,
};

extern u8 gMapDataTopSpecial[];
extern u8 gUnk_02006F00[];

void sub_0806D520(BigGoronEntity* this, u32);
void sub_0806CF30(BigGoronEntity* this);
void sub_0806D1D0(BigGoronEntity* this);
void sub_0806D274(BigGoronEntity* this);
void sub_0806D348(BigGoronEntity* this);
void sub_0806D3C0(BigGoronEntity* this);
void sub_0806D41C(BigGoronEntity* this);
void sub_0806D4F0(BigGoronEntity* this);
void sub_0806D4FC(BigGoronEntity* this);
void sub_0806D508(BigGoronEntity* this);
void sub_0806D514(BigGoronEntity* this);
void sub_0806D40C(BigGoronEntity* this);

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

void sub_0806D4C0(BigGoronEntity* this, u32 type);

typedef struct {
    s8 type;
    s8 x;
    s8 y;
    u8 direction;
} struct_08114104;

void BigGoron(BigGoronEntity* this) {
    static void (*const typeFunctions[])(BigGoronEntity*) = {
        sub_0806CF30, sub_0806D1D0, sub_0806D274, sub_0806D348, sub_0806D3C0, sub_0806D41C,
        sub_0806D4F0, sub_0806D4FC, sub_0806D508, sub_0806D514, sub_0806D40C,
    };
    typeFunctions[super->type](this);
}

void sub_0806CF30(BigGoronEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->subAction = 1;
        this->originalX = super->x.HALF.HI;
        SetEntityPriority(super, PRIO_MESSAGE);
        sub_0806D0B0(super);
        sub_0807DD64(super);
    } else {
        ExecuteScriptForEntity(super, NULL);
        HandleEntity0x82Actions(super);
    }

    switch (super->subAction) {
        case 0:
        case 1:
            if (gRoomTransition.frameCount % 4 == 0) {
                if (gPlayerEntity.base.x.HALF.HI < super->x.HALF.HI && this->originalX - 32 < super->x.HALF.HI) {
                    super->x.HALF.HI--;
                }
                if (gPlayerEntity.base.x.HALF.HI > super->x.HALF.HI && this->originalX + 32 > super->x.HALF.HI) {
                    super->x.HALF.HI++;
                }
            }
            break;
        case 2:
            if (--super->timer == 0) {
                u32 uVar2 = Random();
                SoundReq(goronSounds[uVar2 % 4]);
                super->timer = ((u8)uVar2 & 7) * 16;
                super->timer += 128;
            }
            break;
        case 3:
            break;
    }
    sub_0806D02C(super);
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
    tmp1 = min(max(0, tmp1), DISPLAY_WIDTH);
    tmp2 = min(max(0, tmp2), DISPLAY_WIDTH);
    gScreen.controls.window1HorizontalDimensions = (tmp1 << 8) | tmp2;

    tmp1 = -(s16)gScreen.bg1.yOffset;
    tmp2 = tmp1 + 0x100;
    tmp1 = min(max(0, tmp1), DISPLAY_HEIGHT);
    tmp2 = min(max(0, tmp2), DISPLAY_HEIGHT);
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
    gScreen.bg1.subTileMap = &gMapDataTopSpecial;
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

void sub_0806D164(Entity* this) {
    u8* puVar1;
    u8* puVar2;
    u8* ptr;
    u32 xOffset;
    s32 index;

    xOffset = ((s32)gRoomControls.scroll_x - this->x.HALF.HI) + 0xa0;
    gScreen.bg1.xOffset = (u16)xOffset & 0xf;
    gScreen.bg1.yOffset = (gRoomControls.scroll_y - this->y.HALF.HI) + 0xb0;
    ptr = gUnk_02006F00;
    puVar1 = &ptr[0];
    puVar2 = &ptr[-0x4000];

    for (index = 0x20, ptr = &puVar1[(xOffset >> 4) * 4]; index != 0; index--) {
        DmaCopy16(3, ptr, puVar2, 0x20 * 2);
        ptr += 0x100;
        puVar2 += 0x40;
    }
    gScreen.bg1.updated = 1;
}

void sub_0806D1D0(BigGoronEntity* this) {
    if (super->action == 0) {
        if (sub_0806D00C(super) == NULL) {
            DeleteThisEntity();
        }
        super->action = 1;
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 7;
        super->spriteSettings.draw = 3;
        super->frameIndex = 0;
        super->timer = 30;
        SetEntityPriority(super, PRIO_MESSAGE);
    }

    switch (super->subAction) {
        case 0:
        default:
            if (--super->timer == 0) {
                super->timer = (Random() & 0x7f) + 48;
                super->subtimer = 8;
                super->frameIndex = 1;
            }
            if (super->subtimer != 0) {
                if (--super->subtimer == 0) {
                    super->frameIndex = 0;
                }
            }
            break;
        case 1:
            super->frameIndex = super->subAction;
            break;
        case 2:
            super->spriteSettings.draw = 0;
            break;
    }
    super->x.HALF.HI = super->parent->x.HALF.HI;
    super->y.HALF.HI = super->parent->y.HALF.HI;
}

void sub_0806D274(BigGoronEntity* this) {
    Entity* npc;

    if (super->action == 0) {
        if (sub_0806D00C(super) == NULL) {
            DeleteThisEntity();
        }
        super->action = 1;
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 7;
        super->frameIndex = 2;
        super->timer = 8;
        SetEntityPriority(super, PRIO_MESSAGE);
        npc = CreateNPC(BIG_GORON, 3, 0);
        if (npc != NULL) {
            npc->child = super;
        }
    }
    switch (super->subAction) {
        case 0:
        case 1:
        default:
            if ((gMessage.state & MESSAGE_ACTIVE) == 0) {
                super->frameIndex = 2;
                break;
            }
            if (--super->timer == 0) {
                super->timer = 8;
                super->frameIndex ^= 1;
            }
            break;
        case 2:
            if (--super->timer == 0) {
                super->timer = 8;
                super->frameIndex ^= 1;
            }
            break;
        case 3:
            super->frameIndex = 4;
            break;
        case 4:
            super->frameIndex = 2;
            break;
    }
    super->x.HALF.HI = super->parent->x.HALF.HI;
    super->y.HALF.HI = super->parent->y.HALF.HI;
}

void sub_0806D348(BigGoronEntity* this) {
    if (super->action == 0) {
        if (sub_0806D00C(super) == NULL) {
            DeleteThisEntity();
        }
        super->action = 1;
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
        super->spritePriority.b0 = 6;
        super->spriteSettings.draw = 0;
        super->frameIndex = 5;
        SetEntityPriority(super, PRIO_MESSAGE);
    }
    if (super->child->frameIndex == 4) {
        super->spriteSettings.draw = 3;
    } else {
        super->spriteSettings.draw = 0;
    }
    super->x.HALF.HI = super->parent->x.HALF.HI;
    super->y.HALF.HI = super->parent->y.HALF.HI;
}

void sub_0806D3C0(BigGoronEntity* this) {
    if (super->action == 0) {
        if (sub_0806D00C(super) == NULL) {
            DeleteThisEntity();
        }
        super->action = 1;
        super->hitbox = (Hitbox*)&gHitbox_3;
        SetEntityPriority(super, PRIO_MESSAGE);
        sub_0807DD64(super);
    } else {
        super->x.HALF.HI = super->parent->x.HALF.HI;
        ExecuteScriptForEntity(super, NULL);
        HandleEntity0x82Actions(super);
    }
}

void sub_0806D40C(BigGoronEntity* this) {
    super->spriteSettings.flipX = 1;
    sub_0806D41C(this);
}

void sub_0806D41C(BigGoronEntity* this) {
    if (super->action == 0) {
        super->action = 1;
        super->frameIndex = 6;
        sub_0807DD64(super);
        sub_0806D4C0(this, 0);
        sub_0806D4C0(this, 1);
        sub_0806D4C0(this, 2);
        sub_0806D4C0(this, 3);
        SetEntityPriority(super, PRIO_MESSAGE);
    } else {
        ExecuteScriptForEntity(super, NULL);
        HandleEntity0x82Actions(super);
    }
    if ((gRoomTransition.frameCount & 1) == 0) {
        if (CheckPlayerProximity(super->x.HALF.HI - 0x20, super->y.HALF.HI, 0x40, 0x40) != 0) {
            if (super->spriteOffsetY > -8) {
                super->spriteOffsetY--;
            }
        } else {
            if (super->spriteOffsetY < 0) {
                super->spriteOffsetY++;
            }
        }
    }
}

void sub_0806D4C0(BigGoronEntity* this, u32 type) {
    Entity* npc = CreateNPC(BIG_GORON, type + 6, 0);
    if (npc != NULL) {
        npc->parent = super;
        CopyPosition(super, npc);
        SortEntityAbove(super, npc);
        SetEntityPriority(npc, PRIO_MESSAGE);
    }
}

void sub_0806D4F0(BigGoronEntity* this) {
    sub_0806D520(this, 0);
}

void sub_0806D4FC(BigGoronEntity* this) {
    sub_0806D520(this, 1);
}

void sub_0806D508(BigGoronEntity* this) {
    sub_0806D520(this, 2);
}

void sub_0806D514(BigGoronEntity* this) {
    sub_0806D520(this, 3);
}

void sub_0806D520(BigGoronEntity* this, u32 param_2) {
    static const u8 gUnk_08114100[] = {
        10,
        7,
        4,
        1,
    };
    if (super->action == 0) {
        super->action = 1;
        super->subtimer = gUnk_08114100[param_2] + 6;
        super->frameIndex = super->subtimer;
        super->timer = 8;
    }
    super->x.HALF.HI = super->parent->x.HALF.HI;
    super->y.HALF.HI = super->parent->y.HALF.HI;
    super->spriteOffsetX = super->parent->spriteOffsetX;
    super->spriteOffsetY = super->parent->spriteOffsetY;
    super->spriteOrientation.flipY = super->parent->spriteOrientation.flipY;
    if (super->subAction != 0 ||
        CheckPlayerProximity(super->x.HALF.HI + param_2 * -0x10 + 0xc, super->y.HALF.HI, 0x18, 0x40)) {
        if (super->frameIndex >= super->subtimer + 2) {
            return;
        }
        if (--super->timer != 0) {
            return;
        }
        super->timer = 8;
        super->frameIndex++;
    } else {
        if (super->frameIndex <= super->subtimer) {
            return;
        }
        if (--super->timer != 0) {
            return;
        }
        super->timer = 8;
        super->frameIndex--;
    }
}

void sub_0806D5D4(void) {
    EquipSlot equipSlot;

    InitBiggoronTimer();
    equipSlot = IsItemEquipped(ITEM_SHIELD);
    if (equipSlot != EQUIP_SLOT_NONE) {
        gSave.stats.equipped[equipSlot] = ITEM_NONE;
    }
    SetInventoryValue(ITEM_SHIELD, 0);
}

void sub_0806D600(Entity* this, ScriptExecutionContext* context) {
    context->condition = gSave.biggoron_timer == 0;
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
    this->interactType = INTERACTION_NONE;
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

    this->x.HALF.HI = gPlayerEntity.base.x.HALF.HI;
    this->y.HALF.HI = gPlayerEntity.base.y.HALF.HI - 0x18;
    entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        LookAt(this, context, entity->x.HALF.HI, entity->y.HALF.HI);
    }
}

void sub_0806D804(Entity* this, ScriptExecutionContext* context) {
    Entity* entity = FindEntity(NPC, BIG_GORON, 7, 2, 0);
    if (entity != NULL) {
        this->x.HALF.HI = entity->x.HALF.HI;
        this->y.HALF.HI = entity->y.HALF.HI - 0x10;
        this->spritePriority.b1 = 0;
    }
    LookAt(this, context, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI - 0x10);
}

void sub_0806D858(Entity* this) {
    this->spritePriority.b1 = 1;
}
