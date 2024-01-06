/**
 * @file book.c
 * @ingroup Objects
 *
 * @brief Book object
 */
#include "collision.h"
#include "functions.h"
#include "item.h"
#include "message.h"
#include "npc.h"
#include "object.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[24];
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unused2[5];
    /*0x86*/ u16 unk_86;
} BookEntity;

extern void (*const Book_Actions[])(BookEntity*);
extern s8 const gUnk_08123D94[];

u32 sub_0809B688(Entity*);
void sub_0809B6B0(Entity*, Entity*);

void Book(BookEntity* this) {
    Book_Actions[super->action](this);
}

void Book_Init(BookEntity* this) {
    u32 obtained = GetInventoryValue(super->type + ITEM_QST_BOOK1);
    if (super->type2 != 3) {
        if (obtained != 0) {
            DeleteThisEntity();
        }
    } else {
        if (CheckLocalFlag(MIZUKAKI_BOOK_ALLBACK)) {
            DeleteThisEntity();
        }

        if (obtained != 2) {
            super->spriteSettings.draw = 0;
        }
    }

    super->spriteOffsetY = 3;
    if (CheckFlags(this->unk_86)) {
        if (super->type2 == 0) {
            super->y.HALF.HI += 48;
        }

        super->type2 = 2;
    }

    UpdateSpriteForCollisionLayer(super);
    InitAnimationForceUpdate(super, super->type + ITEM_QST_BOOK1);

    switch (super->type2) {
        case 0:
            super->action = 1;
            super->timer = 22;
            super->subtimer = 2;
            this->unk_80 = 0;
            super->spritePriority.b0 = 3;
            break;
        case 1: {
            u32 scroll;
            u32 height;

            super->action = 3;
            scroll = (u16)gRoomControls.scroll_y - 0x10;
            height = (u16)super->y.HALF.HI - scroll;
            super->z.HALF.HI -= height;
            break;
        }
        case 2:
            super->action = 4;
            break;
        case 3:
            super->action = 5;
            super->subAction = 0;
            super->spritePriority.b0 = 3;
            break;
        default:
            break;
    }
}

void Book_Action1(BookEntity* this) {
    sub_0800445C(super);

    if (this->unk_80 != 0) {
        this->unk_80--;
        return;
    }

    if (sub_0809B688(super)) {
        if (--super->timer) {
            return;
        }

        super->action = 2;
        super->timer = 30;
        super->speed = 0x40;
        super->direction = 0x10;

        gPlayerState.pushedObject = TREE_THORNS;
        gPlayerState.queued_action = PLAYER_PUSH;
        gPlayerState.flags |= PL_BUSY;

        gPlayerEntity.base.x.HALF.LO = 0;
        gPlayerEntity.base.y.HALF.LO = 0;
        gPlayerEntity.base.direction = gPlayerEntity.base.animationState << 2;
        EnqueueSFX(SFX_10F);
    } else {
        super->timer = 22;
    }
}

void Book_Action2(BookEntity* this) {
    if (--super->timer == 0) {
        if (--super->subtimer == 0) {
            super->action = 3;
            super->y.HALF.HI += 0x20;
            super->z.HALF.HI -= 0x20;
        } else {
            super->action = 1;
            super->timer = 22;
            this->unk_80 = 0x18;
        }
    }

    LinearMoveUpdate(super);
}

void Book_Action3(BookEntity* this) {
    Entity* fx;

    if (BounceUpdate(super, Q_8_8(40.0)) != BOUNCE_INIT_NEXT) {
        return;
    }

    super->action = 4;
    super->spritePriority.b0 = 4;

    SetFlag(this->unk_86);

    fx = CreateFx(super, FX_DEATH, 0);
    if (fx != NULL) {
        SortEntityAbove(super, fx);
    }
}

void Book_Action4(BookEntity* this) {
    if (gPlayerState.flags & PL_MINISH) {
        sub_0800445C(super);
    } else if (IsCollidingPlayer(super)) {
        CreateItemEntity(super->type + ITEM_QST_BOOK1, 0, 0);
        DeleteThisEntity();
    }
}

void Book_Action5(BookEntity* this) {
    if (super->spriteSettings.draw == 1) {
        switch (super->subAction) {
            case 0: {
                Entity* parent = FindEntityByID(NPC, STURGEON, 7);
                if (parent == NULL) {
                    return;
                }
                if (parent->x.HALF.HI < super->x.HALF.HI) {
                    return;
                }
                if (parent->animationState != 4) {
                    return;
                }

                super->parent = parent;
                super->subAction = 1;
                sub_0809B6B0(super->parent, super);
                break;
            }
            case 1: {
                if ((super->parent == NULL) || (super->parent->next == NULL)) {
                    DeleteThisEntity();
                    return;
                }
                sub_0809B6B0(super->parent, super);
                break;
            }
            default:
                return;
        }

    } else {
        switch (super->subAction) {
            default: {
                DeleteThisEntity();
                break;
            }
            case 0: {
                if (GetInventoryValue(super->type + ITEM_QST_BOOK1) == 2) {
                    super->subAction = 1;
                }
                break;
            }
            case 1: {
                u8 status = gMessage.state & MESSAGE_ACTIVE;
                if (!status) {
                    super->spriteSettings.draw = 1;
                    super->subAction = status;
                }
                break;
            }
        }
    }
}

u32 sub_0809B688(Entity* this) {
    u32 ret = EntityInRectRadius(this, &gPlayerEntity.base, 6, 12);

    if (ret == 1 && gPlayerState.direction != DirectionSouth) {
        ret = 0;
    }

    return ret;
}

void sub_0809B6B0(Entity* parent, Entity* this) {
    s32 offset = (s32)gUnk_08123D94[parent->animationState >> 1] << 16;

    PositionRelative(parent, this, 0, offset);

    this->z.HALF.HI = -(this->type << 2);
    this->spritePriority.b0 = 3 - this->type;
}

void (*const Book_Actions[])(BookEntity*) = {
    Book_Init, Book_Action1, Book_Action2, Book_Action3, Book_Action4, Book_Action5,
};

const s8 gUnk_08123D94[] = { -22, -20, -20, -20 };
