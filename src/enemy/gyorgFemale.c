#include "global.h"
#include "entity.h"
#include "enemy.h"
#include "utils.h"
#include "audio.h"
#include "asm.h"
#include "functions.h"

extern u8 gEntCount;
extern u8 gMapDataTopSpecial[];

extern u16 gUnk_02019EE0[];

extern void sub_080197D4(u32);

void sub_08046498();
void sub_0804660C(Entity*, u32);
void sub_080464C0(Entity*);
void sub_08046634(Entity*, u32);
void sub_080465C8(void);
void sub_080466A8(Entity*);
void sub_08046668(Entity*);
void sub_08046518(void);
void sub_080467DC(Entity*);

extern u32 sub_08000E62(u32);
extern void RegisterTransitionManager(void*, void (*)(), void (*)());

typedef struct {
    u8 unk_00[0x18];
    u32 unk_18[0x8];
    u16 unk_38;
    u16 unk_3a;
    u8 unk_3c;
} GyorgFemaleHeap;

extern void (*const gUnk_080D1A64[])(Entity*);

void GyorgFemale(Entity* this) {
    gUnk_080D1A64[this->action](this);
}

void sub_0804614C(Entity* this) {
    Entity* tmp;
    if (gEntCount > 0x3d)
        return;
    tmp = CreateProjectile(0x22);
    tmp->type = 0;
    tmp->parent = this;
    ((Entity**)this->myHeap)[5] = tmp;
    tmp = CreateEnemy(GYORG_FEMALE_MOUTH, 0);
    tmp->parent = this;
    ((Entity**)this->myHeap)[4] = tmp;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 0);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 1);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 2);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 3);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 4);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 5);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 6);
    tmp->parent = this;
    tmp = CreateEnemy(GYORG_FEMALE_EYE, 7);
    tmp->parent = this;
    this->action = 1;
    this->spriteOrientation.flipY = 2;
    this->spriteRendering.b3 = 2;
    this->collisionLayer = 2;
    this->field_0x78.HALF.LO = 0;
    this->field_0x78.HALF.HI = 0;
    this->field_0x70.HALF.LO = 0x3C;
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

void sub_0804625C(Entity* this) {
    if (this->field_0x78.HALF.HI & 0x80) {
        this->field_0x78.HALF.HI &= ~0x80;
        this->field_0x78.HALF.HI |= 0x40;
        sub_0804660C(this, (this->field_0x78.HALF.HI & 3) << 6);
    } else {
        if (this->field_0x78.HALF.HI & 0x40) {
            this->field_0x78.HALF.HI &= ~0x40;
            sub_080464C0(this);
        }
    }
    sub_080465C8();
    if (((Entity**)this->myHeap)[0]->field_0x6c.HWORD & 0x38) {
        this->action = 2;
        this->actionDelay = 0;
        this->field_0x7a.HWORD = 0;
        this->field_0x7c.BYTES.byte0 = 0;
        this->field_0x7c.BYTES.byte1 = 0;
        this->field_0x70.HALF.LO = 0x3c;
        this->field_0x80.HALF.LO = 0;
        return;
    }
    if (((Entity**)this->myHeap)[0]->field_0x6c.HWORD & 0x40) {
        this->action = 3;
        this->field_0x70.HALF.LO = 0x3c;
        this->actionDelay = 0;
        this->field_0x7a.HWORD = 0;
        this->field_0x7c.BYTES.byte0 = 0;
        this->field_0x7c.BYTES.byte1 = 0;
        this->field_0x80.HALF.LO = 0;
        return;
    }
    if (((Entity**)this->myHeap)[0]->field_0x6c.HWORD & 0x100) {
        if (--this->field_0x70.HALF.LO == 0) {
            this->field_0x70.HALF.LO = 0x168;
            sub_08046634(this, 1);
        }
    }
}

void sub_0804632C(Entity* this) {
    sub_080465C8();
    sub_080466A8(this);
    if (++this->field_0x7a.HWORD > 0x59f) {
        this->field_0x7a.HWORD = 0;
        this->field_0x7c.BYTES.byte0 = 0;
        this->field_0x7c.BYTES.byte1 = 0;
        this->field_0x80.HALF.LO = 0;
    } else {
        if (this->field_0x7a.HWORD == 0x78) {
            sub_08046668(this);
        } else {
            if (this->field_0x7a.HWORD == 0x528) {
                this->field_0x78.HALF.LO = 0;
#ifndef EU
                this->field_0x7c.BYTES.byte1 = 0;
                this->field_0x7c.BYTES.byte3 = 0;
#endif
            }
        }
    }
    if (((Entity**)this->myHeap)[0]->field_0x6c.HWORD & 0x80 && --this->field_0x70.HALF.LO == 0) {
        this->field_0x70.HALF.LO = 0x168;
        sub_08046634(this, 0);
    }
    if ((((Entity**)this->myHeap)[0]->field_0x6c.HWORD & 0x38) == 0) {
        this->action = 1;
        this->field_0x70.HALF.LO = 0x3c;
#ifndef EU
        this->field_0x78.HALF.LO = 0;
#endif
        this->field_0x80.HALF.LO = 0;
    }
}

void sub_080463E4(Entity* this) {
    sub_080465C8();
    if (--this->field_0x70.HALF_U.LO == 0) {
        this->field_0x70.HALF.LO = 0x168;
        sub_08046634(this, 1);
    }
    sub_080466A8(this);
    if (++this->field_0x7a.HWORD > 0x59f) {
        this->field_0x7a.HWORD = 0;
        this->field_0x7c.BYTES.byte0 = 0;
        this->field_0x7c.BYTES.byte1 = 0;
        this->field_0x80.HALF.LO = 0;
    } else {
        if (this->field_0x7a.HWORD == 0x78) {
            sub_08046668(this);
        } else {
            if (this->field_0x7a.HWORD == 0x528) {
                this->field_0x78.HALF.LO = 0;
#ifndef EU
                this->field_0x7c.BYTES.byte1 = 0;
                this->field_0x7c.BYTES.byte3 = 0;
#endif
            }
        }
    }
    if (this->health == 0) {
        this->action = 1;
#ifdef EU
        this->field_0x78.HALF.LO = 0;
#endif
        this->field_0x70.HALF.LO = 0x3c;
#ifndef EU
        this->field_0x78.HALF.LO = 0;
#endif
        this->field_0x80.HALF.LO = 0;
        SoundReq(0x128);
    }
}

#ifndef EU
void sub_08046498(Entity* this) {
    MemClear(&gUnk_02019EE0, 0x8000);
    MemClear(&gMapDataTopSpecial, 0x8000);
    sub_080464C0(this);
}
#endif

extern u32 gUnk_080D1A74[];
extern u8 gUpdateVisibleTiles;

void sub_080464C0(Entity* this) {
    s32 i;
    u8* src;
    u8* dst;
    sub_080197D4(gUnk_080D1A74[this->animationState >> 6]);
    sub_08046518();
    for (i = 0x20, src = ((u8*)&gUnk_02019EE0), dst = ((u8*)&gUnk_02019EE0) + 0x3260; i != 0; i--) {
        MemCopy(src, dst, 0x40);
        dst += 0x100;
        src += 0x40;
    }
    MemClear(&gUnk_02019EE0, 0x800);
    gUpdateVisibleTiles = 1;
}

extern u8 gUnk_080B3E80[];
extern u8 gUnk_080B37A0[];
extern u16 gMetatileTypesTop[];

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

extern const u16 gUnk_080D1A84[];

void sub_0804660C(Entity* this, u32 unk1) {
    const u16* p;
    this->animationState = unk1;
    p = &gUnk_080D1A84[unk1 >> 5];
    this->x.HALF.HI = p[0] + gRoomControls.roomOriginX;
    this->y.HALF.HI = p[1] + gRoomControls.roomOriginY;
}

extern const u8 gUnk_080D1AF4[];

void sub_08046634(Entity* this, u32 unk1) {
    u32 tmp;
    if (unk1 == 0) {
        tmp = gUnk_080D1AF4[Random() & 3];
    } else {
        tmp = Random() & 7;
    }
    sub_080A1ED0(tmp, 0, this->animationState >> 3);
}

extern const u8 gUnk_080D1AF8[];

void sub_08046668(Entity* this) {
    if (this->health == 0) {
        return;
    }
#ifndef EU
    if (this->field_0x78.HALF.LO == 0xFF) {
        return;
    }
#endif
    this->field_0x78.HALF.LO = gUnk_080D1AF8[Random() & 3];
    this->field_0x7c.BYTES.byte3 = 0;
    this->field_0x82.HALF.LO = 0;
    sub_080467DC(this);
}

void sub_080466A8(Entity* this) {
    if (this->field_0x7c.BYTES.byte0 != 0) {
        this->field_0x7c.BYTES.byte1 |= this->field_0x7c.BYTES.byte0;
        if (this->actionDelay == 0 && this->field_0x78.HALF.LO != 0xFF) {
#ifndef EU
            this->actionDelay = 4;
#else
            this->actionDelay = 3;
#endif
        }
        if (sub_08000E62(this->field_0x7c.BYTES.byte1) > 2) {
            this->actionDelay = 0;
            this->field_0x7c.BYTES.byte1 = 0;
            this->field_0x78.HALF.LO = 0xFF;
            SoundReq(0x127);
            if (this->health != 0) {
                sub_08080964(8, 0);
                if (++this->field_0x82.HALF.LO <= 0xC) {
                    this->health--;
                }
                if (this->health == 0) {
                    this->field_0x78.HALF.LO = 0;
                    this->field_0x7a.HWORD = 0x528;
                } else {
                    if (this->field_0x7c.BYTES.byte3 == 0) {
                        this->field_0x7c.BYTES.byte3 = 1;
                        this->field_0x7a.HWORD = 0x438;
                    }
                }
            }
            sub_080467DC(this);
        }
    }
    if (this->actionDelay != 0 && this->field_0x78.HALF.LO != 0xFF && --this->actionDelay == 0) {
        Entity* tmp;
        this->field_0x80.HALF.LO |= this->field_0x7c.BYTES.byte1;
        this->field_0x7c.BYTES.byte1 = 0;
        sub_080467DC(this);
#ifndef EU
        if (((GyorgFemaleHeap*)this->myHeap)->unk_3c != 0xFF) {
#endif
            tmp = &gPlayerEntity;
            tmp->knockbackDirection = ((GyorgFemaleHeap*)this->myHeap)->unk_3c;
            tmp->iframes = 0xF4;
            tmp->knockbackDuration = 0xA;
            tmp = CreateFx(this, 0x2C, 0);
            if (tmp) {
                tmp->x.HALF.HI = ((GyorgFemaleHeap*)this->myHeap)->unk_38;
                tmp->y.HALF.HI = ((GyorgFemaleHeap*)this->myHeap)->unk_3a;
                tmp->collisionLayer = 1;
                UpdateSpriteForCollisionLayer(tmp);
            }
#ifndef EU
        }
#endif
    }
    this->field_0x7c.BYTES.byte0 = 0;
}

void sub_080467DC(Entity* this) {
    u32 i;
    for (i = 0; i < 8; i++) {
        ((GyorgFemaleHeap*)this->myHeap)->unk_18[i] = 0;
    }
}
