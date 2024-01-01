/**
 * @file crow.c
 * @ingroup Enemies
 *
 * @brief Crow enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"

typedef struct {
    Entity base;
    u8 filler[0x10];
    s16 unk_78;
    s16 unk_7a;
    u32 filler2;
    u8 unk_80;
    u8 unk_81;
    u16 unk_82;
    u8 unk_84;
} CrowEntity;

void (*const Crow_Functions[])(Entity*);
void (*const gUnk_080CE990[])(CrowEntity*);
void (*const gUnk_080CE9A4[])(CrowEntity*);
extern Entity* gUnk_020000B0;

void sub_08032AF4(CrowEntity* this);
void sub_08032AB0(CrowEntity* this);
void sub_08032B38(CrowEntity* this);
void sub_08032B10(CrowEntity* this);

void Crow(Entity* this) {
    Crow_Functions[GetNextFunction(this)](this);
}

void Crow_OnTick(CrowEntity* this) {
    gUnk_080CE990[super->action](this);
    if (super->subtimer) {
        if (--super->subtimer == 0) {
            COLLISION_ON(super);
        }
    }
}

void Crow_OnCollision(CrowEntity* this) {
    if (super->contactFlags & CONTACT_NOW) {
        if ((super->contactFlags & 0x3f) == 0) {
            COLLISION_OFF(super);
            super->subtimer = 16;
            if (DirectionIsHorizontal(DirectionRoundUp(super->direction)) == 0) {
                if (DirectionIsVertical(super->direction)) {
                    super->direction += 2;
                } else {
                    super->direction -= 2;
                }
            }

            super->direction = 0x20 - super->direction;
            sub_08032AF4(this);
        } else {
            u32 iframes = (u8)super->iframes & 0x80;
            if (iframes == 0) {
                super->health = iframes;
            }
        }
    }

    GetNextFrame(super);
}

void Crow_OnGrabbed(CrowEntity* this) {
    gUnk_080CE9A4[super->subAction](this);
    GetNextFrame(super);

    if (sub_0806F520(super))
        return;

    super->action = 2;
    super->subAction = 0;
    this->unk_84 = 2;
    super->timer = 8;
    super->speed = 0x1c0;
    sub_08032AF4(this);
}

void sub_08032900(CrowEntity* this) {
    super->subAction = 1;
    super->gustJarTolerance = 0x3c;
}

void sub_0803290C(CrowEntity* this) {
    sub_0806F4E8(super);
}

void sub_08032914(CrowEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void sub_08032928(CrowEntity* this) {
    sub_0804A720(super);

    super->action = 1;
    super->subtimer = 0;
    super->direction = sub_08049F84(super, 1);
    this->unk_80 = 0;
    this->unk_81 = 0;
    super->gustJarFlags = 1;
    super->collisionFlags |= 0x10;
    super->collisionLayer = 3;
    super->spriteOrientation.flipY = 1;
    this->unk_78 = super->x.HALF.HI;
    this->unk_7a = super->y.HALF.HI;
    UpdateSpriteForCollisionLayer(super);
    sub_08032AF4(this);
}

void sub_0803298C(CrowEntity* this) {
    sub_08032AB0(this);
    GetNextFrame(super);

    if (sub_08049DF4(1) == NULL)
        return;
    if (EntityInRectRadius(super, gUnk_020000B0, 0x88, 0x50) == 0)
        return;
    if (gUnk_020000B0->y.HALF.HI <= super->y.HALF.HI + 8)
        return;

    super->action = 2;
    this->unk_84 = 0;
    super->timer = 16;
    this->unk_81 = 2;
    sub_08032AF4(this);
}

void sub_080329E8(CrowEntity* this) {
    sub_08032B38(this);
}

void sub_080329F0(CrowEntity* this) {
    if (CheckOnScreen(super) == 0) {
        super->action = 4;
        super->spriteSettings.draw = 0;
        COLLISION_OFF(super);
        super->x.HALF.HI = this->unk_78;
        super->y.HALF.HI = this->unk_7a;
        super->z.HALF.HI += 8;
        super->spritePriority.b1 = 1;
    } else {
        sub_08032B10(this);
        GetNextFrame(super);
    }
}

void sub_08032A48(CrowEntity* this) {
    if (CheckOnScreen(super))
        return;

    super->action = 1;
    super->spriteSettings.draw = 1;
    COLLISION_OFF(super);
    super->timer = 8;
    super->direction = sub_08049F84(super, 1);
    this->unk_80 = 0;
    super->spritePriority.b1 = 3;
    this->unk_81 = 0;
    super->collisionLayer = 3;
    UpdateSpriteForCollisionLayer(super);
    sub_08032AF4(this);
}

void sub_08032AB0(CrowEntity* this) {
    u32 dir;
    if (--super->timer != 0)
        return;

    this->unk_80 = super->direction;
    dir = sub_08049F84(super, 1);
    if (dir != 0xff) {
        super->direction = dir;
    }

    super->timer = 8;
    if (DirectionIsVertical(this->unk_80) != DirectionIsVertical(super->direction)) {
        sub_08032AF4(this);
    }
}

void sub_08032AF4(CrowEntity* this) {
    InitializeAnimation(super, ((super->direction & 0x10) >> 4) + this->unk_81);
}

void sub_08032B10(CrowEntity* this) {
    LinearMoveUpdate(super);

    super->collisionLayer = 3;
    super->spriteOrientation.flipY = 1;
    super->spriteRendering.b3 = 1;
}

void sub_08032B38(CrowEntity* this) {
    u32 dir, dir2;
    u32 temp;
    switch (this->unk_84) {
        case 0:
            if ((super->timer & 1) != 0) {
                super->z.HALF.HI--;
            }

            if (--super->timer == 0) {
                this->unk_84 = 1;
                super->timer = 24;
                COLLISION_ON(super);
                this->unk_81 = 2;
                sub_08032AF4(this);
            }
            break;
        case 1:
            if (--super->timer == 0) {
                this->unk_84 = 2;
                super->timer = 8;
                super->speed = 0x1c0;
                this->unk_81 = 4;
                sub_08032AF4(this);
            }
            break;
        case 2:
            if (--this->unk_82 == 0) {
                super->action = 3;
                this->unk_84 = 0;
                super->timer = 0;
                super->speed = 0x180;
                if ((super->direction + 0x18) & 0x10) {
                    super->direction = (0x10 - super->direction) & 0x1f;
                }

                sub_08032AF4(this);
            } else if (--super->timer == 0) {
                super->timer = 8;
                this->unk_80 = super->direction;
                sub_08004596(super, sub_08049F84(super, 1));

                if ((super->direction + 0x18) & 0x10) {
                    if (this->unk_80 == 0x10) {
                        if (super->direction & this->unk_80) {
                            this->unk_80 = 0x12;
                        } else {
                            this->unk_80 = 0xe;
                        }
                    }

                    super->direction = this->unk_80;
                    this->unk_82 = 1;
                }
                temp = this->unk_80 & 0x10;

                dir = super->direction;
                dir2 = super->direction >> 4;

                if (((this->unk_80 & 0x10)) >> 4 != (((super->direction) & 0x10)) >> 4) {
                    InitializeAnimation(super, ((super->direction & 0x10) >> 4) + 4);
                }
            }

            sub_08032B10(this);
            break;
    }

    GetNextFrame(super);
}

void (*const Crow_Functions[])(Entity*) = {
    (EntityActionPtr)Crow_OnTick,    (EntityActionPtr)Crow_OnCollision, GenericKnockback, GenericDeath, GenericConfused,
    (EntityActionPtr)Crow_OnGrabbed,
};

void (*const gUnk_080CE990[])(CrowEntity*) = {
    sub_08032928, sub_0803298C, sub_080329E8, sub_080329F0, sub_08032A48,
};

void (*const gUnk_080CE9A4[])(CrowEntity*) = {
    sub_08032900,
    sub_0803290C,
    sub_08032914,
};
