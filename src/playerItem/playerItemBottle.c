#include "entity.h"
#include "save.h"
#include "sound.h"
#include "functions.h"
#include "object.h"
#include "item.h"

void PlayerItemBottle_UseEmptyBottle(Entity*);
void PlayerItemBottle_Action1(Entity*);
void sub_0801BDE8(Entity*, Entity*);
void PlayerItemBottle_UseEmptyBottle2(Entity*);
void PlayerItemBottle_UsePotionOrPicolyte(Entity*);
void PlayerItemBottle_UseOther(Entity*);
void PlayerItemBottle_Init(Entity*);

extern u32 SetBottleContents(u32 itemID, u32 bottleIndex);
extern void sub_0801B9F0(Entity* this);

void PlayerItemBottle(Entity* this) {
    static void (*const PlayerItemBottle_Actions[])(Entity*) = {
        PlayerItemBottle_Init,
        PlayerItemBottle_Action1,
    };
    PlayerItemBottle_Actions[this->action](this);
}

void PlayerItemBottle_Init(Entity* this) {
    u32 bottleType;

    if (this->field_0x68.HALF.LO == ITEM_QST_DOGFOOD) {
        bottleType = ITEM_QST_DOGFOOD;
    } else {
        u32 tmp = this->field_0x68.HALF.LO;
        bottleType = gSave.saved_status.field_0x24[tmp - 6];
    }
    this->field_0x6e.HALF.HI = bottleType;
    switch (bottleType) {
        case ITEM_BOTTLE_EMPTY:
            if (AllocMutableHitbox(this) == NULL) {
                return;
            }
            COLLISION_ON(this);
            this->field_0x3c = (gPlayerEntity.field_0x3c + 1) | 0x20;
            this->flags2 = gPlayerEntity.flags2;
            this->hurtType = 0x1f;
            this->type = 1;
            this->type2 = ITEM_BOTTLE_EMPTY;
            this->actionDelay = 0x52;
            this->field_0xf = 0x1b;
            sub_0801766C(this);
            SoundReq(SFX_1DC);
            break;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_MILK:
        case ITEM_BOTTLE_HALF_MILK:
        case ITEM_BOTTLE_RED_POTION:
        case ITEM_BOTTLE_BLUE_POTION:
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            this->actionDelay = 0xd5;
            this->field_0xf = 0x3c;
            break;
        case BOTTLE_CHARM_NAYRU:
        case BOTTLE_CHARM_FARORE:
        case BOTTLE_CHARM_DIN:
        default:
            this->actionDelay = 0x37;
            this->field_0xf = 0;
    }
    this->action = 1;
    this->frameIndex = 0xff;
    gPlayerState.item = this;
    LoadSwapGFX(this, 1, 3);
    PlayerItemBottle_Action1(this);
}

void PlayerItemBottle_Action1(Entity* this) {
    int iVar1;

    if (gPlayerState.item != this) {
        if ((this->type == 1) && (this->type2 != ITEM_BOTTLE_EMPTY)) {
            iVar1 = this->field_0x68.HALF.LO - 0x1c;
            SetBottleContents(this->type2, iVar1);
#if defined(EU) || defined(JP) || defined(DEMO_JP)
            CreateItemEntity(this->type2, iVar1, 5);
#else
            InitItemGetSequence(this->type2, iVar1, 5);
#endif
            SoundReq(SFX_109);
        }
        DeleteThisEntity();
    }
    sub_0801BDE8(this, &gPlayerEntity);
    switch (this->field_0x6e.HALF.HI) {
        case ITEM_BOTTLE_EMPTY:
            PlayerItemBottle_UseEmptyBottle2(this);
            break;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_MILK:
        case ITEM_BOTTLE_HALF_MILK:
        case ITEM_BOTTLE_RED_POTION:
        case ITEM_BOTTLE_BLUE_POTION:
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            if (gPlayerEntity.frame == 1) {
                gPlayerEntity.frame = 0;
                PlayerItemBottle_UsePotionOrPicolyte(this);
            }
            break;
        case BOTTLE_CHARM_NAYRU:
        case BOTTLE_CHARM_FARORE:
        case BOTTLE_CHARM_DIN:
        default:
            PlayerItemBottle_UseOther(this);
    }
}

void PlayerItemBottle_UseEmptyBottle2(Entity* this) {
    PlayerItemBottle_UseEmptyBottle(this);
}

void PlayerItemBottle_UsePotionOrPicolyte(Entity* this) {
    u32 health;
    u32 bottleType;

    bottleType = ITEM_BOTTLE_EMPTY;
    health = 0;
    switch (this->field_0x6e.HALF.HI) {
        case ITEM_BOTTLE_MILK:
            bottleType = ITEM_BOTTLE_HALF_MILK;
        case ITEM_BOTTLE_HALF_MILK:
            health = 40;
            break;
        case ITEM_BOTTLE_BLUE_POTION:
            health = 80;
            break;
        case ITEM_BOTTLE_BUTTER:
        case ITEM_BOTTLE_RED_POTION:
            health = 160;
            break;
        case ITEM_BOTTLE_PICOLYTE_RED:
        case ITEM_BOTTLE_PICOLYTE_ORANGE:
        case ITEM_BOTTLE_PICOLYTE_YELLOW:
        case ITEM_BOTTLE_PICOLYTE_GREEN:
        case ITEM_BOTTLE_PICOLYTE_BLUE:
        case ITEM_BOTTLE_PICOLYTE_WHITE:
            gSave.stats.picolyteType = this->field_0x6e.HALF.HI;
            gSave.stats.picolyteTimer = 900;
            SoundReq(SFX_PICOLYTE);
            break;
    }
    ModHealth(health);
    SetBottleContents(bottleType, this->field_0x68.HALF.LO - 0x1c);
}

void PlayerItemBottle_UseOther(Entity* this) {
    if (gPlayerEntity.frame == 1) {
        if (this->field_0x6e.HALF.HI != 0x36) {
            SetBottleContents(ITEM_BOTTLE_EMPTY, this->field_0x68.HALF.LO - 0x1c);
        }
        switch (this->field_0x6e.HALF.HI) {
            case ITEM_BOTTLE_WATER:
                CreateObjectWithParent(this, OBJECT_68, 0, 0);
                break;
            case ITEM_BOTTLE_MINERAL_WATER:
                CreateObjectWithParent(this, OBJECT_68, 1, 1);
                break;
            case ITEM_BOTTLE_FAIRY:
                CreateObjectWithParent(this, OBJECT_68, 2, 2);
                ModHealth(0x20);
                break;
            case BOTTLE_CHARM_NAYRU:
            case BOTTLE_CHARM_FARORE:
            case BOTTLE_CHARM_DIN:
                gSave.stats.charm = this->field_0x6e.HALF.HI;
                gSave.stats.charmTimer = 3600;
                SoundReq(SFX_ELEMENT_CHARGE);
        }
    }
    if (gPlayerEntity.frame == 2) {
        switch (this->field_0x6e.HALF.HI) {
            case ITEM_BOTTLE_WATER:
                CreateObjectWithParent(this, OBJECT_68, 0, 0);
                break;
            case ITEM_BOTTLE_MINERAL_WATER:
                CreateObjectWithParent(this, OBJECT_68, 1, 1);
                break;
        }
    }
    if (gPlayerEntity.frame == 3) {
        switch (this->field_0x6e.HALF.HI) {
            case ITEM_BOTTLE_WATER:
                CreateObjectWithParent(this, OBJECT_68, 0, 0);
                break;
            case ITEM_BOTTLE_MINERAL_WATER:
                CreateObjectWithParent(this, OBJECT_68, 1, 0);
                break;
        }
    }
}

void sub_0801BDE8(Entity* this, Entity* ent2) {
    u32 uVar1;
    u32 flipX;
    u32 animationState;

    uVar1 = (ent2->frameIndex - this->actionDelay) + this->field_0xf;
    if (uVar1 != this->frameIndex) {
        this->frameIndex = uVar1;
        sub_080042D0(this, this->frameIndex, (u16)this->spriteIndex);
    }
    flipX = ent2->spriteSettings.flipX;
    animationState = (ent2->animationState >> 1);
    this->spriteSettings.flipX = flipX ^ (animationState & 1);
    sub_08078E84(this, &gPlayerEntity);
}

void PlayerItemBottle_UseEmptyBottle(Entity* this) {
    static const s8 gUnk_080B7878[] = {
        0, -16, 16, -16, 16, 0, 16, 16, 0, 16, -16, 16, -16, 0, -16, -16, 0, 0,
    };
    static const u8 bottleHitboxParameters[] = {
        16, -4,  5,   5,  12, 0, 9,   9,   8,  0, 9,  9,  4,   8, 9, 9,  -6,  12, 9,  9, -12, 2,  9,  9, 0,   0,  0,
        0,  0,   0,   0,  0,  0, 0,   0,   0,  0, 0,  0,  0,   0, 0, 0,  0,   0,  -8, 5, 5,   -4, -8, 9, 9,   -8, -8,
        9,  9,   -12, -4, 9,  9, -16, 0,   9,  9, -6, 2,  9,   9, 0, 0,  0,   0,  0,  0, 0,   0,  0,  0, 0,   0,  0,
        0,  0,   0,   0,  0,  0, 0,   -12, -6, 5, 5,  -8, -12, 9, 9, -4, -16, 9,  9,  4, -16, 9,  9,  8, -16, 9,  9,
        16, -12, 9,   9,  0,  0, 0,   0,   0,  0, 0,  0,  0,   0, 0, 0,  0,   0,  0,  0, 0,   0,  0,  0, 0,   0,

    };
    int iVar2;
    Hitbox* pHVar5;
    const u8* ptr;
    const s8* ptr2;

    switch (this->bitfield & 0x7f) {
        default:
            this->bitfield = 0;
            break;
        case 0x49:
            this->type2 = ITEM_BOTTLE_FAIRY;
            sub_0801B9F0(this);
            break;
        case 0x4d:
            this->type2 = ITEM_BOTTLE_MINERAL_WATER;
            sub_0801B9F0(this);
            break;
    }

    ptr = &bottleHitboxParameters[(this->frameIndex - 0x1b) * 4];
    if (this->spriteSettings.flipX != 0) {
        pHVar5 = this->hitbox;
        pHVar5->offset_x = -ptr[0];
    } else {
        pHVar5 = this->hitbox;
        pHVar5->offset_x = ptr[0];
    }
    this->hitbox->offset_y = ptr[1];
    this->hitbox->width = ptr[2];
    this->hitbox->height = ptr[3];
    if ((gPlayerEntity.frame & 0xf) != 0) {
        if (this->type2 == ITEM_BOTTLE_EMPTY) {
            ptr2 = &gUnk_080B7878[((gPlayerEntity.frame & 0xf) - 1) * 2];
            iVar2 = ptr2[0];
            if (this->spriteSettings.flipX != 0) {
                iVar2 = -iVar2;
            }
            if (GetRelativeCollisionTile(this, iVar2, (s8)ptr2[1]) == 0x10) {
                this->type2 = ITEM_BOTTLE_WATER;
            }
        }
    }

    if (this->type2 != ITEM_BOTTLE_EMPTY) {
        COLLISION_OFF(&gPlayerEntity);
    }
}
