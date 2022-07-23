/**
 * @file houseDoorExterior.c
 * @ingroup Objects
 *
 * @brief House Door Exterior object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "npc.h"
#include "object.h"
#include "room.h"
#include "script.h"
#include "sound.h"

typedef struct {
    /*0x00*/ u16 unk0;
    /*0x02*/ u16 unk2;
    /*0x04*/ u8 unk4;
    /*0x05*/ u8 unk5;
    /*0x06*/ u8 unk6;
    /*0x07*/ u8 unk7;
    /*0x08*/ u8* unk8;
} unk_DoorProperty;

typedef struct {
    /*0x00*/ u8 filler0[0x8];
    /*0x08*/ u32 unk8;
} unk_80868EC;

static void sub_080868EC(Entity* entity, unk_80868EC* arg1);
static bool32 sub_080867CC(u32);
void sub_0808681C(Entity*);
void sub_080866D8(Entity*);
void sub_080867E4(Entity*);
void sub_080868B0(Entity*);
static u8 sub_08086954(Entity*);

static const Hitbox gUnk_081206AC = { 0, -5, { 5, 3, 3, 5 }, 10, 4 };

void HouseDoorExterior(Entity* this) {
    static void (*const typeFuncs[])(Entity*) = {
        sub_080866D8,
        sub_080867E4,
        sub_0808681C,
        sub_080868B0,
    };
    typeFuncs[this->type2](this);
}

void sub_080866D8(Entity* this) {
    unk_DoorProperty* prop;
    Entity* entity;
    u32 i;

    if (this->action == 0) {
        this->action = 1;
        *((u32*)(&this->field_0x68)) = 0;
        this->field_0x6c.HALF.LO = this->timer;
        SetDefaultPriority(this, PRIO_PLAYER_EVENT);
    }

    prop = GetCurrentRoomProperty(this->field_0x6c.HALF.LO);
    for (i = 0; prop->unk0 != 0xFFFF && i < 32; prop++, i++) {
        int mask = 1 << i;
        if ((*((u32*)(&this->field_0x68)) & mask) == 0 && sub_080867CC(prop->unk5) &&
            CheckRegionOnScreen(prop->unk0, prop->unk2, 32, 32)) {
            entity = CreateObject(HOUSE_DOOR_EXT, prop->unk7, prop->unk6);
            if (entity != NULL) {
                entity->field_0x6c.HALF.LO = i;
                entity->x.HALF.HI = gRoomControls.origin_x + prop->unk0 + 16;
                entity->y.HALF.HI = gRoomControls.origin_y + prop->unk2 + 32;
                entity->parent = this;
                entity->field_0x68.HWORD = prop->unk0;
                entity->field_0x6a.HWORD = prop->unk2;
                entity->collisionLayer = prop->unk4;
                entity->subAction = prop->unk5;
                UpdateSpriteForCollisionLayer(entity);
                *((u32*)(&this->field_0x68)) |= mask;
                if (prop->unk8) {
                    *((ScriptExecutionContext**)(&entity->cutsceneBeh)) = StartCutscene(entity, (u16*)prop->unk8);
                }
            }
        }
    }
}

static bool32 sub_080867CC(u32 arg0) {
    if (arg0 == 0) {
        return TRUE;
    }
    if (arg0 != 2) {
        return TRUE;
    }
    return CheckGlobalFlag(TATEKAKE_HOUSE);
}

void sub_080867E4(Entity* this) {
    if (!CheckRegionOnScreen(this->field_0x68.HWORD, this->field_0x6a.HWORD, 32, 32)) {
        *((u32*)(&this->parent->field_0x68)) = *((u32*)(&this->parent->field_0x68)) & ~(1 << this->field_0x6c.HALF.LO);
        DeleteThisEntity();
    }
    sub_0808681C(this);
}

void sub_0808681C(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->timer = 8;
            this->spriteSettings.draw = 1;
            this->frameIndex = 0;
            this->hitbox = (Hitbox*)&gUnk_081206AC;
            if (this->subAction == 1) {
                this->action = 2;
                this->frameIndex = 1;
            }
            if (this->flags & ENT_SCRIPTED) {
                this->action = 2;
            }
            break;
        case 1:
            if (!sub_08086954(this)) {
                this->action++;
                this->frameIndex = 1;
                sub_08078AC0(16, 0, 1);
                SoundReq(SFX_111);
            }
            break;
    }

    if (this->flags & ENT_SCRIPTED) {
        ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
        sub_080868EC(this, *(void**)&this->cutsceneBeh);
    }
}

void sub_080868B0(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.draw = 1;
        this->hitbox = (Hitbox*)&gUnk_081206AC;
        this->timer = 8;
    }
    ExecuteScript(this, *(ScriptExecutionContext**)&this->cutsceneBeh);
    sub_080868EC(this, *(void**)&this->cutsceneBeh);
}

static void sub_080868EC(Entity* entity, unk_80868EC* arg1) {
    u32 var0 = arg1->unk8;
    arg1->unk8 = 0;
    while (var0 != 0) {
        u32 rightMostSetBit = var0 & (~var0 + 1);
        var0 ^= rightMostSetBit;
        switch (rightMostSetBit) {
            case 0x80:
                entity->frameIndex = 0;
                break;
            case 0x100:
                entity->frameIndex = 1;
                break;
        }
    }

    if (entity->frameIndex == 0) {
        sub_0800445C(entity);
    }
}

void sub_0808692C(Entity* this) {
    this->flags &= ~ENT_SCRIPTED;
    this->type2 = 2;
    this->action = (this->frameIndex == 0) ? 1 : 2;
    this->subAction = 0;
    this->timer = 8;
}

static u8 sub_08086954(Entity* this) {
    if (sub_0800445C(this)) {
        if (GetAnimationStateInRectRadius(this, 6, 20) >= 0 && gPlayerEntity.animationState == 0 &&
            (u16)gPlayerState.playerInput.field_0x90 == PLAYER_INPUT_UP && gPlayerState.jump_status == 0) {
            this->timer--;
        }
    } else {
        this->timer = 8;
    }
    return this->timer;
}

void sub_080869A4(Entity* this, ScriptExecutionContext* context) {
    context->condition = 0;
    if (!sub_08086954(this)) {
        this->timer = 8;
        context->condition = 1;
    }
}
