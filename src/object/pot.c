/**
 * @file pot.c
 * @ingroup Objects
 *
 * @brief Pot object
 */
#include "entity.h"
#include "flags.h"
#include "functions.h"
#include "global.h"
#include "hitbox.h"
#include "object.h"
#include "player.h"
#include "room.h"
#include "sound.h"

void Pot_Action5(Entity*);
static void sub_08082850(Entity*, Entity*);
void sub_08082608(Entity*);
void Pot_Init(Entity*);
void Pot_Action1(Entity*);
void Pot_Action2(Entity*);
void Pot_Action3(Entity*);
void Pot_Action4(Entity*);
void Pot_Action5(Entity*);
void sub_08082510(Entity*);
void nullsub_511(Entity*);
void sub_08082588(Entity*);
void sub_0808259C(Entity*);
void sub_080825E8(Entity*);
void sub_080825F0(Entity*);
void sub_08082608(Entity*);
void sub_08082818(Entity*);
void nullsub_512(Entity*);
void sub_080827F8(Entity*);
void sub_08082778(Entity*);
void sub_0808270C(Entity*);
void sub_080826FC(Entity*);

extern void RegisterCarryEntity(Entity*);
extern void sub_08016A6C(Entity*);

void Pot(Entity* this) {
    static void (*const Pot_Actions[])(Entity*) = {
        Pot_Init, Pot_Action1, Pot_Action2, Pot_Action3, Pot_Action4, Pot_Action5,
    };
    Pot_Actions[this->action](this);
    this->contactFlags = 0;
}

void Pot_Init(Entity* this) {
    if (this->type2 == 1 && CheckFlags(this->field_0x86.HWORD)) {
        DeleteThisEntity();
    }

    this->action = 1;
    this->hitbox = (Hitbox*)&gHitbox_18;
    this->speed = 0x80;
    this->y.HALF.HI += 3;
    this->carryFlags = 0;
    COLLISION_ON(this);
    this->health = 1;
    this->collisionFlags = 7;
    this->hitType = 0x6E;
    this->flags2 = 0x84;
    this->gustJarFlags = 0x12;
    if (this->collisionLayer == 0) {
        ResolveCollisionLayer(this);
    }

    this->field_0x70.HALF.LO = GetTileIndex(COORD_TO_TILE(this), this->collisionLayer);
    if ((u16)this->field_0x70.HALF.LO == 0x4000) {
        DeleteThisEntity();
    }

    SetTile(0x4000, COORD_TO_TILE(this), this->collisionLayer);
    InitializeAnimation(this, 5);
}

void Pot_Action1(Entity* this) {
    u32 tileType;
    u32 var0 = this->contactFlags & 0x7F;
    switch (var0) {
        case 0x13:
            this->action = 3;
            this->subAction = 0;
            break;
        case 0x1D:
            SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
            this->action = 5;
            this->zVelocity = Q_16_16(2.625);
            this->spriteOffsetY = 0;
            this->spriteSettings.shadow = 1;
            this->spritePriority.b1 = 3;
            COLLISION_OFF(this);
            Pot_Action5(this);
            break;
        default:
            tileType = GetTileTypeByEntity(this);
            if (tileType != 0x4000) {
                switch (tileType) {
                    case 0x4004:
                    case 0x4003:
                    case 0x4002:
                    case 0x4001:
                        this->direction = (tileType - 0x4001) * 8;
                        this->timer = 32;
                        this->action = 4;
                        if (gPlayerState.flags & PL_MINISH) {
                            this->speed >>= 1;
                            this->timer = 64;
                        }
                        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        EnqueueSFX(SFX_10F);
                        break;
                    case 0x4067:
                        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        DeleteThisEntity();
                        break;
                    default:
                        if (GetTileUnderEntity(this) == 13) {
                            CreateFx(this, FX_FALL_DOWN, 0);
                        } else if (tileType == 0x4005) {
                            gPlayerState.lastSwordMove = SWORD_MOVE_BREAK_POT;
                            SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        }
                        sub_08082850(this, NULL);
                        break;
                }
            } else {
                RegisterCarryEntity(this);
            }
            break;
    }
}

void Pot_Action2(Entity* this) {
    static void (*const subActionFuncs[])(Entity*) = {
        sub_08082510, nullsub_511, sub_08082588, sub_0808259C, sub_080825E8, sub_080825F0, sub_08082608,
    };
    subActionFuncs[this->subAction](this);
}

void sub_08082510(Entity* this) {
    COLLISION_ON(this);
    this->hitbox = (Hitbox*)&gUnk_080FD340;
    this->collisionFlags = 7;
    this->hitType = 1;
    this->flags2 = gPlayerEntity.flags2;
    this->spriteOffsetY = 0;
    SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
    this->subAction++;
}

void nullsub_511(Entity* this) {
}

void sub_08082588(Entity* this) {
    this->spritePriority.b1 = 3;
}

void sub_0808259C(Entity* this) {
    switch (sub_080043E8(this)) {
        case 2:
            CreateFx(this, FX_WATER_SPLASH, 0);
            break;
        case 1:
            CreateFx(this, FX_FALL_DOWN, 0);
            break;
        case 3:
            CreateFx(this, FX_LAVA_SPLASH, 0);
            break;
        default:
            sub_08082850(this, &gPlayerEntity);
            return;
    }

    DeleteThisEntity();
}

void sub_080825E8(Entity* this) {
    DeleteThisEntity();
}

void sub_080825F0(Entity* this) {
    if (gPlayerState.heldObject == 0) {
        sub_08082608(this);
    }
}

void sub_08082608(Entity* this) {
    this->action = 1;
    this->subAction = 0;
}

void Pot_Action4(Entity* this) {
    u32 tileType;

    sub_0800445C(this);
    if (this->timer-- != 0) {
        LinearMoveUpdate(this);
        sub_08016A6C(this);
        return;
    }

    if (sub_0800442E(this)) {
        return;
    }

    this->action = 1;
    if (gPlayerState.flags & PL_MINISH) {
        this->speed <<= 1;
    }

    this->field_0x70.HALF.LO = GetTileIndex(COORD_TO_TILE(this), this->collisionLayer);
    tileType = GetTileTypeByEntity(this);
    switch (tileType) {
        case 0x71:
        case 0x72:
            sub_08082850(this, NULL);
            break;
        default:
            SetTile(0x4000, COORD_TO_TILE(this), this->collisionLayer);
            RegisterCarryEntity(this);
            break;
    }
}

void Pot_Action3(Entity* this) {
    static void (*const subActionFuncs[])(Entity*) = {
        sub_080826FC, sub_0808270C, sub_08082778, sub_080827F8, nullsub_512, sub_08082818,
    };
    subActionFuncs[this->subAction](this);
}

void sub_080826FC(Entity* this) {
    this->subAction = 1;
    this->gustJarTolerance = 48;
    this->timer = 0;
}

void sub_0808270C(Entity* this) {
    if ((gPlayerState.field_0x1c & 0xF) != 0x1 || (this->contactFlags & 0x7F) != 0x13) {
        this->spriteOffsetX = 0;
        this->action = 1;
        SetTile(0x4000, COORD_TO_TILE(this), this->collisionLayer);
    } else {
        sub_0806F4E8(this);
    }
}

void sub_08082778(Entity* this) {
    if (this->timer == 0) {
        this->timer = 1;
        this->spriteOffsetX = 0;
        this->spriteOffsetY = -2;
        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
    }

    if ((gPlayerState.field_0x1c & 0xF) != 0x1 || (this->contactFlags & 0x7F) != 0x13) {
        sub_08082850(this, NULL);
    } else {
        sub_0806F3E4(this);
    }
}

void sub_080827F8(Entity* this) {
    if (gPlayerState.field_0x1c == 0) {
        sub_08082850(this, NULL);
    }
}

void nullsub_512(Entity* this) {
}

void sub_08082818(Entity* this) {
    sub_08082850(this, NULL);
}

void Pot_Action5(Entity* this) {
    if (this->zVelocity < 0) {
        this->spriteSettings.flipY = 1;
    }

    if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
        sub_08082850(this, NULL);
    }
}

static void sub_08082850(Entity* this, Entity* parent) {
    u32 parameter = sub_0808288C(this, this->type, this->field_0x7c.BYTES.byte1, this->type2);
    Entity* fxEntity = CreateFx(this, FX_POT_SHATTER, parameter);
    if (fxEntity) {
        fxEntity->parent = parent;
    }

    if (this->type2 == 1) {
        SetFlag(this->field_0x86.HWORD);
    }

    DeleteThisEntity();
}

u32 sub_0808288C(Entity* this, u32 form, u32 arg2, u32 arg3) {
    Entity* entity;
    u32 result = 0;
    switch (form) {
        case 0xFF:
            result = 0;
            break;
        case 0:
            result = 0x80;
            break;
        default:
            entity = CreateObjectWithParent(this, GROUND_ITEM, form, arg2);
            if (entity != NULL) {
                if (arg3 == 2) {
                    entity->timer = 5;
                    entity->field_0x86.HWORD = this->field_0x86.HWORD;
                } else {
                    entity->timer = 0;
                }
            }
            break;
    }
    return result;
}
