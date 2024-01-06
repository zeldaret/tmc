/**
 * @file gyorgMale.c
 * @ingroup Enemies
 *
 * @brief Gyorg Male enemy
 */
#include "effects.h"
#include "enemy.h"
#include "enemy/gyorg.h"
#include "fileselect.h"
#include "functions.h"
#include "player.h"

// todo: wrong types
extern void sub_080A1D70(Entity*, u32);

void (*const gUnk_080D1AFC[8])(GyorgMaleEntity*);
void (*const gUnk_080D1B1C[7])(GyorgMaleEntity*);
void (*const gUnk_080D1B38[5])(GyorgMaleEntity*);
void (*const gUnk_080D1B4C[5])(GyorgMaleEntity*);
const u16 gUnk_080D1B60[8];
const s16 gUnk_080D1B70[2]; // or 3?
const u16 gUnk_080D1B74[0x10];
void (*const gUnk_080D1B94[0xA])(GyorgMaleEntity*);
const u16 gUnk_080D1BBC[2];
void (*const gUnk_080D1BC0[7])(GyorgMaleEntity*);
void (*const gUnk_080D1BDC[5])(GyorgMaleEntity*);
const s16 gUnk_080D1BF0[2];
void (*const gUnk_080D1BF4[3])(GyorgMaleEntity*);
const s8 gUnk_080D1C00[4];
const u16 gUnk_080D1C04[0x20];
const u8 gUnk_080D1C44[0xC];
const u16 gUnk_080D1C50[8];
const u16 gUnk_080D1C60[8];

void sub_08046898(GyorgMaleEntity*); // action 0
void sub_08046910(GyorgMaleEntity*); // action 1
void sub_08046930(GyorgMaleEntity*); // action 1 subAction 0
void sub_0804696C(GyorgMaleEntity*); // action 1 subAction 1
void sub_080469CC(GyorgMaleEntity*); // action 1 subAction 2
void sub_080469F4(GyorgMaleEntity*); // action 1 subAction 3
void sub_08046A30(GyorgMaleEntity*); // action 1 subAction 4
void sub_08046A54(GyorgMaleEntity*); // action 1 subAction 5
void sub_08046A78(GyorgMaleEntity*); // action 1 subAction 6
void sub_08046A9C(GyorgMaleEntity*); // action 2
void sub_08046AE8(GyorgMaleEntity*); // action 2 subAction 0
void sub_08046B18(GyorgMaleEntity*); // action 2 subAction 1
void sub_08046B8C(GyorgMaleEntity*); // action 2 subAction 2
void sub_08046C04(GyorgMaleEntity*); // action 2 subAction 3
void sub_08046C88(GyorgMaleEntity*); // action 2 subAction 4
void sub_08046CEC(GyorgMaleEntity*); // action 3
void sub_08046D44(GyorgMaleEntity*); // action 3 subAction 0
void sub_08046D98(GyorgMaleEntity*); // action 3 subAction 1
void sub_08046E0C(GyorgMaleEntity*); // action 3 subAction 2
void sub_08046E68(GyorgMaleEntity*); // action 3 subAction 3
void sub_08046EF4(GyorgMaleEntity*); // action 3 subAction 4
void sub_08046F64(GyorgMaleEntity*); // action 4
void sub_08046FE8(GyorgMaleEntity*); // action 4 subAction 0
void sub_0804702C(GyorgMaleEntity*); // action 4 subAction 1
void sub_080470B4(GyorgMaleEntity*); // action 4 subAction 2
void sub_08047140(GyorgMaleEntity*); // action 4 subAction 3
void sub_0804717C(GyorgMaleEntity*); // action 4 subAction 4
void sub_080471C8(GyorgMaleEntity*); // action 4 subAction 5
void sub_0804723C(GyorgMaleEntity*); // action 4 subAction 6
void sub_08047284(GyorgMaleEntity*); // action 4 subAction 7
void sub_080472BC(GyorgMaleEntity*); // action 4 subAction 8
void sub_08047310(GyorgMaleEntity*); // action 4 subAction 9
void sub_0804736C(GyorgMaleEntity*); // action 5
void sub_080473B8(GyorgMaleEntity*); // action 5 subAction 0
void sub_080473F0(GyorgMaleEntity*); // action 5 subAction 1
void sub_08047484(GyorgMaleEntity*); // action 5 subAction 2
void sub_08047508(GyorgMaleEntity*); // action 5 subAction 3
void sub_080475F4(GyorgMaleEntity*); // action 5 subAction 4
void sub_0804763C(GyorgMaleEntity*); // action 5 subAction 5
void sub_0804772C(GyorgMaleEntity*); // action 5 subAction 6
void sub_08047778(GyorgMaleEntity*); // action 6
void sub_08047798(GyorgMaleEntity*); // action 6 subAction 0
void sub_080477F0(GyorgMaleEntity*); // action 6 subAction 1
void sub_08047914(GyorgMaleEntity*); // action 6 subAction 2
void sub_08047978(GyorgMaleEntity*); // action 6 subAction 3
void sub_08047B08(GyorgMaleEntity*); // action 6 subAction 4
void sub_08047B84(GyorgMaleEntity*); // action 7
void sub_08047BA4(GyorgMaleEntity*); // action 7 subAction 0
void sub_08047BF0(GyorgMaleEntity*); // action 7 subAction 1, also called elsewhere
void sub_08047D24(GyorgMaleEntity*); // action 7 subAction 2
void sub_08047D88(GyorgMaleEntity*); //
void sub_08047DF0(GyorgMaleEntity*, u32);
void sub_08047E48(GyorgMaleEntity*); //
void sub_08047E58(GyorgMaleEntity*); //
void sub_08047EA4(GyorgMaleEntity*, u32);
u32 sub_08047F68(GyorgMaleEntity*);                  // distance this to player?
void sub_08048004(GyorgMaleEntity*);                 //
void GyorgMale_SpawnChildren(GyorgMaleEntity* this); //
u32 sub_08048158(u32);
void sub_08048178(GyorgMaleEntity*, u32);

void (*const gUnk_080D1AFC[8])(GyorgMaleEntity*) = { sub_08046898, sub_08046910, sub_08046A9C, sub_08046CEC,
                                                     sub_08046F64, sub_0804736C, sub_08047778, sub_08047B84 };

void GyorgMale(GyorgMaleEntity* this) {
    if (super->action) {
        super->spriteSettings.draw = this->unk_7d;
    }
    gUnk_080D1AFC[super->action](this);
    if (super->action != 7) {
        SetAffineInfo(super, 0xaa, 0xaa, this->unk_78);
    }
    super->animationState = -(this->unk_78 >> 8);
    sub_08048004(this);
    this->unk_7d = super->spriteSettings.draw;
    if (super->spriteSettings.draw == 1 && (super->y.HALF.HI - gRoomControls.scroll_y + 0x30) > 0x100u) {
        super->spriteSettings.draw = 0;
    }
    this->unk_84 = gPlayerEntity.base.x.HALF.HI;
    this->unk_86 = gPlayerEntity.base.y.HALF.HI;
}

void sub_08046898(GyorgMaleEntity* this) {
    Entity* tmp = CreateProjectile(GYORG_TAIL);
    u32 tmp2;
    if (!tmp)
        return;
    tmp->type = 1;
    tmp->parent = super;
    super->child = tmp;
    super->action = 1;
    super->subAction = 0;
    super->spriteRendering.b0 = 3;
    super->spriteSettings.draw = 1;
    super->spriteOrientation.flipY = 2;
    super->spriteRendering.b3 = 2;
    super->collisionFlags |= 0x10;
    super->collisionLayer = 2;
    this->unk_7c = 0;
    this->unk_78 = 0;
    this->unk_7a = 0;
    this->unk_72 = 0;
    InitAnimationForceUpdate(super, 0);
}

void (*const gUnk_080D1B1C[7])(GyorgMaleEntity*) = { sub_08046930, sub_0804696C, sub_080469CC, sub_080469F4,
                                                     sub_08046A30, sub_08046A54, sub_08046A78 };

void sub_08046910(GyorgMaleEntity* this) {
    gUnk_080D1B1C[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void sub_08046930(GyorgMaleEntity* this) {
    if (super->type) {
        super->subAction = 5;
        super->direction = 0x20;
#ifdef EU
        super->speed = 0x200;
#else
        super->speed = 0x280;
#endif
    }
    sub_08047D88(this);
    if (this->unk_7c == 0)
        return;
    super->subAction = 1;
    super->timer = 1;
    super->animationState = IdleNorth;
    super->direction = IdleNorth;
#ifdef EU
    super->speed = 0x200;
#else
    super->speed = 0x280;
#endif
}

void sub_0804696C(GyorgMaleEntity* this) {
    sub_08047E48(this);
    if (gRoomControls.origin_y + 0x130 > super->y.HALF.HI) {
        super->subAction = 2;
        super->direction = 0x80;
        super->speed = 0x100;
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
#ifndef EU
        SoundReq(BGM_BOSS_THEME);
#endif
    }
    if (super->timer) {
#ifdef EU
        if (gRoomControls.origin_y + 0x210 > super->y.HALF.HI) {
#else
        if (gRoomControls.origin_y + 0x258 > super->y.HALF.HI) {
#endif
            super->timer = 0;
            SoundReq(SFX_APPARATE);
        }
    }
}

void sub_080469CC(GyorgMaleEntity* this) {
    sub_08047E48(this);
    if (gRoomControls.origin_y + 0x210 < super->y.HALF.HI) {
        super->subAction = 3;
        super->direction = 0x90;
    }
}

void sub_080469F4(GyorgMaleEntity* this) {
    sub_08047E48(this);
    if (gRoomControls.origin_y + 0x290 < super->y.HALF.HI) {
        super->subAction = 4;
        super->spriteOrientation.flipY = 2;
        super->spriteRendering.b3 = 2;
    }
}

void sub_08046A30(GyorgMaleEntity* this) {
    sub_08047D88(this);
    if (((GyorgHeap*)super->myHeap)->boss->unk_6c & 1) {
        super->action = 2;
        super->subAction = 0;
    }
}

void sub_08046A54(GyorgMaleEntity* this) {
    sub_08047E48(this);
    if (gRoomControls.origin_x + 0x380 < super->x.HALF.HI) {
        super->subAction = 6;
    }
}

void sub_08046A78(GyorgMaleEntity* this) {
    sub_08047D88(this);
    if (((GyorgHeap*)super->myHeap)->boss->unk_6c & 0x10) {
        super->action = 3;
        super->subAction = 0;
    }
}

void (*const gUnk_080D1B38[5])(GyorgMaleEntity*) = { sub_08046AE8, sub_08046B18, sub_08046B8C, sub_08046C04,
                                                     sub_08046C88 };

void sub_08046A9C(GyorgMaleEntity* this) {
    if (super->animIndex == 1) {
        if (super->frame == 1) {
            InitAnimationForceUpdate(super, 0);
        }
    }
    gUnk_080D1B38[super->subAction](this);
    UpdateAnimationSingleFrame(super);
    if (this->unk_7c) {
        super->action = 6;
        super->subAction = 0;
    }
}

void sub_08046AE8(GyorgMaleEntity* this) {
    super->subAction = 1;
    super->speed = 0x180;
    sub_08048178(this, ((GyorgHeap*)super->myHeap)->female->base.animationState >> 5);
    this->unk_76 = super->direction << 8;
    sub_08047D88(this);
}

void sub_08046B18(GyorgMaleEntity* this) {
    u32 tmp = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0xFF) > 0x80) {
            this->unk_76 -= 0x100;
        } else {
            this->unk_76 += 0x100;
        }
        super->direction = this->unk_76 >> 8;
    } else {
        super->subAction = 2;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_08046B8C(GyorgMaleEntity* this) {
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 4)) {
        super->subAction = 3;
        this->unk_76 = super->direction << 8;
        this->unk_80 = gRoomControls.origin_x + 0x200;
        this->unk_82 = gRoomControls.origin_y + 0x210;
        sub_08047D88(this);
    } else {
        super->direction =
            CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
        sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    }
}

void sub_08046C04(GyorgMaleEntity* this) {
    u32 tmp = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0xFF) > 0x80) {
            this->unk_76 -= 0x100;
        } else {
            this->unk_76 += 0x100;
        }
        super->direction = this->unk_76 >> 8;
    } else {
        super->subAction = 4;
        this->unk_70 = ((tmp + 0x20) & 0xC0) >> 6;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_08046C88(GyorgMaleEntity* this) {
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 4)) {
        super->subAction = 1;
        sub_08048178(this, sub_08048158(this->unk_70));
        sub_08047D88(this);
    } else {
        super->direction =
            CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
        sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    }
}

void (*const gUnk_080D1B4C[5])(GyorgMaleEntity*) = { sub_08046D44, sub_08046D98, sub_08046E0C, sub_08046E68,
                                                     sub_08046EF4 };

void sub_08046CEC(GyorgMaleEntity* this) {
    if (super->animIndex == 0) {
        if (super->frame == 1) {
            InitAnimationForceUpdate(super, 1);
        }
    }
    gUnk_080D1B4C[super->subAction](this);
    UpdateAnimationSingleFrame(super);
    if (((GyorgHeap*)super->myHeap)->boss->unk_6c & 2) {
        super->action = 2;
        super->subAction = 0;
        super->animationState = super->speed;
    }
}

const u16 gUnk_080D1B60[8] = { 0x200, 0x184, 0x28C, 0x210, 0x200, 0x29C, 0x174, 0x210 };

void sub_08046D44(GyorgMaleEntity* this) {
    const u16* tmp;
    super->subAction = 1;
    super->speed = 0x200;
    tmp = gUnk_080D1B60 + (((Entity*)super->myHeap)->next->animationState >> 5);
    this->unk_80 = tmp[0] + gRoomControls.origin_x;
    this->unk_82 = tmp[1] + gRoomControls.origin_y;
    this->unk_76 = super->direction << 8;
    sub_08047D88(this);
}

void sub_08046D98(GyorgMaleEntity* this) {
    u32 tmp = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0xFF) > 0x80) {
            this->unk_76 -= 0x100;
        } else {
            this->unk_76 += 0x100;
        }
        super->direction = this->unk_76 >> 8;
    } else {
        super->subAction = 2;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_08046E0C(GyorgMaleEntity* this) {
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 4)) {
        super->subAction = 3;
        this->unk_76 = super->direction << 8;
        sub_08047D88(this);
    } else {
        super->direction =
            CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
        sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    }
}

const s16 gUnk_080D1B70[2] = { 0x40, -0x40 };

void sub_08046E68(GyorgMaleEntity* this) {
    u32 tmp = ((GyorgHeap*)super->myHeap)->female->base.animationState ^ 0x80;
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0xFF) > 0x80) {
            this->unk_76 -= 0x100;
        } else {
            this->unk_76 += 0x100;
        }
        super->direction = this->unk_76 >> 8;
        sub_08047D88(this);
        sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
    } else {
        super->subAction = 4;
        super->timer = 63;
        super->subtimer = 1;
        super->direction = (gUnk_080D1B70[Random() & 1] + tmp) & 0xC0;
        sub_08047D88(this);
    }
}

const u16 gUnk_080D1B74[0x10] = { 0x20,  0x40, 0x60, 0x80, 0xA0, 0xC0, 0xE0, 0x100,
                                  0x100, 0xE0, 0xC0, 0xA0, 0x80, 0x60, 0x40, 0x20 };

void sub_08046EF4(GyorgMaleEntity* this) {
    if (--super->timer == 0) {
        super->timer = 127;
        super->direction ^= 0x80;
    }
    super->speed = gUnk_080D1B74[(super->timer >> 3) & 0xF];
    if (--super->subtimer == 0) {
        Entity* tmp;
        super->subtimer = (Random() & 0x38) + 120;
        tmp = CreateProjectile(GYORG_MALE_ENERGY_PROJECTILE);
        if (tmp) {
            tmp->collisionLayer = 2;
            tmp->parent = super;
            UpdateSpriteForCollisionLayer(tmp);
        }
    }
    sub_08047E48(this);
}

void (*const gUnk_080D1B94[0xA])(GyorgMaleEntity*) = { sub_08046FE8, sub_0804702C, sub_080470B4, sub_08047140,
                                                       sub_0804717C, sub_080471C8, sub_0804723C, sub_08047284,
                                                       sub_080472BC, sub_08047310 };

void sub_08046F64(GyorgMaleEntity* this) {
    if (super->animIndex == 0) {
        if (super->frame == 1) {
            InitAnimationForceUpdate(super, 1);
        }
    }
    gUnk_080D1B94[super->subAction](this);
    UpdateAnimationSingleFrame(super);
    if (--this->unk_7e == 0) {
        Entity* tmp;
        this->unk_7e = 0x78;
        tmp = CreateProjectile(GYORG_MALE_ENERGY_PROJECTILE);
        if (tmp) {
            tmp->collisionLayer = 2;
            tmp->parent = super;
            UpdateSpriteForCollisionLayer(tmp);
        }
    }
    if (((GyorgHeap*)super->myHeap)->boss->unk_6c & 4) {
        super->action = 5;
        super->subAction = 0;
    }
}

void sub_08046FE8(GyorgMaleEntity* this) {
    super->subAction = 1;
    super->speed = 0x1c0;
    this->unk_7e = 0x1e;
    this->unk_80 = gRoomControls.origin_x + 0x290;
    this->unk_82 = gRoomControls.origin_y + 0x190;
    sub_08047D88(this);
}

void sub_0804702C(GyorgMaleEntity* this) {
    u32 tmp = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    if (((super->direction - tmp + 2) & 0xFF) > 4) {
        if ((tmp - super->direction) & 0x80) {
            super->direction--;
        } else {
            super->direction++;
        }
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, (super->speed >> 0x10) + 0x10)) {
        super->subAction = 2;
        this->unk_76 = super->direction << 8;
        super->speed = 0x280;
    }
}

const u16 gUnk_080D1BBC[2] = { 0x1A0, 0xE0 };

void sub_080470B4(GyorgMaleEntity* this) {
    u32 tmp = 0x40;
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0xFF) > 0x80) {
            this->unk_76 -= 0x100;
        } else {
            this->unk_76 += 0x100;
        }
        super->direction = this->unk_76 >> 8;
        sub_08047D88(this);
        sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
    } else {
        super->subAction = 3;
        super->speed = 0x200;
        this->unk_76 = super->direction << 8;
        this->unk_74 = gUnk_080D1BBC[Random() & 1];
        sub_08047D88(this);
    }
}

void sub_08047140(GyorgMaleEntity* this) {
    this->unk_76 += this->unk_74;
    super->direction = this->unk_76 >> 8;
    if (super->direction > 0xbf) {
        super->direction = 0xC0;
        super->subAction = 4;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_0804717C(GyorgMaleEntity* this) {
    if (super->speed < 0x280) {
        super->speed += 8;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    if (gRoomControls.origin_x + 0x200 > super->x.HALF.HI) {
        super->subAction = 5;
    }
}

void sub_080471C8(GyorgMaleEntity* this) {
    if (super->speed > 0x180) {
        super->speed -= 0x10;
    }
    if (super->direction < 0xe0) {
        super->direction++;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    if (gRoomControls.origin_y + 0x190 <= super->y.HALF.HI)
        return;
    if (this->unk_74 > 0x100) {
        if (Random() & 1) {
            super->subAction = 6;
        } else {
            super->subAction = 0;
        }
    } else {
        super->subAction = 0;
    }
}

void sub_0804723C(GyorgMaleEntity* this) {
    super->direction -= 2;
    if (super->direction < 0xc0) {
        super->subAction = 7;
        super->speed = 0x200;
        super->direction = 0xc0;
        this->unk_76 = 0xc000;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_08047284(GyorgMaleEntity* this) {
    this->unk_76 -= 0xe0;
    super->direction = this->unk_76 >> 8;
    if (super->direction < 0x40) {
        super->direction = 0x40;
        super->subAction = 8;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_080472BC(GyorgMaleEntity* this) {
    if (super->speed < 0x300) {
        super->speed += 8;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    if (gRoomControls.origin_x + 0x2B0 >= super->x.HALF.HI)
        return;
    super->subAction = 9;
    this->unk_76 = super->direction << 8;
}

void sub_08047310(GyorgMaleEntity* this) {
    if (super->speed < 0x180) {
        super->speed -= 0x10;
    }
    this->unk_76 -= 0x1D0;
    super->direction = this->unk_76 >> 8;
    if ((u8)(super->direction + 0x7F) < 0x40) {
        super->direction = 0xC0;
        super->subAction = 4;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void (*const gUnk_080D1BC0[7])(GyorgMaleEntity*) = { sub_080473B8, sub_080473F0, sub_08047484, sub_08047508,
                                                     sub_080475F4, sub_0804763C, sub_0804772C };

void sub_0804736C(GyorgMaleEntity* this) {
    if (super->animIndex == 1) {
        if (super->frame == 1) {
            InitAnimationForceUpdate(super, 0);
        }
    }
    gUnk_080D1BC0[super->subAction](this);
    UpdateAnimationSingleFrame(super);
    if (super->health == 0) {
        super->action = 7;
        super->subAction = 0;
    }
}

void sub_080473B8(GyorgMaleEntity* this) {
    super->subAction = 1;
    super->speed = 0x120;
    this->unk_80 = gRoomControls.origin_x + 0x200;
    this->unk_82 = gRoomControls.origin_y + 0x1D0;
    sub_08047D88(this);
}

void sub_080473F0(GyorgMaleEntity* this) {
    u32 tmp = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    if (((super->direction - tmp + 2) & 0xFF) > 4) {
        s32 tmp2 = tmp - super->direction;
        if (tmp2 & 0x80) {
            if (tmp2 < -1) {
                super->direction -= 2;
            } else {
                super->direction--;
            }
        } else {
            if (tmp2 > 1) {
                super->direction += 2;
            } else {
                super->direction++;
            }
        }
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 8)) {
        super->subAction = 2;
        this->unk_76 = super->direction << 8;
        super->speed = 0x180;
    }
}

void sub_08047484(GyorgMaleEntity* this) {
    u32 tmp = 0x40;
    if (tmp != super->direction) {
        if (((tmp - super->direction) & 0xFF) > 0x80) {
            this->unk_76 -= 0x100;
        } else {
            this->unk_76 += 0x100;
        }
        super->direction = this->unk_76 >> 8;
        sub_08047D88(this);
        sub_08047EA4(this, ((0x100 - super->direction) & 0xFF) << 8);
    } else {
        super->subAction = 3;
        super->speed = 0x200;
        super->direction = 0x40;
        this->unk_76 = 0x4000;
        this->unk_74 = 0x180;
        this->unk_7e = 0xF0;
        sub_08047D88(this);
    }
}

void sub_08047508(GyorgMaleEntity* this) {
    if (gRoomControls.origin_x + 0x1A0 < super->x.HALF.HI) {
        if (super->direction == 0) {
            if (gRoomControls.origin_y + 0x208 >= super->y.HALF.HI) {
                this->unk_74 = -this->unk_74;
                this->unk_76 += this->unk_74;
                super->direction = this->unk_76 >> 8;
            }
        } else {
            s32 tmp = (s16)this->unk_74;
            if (tmp < 0) {
                this->unk_76 += tmp;
                super->direction = this->unk_76 >> 8;
                if (super->direction & 0x80) {
                    super->direction = 0;
                    this->unk_76 = 0;
                }
            } else {
                if (super->direction < 0x40) {
                    this->unk_76 += tmp;
                    super->direction = this->unk_76 >> 8;
                    if (super->direction >= 0x40) {
                        super->direction = 0x40;
                    }
                }
            }
        }
    }
    sub_08047E48(this);
    if (gRoomControls.origin_x + 0x280 < super->x.HALF.HI) {
        super->subAction = 4;
        super->speed = 0x200;
        super->animationState = super->direction;
        this->unk_76 = super->direction << 8;
    }
    if (--this->unk_7e == 0) {
        Entity* tmp = CreateEnemy(GYORG_MALE_EYE, Random() & 3);
        if (tmp) {
            tmp->parent = super;
        }
    }
}

void sub_080475F4(GyorgMaleEntity* this) {
    this->unk_76 += 0x180;
    super->direction = this->unk_76 >> 8;
    if (super->direction >= 0xc0) {
        super->direction = 0xc0;
        super->subAction = 5;
        super->speed = 0x200;
        this->unk_7e = 0x3c;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void sub_0804763C(GyorgMaleEntity* this) {
    if (gRoomControls.origin_x + 0x1F0 > super->x.HALF.HI) {
        if (super->direction == 0) {
            if (gRoomControls.origin_y + 0x208 >= super->y.HALF.HI) {
                this->unk_74 = -this->unk_74;
                this->unk_76 += this->unk_74;
                super->direction = this->unk_76 >> 8;
            }
        } else {
            s32 tmp = (s16)this->unk_74;
            if (tmp > 0) {
                this->unk_76 += tmp;
                super->direction = this->unk_76 >> 8;
                if ((super->direction & 0x80) == 0) {
                    super->direction = 0;
                    this->unk_76 = 0;
                }
            } else {
                if (super->direction > 0xC0) {
                    this->unk_76 += tmp;
                    super->direction = this->unk_76 >> 8;
                    if (super->direction <= 0xC0) {
                        super->direction = 0xC0;
                    }
                }
            }
        }
    }
    sub_08047E48(this);
    if (gRoomControls.origin_x + 0x180 > super->x.HALF.HI) {
        super->subAction = 6;
        super->speed = 0x200;
        super->animationState = super->direction;
        this->unk_76 = super->direction << 8;
    }
    if (--this->unk_7e == 0) {
        Entity* tmp = CreateEnemy(GYORG_MALE_EYE, Random() & 3);
        if (tmp) {
            tmp->parent = super;
        }
    }
}

void sub_0804772C(GyorgMaleEntity* this) {
    this->unk_76 -= 0x180;
    super->direction = this->unk_76 >> 8;
    if (super->direction <= 0x40) {
        super->direction = 0x40;
        super->subAction = 3;
        super->speed = 0x200;
        this->unk_7e = 0x1e;
    }
    sub_08047DF0(this, ((0x100 - super->direction) & 0xFF) << 8);
}

void (*const gUnk_080D1BDC[5])(GyorgMaleEntity*) = { sub_08047798, sub_080477F0, sub_08047914, sub_08047978,
                                                     sub_08047B08 };

void sub_08047778(GyorgMaleEntity* this) {
    gUnk_080D1BDC[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void sub_08047798(GyorgMaleEntity* this) {
    super->subAction = 1;
    super->speed = 0x80;
    if (super->x.HALF.HI - gRoomControls.origin_x < 0x1F8) {
        this->unk_80 = 0xa8;
    } else {
        this->unk_80 = 0x348;
    }
    this->unk_80 += gRoomControls.origin_x;
    this->unk_82 = gRoomControls.origin_y + 0x348;
    sub_08047D88(this);
}

const s16 gUnk_080D1BF0[2] = { 0x80, -0x80 };

void sub_080477F0(GyorgMaleEntity* this) {
    if (super->speed < 0x300) {
        super->speed += 8;
    }
    super->direction = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    sub_08047E48(this);
    if (!EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x80)) {
        super->action = 2;
        super->subAction = 0;
        super->spriteOrientation.flipY = 2;
        super->spriteRendering.b3 = 2;
        super->direction = super->animationState;
        return;
    }
    if (!EntityWithinDistance(super, gRoomControls.origin_x + 0x200, gRoomControls.origin_y + 0x210, 0x100)) {
        super->spriteOrientation.flipY = 3;
        super->spriteRendering.b3 = 3;
    }
    if (EntityWithinDistance(super, this->unk_80, this->unk_82, 4)) {
        super->subAction = 2;
        this->unk_76 = super->animationState << 8;
        this->unk_74 = gUnk_080D1BF0[Random() & 1];
        if (((GyorgHeap*)super->myHeap)->boss->unk_6c & 1) {
            ((GyorgHeap*)super->myHeap)->female->unk_79 =
                gRoomControls.origin_x + 0x200 > super->x.HALF.HI ? 0x81 : 0x83;
        } else {
            ((GyorgHeap*)super->myHeap)->female->unk_79 = 0x80;
        }
    }
}

void sub_08047914(GyorgMaleEntity* this) {
    sub_08047D88(this);
    if (super->animationState & 0x1F) {
        this->unk_76 += this->unk_74;
        super->animationState = this->unk_76 >> 8;
        sub_08047EA4(this, ((0x100 - super->animationState) & 0xFF) << 8);
    } else {
        super->subAction = 3;
        this->unk_70 = 0x3C;
        this->unk_7e = ((super->type * 0xF) << 2) + 0x78;
        sub_080A1D70(&(((GyorgHeap*)super->myHeap)->boss->base), super->animationState);
    }
}

void sub_08047978(GyorgMaleEntity* this) {
    sub_08047D88(this);
    if (super->health != 0) {
        if (--this->unk_70 == 0) {
            this->unk_72 = 1;
            if (super->type == 0) {
                this->unk_70 = 0xB4;
            } else {
                this->unk_70 = 0x168;
            }
        } else {
            if (this->unk_70 == 0xF0) {
                GyorgMale_SpawnChildren(this);
            }
        }
    } else {
        this->unk_72 = 0;
    }
    if (--this->unk_7e == 0) {
        Entity* tmp;
        this->unk_7e = 0xF0;
        tmp = CreateEnemy(GYORG_MALE_EYE, Random() & 3);
        if (tmp) {
            tmp->parent = super;
        }
    }
    if (!EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x80)) {
        super->action = 2;
        super->subAction = 0;
        super->spriteOrientation.flipY = 2;
        super->spriteRendering.b3 = 2;
        super->direction = super->animationState;
    }
    if (super->health != 0)
        return;
    if (super->child->action != 1)
        return;
    super->subAction = 4;
    if (super->type == 0) {
        if ((((GyorgHeap*)super->myHeap)->female->base.animationState >> 6) == 1) {
            this->unk_80 = gRoomControls.origin_x + 0x1C0;
            this->unk_82 = gRoomControls.origin_y + 0x250;
        } else {
            this->unk_80 = gRoomControls.origin_x + 0x240;
            this->unk_82 = gRoomControls.origin_y + 0x250;
        }
    } else {
        if (gRoomControls.origin_x + 0x200 < super->x.HALF.HI) {
            this->unk_80 = 0x190;
        } else {
            this->unk_80 = 0x270;
        }
        this->unk_80 += gRoomControls.origin_x;
        if (gRoomControls.origin_y + 0x210 < super->y.HALF.HI) {
            this->unk_82 = 0x1A0;
        } else {
            this->unk_82 = 0x280;
        }
        this->unk_82 += gRoomControls.origin_y;
    }
}

void sub_08047B08(GyorgMaleEntity* this) {
    sub_08047D88(this);
    super->direction = CalculateDirectionFromOffsets(this->unk_80 - super->x.HALF.HI, this->unk_82 - super->y.HALF.HI);
    super->speed = 0x200;
    sub_08047E58(this);
    if (!EntityWithinDistance(super, this->unk_80, this->unk_82, 4))
        return;
    if (super->type == 0) {
        super->action = 7;
        super->subAction = 0;
        super->direction ^= 0x80;
    } else {
        super->action = 4;
        super->subAction = 0;
        super->spriteOrientation.flipY = 2;
        super->spriteRendering.b3 = 2;
        super->direction = super->animationState;
    }
}

void (*const gUnk_080D1BF4[3])(GyorgMaleEntity*) = { sub_08047BA4, sub_08047BF0, sub_08047D24 };

void sub_08047B84(GyorgMaleEntity* this) {
    gUnk_080D1BF4[super->subAction](this);
    UpdateAnimationSingleFrame(super);
}

void sub_08047BA4(GyorgMaleEntity* this) {
    super->subAction = 1;
    super->timer = 120;
    super->subtimer = 0;
    if (gRoomControls.origin_x + 0x200 < super->x.HALF.HI) {
        this->unk_76 = 0x78;
    } else {
        this->unk_76 = 0x88;
    }
    SoundReq(SFX_1B5);
    sub_08047BF0(this);
}

const s8 gUnk_080D1C00[4] = { 0x40, -0x40, -0x40, 0x40 };

void sub_08047BF0(GyorgMaleEntity* this) {
    Entity* tmp;
    super->direction = gUnk_080D1C00[super->timer & 3];
    super->speed = 0x100;
    sub_08047E48(this);
    if (super->timer == 0) {
        if ((super->subtimer++ & 0xF) == 0) {
            tmp = CreateFx(super, FX_GIANT_EXPLOSION4, 0);
            if (tmp) {
                u32 rand = Random();
                tmp->x.HALF.HI += (rand & 0x1E) - 15;
                rand >>= 8;
                tmp->y.HALF.HI += (rand & 0x1E) - 15;
                tmp->spritePriority.b0 = 3;
                tmp->collisionLayer = 1;
                UpdateSpriteForCollisionLayer(tmp);
            }
        }
        super->direction = this->unk_76;
        super->speed = 0x140;
        sub_08047E48(this);
        if (super->y.HALF.HI > gRoomControls.origin_y + 0x270) {
            super->subAction = 2;
            this->unk_7e = 0xAA;
            SoundReq(SFX_12D);
            InitAnimationForceUpdate(super, 1);
        }
    } else {
        super->timer--;
        if (super->timer == 90) {
            tmp = super->child;
            tmp->spriteSettings.draw = 0;
            CreateFx(tmp, FX_GIANT_EXPLOSION4, 0);
        } else {
            if (super->timer == 60) {
                tmp = super->child->child;
                tmp->spriteSettings.draw = 0;
                CreateFx(tmp, FX_GIANT_EXPLOSION4, 0);
            } else {
                if (super->timer == 30) {
                    tmp = super->child->child->child;
                    tmp->spriteSettings.draw = 0;
                    CreateFx(tmp, FX_GIANT_EXPLOSION4, 0);
                }
            }
        }
    }
    SetAffineInfo(super, 0xAA, 0xAA, this->unk_78);
}

void sub_08047D24(GyorgMaleEntity* this) {
    this->unk_7e += 8;
    if (this->unk_7e > 0x800) {
        if (super->type == 0) {
            ((u32*)super->myHeap)[2] = 0;
        } else {
            ((u32*)super->myHeap)[3] = 0;
        }
        super->myHeap = NULL;
        DeleteThisEntity();
    } else {
        if (this->unk_7e < 0x200) {
            sub_08047E48(this);
        } else {
            sub_08047E58(this);
        }
        SetAffineInfo(super, this->unk_7e, this->unk_7e, this->unk_78);
    }
}

void sub_08047D88(GyorgMaleEntity* this) {
    u32 tmp2;
    u32 tmp = this->unk_7c;
    tmp = ((tmp << 1) & 0x7F) | (tmp & 0x80);
    this->unk_7c = tmp;
    tmp2 = super->spriteRendering.b3;
    if (tmp2 == 3 && gPlayerState.field_0x14 != 0)
        return;
    if (super->animIndex == 1)
        return;
    if (!EntityWithinDistance(super, gPlayerEntity.base.x.HALF.HI, gPlayerEntity.base.y.HALF.HI, 0x20))
        return;
    gPlayerState.field_0x14 = 1;
    if (gPlayerEntity.base.z.HALF.HI != 0)
        return;
    this->unk_7c |= 1;
}

void sub_08047DF0(GyorgMaleEntity* this, u32 unk1) {
    u32 oldX, oldY;
    sub_08047D88(this);
    sub_08047EA4(this, unk1);
    oldX = super->x.HALF.HI;
    oldY = super->y.HALF.HI;
    LinearMoveAngle(super, super->speed, super->direction);
    if (this->unk_7c & 1) {
        if (PlayerCanBeMoved()) {
            gPlayerEntity.base.x.HALF.HI += super->x.HALF.HI - oldX;
            gPlayerEntity.base.y.HALF.HI += super->y.HALF.HI - oldY;
        }
    }
}

void sub_08047E48(GyorgMaleEntity* this) {
    sub_08047D88(this);
    sub_08047E58(this);
}

void sub_08047E58(GyorgMaleEntity* this) {
    u32 oldX, oldY;
    oldX = super->x.HALF.HI;
    oldY = super->y.HALF.HI;
    LinearMoveAngle(super, super->speed, super->direction);
    if (this->unk_7c & 1) {
        if (PlayerCanBeMoved()) {
            gPlayerEntity.base.x.HALF.HI += super->x.HALF.HI - oldX;
            gPlayerEntity.base.y.HALF.HI += super->y.HALF.HI - oldY;
        }
    }
}

void sub_08047EA4(GyorgMaleEntity* this, u32 unk1) {
    s32 tmp;
    u32 tmp2, dir;
    this->unk_78 = unk1;
    tmp = this->unk_78 - this->unk_7a;
    if (tmp + 0x100 < 0x200u)
        return;
    if (this->unk_7c & 1) {
        tmp2 = sub_08047F68(this) << 8;
        dir = CalculateDirectionFromOffsets(gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI,

                                            gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI);
        tmp = dir - (tmp / 256);
        tmp &= 0xFF;
        gPlayerEntity.base.x.WORD += (gSineTable[tmp] - gSineTable[dir]) * tmp2;
        gPlayerEntity.base.y.WORD -= (gSineTable[tmp + 0x40] - gSineTable[dir + 0x40]) * tmp2;
    }
    this->unk_7a = this->unk_78;
}

const u16 gUnk_080D1C04[0x20] = { 0,   1,   4,   9,   16,  25,  36,  49,  64,  81,  100, 121, 144, 169, 196, 225,
                                  256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961 };

u32 sub_08047F68(GyorgMaleEntity* this) {
    s32 diffX, diffY;
    s32 distSquared, approx;
    diffX = gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI;
    diffY = gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI;
    distSquared = (diffX * diffX) + (diffY * diffY);
    if (distSquared == 0x400)
        return 0x20;
    if (distSquared < gUnk_080D1C04[0x10]) {
        approx = 0x8;
    } else {
        approx = 0x18;
    }
    if (distSquared < gUnk_080D1C04[approx]) {
        approx -= 4;
    } else {
        approx += 4;
    }
    if (distSquared < gUnk_080D1C04[approx]) {
        approx -= 2;
    } else {
        approx += 2;
    }
    if (distSquared < gUnk_080D1C04[approx]) {
        approx--;
    } else {
        approx++;
    }
    if (distSquared < gUnk_080D1C04[approx]) {
        s32 tmp = gUnk_080D1C04[approx - 1];
        tmp += (gUnk_080D1C04[approx] - tmp) / 2;
        if (distSquared <= tmp) {
            approx = approx - 1;
        }
    }
    return approx;
}

void sub_08048004(GyorgMaleEntity* this) {
    if (super->action == 0)
        return;
    if (super->animIndex == 0) {
        COLLISION_OFF(super);
        if (gPlayerEntity.base.z.HALF.HI != 0)
            return;
        if (!PlayerCanBeMoved())
            return;
        if (this->unk_7c & 1) {
            u32 b = super->spriteRendering.b3;
            if (b == 3) {
                s32 posX = ((gPlayerEntity.base.x.HALF.HI - gRoomControls.origin_x) >> 3);
                s32 posY = ((gPlayerEntity.base.y.HALF.HI - gRoomControls.origin_y) >> 3);
                u16* tmp = (u16*)&gMapDataBottomSpecial;
                if (tmp[(posY << 7) + posX]) {
                    if (!(this->unk_7c & 2)) {
                        this->unk_7c |= 0x80;
                    }
                    if ((this->unk_7c & 0x80))
                        return;
                    gPlayerEntity.base.x.HALF.HI = this->unk_84;
                    gPlayerEntity.base.y.HALF.HI = this->unk_86;
                    return;
                }
            }
            this->unk_7c &= ~0x80;
        } else {
            u32 b = super->spriteRendering.b3;
            if (b != 3) {
                if (EntityWithinDistance(&gPlayerEntity.base, super->x.HALF.HI, super->y.HALF.HI, 0x24)) {
                    if (!(this->unk_7c & 2)) {
                        u32 tmp = CalculateDirectionFromOffsets(gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI,
                                                                gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI);
                        gPlayerEntity.base.x.WORD = super->x.WORD + (gSineTable[tmp] * 9216);
                        gPlayerEntity.base.y.WORD = super->y.WORD - (gSineTable[tmp + 0x40] * 9216);
                    }
                }
            }
            this->unk_7c = 0;
        }
    } else {
        COLLISION_ON(super);
    }
}

void GyorgMale_SpawnChildren(GyorgMaleEntity* this) {
    u32 rand = Random();
    GyorgBossObject_SpawnChildren(rand & 7, TRUE, (rand >> 8) & 3);
}

const u8 gUnk_080D1C44[0xC] = { 0, 2, 6, 0, 2, 4, 2, 4, 6, 0, 4, 6 };

u32 sub_08048158(u32 unk1) {
    return gUnk_080D1C44[(unk1 * 3) + ((signed)Random() % 3)];
}

const u16 gUnk_080D1C50[8] = { 0x200, 0x180, 0x2C0, 0x210, 0x200, 0x2A0, 0x140, 0x210 };

const u16 gUnk_080D1C60[8] = { 0x200, 0x150, 0x290, 0x210, 0x200, 0x2D0, 0x170, 0x210 };

void sub_08048178(GyorgMaleEntity* this, u32 unk1) {
    const u16* tmp = ((((GyorgHeap*)super->myHeap)->female->base.animationState >> 6 & 1) ? gUnk_080D1C60 + unk1
                                                                                          : gUnk_080D1C50 + unk1);
    this->unk_80 = *tmp + gRoomControls.origin_x;
    this->unk_82 = *(tmp + 1) + gRoomControls.origin_y;
}
