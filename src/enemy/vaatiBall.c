/**
 * @file vaatiBall.c
 * @ingroup Enemies
 *
 * @brief Vaati Ball enemy
 */
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "player.h"

typedef struct {
    /*0x00*/ Entity base;
    /*0x68*/ u8 unused1[12];
    /*0x74*/ u8 unk_74;
    /*0x75*/ u8 unused2[2];
    /*0x77*/ u8 unk_77;
    /*0x78*/ u8 unk_78;
    /*0x79*/ u8 unk_79;
    /*0x7a*/ u8 unused3[2];
    /*0x7c*/ u32 unk_7c;
    /*0x80*/ u8 unk_80;
    /*0x81*/ u8 unused4[2];
    /*0x83*/ u8 unk_83;
    /*0x84*/ u8 unk_84;
    /*0x85*/ u8 unused5[1];
    /*0x86*/ u8 unk_86;
} VaatiBallEntity;

typedef struct {
    s8 h, v;
} PACKED PosOffset;

void sub_0804468C(VaatiBallEntity*);
void sub_080447E0(VaatiBallEntity*);
void sub_08044868(VaatiBallEntity*);
void sub_0804474C(VaatiBallEntity*);
void sub_080449F8(VaatiBallEntity*);
void sub_08044B04(VaatiBallEntity*);
void sub_08044DEC(VaatiBallEntity*);

extern void sub_08044E74(VaatiBallEntity*, u32);

void VaatiBall(VaatiBallEntity* this) {
    static void (*const actionFuncs[])(VaatiBallEntity*) = {
        sub_0804468C, sub_0804474C, sub_080447E0, sub_08044868, sub_0804474C, sub_080449F8, sub_08044B04,
    };
    Entity* parent = super->parent;
    if (super->action && super->action != 3) {
        super->x.WORD += parent->x.WORD - *(int*)&((VaatiBallEntity*)parent)->unk_78;
        super->y.WORD += parent->y.WORD - ((VaatiBallEntity*)parent)->unk_7c;
    }

    actionFuncs[super->action](this);

    if (this->unk_84) {
        super->health = -1;
    }

    if (super->contactFlags & CONTACT_NOW) {
        if ((super->contactFlags & 0x3f) == 0 && super->action == 6) {
            ModHealth(-2);
        }

#ifdef EU
        if (super->health < 0xfa) {
#else
        if (super->health < 0xfd) {
#endif
            super->spriteSettings.draw = 0;
            COLLISION_OFF(super);
            super->health = -1;
            ((VaatiBallEntity*)parent)->unk_80--;
            CreateDust(super);
            SoundReq(SFX_1C3);
        }
    }
}

void sub_0804468C(VaatiBallEntity* this) {
    const PosOffset* off;
    static const PosOffset gUnk_080D1620[4] = { { -48, 0 }, { 0, -48 }, { 48, 0 }, { 0, 48 } };

    super->collisionLayer = 3;
    super->spriteRendering.b3 = 2;
    super->spritePriority.b0 = 5;
    this->unk_84 = 0;
    switch (super->type) {
        case 0:
            super->action = 1;
            super->timer = 1;
            super->direction = (this->unk_79 * 8) & (0x3 | DirectionNorthWest);
            this->unk_78 = 0;
            this->unk_83 = 0;
            super->spriteSettings.draw = 0;
            off = &gUnk_080D1620[this->unk_79 & 3];
            PositionRelative(super->parent, super, Q_16_16(off->h), Q_16_16(off->v - 0x10));
            super->z.HALF.HI = super->parent->z.HALF.HI;
            InitAnimationForceUpdate(super, 0);
            break;
        case 1:
            super->action = 3;
            this->unk_74 = 0;
            this->unk_83 = 1;
            super->spriteSettings.draw = 1;
            InitAnimationForceUpdate(super, 1);
            break;
    }
}

void sub_0804474C(VaatiBallEntity* this) {
    switch (super->parent->action) {
        case 3:
            super->action = 3;
            this->unk_74 = 0;
            super->timer = 0;
            break;
        case 5:
            super->action = 5;
            this->unk_74 = 0;
            super->subtimer = 1;
            break;
        case 6:
            super->action = 6;
            this->unk_74 = 0;
            super->subtimer = 32;
            break;
        case 2:
            super->action = 2;
            this->unk_74 = 0;
            super->hitType = 0;
            break;
    }

    if (super->action != 1) {
        UpdateAnimationSingleFrame(super);
    } else {
        if (--super->timer == 0) {
            super->timer = 2;
            super->direction++;
            super->direction &= 0x3 | DirectionNorthWest;
        }
        LinearMoveUpdate(super);
        UpdateAnimationSingleFrame(super);
    }
}

void sub_080447E0(VaatiBallEntity* this) {
    VaatiBallEntity* vaati = (VaatiBallEntity*)super->parent;

    if (vaati->base.action == 1) {
        super->action = 1;
        super->hitType = 43;
        sub_08044E74(this, 0);
        if (super->flags & ENT_COLLIDE)
            super->spriteSettings.draw = 1;
    } else {
        this->unk_77++;
        this->unk_77 &= 7;
        if (super->flags & ENT_COLLIDE) {
            if (this->unk_77 & 1) {
                super->spriteSettings.draw = 1;
            } else {
                super->spriteSettings.draw = 0;
            }
        }

        if (vaati->unk_74 == 2) {
            sub_08044E74(this, 2);
        }
    }
}

void sub_08044868(VaatiBallEntity* this) {
    VaatiBallEntity* vaati = (VaatiBallEntity*)super->parent;

    switch (vaati->unk_74) {
        case 0xfe:
            if (this->unk_83 && this->unk_74 == 2)
                DeleteThisEntity();
            break;
        case 0xff:
            if (this->unk_83) {
                switch (this->unk_74) {
                    case 0:
                        if (super->frame & ANIM_DONE) {
                            this->unk_74 = 1;
                            super->direction = sub_080045B4(super, vaati->base.x.HALF.HI, vaati->base.y.HALF.HI - 0x10);
                            super->speed = 0x180;
                        }
                        break;
                    case 1:
                        LinearMoveUpdate(super);
                        if (EntityWithinDistance(super, vaati->base.x.HALF.HI, vaati->base.y.HALF.HI - 0x10, 0xc)) {
                            this->unk_74++;
                            super->x.HALF.HI = vaati->base.x.HALF.HI;
                            super->y.HALF.HI = vaati->base.y.HALF.HI - 0x10;
                            vaati->base.timer++;
                        } else {
                            super->direction = sub_080045B4(super, vaati->base.x.HALF.HI, vaati->base.y.HALF.HI - 0x10);
                        }
                        break;
                }
            }
            break;
        case 1:
            if (this->unk_83 == 0) {
                this->unk_83++;
                super->spriteSettings.draw = 1;
            }
            sub_08044DEC(this);
            if (vaati->unk_86 > 1) {
                u8 draw = super->spriteSettings.draw;
                if (draw == 1 && this->unk_84 == 0) {
                    vaati = (VaatiBallEntity*)EnemyCreateProjectile(super, V1_DARK_MAGIC_PROJECTILE, 0);
                    if (vaati) {
                        vaati->base.type2 = 1;
                        vaati->base.parent = super;
                        this->unk_84 = 1;
                        super->hitType = 0;
                    }
                }
            }
            super->timer = 32;
            break;
        case 2:
            if (super->timer)
                if (--super->timer < 0x11)
                    LinearMoveUpdate(super);
            break;
        case 3: {
            u8 draw;

            sub_08044E74(this, 1);
            draw = super->spriteSettings.draw;
            if (draw == 1) {
                COLLISION_ON(super);
            } else {
                COLLISION_OFF(super);
            }
            break;
        }
    }
    UpdateAnimationSingleFrame(super);
}

void sub_080449F8(VaatiBallEntity* this) {
    VaatiBallEntity* vaati = (VaatiBallEntity*)super->parent;

    UpdateAnimationSingleFrame(super);
    if (vaati->base.action == 1) {
        sub_08044E74(this, 0);
        return;
    }

    switch (vaati->unk_74) {
        case 0:
            LinearMoveUpdate(super);
            if (--super->timer)
                break;

            if (this->unk_78 == 0) {
                this->unk_78++;
                super->speed = 640;
            }

            super->timer = 4;
            super->direction++;
            super->direction &= 0x3 | DirectionNorthWest;
            if (vaati->unk_80 == 0)
                vaati->unk_74 = 1;
            break;
        case 1:
            switch (super->timer) {
                case 2:
                    if (vaati->unk_80 == 0) {
                        super->subtimer = 0;
                        sub_08044E74(this, 0);
                    }
                    break;
                case 1:
                    super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
                    LinearMoveUpdate(super);
                    super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
                    super->timer = 2;
                    break;
                case 3:
                    LinearMoveUpdate(super);
                    super->timer = 2;
                    break;
                case 4:
                    LinearMoveUpdate(super);
                    LinearMoveUpdate(super);
                    super->timer = 2;
                    break;
            }
            break;
        case 2:
            if (this->unk_74 == 0) {
                u8 draw;

                this->unk_74++;
                draw = super->spriteSettings.draw;
                if (draw) {
                    vaati = (VaatiBallEntity*)EnemyCreateProjectile(super, V1_EYE_LASER, 0);
                    if (vaati) {
                        vaati->base.y.HALF.HI += 4;
                        vaati->base.parent = super;
                        super->child = &vaati->base;
                    }
                }
            }
            break;
        case 3:
            if (super->subtimer) {
                super->subtimer = 0;
            }
            break;
    }
}

void sub_08044B04(VaatiBallEntity* this) {
    Entity* vaati = super->parent;

    UpdateAnimationSingleFrame(super);
    if (vaati->action == 1) {
        sub_08044E74(this, 0);
        super->timer = 32;
        return;
    }

    switch (((VaatiBallEntity*)vaati)->unk_74) {
        case 0:
            LinearMoveUpdate(super);
            switch (this->unk_74) {
                case 0:
                    if (--super->timer == 0) {
                        super->timer = this->unk_78 ? 4 : 2;
                        super->direction++;
                        super->direction &= 0x3 | DirectionNorthWest;
                    }
                    if (--super->subtimer == 0) {
                        if (super->timer != 2) {
                            super->subtimer = 1;
                        } else {
                            if (++this->unk_78 > 2) {
                                this->unk_74++;
                                this->unk_78 = 1;
                                super->timer = 4;
                                super->subtimer = 0;
                            } else {
                                super->subtimer = 32;
                            }

                            super->speed = this->unk_78 ? 640 : 1280;
                        }
                    }
                    break;
                case 1:
                    if (--super->timer == 0) {
                        super->timer = 6;
                        super->direction = (super->direction + 1) & (0x3 | DirectionNorthWest);
                        if (++super->subtimer == 0x30) {
                            u32 direction = sub_080045B4(super, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                            super->speed = 0;
                            super->direction = (direction + 16) & (0x3 | DirectionNorthWest);
                            super->timer = 16;
                            super->subtimer = 16;
                            this->unk_74++;
                        }
                    }
                    break;
                case 2:
                    if (super->subtimer == 0) {
                        switch (--super->timer) {
                            case 12:
                                super->speed = 1280;
                                break;
                            case 0:
                                this->unk_74++;
                                super->direction = sub_080045B4(super, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                                super->speed = 0;
                                super->timer = 4;
                                super->subtimer = 16;
                                break;
                            case 4:
                                super->speed = 640;
                                break;
                        }
                    } else {
                        if (--super->subtimer == 0)
                            super->speed = 640;
                    }
                    break;
                case 3:
                    if (super->subtimer) {
                        if (--super->subtimer == 0)
                            super->speed = 640;
                    } else {
                        if (super->timer) {
                            if (--super->timer == 0) {
                                super->speed = 1280;
                                SoundReq(SFX_14F);
                            }
                        }
                        if (this->unk_79 == 3)
                            if (EntityWithinDistance(super, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10, 0xc))
                                vaati->timer++;
                        super->direction = sub_080045B4(super, vaati->x.HALF.HI, vaati->y.HALF.HI - 0x10);
                        return;
                    }
                    break;
            }
            break;
        case 1:
            switch (this->unk_74) {
                case 3:
                    this->unk_74 = 1;
                    super->timer = 80;
                    COLLISION_OFF(super);
                    PositionRelative(vaati, super, 0, Q_16_16(-16.0));
                    if (super->subtimer)
                        super->spriteSettings.draw = 0;
                    break;
                case 1:
                    if (--super->timer == 0) {
                        this->unk_74 = 0;
                        super->timer = 32;
                        super->subtimer = 4;
                    }
                    break;
            }
            break;
        case 2:
            /* ... */
            break;
        case 3:
            switch (this->unk_74) {
                case 0:
                    if (super->subtimer) {
                        if (--super->subtimer == 0) {
                            sub_08044DEC(this);
                            this->unk_74 = 1;
                            super->timer = 16;
                        }
                    }
                    break;
                case 1:
                    LinearMoveUpdate(super);
                    if (--super->timer == 0)
                        this->unk_74++;
                    break;
                case 2: {
                    u8 draw;

                    sub_08044E74(this, 1);
                    draw = super->spriteSettings.draw;
                    if (draw == 1) {
                        COLLISION_ON(super);
                    } else {
                        COLLISION_OFF(super);
                    }
                    vaati->timer++;
                    break;
                }
            }
            break;
    }
}

void sub_08044DEC(VaatiBallEntity* this) {
    u32 off;
    static const u8 gUnk_080D1628[4][4] = {
        { 16, 24, 0, 8 },
        { 8, 24, 0, 16 },
        { 0, 11, 21, 16 },
        { 16, 24, 0, 8 },
    };

    if (((VaatiBallEntity*)super->parent)->unk_80 > this->unk_79) {
        super->spriteSettings.draw = 1;
        super->health = -1;
    } else {
        super->spriteSettings.draw = 0;
    }
    COLLISION_OFF(super);
    this->unk_78 = 0;
    super->speed = 0x300;
    off = ((VaatiBallEntity*)super->parent)->unk_80 - 1;
    super->direction = gUnk_080D1628[off][this->unk_79];
    PositionRelative(super->parent, super, 0, Q_16_16(-16.0));
}

void sub_08044E74(VaatiBallEntity* this, u32 state) {
    super->action = 1;
    this->unk_74 = 0;

    switch (state) {
        case 2:
            super->action = 2;
            super->direction += DirectionWest;
            super->direction &= 0x3 | DirectionNorthWest;
            PositionRelative(super->parent, super, 0, Q_16_16(-16.0));
            super->speed = 12288;
            LinearMoveUpdate(super);
            super->direction += DirectionEast;
            super->direction &= 0x3 | DirectionNorthWest;
            super->speed = 1280;
            LinearMoveUpdate(super);
            break;
        case 1:
            super->direction = (super->direction + 8) & (0x3 | DirectionNorthWest);
            break;
        case 0:
            if (this->unk_78) {
                switch (super->timer) {
                    case 3 ... 4:
                        do {
                            LinearMoveUpdate(super);
                        } while (super->timer-- != 3);
                        break;
                    case 1:
                        super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
                        LinearMoveUpdate(super);
                        super->direction = (super->direction + 0x10) & (0x3 | DirectionNorthWest);
                        break;
                }
            } else {
                if (super->timer == 2) {
                    LinearMoveUpdate(super);
                }
            }
            break;
    }
    super->timer = 1;
    this->unk_78 = 0;
    super->speed = Q_8_8(5.0);
}
