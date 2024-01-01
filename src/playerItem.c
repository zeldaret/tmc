#include "global.h"
#include "functions.h"
#include "player.h"
#include "playeritem.h"

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
    [PLAYER_ITEM_NONE] = DeleteEntity,
    [PLAYER_ITEM_SWORD] = PlayerItemSword,
    [PLAYER_ITEM_BOMB] = PlayerItemBomb,
    [PLAYER_ITEM_BOOMERANG] = PlayerItemBoomerang,
    [PLAYER_ITEM_BOW] = PlayerItemBow,
    [PLAYER_ITEM_SHIELD] = PlayerItemShield,
    [PLAYER_ITEM_LANTERN] = PlayerItemLantern,
    [PLAYER_ITEM_NULLED] = PlayerItemNulled,
    [PLAYER_ITEM_GUST_JAR] = PlayerItemGustJar,
    [PLAYER_ITEM_PACCI_CANE] = PlayerItemPacciCane,
    [PLAYER_ITEM_NONE2] = DeleteEntity,
    [PLAYER_ITEM_NONE3] = DeleteEntity,
    [PLAYER_ITEM_DASH_SWORD] = PlayerItemDashSword,
    [PLAYER_ITEM_CELL_OVERWRITE_SET] = PlayerItemCellOverwriteSet,
    [PLAYER_ITEM_BOTTLE] = PlayerItemBottle,
    [PLAYER_ITEM_SWORD_BEAM1] = PlayerItemSwordBeam,
    [PLAYER_ITEM_GUST] = PlayerItemGust,
    [PLAYER_ITEM_GUST_BIG] = PlayerItemGustBig,
    [PLAYER_ITEM_PACCI_CANE_PROJECTILE] = PlayerItemPacciCaneProjectile,
    [PLAYER_ITEM_HELD_OBJECT] = PlayerItemHeldObject,
    [PLAYER_ITEM_SPIRAL_BEAM] = PlayerItemSpiralBeam,
    [PLAYER_ITEM_FIRE_ROD_PROJECTILE] = PlayerItemFireRodProjectile,
    [PLAYER_ITEM_SWORD_BEAM2] = PlayerItemSwordBeam,
    [PLAYER_ITEM_NULLED2] = PlayerItemNulled2,
    [PLAYER_ITEM_CELL_OVERWRITE_SET2] = PlayerItemCellOverwriteSet,
};

void ItemInit(Entity*);

void ItemUpdate(Entity* this) {
    if ((this->flags & ENT_DID_INIT) == 0 && this->action == 0 && this->subAction == 0)
        ItemInit(this);

    if (!EntityDisabled(this)) {
        gPlayerItemFunctions[this->id](this);
        this->contactFlags &= ~CONTACT_NOW;
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
        definition = &definition[((GenericEntity*)this)->field_0x68.HALF.LO - tmp];
    }
    tmp3 = definition->bitfield;
    tmp2 = tmp3 & 0xf;
    this->palette.raw = (tmp3 << 4) | (tmp2);
    this->damage = definition->index;
    this->hurtType = definition->hurtType;
    this->hitType = definition->hitType;
    this->spriteIndex = definition->spriteIndex;
    if (definition->gfx == 0) {
        this->spriteVramOffset = gPlayerEntity.base.spriteVramOffset;
    } else {
        this->spriteVramOffset = definition->gfx & 0x3ff;
    }
    if (this->animationState == IdleNorth) {
        this->animationState = gPlayerEntity.base.animationState & 6;
    }

    this->collisionLayer = gPlayerEntity.base.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.base.spriteRendering.b3;
    this->spritePriority.b0 = gPlayerEntity.base.spritePriority.b0;
    this->spriteOrientation.flipY = gPlayerEntity.base.spriteOrientation.flipY;
    this->health = 1;
    this->flags |= ENT_DID_INIT;
}
