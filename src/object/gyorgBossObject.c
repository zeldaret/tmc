/**
 * @file gyorgBossObject.c
 * @ingroup Objects
 *
 * @brief Gyorg Boss object
 */
#include "area.h"
#include "enemy/gyorg.h"
#include "entity.h"
#include "functions.h"
#include "object.h"
#include "room.h"
#include "screen.h"
#include "screenTransitions.h"

struct GyorgChildSpawns {
    s16 offsetX;
    s16 offsetY;
    s16 unk2;
} FORCE_WORD_ALIGNED;
extern struct GyorgChildSpawns* const gUnk_08124FF0[];

extern void sub_080A1DCC(GyorgBossObjectEntity*);
extern void sub_080A1C9C(GyorgBossObjectEntity*);
void sub_080A1E54(GyorgBossObjectEntity*);

void sub_080A1D8C(GyorgBossObjectEntity*, s32);

void sub_080A1FF0(GyorgBossObjectEntity*);
u32 sub_080A20B8(GyorgBossObjectEntity*, GyorgMaleEntity*);
void sub_080A1D70(GyorgBossObjectEntity*, u32);

void GyorgBossObject_SetupStart(GyorgBossObjectEntity* this);
void GyorgBossObject_Setup(GyorgBossObjectEntity* this);
void GyorgBossObject_FemalePhase1(GyorgBossObjectEntity* this);
void GyorgBossObject_MalePhase1(GyorgBossObjectEntity* this);
void GyorgBossObject_FemalePhase2(GyorgBossObjectEntity* this);
void GyorgBossObject_MalePhase2(GyorgBossObjectEntity* this);
void GyorgBossObject_FemalePhase3(GyorgBossObjectEntity* this);
void GyorgBossObject_MalePhase3(GyorgBossObjectEntity* this);
void GyorgBossObject_FemalePhase4(GyorgBossObjectEntity* this);
void GyorgBossObject_FightEnd(GyorgBossObjectEntity* this);

void GyorgBossObject(Entity* this) {
    static void (*const GyorgBossObject_Actions[])(GyorgBossObjectEntity*) = {
        GyorgBossObject_SetupStart,   GyorgBossObject_Setup,        GyorgBossObject_FemalePhase1,
        GyorgBossObject_MalePhase1,   GyorgBossObject_FemalePhase2, GyorgBossObject_MalePhase2,
        GyorgBossObject_FemalePhase3, GyorgBossObject_MalePhase3,   GyorgBossObject_FemalePhase4,
        GyorgBossObject_FightEnd,
    };
    GyorgBossObject_Actions[this->action]((GyorgBossObjectEntity*)this);
    sub_080A1DCC((GyorgBossObjectEntity*)this);
    sub_080A1C9C((GyorgBossObjectEntity*)this);
}

void GyorgBossObject_SetupStart(GyorgBossObjectEntity* this) {
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
    this->timer = 600;
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
    gPlayerState.flags |= PL_GYORG_FIGHT;
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
#ifndef EU
    SoundReq(SONG_STOP_BGM);
    gArea.bgm = gArea.queued_bgm;
#endif
}

void GyorgBossObject_Setup(GyorgBossObjectEntity* this) {
    if (--this->timer == 0) {
        // start female phase 1
        super->action = 2;
        this->unk_6c = 8;
        ((GyorgHeap*)super->myHeap)->female->base.health = 8;
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void GyorgBossObject_FemalePhase1(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        // start male phase 1
        super->action = 3;
        super->timer = 35;
        this->unk_6c = 1;
        this->unk_78 = 0x400;
        this->unk_7b = 1;
        ((GyorgHeap*)super->myHeap)->male1->base.health = 12;
        SoundReq(SFX_BOSS_DIE);
        InitScreenShake(150, 1);
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void GyorgBossObject_MalePhase1(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgHeap*)super->myHeap)->male1->base.health == 0) {
        if (sub_080A20B8(this, ((GyorgHeap*)super->myHeap)->male1)) {
            // start female phase 2
            super->action = 4;
            this->unk_6c = 0x10;
            this->unk_78 = 0xC0;
            sub_080A1D70(this, ((GyorgHeap*)super->myHeap)->female->base.animationState);
            ((GyorgHeap*)super->myHeap)->female->base.health = 24;
        }
        gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
        gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
    } else {
        gPlayerState.startPosX = ((GyorgHeap*)super->myHeap)->male1->base.x.HALF.HI;
        gPlayerState.startPosY = ((GyorgHeap*)super->myHeap)->male1->base.y.HALF.HI;
    }
}

void GyorgBossObject_FemalePhase2(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        // start male phase 2
        ((GyorgHeap*)super->myHeap)->male1->base.health = 12;
        super->action = 5;
        super->timer = 35;
        this->unk_6c = 2;
        this->unk_78 = 0x400;
        this->unk_7b = 1;
        SoundReq(SFX_BOSS_DIE);
        InitScreenShake(150, 1);
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void GyorgBossObject_MalePhase2(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgHeap*)super->myHeap)->male2->base.health == 0) {
        if (sub_080A20B8(this, ((GyorgHeap*)super->myHeap)->male2)) {
            // start female phase 3
            super->action = 6;
            this->unk_6c = 0x20;
            this->unk_78 = 0xc0;
            sub_080A1D70(this, ((GyorgHeap*)super->myHeap)->female->base.animationState);
            ((GyorgHeap*)super->myHeap)->female->base.health = 24;
        }
        gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
        gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
    } else {
        gPlayerState.startPosX = ((GyorgHeap*)super->myHeap)->male2->base.x.HALF.HI;
        gPlayerState.startPosY = ((GyorgHeap*)super->myHeap)->male2->base.y.HALF.HI;
    }
}

void GyorgBossObject_FemalePhase3(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        // start male phase 3
        ((GyorgHeap*)super->myHeap)->male2->base.health = 12;
        super->action = 7;
        super->timer = 35;
        this->unk_6c = 0x104;
        this->unk_78 = 0x400;
        SoundReq(SFX_BOSS_DIE);
        InitScreenShake(150, 1);
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void GyorgBossObject_MalePhase3(GyorgBossObjectEntity* this) {
    sub_080A1FF0(this);
    if (((GyorgHeap*)super->myHeap)->male2->base.health == 0) {
        if (sub_080A20B8(this, ((GyorgHeap*)super->myHeap)->male2)) {
            // start female phase 4
            super->action = 8;
            this->unk_6c = 0x40;
            this->unk_78 = 0xC0;
            ((GyorgHeap*)super->myHeap)->female->base.health = 12;
        }
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void GyorgBossObject_FemalePhase4(GyorgBossObjectEntity* this) {
    if (((GyorgHeap*)super->myHeap)->female->base.health == 0) {
        if (this->unk_6c != 0) {
            InitScreenShake(45, 1);
            SoundReq(SFX_BOSS_DIE);
            this->unk_78 = 0x600;
        }
        this->unk_6c = 0;
        gRoomTransition.field_0x39 = 0;
        if (PlayerCanBeMoved() && gPlayerEntity.base.z.HALF.HI == 0) {
            super->action = 9;
            super->timer = 0;
            super->subtimer = 240;
            this->timer = 420;
            super->direction = 0;
            super->speed = 0x60;
            gPlayerState.flags &= ~PL_GYORG_FIGHT;
            CopyPosition(&gPlayerEntity.base, super);
            gRoomControls.camera_target = super;
            SetPlayerControl(2);
        }
    }
    gPlayerState.startPosX = gRoomControls.origin_x + 0x200;
    gPlayerState.startPosY = gRoomControls.origin_y + 0x210;
}

void GyorgBossObject_FightEnd(GyorgBossObjectEntity* this) {
    if (this->timer == 0) {
        LinearMoveUpdate(super);
        sub_080A1E54(this);
        if (--super->subtimer == 0) {
            SetFlag(0x7B);
            sub_0808091C(&gUnk_0813ABD0, 8);
            return;
        }
        if (super->subtimer == 0x3C) {
            SetFade(FADE_IN_OUT | FADE_BLACK_WHITE | FADE_INSTANT, 4);
        }
        return;
    }
    if (--this->timer < 0xb4) {
        sub_080A1E54(this);
        return;
    }
    switch (this->timer) {
        case 0xb4:
            SoundReq(SFX_BOSS_DIE);
            InitScreenShake(720, 2);
            break;
        case 0x12C:
            SoundReq(SFX_BOSS_DIE);
            InitScreenShake(75, 1);
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
            ((GyorgHeap*)super->myHeap)->mouth->base.flags &= ~0x80;
            tmp = ((GyorgHeap*)super->myHeap)->tail;
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
    ((GyorgHeap*)super->myHeap)->mouth->base.flags |= 0x80;
    tmp = ((GyorgHeap*)super->myHeap)->tail;
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
    if ((++super->timer & 0x1F) == 0) {
        fx = CreateFx(super, FX_GIANT_EXPLOSION4, 0);
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

void GyorgBossObject_SpawnChildren(u32 unk0, bool32 fromBlue, u32 animationState) {
    static const u16 gUnk_08124EF8[] = { 0x200, 0x1C0, 0x250, 0x210, 0x200, 0x260, 0x1B0, 0x210 };
    static const s16 gUnk_08124F08[] = {
        -80, 48, 320, -40, 32, 320, 0, 16, 320, 40, 32, 320, 80, 48, 320, 1,
    };
    static const s16 gUnk_08124F28[] = {
        -80, 16, 448, -40, 48, 448, 0, 16, 448, 40, 48, 448, 80, 16, 448, 1,
    };
    static const s16 gUnk_08124F48[] = {
        -80, 16, 320, -40, 48, 576, 0, 16, 320, 40, 48, 576, 80, 16, 320, 1,
    };
    static const s16 gUnk_08124F68[] = {
        -80, 16, 320, -40, 32, 448, 0, 48, 576, 40, 32, 448, 80, 16, 320, 1,
    };
    static const s16 gUnk_08124F88[] = {
        -80, 32, 320, -40, 48, 320, 0, 32, 320, 40, 16, 320, 80, 32, 320, 1,
    };
    static const s16 gUnk_08124FA8[] = {
        -80, 32, 576, -40, 32, 448, 0, 32, 320, 40, 32, 448, 80, 32, 576, 1,
    };
    static const s16 gUnk_08124FC8[] = {
        -80, 32, 320, 0, 16, 320, 80, 32, 320, 1,
    };
    static const s16 gUnk_08124FDC[] = {
        -80, 16, 448, 0, 48, 448, 80, 16, 448, 1,
    };
    static const s16* const gUnk_08124FF0[] = {
        gUnk_08124F08, gUnk_08124F28, gUnk_08124F48, gUnk_08124F68,
        gUnk_08124F88, gUnk_08124FA8, gUnk_08124FC8, gUnk_08124FDC,
    };

    u32 i = 0;
    struct GyorgChildSpawns* p;
    u32 x, y;
    x = gUnk_08124EF8[animationState * 2] + gRoomControls.origin_x;
    y = gUnk_08124EF8[animationState * 2 + 1] + gRoomControls.origin_y;
    p = (struct GyorgChildSpawns*)gUnk_08124FF0[unk0];
    while (p->offsetX != 1) {
        GyorgChildEntity* tmp = (GyorgChildEntity*)CreateEnemy(GYORG_CHILD, fromBlue);
        if (tmp) {
            tmp->base.type2 = i++;
            tmp->base.x.HALF.HI = x;
            tmp->base.y.HALF.HI = y;
            tmp->base.direction = DirectionFromAnimationState(animationState);
            tmp->attackDirection = DirectionTurnAround(DirectionFromAnimationState(animationState));
            tmp->attackSpeed = p->unk2;
            switch (animationState) {
                case 0:
                    tmp->attackOffsetX = p->offsetX;
                    tmp->attackOffsetY = -p->offsetY;
                    break;
                case 1:
                    tmp->attackOffsetX = p->offsetY + DISPLAY_WIDTH;
                    tmp->attackOffsetY = p->offsetX;
                    break;
                case 2:
                    tmp->attackOffsetX = p->offsetX;
                    tmp->attackOffsetY = p->offsetY + DISPLAY_HEIGHT;
                    break;
                case 3:
                    tmp->attackOffsetX = -p->offsetY;
                    tmp->attackOffsetY = p->offsetX;
                    break;
            }
        }
        p++;
    }
    if (fromBlue == FALSE) {
        Entity* tmp;
        tmp = CreateObject(SPECIAL_FX, FX_DEATH, 0);
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
    if (super->timer != 0) {
        super->timer--;
        if (super->timer <= 0x20 && (super->timer & 0xF) == 0) {
            Entity* fx;
            fx = CreateFx(super, FX_GIANT_EXPLOSION4, 0);
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
        if (EntityWithinDistance(&gPlayerEntity.base, gRoomControls.origin_x + 0x200, gRoomControls.origin_y + 0x210,
                                 0x100)) {
            if (super->timer == 0) {
                super->timer = 120;
            } else {
                if (super->timer == 0x23) {
                    InitScreenShake(30, 0);
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
    if (PlayerCanBeMoved() && gPlayerEntity.base.z.HALF.HI == 0) {
        return other->unk_7c == 0 && gPlayerState.field_0x14 != 0;
    }
    return 0;
}
