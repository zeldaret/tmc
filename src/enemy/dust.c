/**
 * @file dust.c
 * @ingroup Enemies
 *
 * @brief Dust enemy
 */
#include "asm.h"
#include "enemy.h"
#include "entity.h"
#include "hitbox.h"
#include "object.h"
#include "physics.h"
#include "player.h"
#include "room.h"

typedef struct {
    Entity base;
    u8 filler[0xc];
    u8 unk_74;
    u8 unk_75;
    u16 unk_76;
} DustEntity;

typedef struct {
    s8 unk_0;
    s8 unk_1;
    u8 unk_2;
    u8 unk_3;
    u8 unk_4;
} PACKED DustHeapItem;

typedef struct {
    u8 unk_0;
    DustHeapItem items[0];
} PACKED DustHeap;

#define HEAP ((DustHeap*)super->myHeap)

#ifdef EU
#define DUST_SPRITE_INDEX 0x1ea
#else
#define DUST_SPRITE_INDEX 0x1eb
#endif

void Dust_OnTick(DustEntity*);
void Dust_OnCollision(DustEntity*);
void Dust_OnGrabbed(DustEntity*);
void sub_080441E0(DustEntity*);
void sub_080442A0(DustEntity*);
void sub_080441CC(DustEntity*);
void sub_080441C4(DustEntity*);
void sub_080441BC(DustEntity*);
void sub_08044310(DustEntity*);
void sub_080445C0(DustEntity*);
void sub_080442BC(DustEntity*);
void sub_08044498(DustEntity*);
void sub_08044550(DustEntity*);

extern void* sub_080AD8F0(u32, u32);

extern const s8 gUnk_08126EE4[];

void (*const Dust_Functions[])(Entity*) = {
    (EntityActionPtr)Dust_OnTick,    (EntityActionPtr)Dust_OnCollision, GenericKnockback, GenericDeath, GenericConfused,
    (EntityActionPtr)Dust_OnGrabbed,
};

void Dust(Entity* this) {
    Dust_Functions[GetNextFunction(this)](this);
}

void Dust_OnTick(DustEntity* this) {
    static void (*const Dust_Actions[])(DustEntity*) = {
        sub_080441E0,
        sub_080442A0,
    };
    Dust_Actions[super->action](this);
}

void Dust_OnCollision(DustEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, Dust_Functions);
}

void Dust_OnGrabbed(DustEntity* this) {
    static void (*const Dust_SubActions[])(DustEntity*) = {
        sub_080441BC,
        sub_080441C4,
        sub_080441CC,
    };

    if (super->type == 0) {
        if (sub_0806F520(super)) {
            if (--super->timer == 0) {
                super->timer = 8;
                sub_08044310(this);
            }
        } else {
            super->timer = 8;
        }
    } else {
        if (sub_0806F520(super)) {
            Dust_SubActions[super->subAction](this);
        } else {
            sub_080445C0(this);
            DeleteThisEntity();
        }
    }
}

void sub_080441BC(DustEntity* this) {
    super->subAction = 2;
}

void sub_080441C4(DustEntity* this) {
    sub_0806F4E8(super);
}

void sub_080441CC(DustEntity* this) {
    if (sub_0806F3E4(super)) {
        GenericDeath(super);
    }
}

void sub_080441E0(DustEntity* this) {
    int iVar1;
    u8* pbVar2;
    u32* puVar3;
    Hitbox* pHVar4;

    if (CheckGlobalFlag(MACHI_MACHIHOKORI)) {
        DeleteThisEntity();
    }
    if (super->type == 0) {
        pbVar2 = (u8*)sub_080AD8F0(DUST_SPRITE_INDEX, 1);
        iVar1 = (u32)*pbVar2 * sizeof(DustHeapItem) + 1;
        puVar3 = (u32*)zMalloc(iVar1);
        super->myHeap = puVar3;
        if (puVar3 == NULL) {
            return;
        }
        MemCopy(pbVar2, puVar3, iVar1);
        super->spriteAnimation[2] = 0xff;
        pHVar4 = (Hitbox*)zMalloc(HEAP->unk_0 * 8 + 0xc);
        if (pHVar4 == NULL) {
            zFree(super->myHeap);
            return;
        }
        super->hitbox = pHVar4;
        *pHVar4 = gHitbox_4;
        sub_080442BC(this);
        super->frameIndex = 1;
        super->spritePriority.b0 = 7;
        this->unk_75 = 0;
        this->unk_76 = -1;
    } else {
        super->frameIndex = 0;
        super->speed = 0;
        super->hitbox = (Hitbox*)&gHitbox_1;
        super->gustJarFlags = 1;
    }
    super->action = 1;
    super->timer = 8;
}

void sub_080442A0(DustEntity* this) {
    if (super->type == 0) {
        sub_08044498(this);
    } else {
        sub_08044550(this);
    }
}

extern const u8 gUnk_080D15B4[];

void sub_080442BC(DustEntity* this) {
    u32 hitboxCount;
    u32 i;
    const u8* ptr = gUnk_080D15B4;
    hitboxCount = HEAP->unk_0;

    for (i = 0; i < hitboxCount; i++) {
        ((Hitbox3D*)&super->hitbox[i])[1].offset_x = ptr[0];
        ((Hitbox3D*)&super->hitbox[i])[1].offset_y = ptr[1];
        ((Hitbox3D*)&super->hitbox[i])[1].unknown[0] = ptr[2];
        ((Hitbox3D*)&super->hitbox[i])[1].unknown[1] = ptr[3];
        ((Hitbox3D*)&super->hitbox[i])[1].unknown[2] = 0;
        ((Hitbox3D*)&super->hitbox[i])[1].unknown[3] = i;
    }
    this->unk_74 = hitboxCount;
}

// heap and hitbox struct
void sub_08044310(DustEntity* this) {
    Entity* iVar1;
    u32 bVar2;
    u32 i;
    u32 uVar7;
    u8* pbVar9;
    u32 tmp;
    DustHeap* reg7;

    uVar7 = 0xff;
    tmp = 0xff;

    switch (gPlayerEntity.base.animationState / 2 & 3) {
        case 0:
            for (i = 0; i < this->unk_74; i++) {
                if ((((Hitbox3D*)&super->hitbox[i])[1].unknown[2] == 0) &&
                    (tmp > (u8)((Hitbox3D*)&super->hitbox[i])[1].offset_y)) {
                    uVar7 = i;
                }
            }
            break;
        case 1:
            for (i = 0; i < this->unk_74; i++) {
                if ((((Hitbox3D*)&super->hitbox[i])[1].unknown[2] == 0) &&
                    (tmp > ((Hitbox3D*)&super->hitbox[i])[1].unknown[0])) {
                    uVar7 = i;
                }
            }
            break;
        case 2:
            for (i = 0; i < this->unk_74; i++) {
                if ((((Hitbox3D*)&super->hitbox[i])[1].unknown[2] == 0) &&
                    (tmp > (u8)((Hitbox3D*)&super->hitbox[i])[1].offset_x)) {
                    uVar7 = i;
                }
            }
            break;
        case 3:
            for (i = 0; i < this->unk_74; i++) {
                if ((((Hitbox3D*)&super->hitbox[i])[1].unknown[2] == 0) &&
                    (tmp > ((Hitbox3D*)&super->hitbox[i])[1].unknown[1])) {
                    uVar7 = i;
                }
            }
            break;
    }

    if (uVar7 != 0xff) {
        super->hitbox[uVar7 + 2].offset_x = 1;
        HEAP->unk_0--;
        reg7 = HEAP + 1 + HEAP->unk_0 * 5;
        bVar2 = HEAP->unk_0;
        pbVar9 = &HEAP->items[(u32)(u8)super->hitbox[uVar7 + 2].offset_y].unk_0;
        iVar1 = CreateEnemy(DUST, 1);
        if (iVar1 != 0) {
            PositionRelative(super, iVar1, ((s8)*pbVar9 + 8) * 0x10000, ((s8)pbVar9[1] + 8) * 0x10000);
        }

        if (HEAP->unk_0 == 0) {
            SetGlobalFlag(MACHI_MACHIHOKORI);
            SoundReq(SFX_SECRET);
            DeleteThisEntity();
        }

        for (i = 0; i < 5; i++) {
            pbVar9[i] = reg7[i].unk_0;
        }

        for (i = 0; i < this->unk_74; i++) {
            if (((Hitbox3D*)&super->hitbox[i])[1].unknown[3] == HEAP->unk_0) {
                ((Hitbox3D*)&super->hitbox[i])[1].unknown[3] = super->hitbox[uVar7 + 2].offset_y;
                break;
            }
        }
    }
}

void sub_08044498(DustEntity* this) {
    Entity* pEVar1;
    DustHeapItem* pbVar2;
    u32 i;
    u32 tileIndex;
    u32 uVar4;
    u32 tmp;
    u32 xdiff, ydiff;

    uVar4 = COORD_TO_TILE(&gPlayerEntity.base);
    tmp = (gPlayerState.playerInput.newInput & 0xf00);
    if (tmp != this->unk_75 || uVar4 != this->unk_76) {
        this->unk_75 = tmp;
        this->unk_76 = uVar4;
        pbVar2 = HEAP->items;
        uVar4 = HEAP->unk_0;
        xdiff = gPlayerEntity.base.x.HALF.HI - super->x.HALF.HI;
        ydiff = gPlayerEntity.base.y.HALF.HI - super->y.HALF.HI;

        for (i = 0; i < uVar4; i++) {
            if (xdiff - pbVar2[i].unk_0 < 0x10 && ydiff - pbVar2[i].unk_1 < 0x10) {
                pEVar1 = CreateObject(SPECIAL_FX, FX_DASH, 0);
                if (pEVar1 == NULL) {
                    return;
                }
                CopyPosition(&gPlayerEntity.base, pEVar1);
                return;
            }
        }
    }
}

void sub_08044550(DustEntity* this) {
    u8 uVar1;
    const s8* ptr;

    if ((gPlayerState.gustJarState & 0xf) == 1) {
        if (super->speed < 0x100) {
            super->speed += 0x10;
        }
        ptr = &gUnk_08126EE4[gPlayerEntity.base.animationState & 0xe];
        super->direction =
            CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gPlayerEntity.base.x.HALF.HI + ptr[0],
                                 gPlayerEntity.base.y.HALF.HI + ptr[1]);
        LinearMoveUpdate(super);
    } else {
        sub_080445C0(this);
        DeleteThisEntity();
    }
}

void sub_080445C0(DustEntity* this) {
    Entity* pEVar1;

    pEVar1 = CreateObject(DIRT_PARTICLE, 1, 1);
    if (pEVar1 != NULL) {
        CopyPosition(super, pEVar1);
    }
}
