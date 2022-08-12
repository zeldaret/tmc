#include "global.h"
#include "entity.h"
#include "physics.h"
#include "room.h"
#include "object.h"
#include "functions.h"
#include "definitions.h"

extern const Hitbox* const gObjectHitboxes[];

u32 LoadObjectSprite(Entity* this, s32 type, const ObjectDefinition* definition);
extern const ObjectDefinition gObjectDefinitions[];

static Entity* CreateSpeechBubble(Entity*, u32, s32, s32);

Entity* CreateLinkAnimation(Entity* parent, u32 type, u32 type2) {
    Entity* e = CreateItemGetEntity();
    if (e != NULL) {
        e->id = LINK_ANIMATION;
        e->kind = OBJECT;
        e->type = type;
        e->type2 = type2;
        e->parent = parent;
        AppendEntityToList(e, 6);
        PrependEntityToList(e, 6);
        CopyPosition(&gPlayerEntity, e);
        gPriorityHandler.sys_priority = 6;
        gPauseMenuOptions.disabled = 1;
        e->field_0x68.HALF.HI = gPlayerEntity.flags;
        e->field_0x68.HALF.LO = gPlayerEntity.spriteSettings.draw;
        e->field_0x6a.HALF.LO = gPlayerEntity.iframes;
        e->field_0x6a.HALF.HI = gPlayerState.field_0x7;
        e->field_0x6c.HALF.LO = gPlayerState.keepFacing;
        e->field_0x6c.HALF.HI = gPlayerState.field_0xa;
        e->field_0x6e.HALF.LO = gPlayerState.field_0x27[0];
        e->field_0x6e.HALF.HI = gPlayerState.mobility;
        e->field_0x70.WORD = gPlayerState.flags;
        e->field_0x74.HALF.LO = gPlayerState.field_0x8a;
        gPlayerEntity.flags &= ~ENT_COLLIDE;
        gPlayerEntity.spriteSettings.draw = 0;
    }
    return e;
}

void ObjectInit(Entity* this) {
    const ObjectDefinition* definition = &gObjectDefinitions[this->id];
    if (LoadObjectSprite(this, this->type, definition) == 2) {
        UpdateSpriteForCollisionLayer(this);
    }
}

u32 LoadObjectSprite(Entity* this, s32 type, const ObjectDefinition* definition) {
    u16 tmp1;
    u8 tmp2;

    if ((this->flags & ENT_DID_INIT) != 0) {
        // Sprite already loaded
        return 1;
    }
    if ((definition->bitfield.type) == 0) {
        // Object has no sprite
        this->flags |= ENT_DID_INIT | definition->bitfield.flags << 2;
        return 1;
    }

    if ((u8)(((*((u8*)definition) & 0xff & 3) - 2)) < 2) {
        // Multiple forms
        definition = &definition->data.definition[type];
    }
    tmp1 = definition->bitfield.gfx;
    switch (definition->bitfield.gfx_type) {
        case 2:
            this->spriteVramOffset = definition->bitfield.gfx;
            break;
        case 1:
            if (!LoadSwapGFX(this, tmp1, 0)) {
                return 0;
            }
            break;
        default:
            if (!LoadFixedGFX(this, tmp1)) {
                return 0;
            }
            break;
    }
    tmp1 = definition->data.sprite.paletteIndex;
    LoadObjPalette(this, tmp1);
    tmp2 = 0xff;
    this->animIndex = tmp2;
    this->hurtType = 0x48;
    this->spriteIndex = definition->data.sprite.spriteIndex;
    this->spriteSettings.shadow = definition->data.sprite.shadow;
    this->spritePriority.b1 = definition->data.sprite.spritePriority;
    this->spriteSettings.draw = definition->data.sprite.draw;
    this->hitbox = (Hitbox*)gObjectHitboxes[definition->bitfield.hitbox];
    this->flags |= ENT_DID_INIT | definition->bitfield.flags << 2;

    return 2;
}

Entity* CreateObject(u32 subtype, u32 form, u32 type2) {
    Entity* entity = GetEmptyEntity();
    if (entity != NULL) {
        entity->kind = OBJECT;
        entity->id = subtype;
        entity->type = form;
        entity->type2 = type2;
        AppendEntityToList(entity, 6);
    }
    return entity;
}

Entity* CreateObjectWithParent(Entity* parent, u32 subtype, u32 form, u32 type2) {
    Entity* entity = CreateObject(subtype, form, type2);
    if (entity != NULL) {
        entity->parent = parent;
        CopyPosition(parent, entity);
    }

    return entity;
}

Entity* CreateFx(Entity* parentEnt, u32 form, u32 parameter) {
    return CreateObjectWithParent(parentEnt, SPECIAL_FX, form, parameter);
}

void CreateDust(Entity* parent) {
    CreateFx(parent, FX_DEATH, 0);
}

void CreateDustAt(s32 xOff, s32 yOff, u32 layer) {
    Entity* ent;

    ent = CreateObject(SPECIAL_FX, FX_DEATH, 0);
    if (ent != NULL) {
        ent->x.HALF.HI = gRoomControls.origin_x + xOff;
        ent->y.HALF.HI = gRoomControls.origin_y + yOff;
        ent->collisionLayer = layer;
    }
}

void CreateDustSmall(Entity* parent) {
    CreateFx(parent, FX_DASH, 0);
}

void CreateExplosionBroken(Entity* parent) {
    CreateFx(parent, FX_6, 0);
}

void CreateWaterSplash(Entity* parent) {
    CreateFx(parent, FX_WATER_SPLASH, 0);
}

Entity* CreateGroundItem(Entity* parent, u32 form, u32 subtype) {
    Entity* ent;

    ent = CreateObjectWithParent(parent, GROUND_ITEM, form, subtype);
    if (ent != NULL) {
        ent->timer = 5;
    }
    return ent;
}

Entity* CreateGroundItemWithFlags(Entity* parent, u32 form, u32 subtype, u32 flags) {
    Entity* ent;

    ent = CreateObjectWithParent(parent, GROUND_ITEM, form, subtype);
    if (ent != NULL) {
        ent->timer = 5;
        ent->field_0x86.HWORD = flags;
    }
    return ent;
}

Entity* CreateWaterTrace(Entity* parent) {
    Entity* ent;

    ent = CreateFx(parent, FX_RIPPLE, 0);
    if (ent != NULL) {
        ent->spritePriority.b0 = 7;
    }
    return ent;
}

void CreateRandomWaterTrace(Entity* parent, int range) {
    s32 sVar1, sVar2, sVar3;
    Entity* ent;
    u32 uVar3;

    ent = CreateWaterTrace(parent);
    if (ent != NULL) {
        uVar3 = Random();
        sVar1 = (int)uVar3 % (++range);
        uVar3 >>= 8;
        if ((uVar3 & 1) != 0) {
            sVar1 = -sVar1;
        }
        ent->x.HALF.HI += sVar1;
        uVar3 >>= 8;
        sVar2 = (int)uVar3 % range;
        uVar3 >>= 8;
        if ((uVar3 & 1) != 0) {
            sVar2 = -sVar2;
        }
        ent->y.HALF.HI += sVar2;
    }
}

Entity* CreateLargeWaterTrace(Entity* parent) {
    Entity* ent = CreateFx(parent, FX_RIPPLE_LARGE, 0);
    if (ent != NULL) {
        ent->spritePriority.b0 = 7;
    }
    return ent;
}

NONMATCH("asm/non_matching/objectUtils/sub_080A2AF4.inc", void sub_080A2AF4(Entity* parent, s32 param_2, s32 param_3)) {
    Entity* entity;
    s32 rand;
    s32 radius;
    u32 angle;
    s32 tmp;

    entity = CreateLargeWaterTrace(parent);
    if (entity != NULL) {
        rand = Random();
        radius = (rand % (param_3 - param_2 + 1)) + param_2;
        angle = rand >> 0x10 & 0xff;
        radius *= 0x100;
        tmp = FixedMul(gSineTable[angle], radius);
        tmp = FixedDiv(tmp, 0x100);
        entity->x.WORD += ((tmp << 0x10) >> 8);
        tmp = FixedMul(gSineTable[angle + 0x40], radius);
        tmp = FixedDiv(tmp, 0x100);
        entity->y.WORD -= ((tmp << 0x10) >> 8);
    }
}
END_NONMATCH

void CreateSparkle(Entity* entity) {
    Entity* sparkle;
    u32 rand;
    s32 y;
    s32 x;

    sparkle = CreateObject(SPECIAL_FX, 0x26, 0);
    if (sparkle != NULL) {
        rand = Random();
        x = rand & 0xf;
        if ((rand & 0x80) != 0) {
            x = -x;
        }
        y = rand >> 8 & 0xf;
        if (4 < y) {
            y = -y;
        }
        PositionRelative(entity, sparkle, x << 0x10, y << 0x10);
        SortEntityAbove(entity, sparkle);
        sparkle->spriteOffsetX = entity->spriteOffsetX;
        sparkle->spriteOffsetY = entity->spriteOffsetY;
    }
}

NONMATCH("asm/non_matching/objectUtils/sub_080A2BE4.inc", void SyncPlayerToPlatform(Entity* this, bool32 param_2)) {
    s16 oldValue;
    s32 diff;
    u16 newValue;

    if ((this->direction & 0x80) == 0) {
        switch (this->direction >> 3) {
            case 0:
                oldValue = this->y.HALF_U.HI;
                LinearMoveUpdate(this);
                newValue = this->y.HALF_U.HI;
                diff = ((oldValue - newValue) << 0x10) >> 0x10;
                if ((diff != 0) && (param_2 != 0)) {
                    sub_080044AE(&gPlayerEntity, diff << 8, 0);
                }
                break;
            case 1:
                oldValue = this->x.HALF_U.HI;
                LinearMoveUpdate(this);
                diff = ((this->x.HALF_U.HI - oldValue) * 0x10000) >> 0x10;
                if ((diff != 0) && (param_2 != 0)) {
                    sub_080044AE(&gPlayerEntity, diff << 8, 8);
                }
                break;
            case 2:
                oldValue = this->y.HALF_U.HI;
                LinearMoveUpdate(this);
                diff = ((this->y.HALF_U.HI - oldValue) * 0x10000) >> 0x10;
                if ((diff != 0) && (param_2 != 0)) {
                    sub_080044AE(&gPlayerEntity, diff << 8, 0x10);
                }
                break;
            case 3:
                oldValue = this->x.HALF_U.HI;
                LinearMoveUpdate(this);
                newValue = this->x.HALF_U.HI;
                diff = ((oldValue - newValue) << 0x10) >> 0x10;
                if ((diff != 0) && (param_2 != 0)) {
                    sub_080044AE(&gPlayerEntity, diff << 8, 0x18);
                }
                break;
        }
    }
}
END_NONMATCH

void UpdateRailMovement(Entity* this, u16** param_2, u16* param_3) {
    u16* ptr = *param_2;
    if (ptr != NULL) {
        if (*ptr == 0xfe) {
            ptr = ptr + (u32)ptr[1] * -3;
        }
        if (*ptr == 0xff) {
            this->direction = 0xff;
            this->speed = 0;
        } else {
            this->direction = (u8)*ptr;
            this->speed = ptr[2];
        }
        *param_3 = ptr[1];
        *param_2 = ptr + 3;
    }
}

Entity* CreateSpeechBubbleExclamationMark(Entity* parent, s32 offsetX, s32 offsetY) {
    return CreateSpeechBubble(parent, 0, offsetX, offsetY);
}

Entity* CreateSpeechBubbleQuestionMark(Entity* parent, s32 offsetX, s32 offsetY) {
    return CreateSpeechBubble(parent, 1, offsetX, offsetY);
}

Entity* CreateSpeechBubbleSleep(Entity* parent, s32 offsetX, s32 offsetY) {
    return CreateSpeechBubble(parent, 2, offsetX, offsetY);
}

static Entity* CreateSpeechBubble(Entity* parent, u32 type2, s32 xOffset, s32 yOffset) {
    Entity* obj = CreateObject(THOUGHT_BUBBLE, 0, type2);
    if (obj != NULL) {
        CopyPosition(parent, obj);
        SortEntityAbove(parent, obj);
        obj->parent = parent;
        obj->spriteOffsetX = xOffset;
        obj->spriteOffsetY = yOffset;
        SetDefaultPriority(obj, parent->updatePriority);
    }
    return obj;
}
