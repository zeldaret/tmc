/**
 * @file mazaalHead.c
 * @ingroup Enemies
 *
 * @brief Mazaal Head enemy
 */

#include "enemy.h"
#include "object.h"
#include "functions.h"
#include "screen.h"

extern void UnloadOBJPalette(Entity*);

void sub_0803499C(Entity*);
void sub_08034420(Entity*);
void sub_08034830(Entity*);
u32 sub_080349D8(Entity*);
void sub_0803442C(Entity*, u32);
void sub_0803443C(Entity*);
void sub_080347B4(Entity*);
void sub_0803473C(Entity*);
u32 sub_08034A10(Entity*);
void sub_080347FC(Entity*);
void sub_080344BC(Entity*);
void sub_08034498(Entity*);
void sub_08034474(Entity*);
void sub_080345A0(Entity*);
void sub_080345B8(Entity*);
void sub_08034638(Entity*);
void sub_08034618(Entity*);
void sub_08034658(Entity*);
void sub_0803467C(Entity*);
u32 sub_080348A4(Entity*, Entity*, u32);
void sub_08034C00(Entity*);

void MazaalHead_OnTick(Entity* this);
void MazaalHead_OnCollision(Entity* this);
void MazaalHead_OnGrabbed(Entity* this);
void sub_08033F1C(Entity* this);
void sub_08034A84(Entity* this);
void sub_08034AC4(Entity* this);
void sub_08034BC8(Entity* this);
void sub_08033F3C(Entity* this);
void sub_08033FFC(Entity* this);
void sub_0803414C(Entity* this);
void sub_080341B8(Entity* this);
void sub_080341D0(Entity* this);
void sub_080341F4(Entity* this);
void sub_08034210(Entity* this);
void sub_08034240(Entity* this);
void sub_08034274(Entity* this);
void sub_080342A0(Entity* this);
void sub_080342B4(Entity* this);
void sub_080342C8(Entity* this);
void sub_08034348(Entity* this);
void sub_0803438C(Entity* this);
void sub_08034578(Entity* this);
void sub_080344E0(Entity* this);
void sub_0803451C(Entity* this);
void sub_08034558(Entity* this);
void sub_080346A0(Entity* this);
void sub_080345D0(Entity* this);
void sub_080346C8(Entity* this);
void sub_08034AEC(Entity* this);
void sub_08034B0C(Entity* this);
void sub_08034B38(Entity* this);
void sub_08034BA0(Entity* this);

void (*const MazaalHead_Functions[])(Entity*) = {
    MazaalHead_OnTick, MazaalHead_OnCollision, GenericKnockback, GenericDeath, GenericConfused, MazaalHead_OnGrabbed,
};
void (*const gUnk_080CECA0[])(Entity*) = {
    sub_08033F1C, sub_08034A84, sub_08034AC4, sub_08034AC4, sub_08034BC8,
};
void (*const gUnk_080CECB4[])(Entity*) = {
    sub_08033F3C, sub_08033FFC, sub_0803414C, sub_080341B8, sub_080341D0, sub_080341F4, sub_08034210,
    sub_08034240, sub_08034274, sub_080342A0, sub_080342B4, sub_080342C8, sub_08034348, sub_0803438C,
};
const u8 gUnk_080CECEC[] = { 0xff, 0xfe, 0xff, 0x00, 0x01, 0x02, 0x01, 0x00 };
const s8 gUnk_080CECF4[] = { -2, 0x01, -8, -4, -0x14, 0x08, 0x0e, -0x10, -6, 0x0c, 0x12, -2, 0x00, 0x00 };
const u8 gUnk_080CED02[] = { FX_GIANT_EXPLOSION, FX_GIANT_EXPLOSION, FX_GIANT_EXPLOSION2, FX_GIANT_EXPLOSION3 };
const u8 gUnk_080CED06[] = { 0xff, 0x00, 0x01, 0x00, 0x00, 0x00 };
void (*const gUnk_080CED0C[])(Entity*) = {
    sub_08034578, sub_080344E0, sub_0803451C, sub_080344E0, sub_08034558, sub_080344E0, sub_0803451C, sub_080346A0,
};
void (*const gUnk_080CED2C[])(Entity*) = {
    sub_08034578, sub_080345D0, sub_0803451C, sub_080346A0, sub_08034558, sub_080345D0, sub_08034558, sub_080346A0,
};
void (*const gUnk_080CED4C[])(Entity*) = {
    sub_08034578, sub_080345D0, sub_080346C8, sub_080346A0, sub_08034558, sub_080346C8, sub_080346A0, sub_080346C8,
};
const s8 gUnk_080CED6C[] = { -0xa, -0xb, -0xc, -0xb, -0xa, -0x9, -0x8, -0x9 };
void (*const gUnk_080CED74[])(Entity*) = {
    sub_08034AEC,
    sub_08034B0C,
    sub_08034B38,
    sub_08034BA0,
};
const s8 gUnk_080CED84[] = { 0x0d, 0x10, -0xd, 0x10 };
const ScreenTransitionData gUnk_080CED88 = { 1, { 0, 0, 0, 0 }, 0x88, 0xf8, 0, 0x5a, 1, 1, 0, 0, 0 };
const ScreenTransitionData gUnk_080CED9C = { 1, { 0, 0, 0, 0 }, 0x88, 0xf8, 0, 0x5a, 0, 1, 0, 0, 0 };

void MazaalHead(Entity* this) {
    MazaalHead_Functions[GetNextFunction(this)](this);
}

void MazaalHead_OnTick(Entity* this) {
    gUnk_080CECA0[this->type](this);
}

void MazaalHead_OnCollision(Entity* this) {
    EnemyFunctionHandlerAfterCollision(this, MazaalHead_Functions);
}

void MazaalHead_OnGrabbed(Entity* this) {
}

void sub_08033F1C(Entity* this) {
    gUnk_080CECB4[this->action](this);
    sub_0803499C(this);
}

void sub_08033F3C(Entity* this) {
    Entity* pEVar1;
    Entity* pEVar2;

    if (gEntCount < 0x43) {
        if (gRoomTransition.field_0x38 != 0) {
            sub_08034420(this);
            this->field_0x80.HALF.HI = 1;
        } else {
            this->action = 1;
        }
        this->spriteSettings.draw = 1;
        this->field_0x6c.HALF.HI |= 1;
        this->field_0x80.HALF.LO = 0;
        InitializeAnimation(this, 0);
        pEVar1 = CreateEnemy(MAZAAL_HEAD, 1);
        pEVar1->parent = this;
        pEVar2 = CreateObject(OBJECT_7E, 0, 0);
        pEVar2->parent = this;
        if (gRoomTransition.field_0x39 == 0) {
            this->action = 0xd;
            this->subAction = 0;
            this->timer = 252;
            COLLISION_OFF(this);
        } else {
            pEVar2 = CreateEnemy(MAZAAL_BRACELET, 0);
            pEVar2->parent = this;
            *(Entity**)&pEVar2->field_0x78 = this;
            *(Entity**)&this->field_0x74 = pEVar2;
            pEVar2 = CreateEnemy(MAZAAL_BRACELET, 1);
            pEVar2->parent = this;
            *(Entity**)&pEVar2->field_0x78 = pEVar1;
            *(Entity**)&this->field_0x78 = pEVar2;
            CreateEnemy(MAZAAL_HEAD, 4)->parent = this;
        }
    }
}

void sub_08033FFC(Entity* this) {
    u16 temp;
    Entity* entity;

    switch (this->subAction) {
        case 0:
        case 2:
        case 5:
            break;
        case 1:
            this->subAction = 2;
            this->timer = 30;
            entity = *(Entity**)&(*(Entity**)&this->field_0x74)->field_0x74;
            entity->subAction = 1;
            entity = *(Entity**)&(*(Entity**)&this->field_0x78)->field_0x74;
            entity->subAction = 1;
            UnloadOBJPalette(this);
            break;
        case 3:
            if (--this->timer == 0) {
                this->subAction = 4;
            }
            break;
        case 4:
            this->z.WORD -= Q_16_16(0.5);
            if (this->z.HALF.HI == -10) {
                this->subAction = 5;
                this->field_0x80.HALF.HI = 1;
            }
            break;
        case 6:
            this->subAction = 7;
            this->timer = 0;
            entity = *(Entity**)&this->field_0x74;
            entity->subAction = 1;
            entity = *(Entity**)&entity->field_0x74;
            entity->subAction = 4;
            entity = *(Entity**)&this->field_0x78;
            entity->subAction = 1;
            entity = *(Entity**)&entity->field_0x74;
            entity->subAction = 4;
            gScreen.controls.layerFXControl = 0xf40;
            gScreen.controls.alphaBlend = 0x1000;
            break;
        case 7:
            temp = ++this->timer >> 1;
            gScreen.controls.alphaBlend = (temp) | (0x10 - (temp)) * 0x100;
            if (this->timer > 31) {
                this->subAction = 8;
                entity = *(Entity**)&this->field_0x74;
                entity->subAction = 3;
                entity = *(Entity**)&entity->field_0x74;
                entity->subAction = 6;
                entity = *(Entity**)&this->field_0x78;
                entity->subAction = 3;
                entity = *(Entity**)&entity->field_0x74;
                entity->subAction = 6;
                this->spriteRendering.alphaBlend = 0;
                gScreen.controls.layerFXControl = 0;
            }
            break;
        default:
            if (((*(Entity**)&this->field_0x74)->flags & ENT_COLLIDE) != 0) {
                gRoomControls.camera_target = &gPlayerEntity;
                sub_08034420(this);
                gPlayerState.controlMode = CONTROL_1;
                ResetPlayerAnimationAndAction();
                SoundReq(BGM_BOSS_THEME);
            }
    }
}

void sub_0803414C(Entity* this) {
    u32 x, y;

    x = gRoomControls.origin_x + 0xb8;
    y = gRoomControls.origin_y + 0x48;

    if (this->x.HALF.HI - x + 1 < 3 && this->y.HALF.HI - y + 1 < 3) {
        if (sub_080349D8(this)) {
            if (this->subAction != 0) {
                this->subAction = 0;
                sub_0803442C(this, 0x1e);
            } else {
                sub_0803442C(this, 0x5a);
            }
        }
    } else {
        this->direction = CalculateDirectionTo(this->x.HALF.HI, this->y.HALF.HI, x, y);
        LinearMoveUpdate(this);
    }
}

void sub_080341B8(Entity* this) {
    if (sub_080349D8(this) != 0) {
        sub_0803442C(this, 0x2d);
    }
}

void sub_080341D0(Entity* this) {
    if (((this->field_0x80.HALF.LO & 3) != 3) && (--this->timer == 0)) {
        sub_0803443C(this);
    }
}

void sub_080341F4(Entity* this) {
    sub_080347B4(this);
    if (sub_080349D8(this) != 0) {
        sub_08034420(this);
    }
}

void sub_08034210(Entity* this) {
    sub_080347B4(this);
    if ((this->field_0x7c.BYTES.byte1 & 0x80) != 0 && sub_080349D8(this) != 0) {
        sub_08034420(this);
    } else {
        sub_08034830(this);
    }
}

void sub_08034240(Entity* this) {
    if ((this->field_0x7c.HALF_U.HI != 0) && (--this->field_0x7c.HALF_U.HI < 0x96)) {
        sub_0803473C(this);
    }
    if (sub_080349D8(this) != 0) {
        sub_08034420(this);
    }
}

void sub_08034274(Entity* this) {
    if (sub_080349D8(this) != 0) {
        sub_08034420(this);
    } else {
        sub_0803473C(this);
        if (sub_08034A10(this) != 0) {
            sub_080347FC(this);
        }
    }
}

void sub_080342A0(Entity* this) {
    if (sub_080349D8(this) != 0) {
        sub_08034420(this);
    }
}

void sub_080342B4(Entity* this) {
    if (this->field_0x7c.HALF_U.HI == 0xff) {
        sub_08034420(this);
    }
}

void sub_080342C8(Entity* this) {
    if (this->timer != 0) {
        if (--this->timer == 0) {
            SoundReq(SFX_115);
        }
        this->spriteOffsetX = gUnk_080CECEC[this->timer >> 1 & 7];
    } else {
        this->spriteOffsetX = 0;
        if (GravityUpdate(this, Q_8_8(32.0)) == 0) {
            this->action = 0xc;
            this->field_0x7c.HALF.HI = 0x708;
            this->field_0x7c.BYTES.byte1 = 0;
            this->field_0x80.HALF.HI = 0;
            InitScreenShake(0x1e, 0);
            SoundReq(SFX_1A1);
        }
    }
}

void sub_08034348(Entity* this) {
    if (this->field_0x7c.HALF_U.HI != 0) {
        this->field_0x7c.HALF.HI--;
    } else {
        if (this->z.HALF.HI > -10) {
            this->z.HALF.HI--;
        } else {
            if (sub_080349D8(this) != 0) {
                this->field_0x80.HALF.HI = 1;
                sub_08034420(this);
            }
        }
    }
}

void sub_0803438C(Entity* this) {
    Entity* pEVar3;
    const s8* pVar;

    if (this->timer == 0) {
        this->health = 0;
    } else {
        this->timer--;
        if (this->timer > 192) {
            this->spriteOffsetX = gUnk_080CED06[this->timer & 3];
        } else {
            if ((this->timer & 0x1f) == 0) {
                pEVar3 = CreateFx(this, gUnk_080CED02[Random() & 3], 0);
                if (pEVar3 != NULL) {
                    pVar = &gUnk_080CECF4[this->timer >> 4];
                    pEVar3->x.HALF.HI = *pVar + pEVar3->x.HALF.HI;
                    pVar++;
                    pEVar3->y.HALF.HI = *pVar + pEVar3->y.HALF.HI;
                    pEVar3->spritePriority.b0 = 3;
                }
            }
        }
    }
}

void sub_08034420(Entity* this) {
    this->action = 2;
    this->field_0x7c.BYTES.byte1 = 3;
}

void sub_0803442C(Entity* this, u32 unk) {
    this->action = 4;
    this->timer = unk;
    this->field_0x7c.BYTES.byte1 = 3;
}

void sub_0803443C(Entity* this) {
    this->field_0x7c.BYTES.byte1 = 0;
    if (gRoomTransition.field_0x39 < 0x1f) {
        sub_080344BC(this);
    } else {
        if (gRoomTransition.field_0x39 < 0x3d) {
            sub_08034498(this);
        } else {
            sub_08034474(this);
        }
    }
}

void sub_08034474(Entity* this) {
    gUnk_080CED0C[this->field_0x7c.BYTES.byte0](this);
    this->field_0x7c.BYTES.byte0 = (this->field_0x7c.BYTES.byte0 + 1) & 7;
}

void sub_08034498(Entity* this) {
    gUnk_080CED2C[this->field_0x7c.BYTES.byte0](this);
    this->field_0x7c.BYTES.byte0 = (this->field_0x7c.BYTES.byte0 + 1) & 7;
}

void sub_080344BC(Entity* this) {
    gUnk_080CED4C[this->field_0x7c.BYTES.byte0](this);
    this->field_0x7c.BYTES.byte0 = (this->field_0x7c.BYTES.byte0 + 1) & 7;
}

void sub_080344E0(Entity* this) {
    if ((this->field_0x80.HALF.LO & 5) != 0) {
        sub_080345A0(this);
    } else {
        if ((this->field_0x80.HALF.LO & 10) != 0 || (Random() & 1) != 0) {
            sub_080345B8(this);
        } else {
            sub_080345A0(this);
        }
    }
}

void sub_0803451C(Entity* this) {
    if ((this->field_0x80.HALF.LO & 5) != 0) {
        sub_08034618(this);
    } else if ((this->field_0x80.HALF.LO & 10) != 0) {
        sub_08034638(this);
    } else if ((Random() & 1) != 0) {
        sub_08034618(this);
    } else {
        sub_08034638(this);
    }
}

void sub_08034558(Entity* this) {
    if ((Random() & 1) != 0) {
        sub_08034658(this);
    } else {
        sub_0803467C(this);
    }
}

void sub_08034578(Entity* this) {
    this->action = 3;
    this->field_0x7c.BYTES.byte1 = 0;
    sub_080348A4(this, *(Entity**)&this->field_0x74, 0);
    sub_080348A4(this, *(Entity**)&this->field_0x78, 0);
}

void sub_080345A0(Entity* this) {
    this->action = 5;
    this->field_0x7c.BYTES.byte1 = 1;
    sub_080348A4(this, *(Entity**)&this->field_0x78, 1);
}

void sub_080345B8(Entity* this) {
    this->action = 5;
    this->field_0x7c.BYTES.byte1 = 2;
    sub_080348A4(this, *(Entity**)&this->field_0x74, 1);
}

void sub_080345D0(Entity* this) {
    this->action = 6;
    if ((Random() & 1) != 0) {
        if (sub_080348A4(this, *(Entity**)&this->field_0x74, 2) == 0) {
            sub_080348A4(this, *(Entity**)&this->field_0x78, 2);
        }
    } else {
        if (sub_080348A4(this, *(Entity**)&this->field_0x78, 2) == 0) {
            sub_080348A4(this, *(Entity**)&this->field_0x74, 2);
        }
    }
}

void sub_08034618(Entity* this) {
    this->action = 7;
    this->field_0x7c.BYTES.byte1 = 1;
    this->field_0x7c.HALF.HI = 0xb4;
    sub_080348A4(this, *(Entity**)&this->field_0x78, 3);
}

void sub_08034638(Entity* this) {
    this->action = 7;
    this->field_0x7c.BYTES.byte1 = 2;
    this->field_0x7c.HALF.HI = 0xb4;
    sub_080348A4(this, *(Entity**)&this->field_0x74, 3);
}

void sub_08034658(Entity* this) {
    this->action = 8;
    this->field_0x7c.BYTES.byte1 = 0;
    if (sub_080348A4(this, *(Entity**)&this->field_0x78, 4) == 0) {
        this->field_0x7c.BYTES.byte1 |= 0x40;
    }
}

void sub_0803467C(Entity* this) {
    this->action = 8;
    this->field_0x7c.BYTES.byte1 = 0;
    if (sub_080348A4(this, *(Entity**)&this->field_0x74, 4) == 0) {
        this->field_0x7c.BYTES.byte1 |= 0x40;
    }
}

void sub_080346A0(Entity* this) {
    this->action = 9;
    this->field_0x7c.BYTES.byte1 = 0;
    sub_080348A4(this, *(Entity**)&this->field_0x74, 6);
    sub_080348A4(this, *(Entity**)&this->field_0x78, 6);
}

void sub_080346C8(Entity* this) {
    Entity* hand;

    this->action = 10;
    this->field_0x7c.HALF.HI = 0;
    if ((Random() & 1) != 0) {
        if (sub_080348A4(this, *(Entity**)&this->field_0x74, 8) != 0) {
            hand = *(Entity**)&this->field_0x78;
            sub_080348A4(this, hand, 7);
        } else {
            sub_080348A4(this, *(Entity**)&this->field_0x74, 7);
            sub_080348A4(this, *(Entity**)&this->field_0x78, 8);
        }
    } else {
        if (sub_080348A4(this, *(Entity**)&this->field_0x78, 8) != 0) {
            hand = *(Entity**)&this->field_0x74;
            sub_080348A4(this, hand, 7);
        } else {
            sub_080348A4(this, *(Entity**)&this->field_0x74, 8);
            sub_080348A4(this, *(Entity**)&this->field_0x78, 7);
        }
    }
}

void sub_0803473C(Entity* this) {
    u32 playerX;
    u32 roomX;

    if ((this->field_0x7c.BYTES.byte1 & 0x10) != 0) {
        if (0x28 < (*(Entity**)&this->field_0x74)->action) {
            return;
        }
        playerX = gPlayerEntity.x.HALF.HI - 0x60;
    } else {
        if (0x28 < (*(Entity**)&this->field_0x78)->action) {
            return;
        }
        playerX = gPlayerEntity.x.HALF.HI + 0x60;
    }
    roomX = gRoomControls.origin_x;
    if (playerX - 4 > this->x.HALF.HI) {
        if (roomX + 0xe0 < this->x.HALF.HI) {
            return;
        }
        this->direction = 8;
    } else {
        if (playerX + 4 >= this->x.HALF.HI) {
            return;
        }
        if (roomX + 0x90 > this->x.HALF.HI) {
            return;
        }
        this->direction = 0x18;
    }
    LinearMoveUpdate(this);
}

void sub_080347B4(Entity* this) {
    u32 playerX = gPlayerEntity.x.HALF.HI;
    u32 roomX = gRoomControls.origin_x;
    if (playerX - 4 > this->x.HALF.HI) {
        if (roomX + 0xe0 < this->x.HALF.HI) {
            return;
        }
        this->direction = 8;
    } else {
        if (playerX + 4 >= this->x.HALF.HI) {
            return;
        }
        if (roomX + 0x90 > this->x.HALF.HI) {
            return;
        }
        this->direction = 0x18;
    }
    LinearMoveUpdate(this);
}

void sub_080347FC(Entity* this) {
    if ((this->field_0x7c.BYTES.byte1 & 0x10) != 0) {
        sub_080348A4(this, *(Entity**)&this->field_0x78, 5);
    } else {
        sub_080348A4(this, *(Entity**)&this->field_0x74, 5);
    }
    this->field_0x7c.BYTES.byte1 |= 0x20;
}

void sub_08034830(Entity* this) {
    if (sub_080349D8(this) != 0) {
        this->field_0x7c.BYTES.byte1 = 0x80;
        sub_080345D0(this);
    } else {
        if (sub_08034A10(this) != 0) {
            if ((this->field_0x80.HALF.LO & 0xf) != 0) {
                if (sub_080349D8(this) != 0) {
                    sub_08034420(this);
                }
            } else {
                this->field_0x7c.BYTES.byte1 |= 0x20;
                if ((this->field_0x7c.BYTES.byte1 & 0x10) != 0) {
                    sub_080348A4(this, *(Entity**)&this->field_0x78, 2);
                } else {
                    sub_080348A4(this, *(Entity**)&this->field_0x74, 2);
                }
            }
        }
    }
}

u32 sub_080348A4(Entity* this, Entity* hand_, u32 unk) {
    u32 bVar1;

    if (hand_->type == 0) {
        bVar1 = 5;
        this->field_0x7c.BYTES.byte1 |= 0x10;
    } else {
        bVar1 = 10;
    }

    if (this->field_0x80.HALF.LO & bVar1) {
        this->field_0x7c.BYTES.byte1 |= (hand_->type == 0) ? 1 : 2;
        return 0;
    } else {
        switch (unk) {
            case 0:
                hand_->action = 3;
                break;
            case 1:
                hand_->action = 4;
                hand_->field_0x7c.BYTES.byte0 = 3;
                break;
            case 2:
            case 4:
                hand_->action = 4;
                hand_->field_0x7c.BYTES.byte0 = 1;
                break;
            case 3:
                hand_->action = 0xf;
                hand_->field_0x7c.HALF.HI = 0xb4;
                break;
            case 5:
                hand_->action = 0xf;
                hand_->field_0x7c.HALF.HI = 1;
                break;
            case 6:
                hand_->action = 0x1e;
                break;
            case 7:
                hand_->action = 0x1b;
                hand_->flags = hand_->flags & ~ENT_COLLIDE;
                InitializeAnimation(hand_, 5);
                break;
            case 8:
                bVar1 = hand_->type + 2;
                hand_ = CreateEnemy(MAZAAL_HEAD, bVar1);
                if (hand_ != NULL) {
                    hand_->parent = this;
                }
                break;
            default:
                break;
        }
        return 1;
    }
}

void sub_0803499C(Entity* this) {
    if (((this->field_0x80.HALF.LO & 0xc) != 0xc) && (this->field_0x80.HALF.HI != 0)) {
        this->z.HALF.HI = gUnk_080CED6C[(++this->subtimer >> 4) & 7];
    }
}

u32 sub_080349D8(Entity* this) {
    // this feels like a switch, but I couldn't get it to match as one
    if ((this->field_0x7c.BYTES.byte1 & 3) == 3) {
        return 1;
    } else {
        if ((this->field_0x7c.BYTES.byte1 & 3) == 1) {
            if (this->field_0x80.HALF.LO & 10)
                return 1;
        } else {
            if ((this->field_0x7c.BYTES.byte1 & 3) == 2) {
                if (this->field_0x80.HALF.LO & 5)
                    return 1;
            }
        }
        return 0;
    }
}

u32 sub_08034A10(Entity* this) {
    if ((this->field_0x7c.BYTES.byte1 & 0x60) != 0x40) {
        if ((this->field_0x7c.BYTES.byte1 & 0x10) != 0) {
            if ((this->field_0x80.HALF.LO & 5) != 0) {
                this->field_0x7c.BYTES.byte1 |= 0x40;
            }
            if (((this->field_0x80.HALF.LO & 10) != 0) && ((this->field_0x7c.BYTES.byte1 & 3) == 1)) {
                return 1;
            }
        } else {
            if ((this->field_0x80.HALF.LO & 10) != 0) {
                this->field_0x7c.BYTES.byte1 |= 0x40;
            }
            if ((this->field_0x80.HALF.LO & 5) == 0) {
                return 0;
            }
            if ((this->field_0x7c.BYTES.byte1 & 3) == 2) {
                return 1;
            }
        }
    } else {
        return 1;
    }
    return 0;
}

void sub_08034A84(Entity* this) {
    if (this->parent->next == NULL) {
        DeleteEntity(this);
    } else {
        if (this->action == 0) {
            this->action = 1;
            this->spriteSettings.draw = 1;
            this->spriteSettings.flipX = 1;
            InitializeAnimation(this, 0);
        }
        CopyPositionAndSpriteOffset(this->parent, this);
    }
}

void sub_08034AC4(Entity* this) {
    PositionRelative(this->parent, this, 0, Q_16_16(1.0));
    gUnk_080CED74[this->action](this);
}

void sub_08034AEC(Entity* this) {
    this->action = 1;
    this->timer = 30;
    InitializeAnimation(this, this->type + 1);
    SoundReq(SFX_151);
}

void sub_08034B0C(Entity* this) {
    if (this->timer != 0) {
        this->timer--;
    } else {
        GetNextFrame(this);
        if ((this->frame & ANIM_DONE) == 0) {
            return;
        }
        this->action = 2;
        this->timer = 80;
    }
}

void sub_08034B38(Entity* this) {
    Entity* target;
    const s8* ptr;

    if (--this->timer == 0) {
        this->action = 3;
        InitializeAnimation(this, this->type + 3);
    } else {
        target = CreateProjectile(MAZAAL_ENERGY_BEAM);
        if (target != NULL) {
            target->type = this->type - 2;
            if (target->type == 0) {
                target->direction = 0xa8 - this->timer;
            } else {
                target->direction = this->timer + 0x58;
            }
            ptr = &gUnk_080CED84[target->type * 2];
            PositionRelative(this, target, Q_16_16(*(ptr++)), Q_16_16(*ptr));
        }
    }
}

void sub_08034BA0(Entity* this) {
    GetNextFrame(this);
    if ((this->frame & ANIM_DONE) != 0) {
        this->parent->field_0x7c.HALF.HI = 0xff;
        DeleteEntity(this);
    }
}

void sub_08034BC8(Entity* this) {
    if (this->action == 0) {
        this->action = 1;
        InitializeAnimation(this, 1);
    }
    sub_0806FA90(this->parent, this, 0, 1);
    sub_0800445C(this);
    if (this->z.HALF.HI == 0) {
        sub_08034C00(this);
    }
}

void sub_08034C00(Entity* this) {
    if (((gPlayerState.flags & PL_MINISH) != 0) &&
        CheckPlayerInRegion(this->x.HALF.HI - gRoomControls.origin_x, this->y.HALF.HI - gRoomControls.origin_y + 0xd, 3,
                            3) != 0) {
        if (gRoomTransition.field_0x39 >= 0x3d) {
            DoExitTransition((ScreenTransitionData*)&gUnk_080CED88);
        } else {
            DoExitTransition((ScreenTransitionData*)&gUnk_080CED9C);
        }
    }
}
