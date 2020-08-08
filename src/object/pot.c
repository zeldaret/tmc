#include "global.h"
#include "entity.h"
#include "functions.h"
#include "flags.h"
#include "link.h"
#include "room.h"

extern void (*const gUnk_0811F090[])(Entity*);
extern void (*const gUnk_0811F0A8[])(Entity*);

extern BoundingBox gUnk_080FD338; // TODO: should be const
extern BoundingBox gUnk_080FD340; // TODO: should be const

extern u32 sub_08016A30(Entity*);
extern u32 sub_080001DA(u32, u32);
extern u32 GetTileTypeByEntity(Entity*);
extern void sub_08078930(Entity*);
extern void sub_08082824(Entity*);
extern u32 sub_080002B8(Entity*);
extern void sub_08082850(Entity*, Entity*);
extern void sub_08082608(Entity*);

void Pot(Entity* this) {
    gUnk_0811F090[this->action](this);
    this->bitfield = 0;
}

void sub_0808222C(Entity* this) {
    if (this->entityType.parameter == 1 && CheckFlags(this->field_0x86)) {
        DeleteThisEntity();
    }

    this->action = 1;
    this->boundingBox = &gUnk_080FD338;
    this->nonPlanarMovement = 0x80;
    this->y.HALF.HI += 3;
    this->possibleBool = 0;
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
                        if (gLinkState.flags.all & 0x80) {
                            this->nonPlanarMovement >>= 1;
                            this->actionDelay = 64;
                        }
                        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        sub_08004488(0x10F);
                        break;
                    case 0x4067:
                        SetTile((u16)this->field_0x70.HALF.LO, COORD_TO_TILE(this), this->collisionLayer);
                        DeleteThisEntity();
                        break;
                    default:
                        if (sub_080002B8(this) == 13) {
                            CreateFx(this, 0, 0);
                        } else if (tileType == 0x4005) {
                            gLinkState.field_0xab = 4;
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
    this->flags2 = gLinkEntity.flags2;
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
            sub_08082850(this, &gLinkEntity);
            return;
    }

    DeleteThisEntity();
}

void sub_080825E8(Entity* this) {
    DeleteThisEntity();
}

void sub_080825F0(Entity* this) {
    if (gLinkState.heldObject == 0) {
        sub_08082608(this);
    }
}

void sub_08082608(Entity* this) {
    this->action = 1;
    this->previousActionFlag = 0;
}
