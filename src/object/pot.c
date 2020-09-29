#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "player.h"
#include "room.h"

static void sub_08082824(Entity*);
static void sub_08082850(Entity*, Entity*);
static void sub_08082608(Entity*);

extern void (*const gUnk_0811F090[])(Entity*);
extern void (*const gUnk_0811F0A8[])(Entity*);
extern void (*const gUnk_0811F0C4[])(Entity*);

extern BoundingBox gUnk_080FD338; // TODO: should be const
extern BoundingBox gUnk_080FD340; // TODO: should be const

extern u32 sub_08016A30(Entity*);
extern u32 sub_080001DA(u32, u32);
extern u32 GetTileTypeByEntity(Entity*);
extern void sub_08078930(Entity*);
extern u32 sub_080002B8(Entity*);
extern void sub_08016A6C(Entity*);
extern u32 sub_0800442E(Entity*);

void Pot(Entity* this) {
    gUnk_0811F090[this->action](this);
    this->bitfield = 0;
}

void sub_0808222C(Entity* this) {
    if (this->entityType.parameter == 1 && CheckFlags(this->field_0x86.HWORD)) {
        DeleteThisEntity();
    }

    this->action = 1;
    this->boundingBox = &gUnk_080FD338;
    this->nonPlanarMovement = 0x80;
    this->y.HALF.HI += 3;
    this->field_0x16 = 0;
    this->flags |= 0x80;
    this->currentHealth = 1;
    this->field_0x3c = 7;
    this->damageType = 0x6E;
    this->flags2 = 0x84;
    this->field_0x1c = 0x12;
    if (this->collisionLayer == 0) {
        sub_08016A30(this);
    }

    this->field_0x70.HALF.LO = sub_080001DA(COORD_TO_TILE(this), this->collisionLayer);
    if ((u16)this->field_0x70.HALF.LO == 0x4000) {
        DeleteThisEntity();
    }

    SetTile(0x4000, COORD_TO_TILE(this), this->collisionLayer);
    InitializeAnimation(this, 5);
}

void sub_08082310(Entity* this) {
    u32 tileType;
    u32 var0 = this->bitfield & 0x7F;
    switch (var0) {
        case 0x13:
            this->action = 3;
            this->previousActionFlag = 0;
            break;
        case 0x1D:
            SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
            this->action = 5;
            this->field_0x20 = 0x2A000;
            this->spriteOffsetY = 0;
            this->spriteSettings.b.shadow = 1;
            this->spritePriority.b1 = 3;
            this->flags &= 0x7F;
            sub_08082824(this);
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
                        this->actionDelay = 32;
                        this->action = 4;
                        if (gPlayerState.flags.all & 0x80) {
                            this->nonPlanarMovement >>= 1;
                            this->actionDelay = 64;
                        }
                        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        EnqueueSFX(0x10F);
                        break;
                    case 0x4067:
                        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        DeleteThisEntity();
                        break;
                    default:
                        if (sub_080002B8(this) == 13) {
                            CreateFx(this, 0, 0);
                        } else if (tileType == 0x4005) {
                            gPlayerState.field_0xab = 4;
                            SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        }
                        sub_08082850(this, NULL);
                        break;
                }
            } else {
                sub_08078930(this);
            }
            break;
    }
}

void sub_080824F8(Entity* this) {
    gUnk_0811F0A8[this->previousActionFlag](this);
}

void sub_08082510(Entity* this) {
    this->flags |= 0x80;
    this->boundingBox = &gUnk_080FD340;
    this->field_0x3c = 7;
    this->damageType = 1;
    this->flags2 = gPlayerEntity.flags2;
    this->spriteOffsetY = 0;
    SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
    this->previousActionFlag++;
}


void nullsub_511(Entity* this) {
}

void sub_08082588(Entity* this) {
    this->spritePriority.b1 = 3;
}

void sub_0808259C(Entity* this) {
    switch (sub_080043E8(this)) {
        case 2:
            CreateFx(this, 11, 0);
            break;
        case 1:
            CreateFx(this, 0, 0);
            break;
        case 3:
            CreateFx(this, 12, 0);
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

static void sub_08082608(Entity* this) {
    this->action = 1;
    this->previousActionFlag = 0;
}

void sub_08082614(Entity* this) {
    u32 tileType;

    sub_0800445C(this);
    if (--this->actionDelay != 0xFF) {
        sub_0806F69C(this);
        sub_08016A6C(this);
        return;
    }

    if (sub_0800442E(this)) {
        return;
    }

    this->action = 1;
    if (gPlayerState.flags.all & 0x80) {
        this->nonPlanarMovement <<= 1;
    }

    this->field_0x70.HALF.LO = sub_080001DA(COORD_TO_TILE(this), this->collisionLayer);
    tileType = GetTileTypeByEntity(this);
    switch (tileType) {
        case 0x71:
        case 0x72:
            sub_08082850(this, NULL);
            break;
        default:
            SetTile(0x4000, COORD_TO_TILE(this), this->collisionLayer);
            sub_08078930(this);
            break;
    }
}

void sub_080826E4(Entity* this) {
    gUnk_0811F0C4[this->previousActionFlag](this);
}

void sub_080826FC(Entity* this) {
    this->previousActionFlag = 1;
    this->field_0x1d = 48;
    this->actionDelay = 0;
}

void sub_0808270C(Entity* this) {
    if ((gPlayerState.field_0x1c & 0xF) != 0x1 || (this->bitfield & 0x7F) != 0x13) {
        this->spriteOffsetX = 0;
        this->action = 1;
        SetTile(0x4000, COORD_TO_TILE(this), this->collisionLayer);
    } else {
        sub_0806F4E8(this);
    }
}

void sub_08082778(Entity* this) {
    if (this->actionDelay == 0) {
        this->actionDelay = 1;
        this->spriteOffsetX = 0;
        this->spriteOffsetY = -2;
        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
    }

    if ((gPlayerState.field_0x1c & 0xF) != 0x1 || (this->bitfield & 0x7F) != 0x13) {
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

static void sub_08082824(Entity* this) {
    if (this->field_0x20 < 0) {
        this->spriteSettings.b.flipY = 1;
    }

    if (sub_08003FC4(this, 0x2000) == 0) {
        sub_08082850(this, NULL);
    }
}

static void sub_08082850(Entity* this, Entity* parent) {
    u32 parameter = sub_0808288C(this, this->entityType.form, this->field_0x7c.BYTES.byte1, this->entityType.parameter);
    Entity* fxEntity = CreateFx(this, 5, parameter);
    if (fxEntity) {
        fxEntity->parent = parent;
    }

    if (this->entityType.parameter == 1) {
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
            entity = CreateObjectWithParent(this, 0, form, arg2);
            if (entity) {
                if (arg3 == 2) {
                    entity->actionDelay = 5;
                    entity->field_0x86.HWORD = this->field_0x86.HWORD;
                } else {
                    entity->actionDelay = 0;
                }
            }
            break;
    }
    return result;
}
