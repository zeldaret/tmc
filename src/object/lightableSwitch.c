#include "global.h"
#include "asm.h"
#include "sound.h"
#include "entity.h"
#include "room.h"
#include "flags.h"
#include "functions.h"
#include "hitbox.h"

extern void (*const gUnk_081243B4[])(Entity*);
extern void (*const gUnk_081243BC[])(Entity*);
extern void (*const gUnk_081243C4[])(Entity*);

void LightableSwitch(Entity* this) {
    gUnk_081243B4[this->type](this);
    sub_0809EB30(this);
}

void sub_0809EA1C(Entity* this) {
    gUnk_081243BC[this->action](this);
}

void sub_0809EA34(Entity* this) {
    this->action = 1;
    COLLISION_ON(this);
    this->frameIndex = 0;
    this->collisionFlags = 7;
    this->hurtType = 0x48;
    this->hitType = 0x28;
    this->flags2 = 10;
    this->hitbox = (Hitbox*)&gHitbox_0;
    sub_0809EAD8(this);
    UpdateSpriteForCollisionLayer(this);
    sub_0809EABC(this);
}

void sub_0809EA80(Entity* this) {

    if ((this->contactFlags & 0x80) != 0) {
        if (CheckFlags(this->field_0x86.HWORD) != 0) {
            ClearFlag(this->field_0x86.HWORD);
        } else {
            SetFlag(this->field_0x86.HWORD);
        }
        EnqueueSFX(SFX_110);
    }
    sub_0809EABC(this);
}

void sub_0809EABC(Entity* this) {
    bool32 anySet = 0;

    if (CheckFlags(this->field_0x86.HWORD)) {
        anySet = 1;
    }
    if (this->frameIndex != anySet) {
        this->frameIndex = anySet;
    }
}

void sub_0809EAD8(Entity* this) {
    u8 bVar1;
    Entity* pEVar2;

    if (this->type2 != 0) {

        this->child = GetCurrentRoomProperty(this->type2);
        UpdateRailMovement(this, (u16**)&this->child, &this->field_0x74.HWORD);

    } else {
        SetTile(0x4050, COORD_TO_TILE(this), this->collisionLayer);
    }
}

void sub_0809EB30(Entity* this) {
    u16 uVar1;
    u16* puVar2;

    if (this->type2 != 0) {
        if ((this->direction & 0x80) == 0) {
            LinearMoveUpdate(this);
        }
        puVar2 = &this->field_0x74.HWORD;
        if (!--*puVar2) {
            UpdateRailMovement(this, (u16**)&this->child, puVar2);
        }
    }
}

void sub_0809EB68(Entity* this) {
    gUnk_081243C4[this->action](this);
}

void sub_0809EB80(Entity* this) {

    this->action = 1;
    COLLISION_ON(this);
    this->frameIndex = 3;
    this->collisionFlags = 7;
    this->hurtType = 0x48;
    this->hitType = 0x28;
    this->flags2 = 10;
    this->hitbox = (Hitbox*)&gHitbox_0;
    sub_0809EAD8(this);
    UpdateSpriteForCollisionLayer(this);
    if (CheckFlags(this->cutsceneBeh.HWORD) != 0) {
        this->action = 3;
        this->frameIndex = 2;
    }
}

void sub_0809EBD8(Entity* this) {
    if ((this->contactFlags & 0x80) != 0) {
        this->action = 2;
        this->timer = 0x10;
        this->frameIndex = 2;
        SetFlag(this->field_0x86.HWORD);
        EnqueueSFX(SFX_110);
    }
}

void sub_0809EC08(Entity* this) {

    if (CheckFlags(this->cutsceneBeh.HWORD) != 0) {
        this->action = 3;

    } else {
        if (--this->timer == 0) {
            this->action = 1;
            this->frameIndex = 3;
            ClearFlag(this->field_0x86.HWORD);
            EnqueueSFX(SFX_110);
        }
    }
}

void nullsub_126(Entity* this) {
}
