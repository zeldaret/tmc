#define NENT_DEPRECATED
#include "entity.h"
#include "enemy.h"
#include "hitbox.h"
#include "player.h"
#include "physics.h"
#include "room.h"
#include "asm.h"
#include "object.h"

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

void sub_08044134(DustEntity*);
void sub_0804414C(DustEntity*);
void sub_0804415C(DustEntity*);
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
    (EntityActionPtr)sub_08044134, (EntityActionPtr)sub_0804414C, GenericKnockback, GenericDeath, GenericConfused,
    (EntityActionPtr)sub_0804415C,
};

void Dust(Entity* this) {
    Dust_Functions[GetNextFunction(this)](this);
}

void sub_08044134(DustEntity* this) {
    static void (*const Dust_Actions[])(DustEntity*) = {
        sub_080441E0,
        sub_080442A0,
    };
    Dust_Actions[super->action](this);
}

void sub_0804414C(DustEntity* this) {
    EnemyFunctionHandlerAfterCollision(super, Dust_Functions);
}

void sub_0804415C(DustEntity* this) {
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

NONMATCH("asm/non_matching/dust/sub_080442BC.inc", void sub_080442BC(DustEntity* this)) {
    u32 bVar1;
    u32 i;
    u32 tmp;
    const u8* ptr = gUnk_080D15B4;
    u8* ptr2;

    bVar1 = HEAP->unk_0;

    for (i = 0; i < bVar1; i++) {
        tmp = 0;
        super->hitbox[i + 1].unk2[2] = ptr[0];
        super->hitbox[i + 1].unk2[3] = ptr[1];
        super->hitbox[i + 1].width = ptr[2];
        super->hitbox[i + 1].height = ptr[3];
        // hitbox is probably misused here.
        super->hitbox[i + 1].offset_x = tmp;
        super->hitbox[i + 2].offset_y = (s8)i;
    }
    this->unk_74 = bVar1;
}
END_NONMATCH

// heap and hitbox struct
NONMATCH("asm/non_matching/dust/sub_08044310.inc", void sub_08044310(DustEntity* this)) {
    Entity* iVar1;
    u32 bVar2;
    Hitbox* pHVar3;
    DustHeap* puVar4;
    u32 i;
    u8* puVar6;
    u32 uVar7;
    Hitbox* pHVar8;
    u8* pbVar9;
    u32 tmp;

    uVar7 = 0xff;
    tmp = 0xff;
    switch (gPlayerEntity.animationState >> 1 & 3) {
        case 0:
            for (i = 0; i < this->unk_74; i++) {
                if (((u8)super->hitbox[i + 2].offset_x == 0) && (tmp > (u32)super->hitbox[i + 1].unk2[3])) {
                    uVar7 = i;
                }
            }
            break;
        case 1:
            for (i = 0; i < this->unk_74; i++) {
                if (((u8)super->hitbox[i + 2].offset_x == 0) && (tmp > (u8)super->hitbox[i + 1].width)) {
                    uVar7 = i;
                }
            }
            break;
        case 2:
            for (i = 0; i < this->unk_74; i++) {
                if ((u8)super->hitbox[i + 2].offset_x == 0 && (tmp > (u8)super->hitbox[i + 1].unk2[2])) {
                    uVar7 = i;
                }
            }
            break;
        case 3:
            for (i = 0; i < this->unk_74; i++) {
                if (((u8)super->hitbox[i + 2].offset_x == 0) && (tmp > super->hitbox[i + 1].height)) {
                    uVar7 = i;
                }
            }
            break;
    }

    if (uVar7 != 0xff) {
        super->hitbox[uVar7 + 2].offset_x = 1;
        HEAP->unk_0--;
        puVar4 = HEAP;
        bVar2 = puVar4->unk_0;
        pbVar9 = &puVar4->items[(u32)(u8)super->hitbox[uVar7 + 2].offset_y].unk_1;
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
            pbVar9[i] = (&puVar4->unk_0)[i];
        }

        for (i = 0; i < this->unk_74; i++) {
            if ((u8)super->hitbox[i + 2].offset_y == HEAP->unk_0) {
                super->hitbox[i].unk2[3] = super->hitbox[uVar7 + 2].offset_y;
                return;
            }
        }
    }
}
END_NONMATCH

void sub_08044498(DustEntity* this) {
    Entity* pEVar1;
    DustHeapItem* pbVar2;
    u32 i;
    u32 tileIndex;
    u32 uVar4;
    u32 tmp;
    u32 xdiff, ydiff;

    uVar4 = COORD_TO_TILE(&gPlayerEntity);
    tmp = (gPlayerState.playerInput.field_0x92 & 0xf00);
    if (tmp != this->unk_75 || uVar4 != this->unk_76) {
        this->unk_75 = tmp;
        this->unk_76 = uVar4;
        pbVar2 = HEAP->items;
        uVar4 = HEAP->unk_0;
        xdiff = gPlayerEntity.x.HALF.HI - super->x.HALF.HI;
        ydiff = gPlayerEntity.y.HALF.HI - super->y.HALF.HI;

        for (i = 0; i < uVar4; i++) {
            if (xdiff - pbVar2[i].unk_0 < 0x10 && ydiff - pbVar2[i].unk_1 < 0x10) {
                pEVar1 = CreateObject(SPECIAL_FX, 0x11, 0);
                if (pEVar1 == NULL) {
                    return;
                }
                CopyPosition(&gPlayerEntity, pEVar1);
                return;
            }
        }
    }
}

void sub_08044550(DustEntity* this) {
    u8 uVar1;
    const s8* ptr;

    if ((gPlayerState.field_0x1c & 0xf) == 1) {
        if (super->speed < 0x100) {
            super->speed += 0x10;
        }
        ptr = &gUnk_08126EE4[gPlayerEntity.animationState & 0xe];
        super->direction = CalculateDirectionTo(super->x.HALF.HI, super->y.HALF.HI, gPlayerEntity.x.HALF.HI + ptr[0],
                                                gPlayerEntity.y.HALF.HI + ptr[1]);
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
