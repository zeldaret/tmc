/**
 * @file takkuri.c
 * @ingroup Enemies
 *
 * @brief Takkuri enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "item.h"
#include "object.h"
#include "save.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    u16 x_0x78;
    u16 y_0x7a;
    u8 filler2[0x4];
    u8 unk_0x80;
    u8 unk_0x81;
    u16 unk_0x82;
    u8 unk_0x84;
} TakkuriEntity;

static_assert(sizeof(TakkuriEntity) == 0x88);

extern Entity* gUnk_020000B0;

void (*const Takkuri_Functions[])(Entity*);
void (*const gUnk_080CFF54[])(TakkuriEntity*);
void (*const gUnk_080CFF6C[])(TakkuriEntity*);

void sub_0803BF2C(TakkuriEntity*);
void sub_0803BEE8(TakkuriEntity* this);
void sub_0803BF70(TakkuriEntity* this);
void sub_0803BF48(TakkuriEntity* this);
void sub_0803C120(TakkuriEntity* this);

void Takkuri(Entity* this) {
    Takkuri_Functions[GetNextFunction(this)](this);
}

void Takkuri_OnTick(TakkuriEntity* this) {
    gUnk_080CFF54[super->action](this);
}

void Takkuri_OnCollision(TakkuriEntity* this) {
    if (super->contactFlags & CONTACT_NOW) {
        if ((super->contactFlags & 0x7f) == 0) {
            u32 direction;
            sub_0803C0AC(super);
            COLLISION_OFF(super);
            direction = super->direction;
            if (!DirectionIsHorizontal(DirectionRoundUp(direction))) {
                if (DirectionIsVertical(direction)) {
                    super->direction += 2;
                } else {
                    super->direction -= 2;
                }
            }

            super->direction = 0x20 - super->direction;
            sub_0803BF2C(this);
        } else {
            if (((u8)super->iframes & 0x80) == 0) {
                super->health = 0;
            }
        }

        if (this->unk_0x82 >= 0x11) {
            this->unk_0x82 -= 0xc;
        }
    }

    GetNextFrame(super);
}

void Takkuri_OnGrabbed(TakkuriEntity* this) {
    gUnk_080CFF6C[super->subAction](this);
    GetNextFrame(super);
    if (!sub_0806F520(super)) {
        super->action = 2;
        super->subAction = 0;
        this->unk_0x84 = 2;
        super->timer = 8;
        super->speed = 0x1c0;
        sub_0803BF2C(this);
    }
}

void sub_0803BC7C(TakkuriEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
}

void sub_0803BC88(TakkuriEntity* this) {
    sub_0806F4E8(super);
}

void sub_0803BC90(TakkuriEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void sub_0803BCA4(TakkuriEntity* this) {
    sub_0804A720(super);

    super->action = 1;
    super->subtimer = 0;
    super->direction = sub_08049F84(super, 1);
    this->unk_0x80 = 0;
    this->unk_0x81 = 0;
    super->gustJarFlags = 1;
    super->collisionFlags |= 0x10;
    super->collisionLayer = 3;
    super->spriteOrientation.flipY = 1;
    this->x_0x78 = super->x.HALF.HI;
    this->y_0x7a = super->y.HALF.HI;
    UpdateSpriteForCollisionLayer(super);
    sub_0803BF2C(this);
}

void sub_0803BD08(TakkuriEntity* this) {
    Entity* entity;

    if (super->subtimer) {
        if (CheckOnScreen(super) == 0) {
            super->subtimer = 0;
            super->spriteSettings.draw = 1;
        } else {
            return;
        }
    }

    sub_0803BEE8(this);
    GetNextFrame(super);
    entity = sub_08049DF4(1);
    if (entity != NULL) {
        if (EntityInRectRadius(super, gUnk_020000B0, 0x88, 0x50)) {
            if (gUnk_020000B0->y.HALF.HI > super->y.HALF.HI + 8) {
                super->action = 2;
                this->unk_0x84 = 0;
                super->timer = 16;
                this->unk_0x81 = 2;
                sub_0803BF2C(this);
            }
        }
    }
}

void sub_0803BD88(TakkuriEntity* this) {
    sub_0803BF70(this);
}

void sub_0803BD90(TakkuriEntity* this) {
    if (CheckOnScreen(super) == 0) {
        super->action = 4;
        super->spriteSettings.draw = 4;
        COLLISION_OFF(super);
        super->spritePriority.b1 = 1;
        super->timer = 8;
    } else {
        sub_0803BF48(this);
        GetNextFrame(super);
    }
}

void sub_0803BDD8(TakkuriEntity* this) {
    if (--super->timer) {
        return;
    }

    if (sub_08049FDC(super, 1) == 0 || sub_08049FA0(super) == 0) {
        sub_0803C120(this);
    } else {
        if (super->direction & 0x10) {
            super->direction = 0x8;
            super->x.HALF.HI = gRoomControls.scroll_x - 0x20;
        } else {
            super->direction = 0x18;
            super->x.HALF.HI = gRoomControls.scroll_x + 0x110;
        }

        super->y.HALF.HI = gRoomControls.scroll_y + 8;
        super->spriteSettings.draw = 1;
        COLLISION_ON(super);
        super->action = 2;
        this->unk_0x84 = 1;
        super->timer = 24;
        this->unk_0x82 = 0x12c;
        super->speed = 0x12c + 0x94;
        this->unk_0x81 = 4;
    }

    sub_0803BF2C(this);
}

void sub_0803BE7C(TakkuriEntity* this) {
    if (CheckOnScreen(super))
        return;

    super->action = 1;
    super->spriteSettings.draw = 1;
    COLLISION_OFF(super);
    super->timer = 8;
    super->subtimer = 1;
    super->direction = sub_08049F84(super, 1);
    this->unk_0x80 = 0;
    super->spritePriority.b1 = 3;
    this->unk_0x81 = 0;
    super->collisionLayer = 3;
    UpdateSpriteForCollisionLayer(super);
    sub_0803BF2C(this);
}

void sub_0803BEE8(TakkuriEntity* this) {
    if (--super->timer == 0) {
        u32 direction;
        this->unk_0x80 = super->direction;
        direction = sub_08049F84(super, 1);
        if (direction != 0xff) {
            super->direction = direction;
        }

        super->timer = 8;
        if (DirectionIsVertical(this->unk_0x80) != DirectionIsVertical(super->direction)) {
            sub_0803BF2C(this);
        }
    }
}

void sub_0803BF2C(TakkuriEntity* this) {
    InitializeAnimation(super, ((super->direction & 0x10) >> 4) + this->unk_0x81);
}

void sub_0803BF48(TakkuriEntity* this) {
    LinearMoveUpdate(super);
    super->collisionLayer = 3;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 1;
}

void sub_0803BF70(TakkuriEntity* this) {
    u32 tmp1, tmp2, tmp3;
    switch (this->unk_0x84) {
        case 0:
            if (super->timer & 0x1) {
                super->z.HALF.HI--;
            }
            if (--super->timer == 0) {
                this->unk_0x84 = 1;
                super->timer = 24;
                COLLISION_ON(super);
                this->unk_0x81 = 2;
                sub_0803BF2C(this);
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_0x84 = 2;
                super->timer = 8;
                super->speed = 0x1c0;
                this->unk_0x81 = 4;
                sub_0803BF2C(this);
            }
            break;
        case 2:
            if (--this->unk_0x82 == 0) {
                super->action = 3;
                this->unk_0x84 = 0;
                super->timer = 0;
                super->speed = 0x180;
                if ((super->direction + 0x18) & 0x10) {
                    super->direction = (0x10 - super->direction) & 0x1f;
                }

                sub_0803BF2C(this);
            } else {
                if (--super->timer == 0) {
                    super->timer = 8;
                    this->unk_0x80 = super->direction;
                    sub_08004596(super, sub_08049F84(super, 1));
                    if ((super->direction + 0x18) & 0x10) {
                        if (this->unk_0x80 == 0x10) {
                            if (this->unk_0x80 & super->direction) {
                                this->unk_0x80 = 0x12;
                            } else {
                                this->unk_0x80 = 0xe;
                            }
                        }

                        super->direction = this->unk_0x80;
                        this->unk_0x82 = 1;
                    }

                    if ((((u32)this->unk_0x80 & 0x10)) >> 4 != ((((u32)super->direction) & 0x10)) >> 4) {
                        InitializeAnimation(super, (((u32)super->direction & 0x10) >> 4) + 4);
                    }
                }
            }
            sub_0803BF48(this);
            break;
    }

    GetNextFrame(super);
}

void sub_0803C0AC(Entity* this) {
    u32 index, rupeeType, rupees;
    Entity* entity;
    entity = sub_08049DF4(1);
    if (entity == NULL)
        return;

    rupees = gSave.stats.rupees;
    if (rupees >= 500) {
        rupeeType = ITEM_RUPEE20;
        index = 5;
        ModRupees(-100);
    } else if (rupees >= 100) {
        rupeeType = ITEM_RUPEE5;
        index = 5;
        ModRupees(-25);
    } else {
        rupeeType = ITEM_RUPEE1;
        index = rupees;
        if (rupees >= 0x5) {
            index = 5;
        }
        ModRupees(-index);
    }

    for (; index != 0; index--) {
        Entity* obj = CreateObject(RUPEE_OBJECT, rupeeType, 0);

        if (obj) {
            CopyPosition(entity, obj);
        }
    }
}

void sub_0803C120(TakkuriEntity* this) {
    super->action = 5;
    super->spriteSettings.draw = 0;
    super->flags &= ~ENT_COLLIDE;
    super->x.HALF.HI = this->x_0x78;
    super->y.HALF.HI = this->y_0x7a;
    super->z.HALF.HI += 8;
    super->spritePriority.b1 = 3;
}

void (*const Takkuri_Functions[])(Entity*) = {
    (EntityActionPtr)Takkuri_OnTick,
    (EntityActionPtr)Takkuri_OnCollision,
    GenericKnockback,
    GenericDeath,
    GenericConfused,
    (EntityActionPtr)Takkuri_OnGrabbed,
};

void (*const gUnk_080CFF54[])(TakkuriEntity*) = {
    sub_0803BCA4, sub_0803BD08, sub_0803BD88, sub_0803BD90, sub_0803BDD8, sub_0803BE7C,
};

void (*const gUnk_080CFF6C[])(TakkuriEntity*) = {
    sub_0803BC7C,
    sub_0803BC88,
    sub_0803BC90,
};
