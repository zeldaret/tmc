#include "entity.h"
#include "player.h"
#include "functions.h"
#include "item.h"
#include "object.h"

void sub_08054AC8(Entity*);
void sub_08054A60(Entity*);

void PlayerItemLantern(Entity* this) {
    static void (*const gUnk_080FEEA8[])(Entity*) = {
        sub_08054A60,
        sub_08054AC8,
    };
    gUnk_080FEEA8[this->action](this);
    this->contactFlags = 0;
}

void sub_08054A60(Entity* this) {
    this->flags |= (ENT_PERSIST | ENT_COLLIDE);
    this->action = 0x01;
    this->timer = 0x04;
    this->frameIndex = -1;
    // TODO regalloc and mov 6 too early
    this->updatePriority = 6;
    this->collisionFlags = 7;
    this->flags2 = -0x80;
    this->animationState = gPlayerEntity.animationState & 0xe;
    if (AllocMutableHitbox(this) == NULL) {
        DeleteThisEntity();
    }
    sub_0801766C(this);
    LoadSwapGFX(this, 1, 3);
    sub_08054AC8(this);
}

void sub_08054AC8(Entity* this) {
    Entity* object;
    static const s8 offsets[] = { 6, -6, 7, -3, -5, 2, -7, -3 };
    this->animationState = gPlayerEntity.animationState & 0xe;
    this->hitbox->offset_x = offsets[this->animationState];
    this->hitbox->offset_y = offsets[this->animationState + 1];
    this->hitbox->width = 4;
    this->hitbox->height = 4;
    if (!((gPlayerEntity.frameIndex < 0x37) && ((u32)gPlayerEntity.spriteIndex == 6))) {
        this->frameIndex = 0xff;
        this->flags &= ~ENT_COLLIDE;
    } else {
        this->flags |= ENT_COLLIDE;
        this->spriteSettings.flipX = gPlayerEntity.spriteSettings.flipX;
        this->spriteSettings.flipY = gPlayerEntity.spriteSettings.flipY;
        if (gPlayerEntity.frameIndex != this->frameIndex) {
            this->frameIndex = gPlayerEntity.frameIndex;
            sub_080042D0(this, this->frameIndex, this->spriteIndex);
        }
        this->frame = gPlayerEntity.frame;
        this->frameSpriteSettings = gPlayerEntity.frameSpriteSettings;
    }
    if (IsItemEquipped(ITEM_LANTERN_ON) < 2) {
        if (((this->frameIndex != 0xff) && (gPlayerEntity.spriteSettings.draw != 0)) && (this->timer-- == 0)) {
            this->timer = 4;
            object = CreateObject(OBJECT_45, 0, 0x10);
            if (object != NULL) {
                PositionRelative(this, object, 0, Q_16_16(2.0));
                object->spritePriority.b0 = this->spritePriority.b0;
                object->spriteOffsetX = offsets[this->animationState];
                object->spriteOffsetY = offsets[this->animationState + 1];
            }
        }
        sub_08078E84(this, &gPlayerEntity);
    } else {
        DeleteThisEntity();
    }
}
