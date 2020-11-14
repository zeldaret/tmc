#include "global.h"
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "room.h"

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
static void sub_0808681C(Entity*);
static u8 sub_08086954(Entity*);

extern u32 sub_080562CC(u32, u32, u32, u32);
extern void sub_08078AC0(u32, u32, u32);
extern void* GetCurrentRoomProperty(u8);

extern void (*const gUnk_081206B4[])(Entity*);
extern BoundingBox gUnk_081206AC; // TODO: should be const

void HouseDoorExterior(Entity* this) {
    gUnk_081206B4[this->entityType.parameter](this);
}

void sub_080866D8(Entity* this) {
    unk_DoorProperty* prop;
    Entity* entity;
    u32 i;

    if (this->action == 0) {
        this->action = 1;
        *((u32*)(&this->field_0x68)) = 0;
        this->field_0x6c.HALF.LO = this->actionDelay;
        sub_0805E3A0(this, 6);
    }

    prop = GetCurrentRoomProperty(this->field_0x6c.HALF.LO);
    for (i = 0; prop->unk0 != 0xFFFF && i < 32; prop++, i++) {
        int mask = 1 << i;
        if ((*((u32*)(&this->field_0x68)) & mask) == 0 && sub_080867CC(prop->unk5) &&
            sub_080562CC(prop->unk0, prop->unk2, 32, 32)) {
            entity = CreateObject(0x19, prop->unk7, prop->unk6);
            if (entity) {
                entity->field_0x6c.HALF.LO = i;
                entity->x.HALF.HI = gRoomControls.roomOriginX + prop->unk0 + 16;
                entity->y.HALF.HI = gRoomControls.roomOriginY + prop->unk2 + 32;
                entity->parent = this;
                entity->field_0x68.HWORD = prop->unk0;
                entity->field_0x6a.HWORD = prop->unk2;
                entity->collisionLayer = prop->unk4;
                entity->previousActionFlag = prop->unk5;
                UpdateSpriteForCollisionLayer(entity);
                *((u32*)(&this->field_0x68)) |= mask;
                if (prop->unk8) {
                    *((u32**)(&entity->cutsceneBeh)) = StartCutscene(entity, prop->unk8);
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
    if (!sub_080562CC(this->field_0x68.HWORD, this->field_0x6a.HWORD, 32, 32)) {
        *((u32*)(&this->parent->field_0x68)) = *((u32*)(&this->parent->field_0x68)) & ~(1 << this->field_0x6c.HALF.LO);
        DeleteThisEntity();
    }
    sub_0808681C(this);
}

static void sub_0808681C(Entity* this) {
    switch (this->action) {
        case 0:
            this->action = 1;
            this->actionDelay = 8;
            this->spriteSettings.b.draw = 1;
            this->frameIndex = 0;
            this->boundingBox = &gUnk_081206AC;
            if (this->previousActionFlag == 1) {
                this->action = 2;
                this->frameIndex = 1;
            }
            if (this->flags & 0x2) {
                this->action = 2;
            }
            break;
        case 1:
            if (!sub_08086954(this)) {
                this->action++;
                this->frameIndex = 1;
                sub_08078AC0(16, 0, 1);
                PlaySFX(0x111);
            }
            break;
    }

    if (this->flags & 0x2) {
        ExecuteScriptCommandSet(this, *(u32**)&this->cutsceneBeh);
        sub_080868EC(this, *(void**)&this->cutsceneBeh);
    }
}

void sub_080868B0(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        this->spriteSettings.b.draw = 1;
        this->boundingBox = &gUnk_081206AC;
        this->actionDelay = 8;
    }
    ExecuteScriptCommandSet(this, *(u32**)&this->cutsceneBeh);
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
    this->flags &= 0xFD;
    this->entityType.parameter = 2;
    this->action = this->frameIndex == 0 ? 1 : 2;
    this->previousActionFlag = 0;
    this->actionDelay = 8;
}

static u8 sub_08086954(Entity* this) {
    if (sub_0800445C(this)) {
        if (sub_0806ED9C(this, 6, 20) >= 0 && gPlayerEntity.animationState == 0 &&
            (u16)gPlayerState.field_0x90.HALF.LO == 0x400 && gPlayerState.jumpStatus == 0) {
            this->actionDelay--;
        }
    } else {
        this->actionDelay = 8;
    }
    return this->actionDelay;
}

// TODO: Second arg is some unknown struct.
void sub_080869A4(Entity* entityA, u32* entityB) {
    entityB[5] = 0;
    if (!sub_08086954(entityA)) {
        entityA->actionDelay = 8;
        entityB[5] = 1;
    }
}
