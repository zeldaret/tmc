#include "object.h"
#include "functions.h"
#include "message.h"
#include "item.h"
#include "npc.h"
#include "collision.h"

extern void (*const BookActionFuncs[])(Entity*);
extern s8 const gUnk_08123D94[];

u32 sub_0809B688(Entity*);
void sub_0809B6B0(Entity*, Entity*);

void Book(Entity* this) {
    BookActionFuncs[this->action](this);
}

void sub_0809B3C4(Entity* this) {
    u32 obtained = GetInventoryValue(this->type + ITEM_QST_BOOK1);
    if (this->type2 != 3) {
        if (obtained != 0) {
            DeleteThisEntity();
        }
    } else {
        if (CheckLocalFlag(MIZUKAKI_BOOK_ALLBACK)) {
            DeleteThisEntity();
        }

        if (obtained != 2) {
            this->spriteSettings.draw = 0;
        }
    }

    this->spriteOffsetY = 3;
    if (CheckFlags(this->field_0x86.HWORD)) {
        if (this->type2 == 0) {
            this->y.HALF.HI += 48;
        }

        this->type2 = 2;
    }

    UpdateSpriteForCollisionLayer(this);
    InitAnimationForceUpdate(this, this->type + ITEM_QST_BOOK1);

    switch (this->type2) {
        case 0:
            this->action = 1;
            this->timer = 22;
            this->subtimer = 2;
            this->field_0x80.HALF.LO = 0;
            this->spritePriority.b0 = 3;
            break;
        case 1: {
            u32 scroll;
            u32 height;

            this->action = 3;
            scroll = (u16)gRoomControls.scroll_y - 0x10;
            height = (u16)this->y.HALF.HI - scroll;
            this->z.HALF.HI -= height;
            break;
        }
        case 2:
            this->action = 4;
            break;
        case 3:
            this->action = 5;
            this->subAction = 0;
            this->spritePriority.b0 = 3;
            break;
        default:
            break;
    }
}

void sub_0809B4A8(Entity* this) {
    sub_0800445C(this);

    if (this->field_0x80.HALF.LO != 0) {
        this->field_0x80.HALF.LO--;
        return;
    }

    if (sub_0809B688(this)) {
        if (--this->timer) {
            return;
        }

        this->action = 2;
        this->timer = 30;
        this->speed = 0x40;
        this->direction = 0x10;

        gPlayerState.pushedObject = TREE_THORNS;
        gPlayerState.queued_action = PLAYER_PUSH;
        gPlayerState.flags |= PL_BUSY;

        gPlayerEntity.x.HALF.LO = 0;
        gPlayerEntity.y.HALF.LO = 0;
        gPlayerEntity.direction = gPlayerEntity.animationState << 2;
        EnqueueSFX(SFX_10F);
    } else {
        this->timer = 22;
    }
}

void sub_0809B524(Entity* this) {
    if (--this->timer == 0) {
        if (--this->subtimer == 0) {
            this->action = 3;
            this->y.HALF.HI += 0x20;
            this->z.HALF.HI -= 0x20;
        } else {
            this->action = 1;
            this->timer = 22;
            this->field_0x80.HALF.LO = 0x18;
        }
    }

    LinearMoveUpdate(this);
}

void sub_0809B56C(Entity* this) {
    Entity* fx;

    if (sub_080044EC(this, 0x2800) != 1) {
        return;
    }

    this->action = 4;
    this->spritePriority.b0 = 4;

    SetFlag(this->field_0x86.HWORD);

    fx = CreateFx(this, FX_DEATH, 0);
    if (fx != NULL) {
        SortEntityAbove(this, fx);
    }
}

void sub_0809B5B4(Entity* this) {
    if (gPlayerState.flags & PL_MINISH) {
        sub_0800445C(this);
    } else if (IsCollidingPlayer(this)) {
        CreateItemEntity(this->type + ITEM_QST_BOOK1, 0, 0);
        DeleteThisEntity();
    }
}

void sub_0809B5EC(Entity* this) {
    if (this->spriteSettings.draw == 1) {
        switch (this->subAction) {
            case 0: {
                Entity* parent = FindEntityByID(NPC, STURGEON, 7);
                if (parent == NULL) {
                    return;
                }
                if (parent->x.HALF.HI < this->x.HALF.HI) {
                    return;
                }
                if (parent->animationState != 4) {
                    return;
                }

                this->parent = parent;
                this->subAction = 1;
                sub_0809B6B0(this->parent, this);
                break;
            }
            case 1: {
                if ((this->parent == NULL) || (this->parent->next == NULL)) {
                    DeleteThisEntity();
                    return;
                }
                sub_0809B6B0(this->parent, this);
                break;
            }
            default:
                return;
        }

    } else {
        switch (this->subAction) {
            default: {
                DeleteThisEntity();
                break;
            }
            case 0: {
                if (GetInventoryValue(this->type + ITEM_QST_BOOK1) == 2) {
                    this->subAction = 1;
                }
                break;
            }
            case 1: {
                u8 doTextBox = gMessage.doTextBox & 0x7f;
                if (!doTextBox) {
                    this->spriteSettings.draw = 1;
                    this->subAction = doTextBox;
                }
                break;
            }
        }
    }
}

u32 sub_0809B688(Entity* this) {
    u32 ret = EntityInRectRadius(this, &gPlayerEntity, 6, 12);

    if (ret == 1 && gPlayerState.field_0xd != 16) {
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

void (*const BookActionFuncs[])(Entity*) = {
    sub_0809B3C4, sub_0809B4A8, sub_0809B524, sub_0809B56C, sub_0809B5B4, sub_0809B5EC,
};

const s8 gUnk_08123D94[] = { -22, -20, -20, -20 };
