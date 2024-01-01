/**
 * @file playerItemLantern.c
 * @ingroup Items
 *
 * @brief Lantern Player Item
 */
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "object.h"
#include "player.h"

void PlayerItemLantern_Init(Entity* this);
void PlayerItemLantern_Action1(Entity* this);

void PlayerItemLantern(Entity* this) {
    static void (*const PlayerItemLantern_Actions[])(Entity*) = {
        PlayerItemLantern_Init,
        PlayerItemLantern_Action1,
    };
    PlayerItemLantern_Actions[this->action](this);
    this->contactFlags = 0;
}

void PlayerItemLantern_Init(Entity* this) {
    this->flags |= (ENT_PERSIST | ENT_COLLIDE);
    this->action = 1;
    this->timer = 4;
    this->frameIndex = -1;
    this->updatePriority = 6;
    this->collisionFlags = 7;
    this->collisionMask = -0x80;
    this->animationState = gPlayerEntity.base.animationState & 0xe;
    if (AllocMutableHitbox(this) == NULL) {
        DeleteThisEntity();
    }
    sub_0801766C(this);
    LoadSwapGFX(this, 1, 3);
    PlayerItemLantern_Action1(this);
}

void PlayerItemLantern_Action1(Entity* this) {
    Entity* object;
    static const s8 offsets[] = { 6, -6, 7, -3, -5, 2, -7, -3 };
    this->animationState = gPlayerEntity.base.animationState & 0xe;
    this->hitbox->offset_x = offsets[this->animationState];
    this->hitbox->offset_y = offsets[this->animationState + 1];
    this->hitbox->width = 4;
    this->hitbox->height = 4;
    if (!((gPlayerEntity.base.frameIndex < 0x37) && ((u32)gPlayerEntity.base.spriteIndex == 6))) {
        this->frameIndex = 0xff;
        this->flags &= ~ENT_COLLIDE;
    } else {
        this->flags |= ENT_COLLIDE;
        this->spriteSettings.flipX = gPlayerEntity.base.spriteSettings.flipX;
        this->spriteSettings.flipY = gPlayerEntity.base.spriteSettings.flipY;
        if (gPlayerEntity.base.frameIndex != this->frameIndex) {
            this->frameIndex = gPlayerEntity.base.frameIndex;
            sub_080042D0(this, this->frameIndex, this->spriteIndex);
        }
        this->frame = gPlayerEntity.base.frame;
        this->frameSpriteSettings = gPlayerEntity.base.frameSpriteSettings;
    }
    if (IsItemEquipped(ITEM_LANTERN_ON) < EQUIP_SLOT_NONE) {
        if (((this->frameIndex != 0xff) && (gPlayerEntity.base.spriteSettings.draw != 0)) && (this->timer-- == 0)) {
            this->timer = 4;
            object = CreateObject(LAMP_PARTICLE, 0, 0x10);
            if (object != NULL) {
                PositionRelative(this, object, 0, Q_16_16(2.0));
                object->spritePriority.b0 = this->spritePriority.b0;
                object->spriteOffsetX = offsets[this->animationState];
                object->spriteOffsetY = offsets[this->animationState + 1];
            }
        }
        sub_08078E84(this, &gPlayerEntity.base);
    } else {
        DeleteThisEntity();
    }
}
