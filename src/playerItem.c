#include "global.h"
#include "functions.h"
#include "player.h"

typedef void(PlayerItemFunc)(Entity*);

PlayerItemFunc PlayerItemSword;
PlayerItemFunc PlayerItemBomb;
PlayerItemFunc PlayerItemBoomerang;
PlayerItemFunc PlayerItemBow;
PlayerItemFunc PlayerItemShield;
PlayerItemFunc PlayerItemLantern;
PlayerItemFunc PlayerItemNulled;
PlayerItemFunc PlayerItemGustJar;
PlayerItemFunc PlayerItemPacciCane;
PlayerItemFunc PlayerItemDashSword;
PlayerItemFunc PlayerItemCellOverwriteSet;
PlayerItemFunc PlayerItemBottle;
PlayerItemFunc PlayerItemSwordBeam;
PlayerItemFunc PlayerItemGust;
PlayerItemFunc PlayerItemGustBig;
PlayerItemFunc PlayerItemPacciCaneProjectile;
PlayerItemFunc PlayerItemHeldObject;
PlayerItemFunc PlayerItemSpiralBeam;
PlayerItemFunc PlayerItemFireRodProjectile;
PlayerItemFunc PlayerItemNulled2;

typedef struct {
    u8 bitfield;
    u8 index;
    u8 firstItemIndex;
    u8 hurtType;
    u8 hitType;
    u8 spriteIndex;
    u16 gfx;
} PlayerItemDefinition;
extern const PlayerItemDefinition gPlayerItemDefinitions[];
extern const PlayerItemDefinition* gAdditionalPlayerItemDefinitions[3];

PlayerItemFunc* const gPlayerItemFunctions[] = {
    DeleteEntity,
    PlayerItemSword,
    PlayerItemBomb,
    PlayerItemBoomerang,
    PlayerItemBow,
    PlayerItemShield,
    PlayerItemLantern,
    PlayerItemNulled,
    PlayerItemGustJar,
    PlayerItemPacciCane,
    DeleteEntity,
    DeleteEntity,
    PlayerItemDashSword,
    PlayerItemCellOverwriteSet,
    PlayerItemBottle,
    PlayerItemSwordBeam,
    PlayerItemGust,
    PlayerItemGustBig,
    PlayerItemPacciCaneProjectile,
    PlayerItemHeldObject,
    PlayerItemSpiralBeam,
    PlayerItemFireRodProjectile,
    PlayerItemSwordBeam,
    PlayerItemNulled2,
    PlayerItemCellOverwriteSet,
};

void ItemInit(Entity*);

void ItemUpdate(Entity* this) {
    if ((this->flags & ENT_DID_INIT) == 0 && this->action == 0 && this->subAction == 0)
        ItemInit(this);

    if (!EntityIsDeleted(this)) {
        gPlayerItemFunctions[this->id](this);
        this->contactFlags &= ~0x80;
        if (this->iframes != 0) {
            if (this->iframes > 0)
                this->iframes--;
            else
                this->iframes++;
        }
    }
    DrawEntity(this);
}

void ItemInit(Entity* this) {
    u32 tmp2, tmp3;
    const PlayerItemDefinition* definition = &gPlayerItemDefinitions[this->id];
    if (definition->bitfield == 0xff) {
        u32 tmp = definition->firstItemIndex;
        definition = gAdditionalPlayerItemDefinitions[definition->index];
        definition = &definition[this->field_0x68.HALF.LO - tmp];
    }
    tmp3 = definition->bitfield;
    tmp2 = tmp3 & 0xf;
    this->palette.raw = (tmp3 << 4) | (tmp2);
    this->damage = definition->index;
    this->hurtType = definition->hurtType;
    this->hitType = definition->hitType;
    this->spriteIndex = definition->spriteIndex;
    if (definition->gfx == 0) {
        this->spriteVramOffset = gPlayerEntity.spriteVramOffset;
    } else {
        this->spriteVramOffset = definition->gfx & 0x3ff;
    }
    if (this->animationState == 0) {
        this->animationState = gPlayerEntity.animationState & 6;
    }

    this->collisionLayer = gPlayerEntity.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    this->spritePriority.b0 = gPlayerEntity.spritePriority.b0;
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    this->health = 1;
    this->flags |= ENT_DID_INIT;
}
