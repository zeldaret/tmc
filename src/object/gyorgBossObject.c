#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "object.h"
#include "area.h"
#include "room.h"
#include "screen.h"
#include "functions.h"
#include "enemy/gyorg.h"

extern const ScreenTransitionData gUnk_0813ABD0;

extern u32 sub_08079F8C(void);
extern s16* const gUnk_08124FF0[];

extern void sub_080A1DCC(GyorgBossObjectEntity*);
extern void sub_080A1C9C(GyorgBossObjectEntity*);
void sub_080A1E54(GyorgBossObjectEntity*);

void sub_080A1D8C(GyorgBossObjectEntity*, s32);

void sub_080A1FF0(GyorgBossObjectEntity*);
u32 sub_080A20B8(GyorgBossObjectEntity*, GyorgMaleEntity*);
void sub_080A1D70(GyorgBossObjectEntity*, u32);

void sub_080A1704(GyorgBossObjectEntity*);
void sub_080A184C(GyorgBossObjectEntity*);
void sub_080A189C(GyorgBossObjectEntity*);
void sub_080A190C(GyorgBossObjectEntity*);
void sub_080A1990(GyorgBossObjectEntity*);
void sub_080A19FC(GyorgBossObjectEntity*);
void sub_080A1A80(GyorgBossObjectEntity*);
void sub_080A1AE8(GyorgBossObjectEntity*);
void sub_080A1B4C(GyorgBossObjectEntity*);
void sub_080A1C04(GyorgBossObjectEntity*);

void GyorgBossObject(Entity* this) {
    static void (*const gUnk_08124ED0[])(GyorgBossObjectEntity*) = {
        sub_080A1704, sub_080A184C, sub_080A189C, sub_080A190C, sub_080A1990,
        sub_080A19FC, sub_080A1A80, sub_080A1AE8, sub_080A1B4C, sub_080A1C04,
    };
    gUnk_08124ED0[this->action]((GyorgBossObjectEntity*)this);
    sub_080A1DCC((GyorgBossObjectEntity*)this);
    sub_080A1C9C((GyorgBossObjectEntity*)this);
}

void sub_080A1704(GyorgBossObjectEntity* this) {
    GyorgHeap* heap;
    Entity* tmp;
    if (CheckFlags(0x7B)) {
        DeleteThisEntity();
    }
    if (gEntCount > 0x45)
        return;
    heap = zMalloc(sizeof(GyorgHeap));
    if (!heap)
        return;
    super->action = 1;
    super->myHeap = heap;
    this->unk_6e = 0x258;
    this->unk_6c = 0;
    heap->boss = this;
    tmp = CreateEnemy(GYORG_FEMALE, 0);
    tmp->myHeap = heap;
    heap->female = (GyorgFemaleEntity*)tmp;
    tmp = CreateEnemy(GYORG_MALE, 0);
    tmp->x.HALF.HI = gRoomControls.origin_x + 0x200;
#ifdef EU
    tmp->y.HALF.HI = gRoomControls.origin_y + 0x380;
#else
    tmp->y.HALF.HI = gRoomControls.origin_y + 0x330;
#endif
    tmp->myHeap = heap;
    heap->male1 = (GyorgMaleEntity*)tmp;
    tmp = CreateEnemy(GYORG_MALE, 1);
    tmp->x.HALF.HI = gRoomControls.origin_x + 0x260;
#ifdef EU
    tmp->y.HALF.HI = gRoomControls.origin_y + 0x360;
#else
    tmp->y.HALF.HI = gRoomControls.origin_y + 0x310;
#endif
    tmp->myHeap = heap;
    heap->male2 = (GyorgMaleEntity*)tmp;
    gScreen.bg3.control = 0x1E07;
    gScreen.lcd.displayControl |= 0x800;
    this->unk_70 = 0;
    this->unk_72 = 0;
    this->unk_74 = 0;
    this->unk_7a = 0;
    this->unk_76 = 0xc0;
    this->unk_78 = 0xc0;
    gRoomTransition.field_0x39 = 1;
    gPlayerState.flags |= 0x20000;
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
#ifndef EU
    SoundReq(0x80100000);
    gArea.bgm = gArea.queued_bgm;
#endif
}

void sub_080A184C(GyorgBossObjectEntity* this) {
    if (--this->unk_6e == 0) {
        super->action = 2;
        this->unk_6c = 8;
        ((GyorgHeap*)super->myHeap)->female->base.health = 8;
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void sub_080A189C(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        super->action = 3;
        super->actionDelay = 0x23;
        this->unk_6c = 1;
        this->unk_78 = 0x400;
        this->unk_7b = 1;
        ((GyorgHeap*)super->myHeap)->male1->base.health = 0xC;
        SoundReq(0x128);
        InitScreenShake(0x96, 1);
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void sub_080A190C(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgHeap*)super->myHeap)->male1->base.health == 0) {
        if (sub_080A20B8(this, ((GyorgHeap*)super->myHeap)->male1)) {
            super->action = 4;
            this->unk_6c = 0x10;
            this->unk_78 = 0xC0;
            sub_080A1D70(this, ((GyorgHeap*)super->myHeap)->female->base.animationState);
            ((GyorgHeap*)super->myHeap)->female->base.health = 0x18;
        }
        gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
        gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
    } else {
        gPlayerState.startPosX = ((GyorgHeap*)super->myHeap)->male1->base.x.HALF.HI;
        gPlayerState.startPosY = ((GyorgHeap*)super->myHeap)->male1->base.y.HALF.HI;
    }
}

void sub_080A1990(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        ((GyorgHeap*)super->myHeap)->male1->base.health = 0xC;
        super->action = 5;
        super->actionDelay = 0x23;
        this->unk_6c = 2;
        this->unk_78 = 0x400;
        this->unk_7b = 1;
        SoundReq(0x128);
        InitScreenShake(0x96, 1);
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void sub_080A19FC(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgHeap*)super->myHeap)->male2->base.health == 0) {
        if (sub_080A20B8(this, ((GyorgHeap*)super->myHeap)->male2)) {
            super->action = 6;
            this->unk_6c = 0x20;
            this->unk_78 = 0xc0;
            sub_080A1D70(this, ((GyorgHeap*)super->myHeap)->female->base.animationState);
            ((GyorgHeap*)super->myHeap)->female->base.health = 0x18;
        }
        gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
        gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
    } else {
        gPlayerState.startPosX = ((GyorgHeap*)super->myHeap)->male2->base.x.HALF.HI;
        gPlayerState.startPosY = ((GyorgHeap*)super->myHeap)->male2->base.y.HALF.HI;
    }
}

void sub_080A1A80(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        ((GyorgHeap*)super->myHeap)->male2->base.health = 0xC;
        super->action = 7;
        super->actionDelay = 0x23;
        this->unk_6c = 0x104;
        this->unk_78 = 0x400;
        SoundReq(SFX_BOSS_DIE);
        InitScreenShake(0x96, 1);
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void sub_080A1AE8(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgHeap*)super->myHeap)->male2->base.health == 0) {
        if (sub_080A20B8(this, ((GyorgHeap*)super->myHeap)->male2)) {
            super->action = 8;
            this->unk_6c = 0x40;
            this->unk_78 = 0xC0;
            ((GyorgHeap*)super->myHeap)->female->base.health = 0xC;
        }
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void sub_080A1B4C(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        if (this->unk_6c != 0) {
            InitScreenShake(0x2d, 1);
            SoundReq(SFX_BOSS_DIE);
            this->unk_78 = 0x600;
        }
        this->unk_6c = 0;
        gRoomTransition.field_0x39 = 0;
        if (sub_08079F8C() && gPlayerEntity.z.HALF.HI == 0) {
            super->action = 9;
            super->actionDelay = 0;
            super->field_0xf = 0xF0;
            this->unk_6e = 0x1a4;
            super->direction = 0;
            super->speed = 0x60;
            gPlayerState.flags &= ~0x20000;
            CopyPosition(&gPlayerEntity, super);
            gRoomControls.camera_target = super;
            SetPlayerControl(2);
        }
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void sub_080A1C04(GyorgBossObjectEntity* this) {
    if (this->unk_6e == 0) {
        LinearMoveUpdate(super);
        sub_080A1E54(this);
        if (--super->field_0xf == 0) {
            SetFlag(0x7B);
            sub_0808091C(&gUnk_0813ABD0, 8);
            return;
        }
        if (super->field_0xf == 0x3C) {
            SetFade(7, 4);
        }
        return;
    }
    if (--this->unk_6e < 0xb4) {
        sub_080A1E54(this);
        return;
    }
    switch (this->unk_6e) {
        case 0xb4:
            SoundReq(SFX_BOSS_DIE);
            InitScreenShake(0x2d0, 2);
            break;
        case 0x12C:
            SoundReq(SFX_BOSS_DIE);
            InitScreenShake(0x4b, 1);
            break;
    }
}

void sub_080A1C9C(GyorgBossObjectEntity* this) {
    if (this->unk_7a) {
        if (this->unk_74 != this->unk_75) {
            this->unk_78 = 0;
            sub_080A1D8C(this, 0xC);
            if (this->unk_76 == 0) {
                this->unk_74 = this->unk_75;
                this->unk_78 = this->unk_7c;
            }
        } else {
            sub_080A1D8C(this, 0xC);
            if (this->unk_78 == this->unk_76) {
                this->unk_7a = 0;
            }
        }
    } else {
        sub_080A1D8C(this, 8);
    }
    this->unk_70 += gSineTable[this->unk_74] * this->unk_76 / 0x100;
    this->unk_72 -= gSineTable[this->unk_74 + 0x40] * this->unk_76 / 0x100;
    gScreen.bg3.xOffset = this->unk_70 >> 0x8;
    gScreen.bg3.yOffset = this->unk_72 >> 0x8;
}

void sub_080A1D70(GyorgBossObjectEntity* this, u32 unk1) {
    this->unk_75 = unk1;
    this->unk_7a = 1;
    this->unk_7c = this->unk_78;
}

void sub_080A1D8C(GyorgBossObjectEntity* this, s32 unk1) {
    if (this->unk_78 != this->unk_76) {
        if (this->unk_78 > this->unk_76) {
            if (unk1 < this->unk_78 - this->unk_76) {
                this->unk_76 += unk1;
            } else {
                this->unk_76 = this->unk_78;
            }
        } else {
            if (unk1 < this->unk_76 - this->unk_78) {
                this->unk_76 -= unk1;
            } else {
                this->unk_76 = this->unk_78;
            }
        }
    }
}

void sub_080A1DCC(GyorgBossObjectEntity* this) {
    GenericEntity* tmp;
    if ((tmp = (GenericEntity*)((GyorgHeap*)super->myHeap)->male1) != NULL ||
        (tmp = (GenericEntity*)((GyorgHeap*)super->myHeap)->male2) != NULL) {
        if (tmp->field_0x7c.BYTES.byte0 && tmp->base.spriteRendering.b3 == 2) {
            ((GyorgHeap*)super->myHeap)->unk_10->base.flags &= ~0x80;
            tmp = ((GyorgHeap*)super->myHeap)->unk_14;
            tmp->base.flags &= ~0x80;
            tmp = (GenericEntity*)tmp->base.child;
            tmp->base.flags &= ~0x80;
            tmp = (GenericEntity*)tmp->base.child;
            tmp->base.flags &= ~0x80;
            tmp = (GenericEntity*)tmp->base.child;
            tmp->base.flags &= ~0x80;
            return;
        }
    }
    ((GyorgHeap*)super->myHeap)->unk_10->base.flags |= 0x80;
    tmp = ((GyorgHeap*)super->myHeap)->unk_14;
    tmp->base.flags |= 0x80;
    tmp = (GenericEntity*)tmp->base.child;
    tmp->base.flags |= 0x80;
    tmp = (GenericEntity*)tmp->base.child;
    tmp->base.flags |= 0x80;
    tmp = (GenericEntity*)tmp->base.child;
    tmp->base.flags |= 0x80;
}

void sub_080A1E54(GyorgBossObjectEntity* this) {
    Entity* fx;
    if ((++super->actionDelay & 0x1F) == 0) {
        fx = CreateFx(super, 0x51, 0);
        if (fx) {
            u32 r = Random();
            fx->x.HALF.HI = gRoomControls.origin_x + 0x200 + (r & 0xf0) - 0x78;
            fx->y.HALF.HI = gRoomControls.origin_y + 0x210 + ((r >> 8) & 0x70) - 0x38;
            fx->spritePriority.b0 = 5;
            fx->collisionLayer = 2;
            UpdateSpriteForCollisionLayer(fx);
        }
    }
}

void sub_080A1ED0(u32 unk0, u32 unk1, u32 unk2) {
    static const u16 gUnk_08124EF8[] = { 0x200, 0x1C0, 0x250, 0x210, 0x200, 0x260, 0x1B0, 0x210 };
    u32 i = 0;
    s16* p;
    u32 x, y;
    x = gUnk_08124EF8[unk2 * 2] + gRoomControls.origin_x;
    y = gUnk_08124EF8[unk2 * 2 + 1] + gRoomControls.origin_y;
    p = gUnk_08124FF0[unk0];
    while (*p != 1) {
        GyorgChildEntity* tmp = (GyorgChildEntity*)CreateEnemy(GYORG_CHILD, unk1);
        if (tmp) {
            tmp->base.type2 = i++;
            tmp->base.x.HALF.HI = x;
            tmp->base.y.HALF.HI = y;
            tmp->base.direction = DirectionFromAnimationState(unk2);
            tmp->unk_7a = DirectionTurnAround(DirectionFromAnimationState(unk2));
            tmp->unk_78 = p[2];
            switch (unk2) {
                case 0:
                    tmp->unk_74 = p[0];
                    tmp->unk_76 = -p[1];
                    break;
                case 1:
                    tmp->unk_74 = p[1] + 0xF0;
                    tmp->unk_76 = p[0];
                    break;
                case 2:
                    tmp->unk_74 = p[0];
                    tmp->unk_76 = p[1] + 0xA0;
                    break;
                case 3:
                    tmp->unk_74 = -p[1];
                    tmp->unk_76 = p[0];
                    break;
            }
        }
        p += 3;
    }
    if (unk1 == 0) {
        Entity* tmp;
        tmp = CreateObject(SPECIAL_FX, 2, 0);
        if (tmp) {
            tmp->x.HALF.HI = x;
            tmp->y.HALF.HI = y;
            tmp->spriteOrientation.flipY = 3;
            tmp->spriteRendering.b3 = 3;
            tmp->collisionLayer = 1;
        }
    }
}

void sub_080A1FF0(GyorgBossObjectEntity* this) {
    if (super->actionDelay != 0) {
        super->actionDelay--;
        if (super->actionDelay <= 0x20 && (super->actionDelay & 0xF) == 0) {
            Entity* fx;
            fx = CreateFx(super, 0x51, 0);
            if (fx) {
                u32 r = Random();
                fx->x.HALF.HI = gRoomControls.origin_x + 0x200 + (r & 0x78) - 0x3C;
                fx->y.HALF.HI = gRoomControls.origin_y + 0x210 + (r & 0x78) - 0x3C;
                fx->spritePriority.b0 = 6;
                fx->collisionLayer = 1;
                UpdateSpriteForCollisionLayer(fx);
            }
        }
    }
    if (this->unk_7b) {
        if (EntityWithinDistance(&gPlayerEntity, gRoomControls.origin_x + 0x200, gRoomControls.origin_y + 0x210,
                                 0x100)) {
            if (super->actionDelay == 0) {
                super->actionDelay = 0x78;
            } else {
                if (super->actionDelay == 0x23) {
                    InitScreenShake(0x1e, 0);
                }
            }
        } else {
            this->unk_7b = 0;
        }
    }
}

u32 sub_080A20B8(GyorgBossObjectEntity* this, GyorgMaleEntity* other) {
    if (other == NULL) {
        return 1;
    }
    if (sub_08079F8C() && gPlayerEntity.z.HALF.HI == 0) {
        return other->unk_7c == 0 && gPlayerState.field_0x14 != 0;
    }
    return 0;
}
