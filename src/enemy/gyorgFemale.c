#define NENT_DEPRECATED
#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "utils.h"
#include "audio.h"
#include "asm.h"
#include "functions.h"
#include "enemy/gyorg.h"

extern u8 gEntCount;
extern u8 gMapDataTopSpecial[];

extern u16 gUnk_02019EE0[];

extern void sub_080197D4(const void*);

extern u32 sub_08000E62(u32);
extern void RegisterTransitionManager(void*, void (*)(), void (*)());

void sub_08046498();
void sub_0804660C(GyorgFemaleEntity*, u32);
void sub_080464C0(GyorgFemaleEntity*);
void sub_08046634(GyorgFemaleEntity*, u32);
void sub_080465C8(void);
void sub_080466A8(GyorgFemaleEntity*);
void sub_08046668(GyorgFemaleEntity*);
void sub_08046518(void);
void sub_080467DC(GyorgFemaleEntity*);

extern u8 gUpdateVisibleTiles;
extern u8 gUnk_080B3E80[];
extern u8 gUnk_080B37A0[];
extern u16 gMetatileTypesTop[];

void sub_0804614C(GyorgFemaleEntity*);
void sub_0804625C(GyorgFemaleEntity*);
void sub_0804632C(GyorgFemaleEntity*);
void sub_080463E4(GyorgFemaleEntity*);

void GyorgFemale(Entity* this) {
    static void (*const gUnk_080D1A64[])(GyorgFemaleEntity*) = {
        sub_0804614C,
        sub_0804625C,
        sub_0804632C,
        sub_080463E4,
    };
    gUnk_080D1A64[this->action]((GyorgFemaleEntity*)this);
}

void sub_0804614C(GyorgFemaleEntity* this) {
    Entity* tmp;
    if (gEntCount > 0x3d)
        return;
    tmp = CreateProjectile(0x22);
    tmp->type = 0;
    tmp->parent = super;
    ((GyorgFemaleHeap*)super->myHeap)->unk_14 = (GenericEntity*)tmp;
    tmp = CreateEnemy(GYORG_FEMALE_MOUTH, 0);
    tmp->parent = super;
    ((GyorgFemaleHeap*)super->myHeap)->unk_10 = (GyorgFemaleMouthEntity*)tmp;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 0);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 1);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 2);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 3);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 4);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 5);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 6);
    tmp->parent = super;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 7);
    tmp->parent = super;
    super->action = 1;
    super->spriteOrientation.flipY = 2;
    super->spriteRendering.b3 = 2;
    super->collisionLayer = 2;
    this->unk_78 = 0;
    this->unk_79 = 0;
    this->unk_70 = 0x3C;
    MemClear(&gUnk_02019EE0, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
    sub_0804660C(this, 0);
    sub_080464C0(this);
    gPlayerEntity.collisionLayer = 2;
    UpdateSpriteForCollisionLayer(&gPlayerEntity);
#ifndef EU
    RegisterTransitionManager(this, sub_08046498, 0);
#else
    RegisterTransitionManager(this, sub_080464C0, 0);
#endif
}

void sub_0804625C(GyorgFemaleEntity* this) {
    if (this->unk_79 & 0x80) {
        this->unk_79 &= ~0x80;
        this->unk_79 |= 0x40;
        sub_0804660C(this, (this->unk_79 & 3) << 6);
    } else {
        if (this->unk_79 & 0x40) {
            this->unk_79 &= ~0x40;
            sub_080464C0(this);
        }
    }
    sub_080465C8();
    if (((GyorgFemaleHeap*)super->myHeap)->boss->unk_6c & 0x38) {
        super->action = 2;
        super->actionDelay = 0;
        this->unk_7a = 0;
        this->unk_7c = 0;
        this->unk_7d = 0;
        this->unk_70 = 0x3c;
        this->unk_80 = 0;
        return;
    }
    if (((GyorgFemaleHeap*)super->myHeap)->boss->unk_6c & 0x40) {
        super->action = 3;
        this->unk_70 = 0x3c;
        super->actionDelay = 0;
        this->unk_7a = 0;
        this->unk_7c = 0;
        this->unk_7d = 0;
        this->unk_80 = 0;
        return;
    }
    if (((GyorgFemaleHeap*)super->myHeap)->boss->unk_6c & 0x100) {
        if (--this->unk_70 == 0) {
            this->unk_70 = 0x168;
            sub_08046634(this, 1);
        }
    }
}

void sub_0804632C(GyorgFemaleEntity* this) {
    sub_080465C8();
    sub_080466A8(this);
    if (++this->unk_7a > 0x59f) {
        this->unk_7a = 0;
        this->unk_7c = 0;
        this->unk_7d = 0;
        this->unk_80 = 0;
    } else {
        if (this->unk_7a == 0x78) {
            sub_08046668(this);
        } else {
            if (this->unk_7a == 0x528) {
                this->unk_78 = 0;
#ifndef EU
                this->unk_7d = 0;
                this->unk_7f = 0;
#endif
            }
        }
    }
    if (((GyorgFemaleHeap*)super->myHeap)->boss->unk_6c & 0x80 && --this->unk_70 == 0) {
        this->unk_70 = 0x168;
        sub_08046634(this, 0);
    }
    if ((((GyorgFemaleHeap*)super->myHeap)->boss->unk_6c & 0x38) == 0) {
        super->action = 1;
        this->unk_70 = 0x3c;
#ifndef EU
        this->unk_78 = 0;
#endif
        this->unk_80 = 0;
    }
}

void sub_080463E4(GyorgFemaleEntity* this) {
    sub_080465C8();
    if (--this->unk_70 == 0) {
        this->unk_70 = 0x168;
        sub_08046634(this, 1);
    }
    sub_080466A8(this);
    if (++this->unk_7a > 0x59f) {
        this->unk_7a = 0;
        this->unk_7c = 0;
        this->unk_7d = 0;
        this->unk_80 = 0;
    } else {
        if (this->unk_7a == 0x78) {
            sub_08046668(this);
        } else {
            if (this->unk_7a == 0x528) {
                this->unk_78 = 0;
#ifndef EU
                this->unk_7d = 0;
                this->unk_7f = 0;
#endif
            }
        }
    }
    if (super->health == 0) {
        super->action = 1;
#ifdef EU
        this->unk_78 = 0;
#endif
        this->unk_70 = 0x3c;
#ifndef EU
        this->unk_78 = 0;
#endif
        this->unk_80 = 0;
        SoundReq(0x128);
    }
}

#ifndef EU
void sub_08046498(GyorgFemaleEntity* this) {
    MemClear(&gUnk_02019EE0, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
    sub_080464C0(this);
}
#endif

extern const u8 gUnk_080D1A94[];
extern const u8 gUnk_080D1AAC[];
extern const u8 gUnk_080D1AC4[];
extern const u8 gUnk_080D1ADC[];

void sub_080464C0(GyorgFemaleEntity* this) {
    static const void* const gUnk_080D1A74[] = {
        gUnk_080D1A94,
        gUnk_080D1AAC,
        gUnk_080D1AC4,
        gUnk_080D1ADC,
    };
    s32 i;
    u8* src;
    u8* dst;
    sub_080197D4(gUnk_080D1A74[super->animationState >> 6]);
    sub_08046518();
    for (i = 0x20, src = ((u8*)&gUnk_02019EE0), dst = ((u8*)&gUnk_02019EE0) + 0x3260; i != 0; i--) {
        MemCopy(src, dst, 0x40);
        dst += 0x100;
        src += 0x40;
    }
    MemClear(&gUnk_02019EE0, 0x800);
    gUpdateVisibleTiles = 1;
}

NONMATCH("asm/non_matching/gyorg_female/sub_08046518.inc", void sub_08046518(void)) {
    u32 r5;
    u16* stack1;
    u8* stack2;
    u8* r6;
    u32 i;
    u16* sl;
    sl = &gMetatileTypesTop[0xFFFFBCB0];
    stack1 = &gMetatileTypesTop[0xFFFFECB0];
    stack2 = (u8*)&gMetatileTypesTop[0x00006658];
    r6 = (u8*)&gMetatileTypesTop[0xFFFFD658];
    for (i = 0; i < 0x10; i++) {
        sl += 0x40;
        stack1 += 0x40;
        for (r5 = 0; r5 < 0x10; r5++) {
            stack1[r5] = sl[r5];
            stack2[r5] = gUnk_080B37A0[gMetatileTypesTop[sl[r5]]];
            r6[r5] = gUnk_080B3E80[gMetatileTypesTop[sl[r5]]];
        }
        stack2 = stack2 + 0x40;
        r6 = r6 + 0x40;
    }
}
END_NONMATCH

void sub_080465C8(void) {
    s32 x, y;
    x = (gPlayerEntity.x.HALF.HI - gRoomControls.roomOriginX) >> 3;
    y = (gPlayerEntity.y.HALF.HI - gRoomControls.roomOriginY) >> 3;
    if (gUnk_02019EE0[(y << 7) + x]) {
        gPlayerState.field_0x14 = 1;
    }
}

void sub_0804660C(GyorgFemaleEntity* this, u32 unk1) {
    static const u16 gUnk_080D1A84[] = {
        0x200, 0x258, 0x1B8, 0x210, 0x200, 0x1C8, 0x248, 0x210,
    };
    const u16* p;
    super->animationState = unk1;
    p = &gUnk_080D1A84[unk1 >> 5];
    super->x.HALF.HI = p[0] + gRoomControls.roomOriginX;
    super->y.HALF.HI = p[1] + gRoomControls.roomOriginY;
}

// todo: correct type
const u8 gUnk_080D1A94[] = {
#if defined(JP) || defined(DEMO_JP)
    0x7C,
#elif defined(EU)
    0x50,
#else
    0x08,
#endif
    0x41, 0x22, 0x80, 0xE0, 0x9E, 0x01, 0x02, 0x00, 0x08, 0x00, 0x80,
#if defined(JP) || defined(DEMO_JP)
    0x2C, 0xD3,
#elif defined(EU)
    0x00, 0xD3,
#else
    0xB8, 0xD2,
#endif
    0x22, 0x00, 0x54, 0xB6, 0x00, 0x02, 0x80, 0x1F, 0x00, 0x80,
};

const u8 gUnk_080D1AAC[] = {
#if defined(JP) || defined(DEMO_JP)
    0xFC,
#elif defined(EU)
    0xD0,
#else
    0x88,
#endif
    0x3D, 0x22, 0x80, 0xE0, 0x9E, 0x01, 0x02, 0x00, 0x08, 0x00, 0x80,
#if defined(JP) || defined(DEMO_JP)
    0xF8,
#elif defined(EU)
    0xCC,
#else
    0x84,
#endif
    0xD6, 0x22, 0x00, 0x54, 0xB6, 0x00, 0x02, 0x80, 0x1F, 0x00, 0x80,
};

const u8 gUnk_080D1AC4[] = {
#if defined(JP) || defined(DEMO_JP)
    0xE4,
#elif defined(EU)
    0xB8,
#else
    0x70,
#endif
    0x36, 0x22, 0x80, 0xE0, 0x9E, 0x01, 0x02, 0x00, 0x08, 0x00, 0x80,
#if defined(JP) || defined(DEMO_JP)
    0xC0,
#elif defined(EU)
    0x94,
#else
    0x4C,
#endif
    0xDA, 0x22, 0x00, 0x54, 0xB6, 0x00, 0x02, 0x80, 0x1F, 0x00, 0x80,
};

const u8 gUnk_080D1ADC[] = {
#if defined(JP) || defined(DEMO_JP)
    0x78,
#elif defined(EU)
    0x4C,
#else
    0x04,
#endif
    0x3A, 0x22, 0x80, 0xE0, 0x9E, 0x01, 0x02, 0x00, 0x08, 0x00, 0x80,
#if defined(JP) || defined(DEMO_JP)
    0x88,
#elif defined(EU)
    0x5C,
#else
    0x14,
#endif
    0xDE, 0x22, 0x00, 0x54, 0xB6, 0x00, 0x02, 0x80, 0x1F, 0x00, 0x80,
};

void sub_08046634(GyorgFemaleEntity* this, u32 unk1) {
    static const u8 gUnk_080D1AF4[] = { 2, 3, 6, 7 };
    u32 tmp;
    if (unk1 == 0) {
        tmp = gUnk_080D1AF4[Random() & 3];
    } else {
        tmp = Random() & 7;
    }
    sub_080A1ED0(tmp, 0, super->animationState >> 3);
}

void sub_08046668(GyorgFemaleEntity* this) {
    static const u8 gUnk_080D1AF8[] = { 0x16, 0x92, 0x94, 0x86 };
    if (super->health == 0) {
        return;
    }
#ifndef EU
    if (this->unk_78 == 0xFF) {
        return;
    }
#endif
    this->unk_78 = gUnk_080D1AF8[Random() & 3];
    this->unk_7f = 0;
    this->unk_82 = 0;
    sub_080467DC(this);
}

void sub_080466A8(GyorgFemaleEntity* this) {
    if (this->unk_7c != 0) {
        this->unk_7d |= this->unk_7c;
        if (super->actionDelay == 0 && this->unk_78 != 0xFF) {
#ifndef EU
            super->actionDelay = 4;
#else
            super->actionDelay = 3;
#endif
        }
        if (sub_08000E62(this->unk_7d) > 2) {
            super->actionDelay = 0;
            this->unk_7d = 0;
            this->unk_78 = 0xFF;
            SoundReq(0x127);
            if (super->health != 0) {
                sub_08080964(8, 0);
                if (++this->unk_82 <= 0xC) {
                    super->health--;
                }
                if (super->health == 0) {
                    this->unk_78 = 0;
                    this->unk_7a = 0x528;
                } else {
                    if (this->unk_7f == 0) {
                        this->unk_7f = 1;
                        this->unk_7a = 0x438;
                    }
                }
            }
            sub_080467DC(this);
        }
    }
    if (super->actionDelay != 0 && this->unk_78 != 0xFF && --super->actionDelay == 0) {
        Entity* tmp;
        this->unk_80 |= this->unk_7d;
        this->unk_7d = 0;
        sub_080467DC(this);
#ifndef EU
        if (((GyorgFemaleHeap*)super->myHeap)->unk_3c != 0xFF) {
#endif
            tmp = &gPlayerEntity;
            tmp->knockbackDirection = ((GyorgFemaleHeap*)super->myHeap)->unk_3c;
            tmp->iframes = 0xF4;
            tmp->knockbackDuration = 0xA;
            tmp = CreateFx(super, 0x2C, 0);
            if (tmp) {
                tmp->x.HALF.HI = ((GyorgFemaleHeap*)super->myHeap)->unk_38;
                tmp->y.HALF.HI = ((GyorgFemaleHeap*)super->myHeap)->unk_3a;
                tmp->collisionLayer = 1;
                UpdateSpriteForCollisionLayer(tmp);
            }
#ifndef EU
        }
#endif
    }
    this->unk_7c = 0;
}

void sub_080467DC(GyorgFemaleEntity* this) {
    u32 i;
    for (i = 0; i < 8; i++) {
        (*((GyorgFemaleHeap**)(&super->myHeap)))->unk_18[i] = 0;
    }
}
