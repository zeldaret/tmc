#include "global.h"
#include "enemy.h"
#include "player.h"
#include "room.h"
#include "coord.h"
#include "fileScreen.h"
#include "random.h"
#include "functions.h"

void (*const gUnk_080D1AFC[8])(Entity*);
void (*const gUnk_080D1B1C[7])(Entity*);
void (*const gUnk_080D1B38[5])(Entity*);
void (*const gUnk_080D1B4C[5])(Entity*);
const u16 gUnk_080D1B60[8];
const s16 gUnk_080D1B70[2]; // or 3?
const u16 gUnk_080D1B74[0x10];
void (*const gUnk_080D1B94[0xA])(Entity*);
const u16 gUnk_080D1BBC[2];
void (*const gUnk_080D1BC0[7])(Entity*);
void (*const gUnk_080D1BDC[5])(Entity*);
const s16 gUnk_080D1BF0[2];
void (*const gUnk_080D1BF4[3])(Entity*);
const s8 gUnk_080D1C00[4];
const u16 gUnk_080D1C04[0x20];
const u8 gUnk_080D1C44[0xC];
const u16 gUnk_080D1C50[8];
const u16 gUnk_080D1C60[8];

void sub_08046898(Entity*); // action 0
void sub_08046910(Entity*); // action 1
void sub_08046930(Entity*); // action 1 subAction 0
void sub_0804696C(Entity*); // action 1 subAction 1
void sub_080469CC(Entity*); // action 1 subAction 2
void sub_080469F4(Entity*); // action 1 subAction 3
void sub_08046A30(Entity*); // action 1 subAction 4
void sub_08046A54(Entity*); // action 1 subAction 5
void sub_08046A78(Entity*); // action 1 subAction 6
void sub_08046A9C(Entity*); // action 2
void sub_08046AE8(Entity*); // action 2 subAction 0
void sub_08046B18(Entity*); // action 2 subAction 1
void sub_08046B8C(Entity*); // action 2 subAction 2
void sub_08046C04(Entity*); // action 2 subAction 3
void sub_08046C88(Entity*); // action 2 subAction 4
void sub_08046CEC(Entity*); // action 3
void sub_08046D44(Entity*); // action 3 subAction 0
void sub_08046D98(Entity*); // action 3 subAction 1
void sub_08046E0C(Entity*); // action 3 subAction 2
void sub_08046E68(Entity*); // action 3 subAction 3
void sub_08046EF4(Entity*); // action 3 subAction 4
void sub_08046F64(Entity*); // action 4
void sub_08046FE8(Entity*); // action 4 subAction 0
void sub_0804702C(Entity*); // action 4 subAction 1
void sub_080470B4(Entity*); // action 4 subAction 2
void sub_08047140(Entity*); // action 4 subAction 3
void sub_0804717C(Entity*); // action 4 subAction 4
void sub_080471C8(Entity*); // action 4 subAction 5
void sub_0804723C(Entity*); // action 4 subAction 6
void sub_08047284(Entity*); // action 4 subAction 7
void sub_080472BC(Entity*); // action 4 subAction 8
void sub_08047310(Entity*); // action 4 subAction 9
void sub_0804736C(Entity*); // action 5
void sub_080473B8(Entity*); // action 5 subAction 0
void sub_080473F0(Entity*); // action 5 subAction 1
void sub_08047484(Entity*); // action 5 subAction 2
void sub_08047508(Entity*); // action 5 subAction 3
void sub_080475F4(Entity*); // action 5 subAction 4
void sub_0804763C(Entity*); // action 5 subAction 5
void sub_0804772C(Entity*); // action 5 subAction 6
void sub_08047778(Entity*); // action 6
void sub_08047798(Entity*); // action 6 subAction 0
void sub_080477F0(Entity*); // action 6 subAction 1
void sub_08047914(Entity*); // action 6 subAction 2
void sub_08047978(Entity*); // action 6 subAction 3
void sub_08047B08(Entity*); // action 6 subAction 4
void sub_08047B84(Entity*); // action 7
void sub_08047BA4(Entity*); // action 7 subAction 0
void sub_08047BF0(Entity*); // action 7 subAction 1, also called elsewhere
void sub_08047D24(Entity*); // action 7 subAction 2
void sub_08047D88(Entity*); //
void sub_08047DF0(Entity*, u32);
void sub_08047E48(Entity*); //
void sub_08047E58(Entity*); //
void sub_08047EA4(Entity*, u32);
u32 sub_08047F68(Entity*);  // distance this to player?
void sub_08048004(Entity*); //
void sub_0804813C(Entity*); //
u32 sub_08048158(u32);
void sub_08048178(Entity*, u32);

void (*const gUnk_080D1AFC[8])(Entity*) = { sub_08046898, sub_08046910, sub_08046A9C, sub_08046CEC,
                                            sub_08046F64, sub_0804736C, sub_08047778, sub_08047B84 };

void GyorgMale(Entity* this) {
    if (this->action) {
        this->spriteSettings.b.draw = this->field_0x7c.BYTES.byte1;
    }
    gUnk_080D1AFC[this->action](this);
    if (this->action != 7) {
        sub_0805EC9C(this, 0xaa, 0xaa, this->field_0x78.HWORD);
    }
    this->animationState = -(this->field_0x78.HWORD >> 8);
    sub_08048004(this);
    this->field_0x7c.BYTES.byte1 = this->spriteSettings.b.draw;
    if (this->spriteSettings.b.draw == 1 && (this->y.HALF.HI - gRoomControls.roomScrollY + 0x30) > 0x100u) {
        this->spriteSettings.b.draw = 0;
    }
    this->cutsceneBeh.HWORD = gPlayerEntity.x.HALF.HI;
    this->field_0x86.HWORD = gPlayerEntity.y.HALF.HI;
}

void sub_08046898(Entity* this) {
    Entity* tmp = sub_080A7EE0(0x22);
    u32 tmp2;
    if (!tmp)
        return;
    tmp->type = 1;
    tmp->parent = this;
    this->attachedEntity = tmp;
    this->action = 1;
    this->subAction = 0;
    this->spriteRendering.b0 = 3;
    this->spriteSettings.b.draw = 1;
    this->spriteOrientation.flipY = 2;
    this->spriteRendering.b3 = 2;
    this->field_0x3c |= 0x10;
    this->collisionLayer = 2;
    this->field_0x7c.BYTES.byte0 = 0;
    this->field_0x78.HWORD = 0;
    this->field_0x7a.HWORD = 0;
    this->field_0x70.HALF.HI = 0;
    InitAnimationForceUpdate(this, 0);
}

void (*const gUnk_080D1B1C[7])(Entity*) = { sub_08046930, sub_0804696C, sub_080469CC, sub_080469F4,
                                            sub_08046A30, sub_08046A54, sub_08046A78 };

void sub_08046910(Entity* this) {
    gUnk_080D1B1C[this->subAction](this);
    UpdateAnimationSingleFrame(this);
}

void sub_08046930(Entity* this) {
    if (this->type) {
        this->subAction = 5;
        this->direction = 0x20;
        this->speed = 0x280;
    }
    sub_08047D88(this);
    if (this->field_0x7c.BYTES.byte0 == 0)
        return;
    this->subAction = 1;
    this->actionDelay = 1;
    this->animationState = 0;
    this->direction = 0;
    this->speed = 0x280;
}

void sub_0804696C(Entity* this) {
    sub_08047E48(this);
    if (gRoomControls.roomOriginY + 0x130 > this->y.HALF.HI) {
        this->subAction = 2;
        this->direction = 0x80;
        this->speed = 0x100;
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
        SoundReq(BGM_BOSS_THEME);
    }
    if (this->actionDelay) {
        if (gRoomControls.roomOriginY + 0x258 > this->y.HALF.HI) {
            this->actionDelay = 0;
            SoundReq(SFX_APPARATE);
        }
    }
}

void sub_080469CC(Entity* this) {
    sub_08047E48(this);
    if (gRoomControls.roomOriginY + 0x210 < this->y.HALF.HI) {
        this->subAction = 3;
        this->direction = 0x90;
    }
}

void sub_080469F4(Entity* this) {
    sub_08047E48(this);
    if (gRoomControls.roomOriginY + 0x290 < this->y.HALF.HI) {
        this->subAction = 4;
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
    }
}

void sub_08046A30(Entity* this) {
    sub_08047D88(this);
    if (((Entity*)this->myHeap)->prev->field_0x6c.HWORD & 1) {
        this->action = 2;
        this->subAction = 0;
    }
}

void sub_08046A54(Entity* this) {
    sub_08047E48(this);
    if (gRoomControls.roomOriginX + 0x380 < this->x.HALF.HI) {
        this->subAction = 6;
    }
}

void sub_08046A78(Entity* this) {
    sub_08047D88(this);
    if (((Entity*)this->myHeap)->prev->field_0x6c.HWORD & 0x10) {
        this->action = 3;
        this->subAction = 0;
    }
}

void (*const gUnk_080D1B38[5])(Entity*) = { sub_08046AE8, sub_08046B18, sub_08046B8C, sub_08046C04, sub_08046C88 };

void sub_08046A9C(Entity* this) {
    if (this->animIndex == 1) {
        if (this->frames.all == 1) {
            InitAnimationForceUpdate(this, 0);
        }
    }
    gUnk_080D1B38[this->subAction](this);
    UpdateAnimationSingleFrame(this);
    if (this->field_0x7c.BYTES.byte0) {
        this->action = 6;
        this->subAction = 0;
    }
}

void sub_08046AE8(Entity* this) {
    this->subAction = 1;
    this->speed = 0x180;
    sub_08048178(this, ((Entity*)this->myHeap)->next->animationState >> 5);
    this->field_0x76.HWORD = this->direction << 8;
    sub_08047D88(this);
}

void sub_08046B18(Entity* this) {
    u32 tmp = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    if (tmp != this->direction) {
        if (((tmp - this->direction) & 0xFF) > 0x80) {
            this->field_0x76.HWORD -= 0x100;
        } else {
            this->field_0x76.HWORD += 0x100;
        }
        this->direction = this->field_0x76.HWORD >> 8;
    } else {
        this->subAction = 2;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_08046B8C(Entity* this) {
    if (sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, 4)) {
        this->subAction = 3;
        this->field_0x76.HWORD = this->direction << 8;
        this->field_0x80.HWORD = gRoomControls.roomOriginX + 0x200;
        this->field_0x82.HWORD = gRoomControls.roomOriginY + 0x210;
        sub_08047D88(this);
    } else {
        this->direction =
            sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
        sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    }
}

void sub_08046C04(Entity* this) {
    u32 tmp = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    if (tmp != this->direction) {
        if (((tmp - this->direction) & 0xFF) > 0x80) {
            this->field_0x76.HWORD -= 0x100;
        } else {
            this->field_0x76.HWORD += 0x100;
        }
        this->direction = this->field_0x76.HWORD >> 8;
    } else {
        this->subAction = 4;
        this->field_0x70.HALF.LO = ((tmp + 0x20) & 0xC0) >> 6;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_08046C88(Entity* this) {
    if (sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, 4)) {
        this->subAction = 1;
        sub_08048178(this, sub_08048158(this->field_0x70.HALF_U.LO));
        sub_08047D88(this);
    } else {
        this->direction =
            sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
        sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    }
}

void (*const gUnk_080D1B4C[5])(Entity*) = { sub_08046D44, sub_08046D98, sub_08046E0C, sub_08046E68, sub_08046EF4 };

void sub_08046CEC(Entity* this) {
    if (this->animIndex == 0) {
        if (this->frames.all == 1) {
            InitAnimationForceUpdate(this, 1);
        }
    }
    gUnk_080D1B4C[this->subAction](this);
    UpdateAnimationSingleFrame(this);
    if (((Entity*)this->myHeap)->prev->field_0x6c.HWORD & 2) {
        this->action = 2;
        this->subAction = 0;
        this->animationState = this->speed;
    }
}

const u16 gUnk_080D1B60[8] = { 0x200, 0x184, 0x28C, 0x210, 0x200, 0x29C, 0x174, 0x210 };

void sub_08046D44(Entity* this) {
    const u16* tmp;
    this->subAction = 1;
    this->speed = 0x200;
    tmp = gUnk_080D1B60 + (((Entity*)this->myHeap)->next->animationState >> 5);
    this->field_0x80.HWORD = tmp[0] + gRoomControls.roomOriginX;
    this->field_0x82.HWORD = tmp[1] + gRoomControls.roomOriginY;
    this->field_0x76.HWORD = this->direction << 8;
    sub_08047D88(this);
}

void sub_08046D98(Entity* this) {
    u32 tmp = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    if (tmp != this->direction) {
        if (((tmp - this->direction) & 0xFF) > 0x80) {
            this->field_0x76.HWORD -= 0x100;
        } else {
            this->field_0x76.HWORD += 0x100;
        }
        this->direction = this->field_0x76.HWORD >> 8;
    } else {
        this->subAction = 2;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_08046E0C(Entity* this) {
    if (sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, 4)) {
        this->subAction = 3;
        this->field_0x76.HWORD = this->direction << 8;
        sub_08047D88(this);
    } else {
        this->direction =
            sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
        sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    }
}

const s16 gUnk_080D1B70[2] = { 0x40, -0x40 };

void sub_08046E68(Entity* this) {
    u32 tmp = ((Entity*)this->myHeap)->next->animationState ^ 0x80;
    if (tmp != this->direction) {
        if (((tmp - this->direction) & 0xFF) > 0x80) {
            this->field_0x76.HWORD -= 0x100;
        } else {
            this->field_0x76.HWORD += 0x100;
        }
        this->direction = this->field_0x76.HWORD >> 8;
        sub_08047D88(this);
        sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
    } else {
        this->subAction = 4;
        this->actionDelay = 0x3F;
        this->field_0xf = 1;
        this->direction = (gUnk_080D1B70[Random() & 1] + tmp) & 0xC0;
        sub_08047D88(this);
    }
}

const u16 gUnk_080D1B74[0x10] = { 0x20,  0x40, 0x60, 0x80, 0xA0, 0xC0, 0xE0, 0x100,
                                  0x100, 0xE0, 0xC0, 0xA0, 0x80, 0x60, 0x40, 0x20 };

void sub_08046EF4(Entity* this) {
    if (--this->actionDelay == 0) {
        this->actionDelay = 0x7F;
        this->direction ^= 0x80;
    }
    this->speed = gUnk_080D1B74[(this->actionDelay >> 3) & 0xF];
    if ((--this->field_0xf & 0xFF) == 0) {
        Entity* tmp;
        this->field_0xf = (Random() & 0x38) + 0x78;
        tmp = sub_080A7EE0(0x23);
        if (tmp) {
            tmp->collisionLayer = 2;
            tmp->parent = this;
            UpdateSpriteForCollisionLayer(tmp);
        }
    }
    sub_08047E48(this);
}

void (*const gUnk_080D1B94[0xA])(Entity*) = { sub_08046FE8, sub_0804702C, sub_080470B4, sub_08047140, sub_0804717C,
                                              sub_080471C8, sub_0804723C, sub_08047284, sub_080472BC, sub_08047310 };

void sub_08046F64(Entity* this) {
    if (this->animIndex == 0) {
        if (this->frames.all == 1) {
            InitAnimationForceUpdate(this, 1);
        }
    }
    gUnk_080D1B94[this->subAction](this);
    UpdateAnimationSingleFrame(this);
    if (--this->field_0x7c.HALF.HI == 0) {
        Entity* tmp;
        this->field_0x7c.HALF.HI = 0x78;
        tmp = sub_080A7EE0(0x23);
        if (tmp) {
            tmp->collisionLayer = 2;
            tmp->parent = this;
            UpdateSpriteForCollisionLayer(tmp);
        }
    }
    if (((Entity*)this->myHeap)->prev->field_0x6c.HWORD & 4) {
        this->action = 5;
        this->subAction = 0;
    }
}

void sub_08046FE8(Entity* this) {
    this->subAction = 1;
    this->speed = 0x1c0;
    this->field_0x7c.HALF.HI = 0x1e;
    this->field_0x80.HWORD = gRoomControls.roomOriginX + 0x290;
    this->field_0x82.HWORD = gRoomControls.roomOriginY + 0x190;
    sub_08047D88(this);
}

void sub_0804702C(Entity* this) {
    u32 tmp = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    if (((this->direction - tmp + 2) & 0xFF) > 4) {
        if ((tmp - this->direction) & 0x80) {
            this->direction--;
        } else {
            this->direction++;
        }
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    if (sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, (this->speed >> 0x10) + 0x10)) {
        this->subAction = 2;
        this->field_0x76.HWORD = this->direction << 8;
        this->speed = 0x280;
    }
}

const u16 gUnk_080D1BBC[2] = { 0x1A0, 0xE0 };

void sub_080470B4(Entity* this) {
    u32 tmp = 0x40;
    if (tmp != this->direction) {
        if (((tmp - this->direction) & 0xFF) > 0x80) {
            this->field_0x76.HWORD -= 0x100;
        } else {
            this->field_0x76.HWORD += 0x100;
        }
        this->direction = this->field_0x76.HWORD >> 8;
        sub_08047D88(this);
        sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
    } else {
        this->subAction = 3;
        this->speed = 0x200;
        this->field_0x76.HWORD = this->direction << 8;
        this->field_0x74.HWORD = gUnk_080D1BBC[Random() & 1];
        sub_08047D88(this);
    }
}

void sub_08047140(Entity* this) {
    this->field_0x76.HWORD += this->field_0x74.HWORD;
    this->direction = this->field_0x76.HWORD >> 8;
    if (this->direction > 0xbf) {
        this->direction = 0xC0;
        this->subAction = 4;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_0804717C(Entity* this) {
    if (this->speed < 0x280) {
        this->speed += 8;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    if (gRoomControls.roomOriginX + 0x200 > this->x.HALF.HI) {
        this->subAction = 5;
    }
}

void sub_080471C8(Entity* this) {
    if (this->speed > 0x180) {
        this->speed -= 0x10;
    }
    if (this->direction < 0xe0) {
        this->direction++;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    if (gRoomControls.roomOriginY + 0x190 <= this->y.HALF.HI)
        return;
    if (this->field_0x74.HWORD > 0x100) {
        if (Random() & 1) {
            this->subAction = 6;
        } else {
            this->subAction = 0;
        }
    } else {
        this->subAction = 0;
    }
}

void sub_0804723C(Entity* this) {
    this->direction -= 2;
    if (this->direction < 0xc0) {
        this->subAction = 7;
        this->speed = 0x200;
        this->direction = 0xc0;
        this->field_0x76.HWORD = 0xc000;
    }
    sub_08047D88(this);
    sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_08047284(Entity* this) {
    this->field_0x76.HWORD -= 0xe0;
    this->direction = this->field_0x76.HWORD >> 8;
    if (this->direction < 0x40) {
        this->direction = 0x40;
        this->subAction = 8;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_080472BC(Entity* this) {
    if (this->speed < 0x300) {
        this->speed += 8;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    if (gRoomControls.roomOriginX + 0x2B0 >= this->x.HALF.HI)
        return;
    this->subAction = 9;
    this->field_0x76.HWORD = this->direction << 8;
}

void sub_08047310(Entity* this) {
    if (this->speed < 0x180) {
        this->speed -= 0x10;
    }
    this->field_0x76.HWORD -= 0x1D0;
    this->direction = this->field_0x76.HWORD >> 8;
    if ((u8)(this->direction + 0x7F) < 0x40) {
        this->direction = 0xC0;
        this->subAction = 4;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void (*const gUnk_080D1BC0[7])(Entity*) = { sub_080473B8, sub_080473F0, sub_08047484, sub_08047508,
                                            sub_080475F4, sub_0804763C, sub_0804772C };

void sub_0804736C(Entity* this) {
    if (this->animIndex == 1) {
        if (this->frames.all == 1) {
            InitAnimationForceUpdate(this, 0);
        }
    }
    gUnk_080D1BC0[this->subAction](this);
    UpdateAnimationSingleFrame(this);
    if (this->currentHealth == 0) {
        this->action = 7;
        this->subAction = 0;
    }
}

void sub_080473B8(Entity* this) {
    this->subAction = 1;
    this->speed = 0x120;
    this->field_0x80.HWORD = gRoomControls.roomOriginX + 0x200;
    this->field_0x82.HWORD = gRoomControls.roomOriginY + 0x1D0;
    sub_08047D88(this);
}

void sub_080473F0(Entity* this) {
    u32 tmp = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    if (((this->direction - tmp + 2) & 0xFF) > 4) {
        s32 tmp2 = tmp - this->direction;
        if (tmp2 & 0x80) {
            if (tmp2 < -1) {
                this->direction -= 2;
            } else {
                this->direction -= 1;
            }
        } else {
            if (tmp2 > 1) {
                this->direction += 2;
            } else {
                this->direction += 1;
            }
        }
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
    if (sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, 8)) {
        this->subAction = 2;
        this->field_0x76.HWORD = this->direction << 8;
        this->speed = 0x180;
    }
}

void sub_08047484(Entity* this) {
    u32 tmp = 0x40;
    if (tmp != this->direction) {
        if (((tmp - this->direction) & 0xFF) > 0x80) {
            this->field_0x76.HWORD -= 0x100;
        } else {
            this->field_0x76.HWORD += 0x100;
        }
        this->direction = this->field_0x76.HWORD >> 8;
        sub_08047D88(this);
        sub_08047EA4(this, ((0x100 - this->direction) & 0xFF) << 8);
    } else {
        this->subAction = 3;
        this->speed = 0x200;
        this->direction = 0x40;
        this->field_0x76.HWORD = 0x4000;
        this->field_0x74.HWORD = 0x180;
        this->field_0x7c.HALF.HI = 0xF0;
        sub_08047D88(this);
    }
}

void sub_08047508(Entity* this) {
    if (gRoomControls.roomOriginX + 0x1A0 < this->x.HALF.HI) {
        if (this->direction == 0) {
            if (gRoomControls.roomOriginY + 0x208 >= this->y.HALF.HI) {
                this->field_0x74.HWORD = -this->field_0x74.HWORD;
                this->field_0x76.HWORD += this->field_0x74.HWORD;
                this->direction = this->field_0x76.HWORD >> 8;
            }
        } else {
            s32 tmp = (s16)this->field_0x74.HWORD;
            if (tmp < 0) {
                this->field_0x76.HWORD += tmp;
                this->direction = this->field_0x76.HWORD >> 8;
                if (this->direction & 0x80) {
                    this->direction = 0;
                    this->field_0x76.HWORD = 0;
                }
            } else {
                if (this->direction < 0x40) {
                    this->field_0x76.HWORD += tmp;
                    this->direction = this->field_0x76.HWORD >> 8;
                    if (this->direction >= 0x40) {
                        this->direction = 0x40;
                    }
                }
            }
        }
    }
    sub_08047E48(this);
    if (gRoomControls.roomOriginX + 0x280 < this->x.HALF.HI) {
        this->subAction = 4;
        this->speed = 0x200;
        this->animationState = this->direction;
        this->field_0x76.HWORD = this->direction << 8;
    }
    if (--this->field_0x7c.HALF.HI == 0) {
        Entity* tmp = CreateEnemy(0x62, Random() & 3);
        if (tmp) {
            tmp->parent = this;
        }
    }
}

void sub_080475F4(Entity* this) {
    this->field_0x76.HWORD += 0x180;
    this->direction = this->field_0x76.HWORD >> 8;
    if (this->direction >= 0xc0) {
        this->direction = 0xc0;
        this->subAction = 5;
        this->speed = 0x200;
        this->field_0x7c.HALF.HI = 0x3c;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void sub_0804763C(Entity* this) {
    if (gRoomControls.roomOriginX + 0x1F0 > this->x.HALF.HI) {
        if (this->direction == 0) {
            if (gRoomControls.roomOriginY + 0x208 >= this->y.HALF.HI) {
                this->field_0x74.HWORD = -this->field_0x74.HWORD;
                this->field_0x76.HWORD += this->field_0x74.HWORD;
                this->direction = this->field_0x76.HWORD >> 8;
            }
        } else {
            s32 tmp = (s16)this->field_0x74.HWORD;
            if (tmp > 0) {
                this->field_0x76.HWORD += tmp;
                this->direction = this->field_0x76.HWORD >> 8;
                if ((this->direction & 0x80) == 0) {
                    this->direction = 0;
                    this->field_0x76.HWORD = 0;
                }
            } else {
                if (this->direction > 0xC0) {
                    this->field_0x76.HWORD += tmp;
                    this->direction = this->field_0x76.HWORD >> 8;
                    if (this->direction <= 0xC0) {
                        this->direction = 0xC0;
                    }
                }
            }
        }
    }
    sub_08047E48(this);
    if (gRoomControls.roomOriginX + 0x180 > this->x.HALF.HI) {
        this->subAction = 6;
        this->speed = 0x200;
        this->animationState = this->direction;
        this->field_0x76.HWORD = this->direction << 8;
    }
    if (--this->field_0x7c.HALF.HI == 0) {
        Entity* tmp = CreateEnemy(0x62, Random() & 3);
        if (tmp) {
            tmp->parent = this;
        }
    }
}

void sub_0804772C(Entity* this) {
    this->field_0x76.HWORD -= 0x180;
    this->direction = this->field_0x76.HWORD >> 8;
    if (this->direction <= 0x40) {
        this->direction = 0x40;
        this->subAction = 3;
        this->speed = 0x200;
        this->field_0x7c.HALF.HI = 0x1e;
    }
    sub_08047DF0(this, ((0x100 - this->direction) & 0xFF) << 8);
}

void (*const gUnk_080D1BDC[5])(Entity*) = { sub_08047798, sub_080477F0, sub_08047914, sub_08047978, sub_08047B08 };

void sub_08047778(Entity* this) {
    gUnk_080D1BDC[this->subAction](this);
    UpdateAnimationSingleFrame(this);
}

void sub_08047798(Entity* this) {
    this->subAction = 1;
    this->speed = 0x80;
    if (this->x.HALF.HI - gRoomControls.roomOriginX < 0x1F8) {
        this->field_0x80.HWORD = 0xa8;
    } else {
        this->field_0x80.HWORD = 0x348;
    }
    this->field_0x80.HWORD += gRoomControls.roomOriginX;
    this->field_0x82.HWORD = gRoomControls.roomOriginY + 0x348;
    sub_08047D88(this);
}

const s16 gUnk_080D1BF0[2] = { 0x80, -0x80 };

void sub_080477F0(Entity* this) {
    if (this->speed < 0x300) {
        this->speed += 8;
    }
    this->direction = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    sub_08047E48(this);
    if (!sub_0806FCB8(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x80)) {
        this->action = 2;
        this->subAction = 0;
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
        this->direction = this->animationState;
        return;
    }
    if (!sub_0806FCB8(this, gRoomControls.roomOriginX + 0x200, gRoomControls.roomOriginY + 0x210, 0x100)) {
        this->spriteOrientation.flipY = 3;
        this->spriteRendering.b3 = 3;
    }
    if (sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, 4)) {
        this->subAction = 2;
        this->field_0x76.HWORD = this->animationState << 8;
        this->field_0x74.HWORD = gUnk_080D1BF0[Random() & 1];
        if (((Entity*)this->myHeap)->prev->field_0x6c.HWORD & 1) {
            ((Entity*)this->myHeap)->next->field_0x78.HALF.HI =
                gRoomControls.roomOriginX + 0x200 > this->x.HALF.HI ? 0x81 : 0x83;
        } else {
            ((Entity*)this->myHeap)->next->field_0x78.HALF.HI = 0x80;
        }
    }
}

void sub_08047914(Entity* this) {
    sub_08047D88(this);
    if (this->animationState & 0x1F) {
        this->field_0x76.HWORD += this->field_0x74.HWORD;
        this->animationState = this->field_0x76.HWORD >> 8;
        sub_08047EA4(this, ((0x100 - this->animationState) & 0xFF) << 8);
    } else {
        this->subAction = 3;
        this->field_0x70.HALF.LO = 0x3C;
        this->field_0x7c.HALF.HI = ((this->type * 0xF) << 2) + 0x78;
        sub_080A1D70(((Entity*)this->myHeap)->prev, this->animationState);
    }
}

void sub_08047978(Entity* this) {
    sub_08047D88(this);
    if (this->currentHealth != 0) {
        if (--this->field_0x70.HALF_U.LO == 0) {
            this->field_0x70.HALF.HI = 1;
            if (this->type == 0) {
                this->field_0x70.HALF.LO = 0xB4;
            } else {
                this->field_0x70.HALF.LO = 0x168;
            }
        } else {
            if (this->field_0x70.HALF_U.LO == 0xF0) {
                sub_0804813C(this);
            }
        }
    } else {
        this->field_0x70.HALF.HI = 0;
    }
    if (--this->field_0x7c.HALF.HI == 0) {
        Entity* tmp;
        this->field_0x7c.HALF.HI = 0xF0;
        tmp = CreateEnemy(0x62, Random() & 3);
        if (tmp) {
            tmp->parent = this;
        }
    }
    if (!sub_0806FCB8(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x80)) {
        this->action = 2;
        this->subAction = 0;
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
        this->direction = this->animationState;
    }
    if (this->currentHealth != 0)
        return;
    if (this->attachedEntity->action != 1)
        return;
    this->subAction = 4;
    if (this->type == 0) {
        if ((((Entity*)this->myHeap)->next->animationState >> 6) == 1) {
            this->field_0x80.HWORD = gRoomControls.roomOriginX + 0x1C0;
            this->field_0x82.HWORD = gRoomControls.roomOriginY + 0x250;
        } else {
            this->field_0x80.HWORD = gRoomControls.roomOriginX + 0x240;
            this->field_0x82.HWORD = gRoomControls.roomOriginY + 0x250;
        }
    } else {
        if (gRoomControls.roomOriginX + 0x200 < this->x.HALF.HI) {
            this->field_0x80.HWORD = 0x190;
        } else {
            this->field_0x80.HWORD = 0x270;
        }
        this->field_0x80.HWORD += gRoomControls.roomOriginX;
        if (gRoomControls.roomOriginY + 0x210 < this->y.HALF.HI) {
            this->field_0x82.HWORD = 0x1A0;
        } else {
            this->field_0x82.HWORD = 0x280;
        }
        this->field_0x82.HWORD += gRoomControls.roomOriginY;
    }
}

void sub_08047B08(Entity* this) {
    sub_08047D88(this);
    this->direction = sub_080045DA(this->field_0x80.HWORD - this->x.HALF.HI, this->field_0x82.HWORD - this->y.HALF.HI);
    this->speed = 0x200;
    sub_08047E58(this);
    if (!sub_0806FCB8(this, this->field_0x80.HWORD, this->field_0x82.HWORD, 4))
        return;
    if (this->type == 0) {
        this->action = 7;
        this->subAction = 0;
        this->direction ^= 0x80;
    } else {
        this->action = 4;
        this->subAction = 0;
        this->spriteOrientation.flipY = 2;
        this->spriteRendering.b3 = 2;
        this->direction = this->animationState;
    }
}

void (*const gUnk_080D1BF4[3])(Entity*) = { sub_08047BA4, sub_08047BF0, sub_08047D24 };

void sub_08047B84(Entity* this) {
    gUnk_080D1BF4[this->subAction](this);
    UpdateAnimationSingleFrame(this);
}

void sub_08047BA4(Entity* this) {
    this->subAction = 1;
    this->actionDelay = 0x78;
    this->field_0xf = 0;
    if (gRoomControls.roomOriginX + 0x200 < this->x.HALF.HI) {
        this->field_0x76.HWORD = 0x78;
    } else {
        this->field_0x76.HWORD = 0x88;
    }
    SoundReq(SFX_1B5);
    sub_08047BF0(this);
}

const s8 gUnk_080D1C00[4] = { 0x40, -0x40, -0x40, 0x40 };

void sub_08047BF0(Entity* this) {
    Entity* tmp;
    this->direction = gUnk_080D1C00[this->actionDelay & 3];
    this->speed = 0x100;
    sub_08047E48(this);
    if (this->actionDelay == 0) {
        if ((this->field_0xf++ & 0xF) == 0) {
            tmp = CreateFx(this, 0x51, 0);
            if (tmp) {
                u32 rand = Random();
                tmp->x.HALF.HI += (rand & 0x1E) + 0xFFF1;
                rand >>= 8;
                tmp->y.HALF.HI += (rand & 0x1E) + 0xFFF1;
                tmp->spritePriority.b0 = 3;
                tmp->collisionLayer = 1;
                UpdateSpriteForCollisionLayer(tmp);
            }
        }
        this->direction = this->field_0x76.HWORD;
        this->speed = 0x140;
        sub_08047E48(this);
        if (this->y.HALF.HI > gRoomControls.roomOriginY + 0x270) {
            this->subAction = 2;
            this->field_0x7c.HALF.HI = 0xAA;
            SoundReq(SFX_12D);
            InitAnimationForceUpdate(this, 1);
        }
    } else {
        this->actionDelay--;
        if (this->actionDelay == 0x5A) {
            tmp = this->attachedEntity;
            tmp->spriteSettings.b.draw = 0;
            CreateFx(tmp, 0x51, 0);
        } else {
            if (this->actionDelay == 0x3C) {
                tmp = this->attachedEntity->attachedEntity;
                tmp->spriteSettings.b.draw = 0;
                CreateFx(tmp, 0x51, 0);
            } else {
                if (this->actionDelay == 0x1E) {
                    tmp = this->attachedEntity->attachedEntity->attachedEntity;
                    tmp->spriteSettings.b.draw = 0;
                    CreateFx(tmp, 0x51, 0);
                }
            }
        }
    }
    sub_0805EC9C(this, 0xAA, 0xAA, this->field_0x78.HWORD);
}

void sub_08047D24(Entity* this) {
    this->field_0x7c.HALF_U.HI += 8;
    if (this->field_0x7c.HALF_U.HI > 0x800) {
        if (this->type == 0) {
            ((u32*)this->myHeap)[2] = 0;
        } else {
            ((u32*)this->myHeap)[3] = 0;
        }
        this->myHeap = NULL;
        DeleteThisEntity();
    } else {
        if (this->field_0x7c.HALF_U.HI < 0x200) {
            sub_08047E48(this);
        } else {
            sub_08047E58(this);
        }
        sub_0805EC9C(this, this->field_0x7c.HALF_U.HI, this->field_0x7c.HALF_U.HI, this->field_0x78.HWORD);
    }
}

void sub_08047D88(Entity* this) {
    u32 tmp2;
    u32 tmp = this->field_0x7c.BYTES.byte0;
    tmp = ((tmp << 1) & 0x7F) | (tmp & 0x80);
    this->field_0x7c.BYTES.byte0 = tmp;
    tmp2 = this->spriteRendering.b3;
    if (tmp2 == 3 && gPlayerState.field_0x14 != 0)
        return;
    if (this->animIndex == 1)
        return;
    if (!sub_0806FCB8(this, gPlayerEntity.x.HALF.HI, gPlayerEntity.y.HALF.HI, 0x20))
        return;
    gPlayerState.field_0x14 = 1;
    if (gPlayerEntity.height.HALF.HI != 0)
        return;
    this->field_0x7c.BYTES.byte0 |= 1;
}

void sub_08047DF0(Entity* this, u32 unk1) {
    u32 oldX, oldY;
    sub_08047D88(this);
    sub_08047EA4(this, unk1);
    oldX = this->x.HALF.HI;
    oldY = this->y.HALF.HI;
    sub_0806F62C(this, this->speed, this->direction);
    if (this->field_0x7c.BYTES.byte0 & 1) {
        if (sub_08079F8C()) {
            gPlayerEntity.x.HALF.HI += this->x.HALF.HI - oldX;
            gPlayerEntity.y.HALF.HI += this->y.HALF.HI - oldY;
        }
    }
}

void sub_08047E48(Entity* this) {
    sub_08047D88(this);
    sub_08047E58(this);
}

void sub_08047E58(Entity* this) {
    u32 oldX, oldY;
    oldX = this->x.HALF.HI;
    oldY = this->y.HALF.HI;
    sub_0806F62C(this, this->speed, this->direction);
    if (this->field_0x7c.BYTES.byte0 & 1) {
        if (sub_08079F8C()) {
            gPlayerEntity.x.HALF.HI += this->x.HALF.HI - oldX;
            gPlayerEntity.y.HALF.HI += this->y.HALF.HI - oldY;
        }
    }
}

void sub_08047EA4(Entity* this, u32 unk1) {
    s32 tmp;
    u32 tmp2, dir;
    this->field_0x78.HWORD = unk1;
    tmp = this->field_0x78.HWORD - this->field_0x7a.HWORD;
    if (tmp + 0x100 < 0x200u)
        return;
    if (this->field_0x7c.BYTES.byte0 & 1) {
        tmp2 = sub_08047F68(this) << 8;
        dir = sub_080045DA(gPlayerEntity.x.HALF.HI - this->x.HALF.HI, gPlayerEntity.y.HALF.HI - this->y.HALF.HI);
        tmp = dir - (tmp / 256);
        tmp &= 0xFF;
        gPlayerEntity.x.WORD += (gSineTable[tmp] - gSineTable[dir]) * tmp2;
        gPlayerEntity.y.WORD -= (gSineTable[tmp + 0x40] - gSineTable[dir + 0x40]) * tmp2;
    }
    this->field_0x7a.HWORD = this->field_0x78.HWORD;
}

const u16 gUnk_080D1C04[0x20] = { 0,   1,   4,   9,   16,  25,  36,  49,  64,  81,  100, 121, 144, 169, 196, 225,
                                  256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961 };

u32 sub_08047F68(Entity* this) {
    s32 diffX, diffY;
    s32 distSquared, approx;
    diffX = gPlayerEntity.x.HALF.HI - this->x.HALF.HI;
    diffY = gPlayerEntity.y.HALF.HI - this->y.HALF.HI;
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
        approx -= 1;
    } else {
        approx += 1;
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

void sub_08048004(Entity* this) {
    if (this->action == 0)
        return;
    if (this->animIndex == 0) {
        this->flags &= ~0x80;
        if (gPlayerEntity.height.HALF.HI != 0)
            return;
        if (!sub_08079F8C())
            return;
        if (this->field_0x7c.BYTES.byte0 & 1) {
            u32 b = this->spriteRendering.b3;
            if (b == 3) {
                s32 posX = ((gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX) >> 3);
                s32 posY = ((gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY) >> 3);
                u16* tmp = (u16*)&gUnk_02019EE0;
                if (tmp[(posY << 7) + posX]) {
                    if (!(this->field_0x7c.BYTES.byte0 & 2)) {
                        this->field_0x7c.BYTES.byte0 |= 0x80;
                    }
                    if ((this->field_0x7c.BYTES.byte0 & 0x80))
                        return;
                    gPlayerEntity.x.HALF.HI = this->cutsceneBeh.HWORD;
                    gPlayerEntity.y.HALF.HI = this->field_0x86.HWORD;
                    return;
                }
            }
            this->field_0x7c.BYTES.byte0 &= ~0x80;
        } else {
            u32 b = this->spriteRendering.b3;
            if (b != 3) {
                if (sub_0806FCB8(&gPlayerEntity, this->x.HALF.HI, this->y.HALF.HI, 0x24)) {
                    if (!(this->field_0x7c.BYTES.byte0 & 2)) {
                        u32 tmp = sub_080045DA(gPlayerEntity.x.HALF.HI - this->x.HALF.HI,
                                               gPlayerEntity.y.HALF.HI - this->y.HALF.HI);
                        gPlayerEntity.x.WORD = this->x.WORD + (gSineTable[tmp] * 9216);
                        gPlayerEntity.y.WORD = this->y.WORD - (gSineTable[tmp + 0x40] * 9216);
                    }
                }
            }
            this->field_0x7c.BYTES.byte0 = 0;
        }
    } else {
        this->flags |= 0x80;
    }
}

void sub_0804813C(Entity* this) {
    u32 rand = Random();
    sub_080A1ED0(rand & 7, 1, (rand >> 8) & 3);
}

const u8 gUnk_080D1C44[0xC] = { 0, 2, 6, 0, 2, 4, 2, 4, 6, 0, 4, 6 };

u32 sub_08048158(u32 unk1) {
    return gUnk_080D1C44[(unk1 * 3) + ((signed)Random() % 3)];
}

const u16 gUnk_080D1C50[8] = { 0x200, 0x180, 0x2C0, 0x210, 0x200, 0x2A0, 0x140, 0x210 };

const u16 gUnk_080D1C60[8] = { 0x200, 0x150, 0x290, 0x210, 0x200, 0x2D0, 0x170, 0x210 };

void sub_08048178(Entity* this, u32 unk1) {
    const u16* tmp =
        ((((Entity*)this->myHeap)->next->animationState >> 6 & 1) ? gUnk_080D1C60 + unk1 : gUnk_080D1C50 + unk1);
    this->field_0x80.HWORD = *tmp + gRoomControls.roomOriginX;
    this->field_0x82.HWORD = *(tmp + 1) + gRoomControls.roomOriginY;
}
