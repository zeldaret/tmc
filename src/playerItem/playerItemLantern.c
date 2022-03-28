#include "entity.h"
#include "player.h"
#include "functions.h"
#include "item.h"
#include "object.h"

extern void (*const gUnk_080FEEA8[])(Entity*);

void sub_08054AC8(Entity*);

extern const s8 gUnk_080FEEB0[];

void PlayerItemLantern(Entity* this) {
    gUnk_080FEEA8[this->action](this);
    this->bitfield = 0;
}

void sub_08054A60(Entity* this) {
    this->flags |= (ENT_PERSIST | ENT_COLLIDE);
    this->action = 0x01;
    this->actionDelay = 0x04;
    this->frameIndex = -1;
    // TODO regalloc and mov 6 too early
    this->updatePriority = 6;
    this->field_0x3c = 7;
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
    this->animationState = gPlayerEntity.animationState & 0xe;
    this->hitbox->offset_x = gUnk_080FEEB0[this->animationState];
    this->hitbox->offset_y = gUnk_080FEEB0[this->animationState + 1];
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
        if (((this->frameIndex != 0xff) && (gPlayerEntity.spriteSettings.draw != 0)) && (this->actionDelay-- == 0)) {
            this->actionDelay = 4;
            object = CreateObject(OBJECT_45, 0, 0x10);
            if (object != NULL) {
                PositionRelative(this, object, 0, 0x20000);
                object->spritePriority.b0 = this->spritePriority.b0;
                object->spriteOffsetX = gUnk_080FEEB0[this->animationState];
                object->spriteOffsetY = gUnk_080FEEB0[this->animationState + 1];
            }
        }
        sub_08078E84(this, &gPlayerEntity);
    } else {
        DeleteThisEntity();
    }
}
