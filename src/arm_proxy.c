#include "global.h"
#include "audio.h"
#include "main.h"
#include "player.h"
#include "structures.h"
#include "save.h"
#include "textbox.h"
#include "functions.h"
#include "object.h"
#include "manager.h"
#include "utils.h"
#include "npc.h"

extern u8 gUnk_03003DE0;
extern u8 gUnk_03000C30;

extern u16* gUnk_02025EB0;
extern u16* gUnk_0200B650;
extern u8 gUnk_02000070;
extern u8 gUnk_03003DF0[];
extern u8 gUnk_03003BE0;
extern Entity* gUnk_03004040[3];
extern u8 gUnk_020342F8;
extern u8 gHitboxCount;
extern void gDoCollision(void);

extern void sub_080ADD70();
extern void sub_0801C25C();
extern void UpdateDisplayControls();
extern void LoadResources();
extern void FadeMain();
extern u32 sub_0805E3B0();
extern void HandlePlayerLife();
extern void DoPlayerAction();
extern void sub_080171F0();
extern void sub_08078FB0();
extern void DrawEntity();
extern void sub_0807A050();
extern u32 sub_08079B24();
extern void sub_08079708();
extern void CreateSparkle();
extern void sub_080028E0(Entity*);
extern void sub_08078180(void);
extern void sub_0807B0C8(void);
extern void sub_0807A8D8(Entity*);
extern void sub_08077FEC(u32);
extern void ItemInit(Entity*);
extern void sub_080A2838(Entity*);
extern u32 ReadBit(void*, u32);
extern void sub_0806EC78(Entity*);

typedef struct {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4;
    u8 unk5;
    u16 unk6;
} ItemFrame;
extern ItemFrame gUnk_08126DA8[];
extern ItemFrame* gUnk_08126ED8[3];

typedef struct {
    u16 unk0;
    u16 unk1;
    u16 x;
    u16 y;
} NPCStruct;
extern NPCStruct gUnk_02031EC0[100];

typedef struct {
    void* last;
    void* first;
    void* node;
    u8 flags;
} LinkedList2;

extern LinkedList2 gUnk_03003C70[16];
extern LinkedList2* gUnk_02018EA0;

// Load any resources that were requested with LoadResourceAsync
void LoadResources(void) {
    if (gUnk_03003DE0 != 0) {
        u8* buf = &gUnk_03000C30;
        s32 i = gUnk_03003DE0;
        gUnk_03003DE0 = 0;
        do {
            switch (*buf) {
                case 0:
                    DmaCopy32(3, *(u32*)(buf + 4), *(u32*)(buf + 8), *(u16*)(buf + 2));
                    break;
                case 1:
                    LZ77UnCompVram(*(void**)(buf + 4), *(u8**)(buf + 8));
                    break;
                case 2:
                    DmaFill32(3, *(u32*)(buf + 4), *(u32*)(buf + 8), *(u16*)(buf + 2));
                    break;
            }
            buf += 12;
            i--;
        } while (0 < i);
    }
}

void PrepNextFrame(void) {
    gMain.interruptFlag = 0;
    VBlankIntrWait();
    do {
        // Our VBlankIntr will set this flag
    } while (gMain.interruptFlag == 0);

    sub_080ADD70();
    sub_0801C25C();
    UpdateDisplayControls();
    LoadResources();

    if (gUnk_02000070) {
        gUnk_02000070 = 0;
        if (gUnk_02025EB0 != NULL)
            // sizeof(BGBuffer) = 0x800, what are we omitting?
            DmaCopy32(3, &gBG1Buffer, VRAM + (*gUnk_02025EB0 & 0x1f00) * 8, 0x5C0);
        if (gUnk_0200B650 != NULL)
            DmaCopy32(3, &gBG2Buffer, VRAM + (*gUnk_0200B650 & 0x1f00) * 8, 0x5C0);
    }
    FadeMain();
}

void PlayerUpdate(Entity* this) {
    if (gSave.stats.effect != 0)
        gPlayerState.flags.all |= 0x4000;
    else
        gPlayerState.flags.all &= ~0x4000;

    if (sub_0805E3B0(this) == 0) {
        if ((gPlayerState.flags.all & 0x80000) != 0) {
            sub_08077B20();
            if ((gPlayerState.flags.all & 0x200000) != 0) {
                gPlayerState.playerAction = 0x18;
                gPlayerState.flags.all &= ~0x80000;
                gPlayerState.hurtBlinkSpeed = 0xf0;
                this->flags |= 0x80;
            } else {
                this->flags &= ~0x80;
                gPlayerState.field_0xa8 = 0xf;
            }
        }
        HandlePlayerLife(this);
        DoPlayerAction(this);
        if ((this->height.WORD == 0) && (this->action == 1 || this->action == 9))
            sub_08008790(this, 8);
        sub_080171F0();
    }
    sub_08078FB0(this);
    DrawEntity(this);
    sub_0807A050();
}

// Responsible for some life things like low health beep and initiating the death sequence
void HandlePlayerLife(Entity* this) {
    u32 temp;

    gUnk_0200AF00.filler25[10] = 0;
    gUnk_0200AF00.filler25[8] = 0;
    gUnk_0200AF00.filler25[9] = 0;

    if ((gPlayerEntity.bitfield & 0x80) && (gPlayerEntity.iframes > 0))
        SoundReq(SFX_86);

    gPlayerState.flags.all &= ~(0x2000000 | 0x200);
    if (gPlayerState.flags.all & 0x400)
        ResetPlayer();
    if ((gPlayerState.flags.all & 0x400000) && !gPlayerState.field_0xa0[0])
        sub_0807A108();
    if (sub_08079B24() == 0)
        sub_08079708(this);

    gUnk_03003DF0[0] = 0;
    if (gPlayerState.field_0x27[0] != 0)
        gPlayerState.field_0x27[0]--;

    gPlayerState.field_0xa9 = gPlayerState.field_0xa8;
    gPlayerState.field_0xa8 = 0;
    if (gPlayerState.field_0x40[0x4a] != 0) {
        gPlayerState.field_0x40[0x4a]--;
        return;
    }

    if ((gPlayerState.field_0x8b != 0) || (gTextBox.doTextBox & 0x7f))
        return;

    gRoomVars.unk2 = gTextBox.doTextBox & 0x7f;
    temp = gSave.stats.maxHealth / 4;
    if (temp > 24)
        temp = 24;
    if (temp < 8)
        temp = 8;

    if (gSave.stats.health <= temp) {
        gRoomVars.unk2 = 1;
        if ((gUnk_0200AF00.filler0[1] == 0) && gScreenTransition.frameCount % 90 == 0) {
            EnqueueSFX(SFX_LOW_HEALTH);
        }
    }

    if (gSave.stats.charm == 0) {
        gSave.stats.charmTimer = 0;
    } else if ((gSave.stats.charmTimer == 0) || --gSave.stats.charmTimer == 0) {
        gSave.stats.charm = 0;
        SoundReq(SFX_ICE_BLOCK_MELT);
    }

    if (gSave.stats.unkB == 0) {
        gSave.stats.unkTimer = 0;
    } else if ((gSave.stats.unkTimer == 0) || (--gSave.stats.unkTimer == 0)) {
        gSave.stats.unkB = 0;
        SoundReq(SFX_140);
    } else if ((gSave.stats.unkTimer & 0xf) == 0) {
        CreateSparkle(this);
    }

    if (gSave.stats.effect == 0) {
        gSave.stats.effectTimer = 0;
    } else if ((gSave.stats.effectTimer == 0) || --gSave.stats.effectTimer == 0) {
        gSave.stats.effect = 0;
    } else if ((gSave.stats.effectTimer & 0x3f) == 0) {
        CreateFx(this, 0x55 + gSave.stats.effect, 0);
    }
}

void sub_080171F0(void) {
    if (gPlayerState.field_0x1a[0] != 0)
        ResetPlayer();
    if (gPlayerState.field_0x14 != 0)
        gPlayerState.field_0x14--;
    if (gPlayerEntity.field_0x7a.HWORD != 0)
        gPlayerEntity.field_0x7a.HWORD--;

    gPlayerEntity.bitfield &= ~0x80;
    if (gPlayerEntity.action != 0x14)
        gPlayerState.flags.all = (gPlayerState.flags.all & ~0x10000) | (0x10000 * (gPlayerState.flags.all & 2) / 2);

    gPlayerState.flags.all &= ~2;
    sub_080028E0(&gPlayerEntity);

    if (gPlayerState.flags.all & 0x400000)
        gUnk_0200AF00.filler25[10] = 1;

    sub_08078180();
    gPlayerState.field_0x7 &= ~0x80;
    gPlayerState.field_0xa &= 0xf;
    gPlayerState.keepFacing &= ~0x80;
    gPlayerState.field_0x1a[0] = 0;
    gPlayerState.field_0x80 = 0;
    gPlayerState.field_0xaa = 0;
    MemClear(&gUnk_03003BE0, 0x8c);
    gPlayerEntity.spriteOffsetY = gPlayerState.field_0x3f;
    gPlayerState.field_0x3f = 0;
    sub_0807B0C8();

    if (gPlayerState.flags.all & 0x400000)
        gUnk_03004040[0]->spriteOffsetY = gUnk_03004040[1]->spriteOffsetY = gUnk_03004040[2]->spriteOffsetY = 0;

    if (gPlayerEntity.action == 0x1d)
        gPlayerState.flags.all |= 0x20000000;
    else
        gPlayerState.flags.all &= ~0x20000000;

    sub_0807A8D8(&gPlayerEntity);
    if (gPlayerState.jumpStatus & 0xc0)
        gPlayerEntity.iframes = 0xfe;

    if (gPlayerEntity.action != 0x17) {
        sub_08077FEC(gPlayerEntity.action);
    }
}

void ItemUpdate(Entity* this) {
    if ((this->flags & 1) == 0 && this->action == 0 && this->subAction == 0)
        ItemInit(this);

    if (!sub_0805E3B0(this)) {
        gPlayerItemFunctions[this->id](this);
        this->bitfield &= ~0x80;
        if (this->iframes != 0) {
            if (this->iframes > 0)
                this->iframes--;
            else
                this->iframes++;
        }
    }
    DrawEntity(this);
}

// tiny regalloc
NONMATCH("asm/non_matching/arm_proxy/ItemInit.inc", void ItemInit(Entity* this)) {
    ItemFrame* entry;

    entry = &gUnk_08126DA8[this->id];
    if (entry->unk0 == 0xff) {
        u32 temp = entry->unk2;
        ItemFrame* temp2 = gUnk_08126ED8[entry->unk1];
        entry = &temp2[this->field_0x68.HALF.LO - temp];
    }

    this->palette.raw = ((entry->unk0 & 0xf) << 4) | entry->unk0;
    this->field_0x44 = entry->unk1;
    this->field_0x40 = entry->unk3;
    this->damageType = entry->unk4;
    this->spriteIndex = entry->unk5;
    if (entry->unk6 == 0)
        this->spriteVramOffset = gPlayerEntity.spriteVramOffset;
    else
        this->spriteVramOffset = entry->unk6 & 0x3ff;

    if (this->animationState == 0)
        this->animationState = gPlayerEntity.animationState & 6;

    this->collisionLayer = gPlayerEntity.collisionLayer;
    this->spriteRendering.b3 = gPlayerEntity.spriteRendering.b3;
    this->spritePriority.b0 = gPlayerEntity.spritePriority.b0;
    this->spriteOrientation.flipY = gPlayerEntity.spriteOrientation.flipY;
    this->currentHealth = 1;
    this->flags |= 1;
}
END_NONMATCH

void ObjectUpdate(Entity* this) {
    int iVar1;

    if (((this->flags & 1) == 0) && (this->action == 0))
        sub_080A2838(this);
    if (this->iframes != 0)
        this->iframes++;
    if (!sub_0805E3B0(this)) {
        gObjectFunctions[this->id](this);
        this->bitfield &= ~0x80;
    }
    DrawEntity(this);
}

void ManagerUpdate(Entity* this) {
    if (!sub_0805E3B0(this))
        gManagerFunctions[this->id](this);
}

// regalloc
NONMATCH("asm/non_matching/arm_proxy/sub_08017530.inc", void NPCUpdate(Entity* this)) {
    if ((this->currentHealth & 0x7f) && !ReadBit(&gUnk_020342F8, this->currentHealth - 1))
        DeleteThisEntity();
    if ((this->action == 0) && ((this->flags & 1) == 0))
        sub_0806EC78(this);
    if (!sub_0805E3B0(this))
        gNPCFunctions[this->id][0](this);
    if (this->next != NULL) {
        if (gNPCFunctions[this->id][1] != NULL)
            gNPCFunctions[this->id][1](this);
        if ((this->currentHealth & 0x7f) != 0) {
            u32 temp = this->currentHealth & 0x7f;
            gUnk_02031EC0[temp * 2 - 2].x = this->x.HALF.HI - gRoomControls.roomOriginX;
            gUnk_02031EC0[temp * 2 - 2].y = this->y.HALF.HI - gRoomControls.roomOriginY;
        }
        DrawEntity(this);
    }
}
END_NONMATCH

void ClearHitboxList(void) {
    gHitboxCount = 0;
}

void CollisionMain(void) {
    void (*doCollision)(void);
    u32 flags;
    u32 temp;

    temp = gUnk_03003DC0.unk0;
    if (gUnk_03003DC0.unk0 <= gUnk_03003DC0.unk1)
        temp = gUnk_03003DC0.unk1;
    if (temp != 0)
        return;

    doCollision = &gDoCollision;
    // Check to see if we should disable collision this frame
    if (gPlayerState.field_0x8b != 0) {
        u32 temp = gPlayerEntity.flags;
        gPlayerEntity.flags &= ~0x80;
        doCollision();
        gPlayerEntity.flags = temp; // reset collision to before
    } else {
        doCollision();
    }
}

void RegisterPlayerHitbox(void) {
    MemClear(&gUnk_03003C70, sizeof(gUnk_03003C70));
    gUnk_02018EA0 = (LinkedList2*)&gUnk_03003C70[0].last;
    gUnk_03003C70[0].last = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].first = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].node = &gPlayerEntity;
}

// Loop declaration seems wrong
NONMATCH("asm/non_matching/arm_proxy/sub_0801766C.inc", u32 sub_0801766C(Entity* this)) {
    u32 uVar1;
    LinkedList2* puVar3;
    LinkedList2* puVar2;
    LinkedList2* pLVar2;
    LinkedList2* i;
    u8* pbVar4;

    if (this->spritePriority.b2 != 0) {
        return 1;
    } else {
        for (i = &gUnk_03003C70[0]; i < &gUnk_03003C70[16]; ++i) {
            if (i->node == NULL) {
                i->node = this;
                i->flags = 0;
                this->spritePriority.b2 = 1;
                pLVar2 = gUnk_02018EA0;
                if (gUnk_02018EA0->flags != 0) {
                    do {
                        pLVar2 = pLVar2->first;
                    } while (pLVar2->flags != 0);
                    i->first = pLVar2;
                    puVar3 = pLVar2->last;
                    i->last = puVar3;
                    puVar3->first = i;
                    pLVar2->last = i;
                } else {
                    i->first = gUnk_02018EA0;
                    puVar2 = gUnk_02018EA0->last;
                    i->last = puVar2;
                    puVar2->first = i;
                    gUnk_02018EA0->last = i;
                    gUnk_02018EA0 = i;
                }
                return 1;
            }
        }
        return 0;
    }
}
END_NONMATCH

// same loop issue
NONMATCH("asm/non_matching/arm_proxy/sub_080176E4.inc", u32 sub_080176E4(Entity* this)) {
    u32 uVar1;
    LinkedList2* j;
    LinkedList2* i;
    u8* pbVar4;

    if (this->spritePriority.b2 != 0) {
        return 1;
    } else {
        for (i = &gUnk_03003C70[0]; i < &gUnk_03003C70[16]; ++i) {
            if (i->node == NULL) {
                i->node = this;
                i->flags = 1;
                this->spritePriority.b2 = 1;
                i->first = gUnk_02018EA0;
                j = gUnk_02018EA0->last;
                i->last = j;
                j->first = i;
                gUnk_02018EA0->last = i;
                gUnk_02018EA0 = i;
                return 1;
            }
        }
        return 0;
    }
}
END_NONMATCH

// you guessed it
NONMATCH("asm/non_matching/arm_proxy/sub_08017744.inc", void sub_08017744(Entity* this)) {
    LinkedList2* i;
    for (i = &gUnk_03003C70[0]; i < &gUnk_03003C70[16]; ++i) {
        if (i->node == this) {
            if (this->spritePriority.b2 != 0) {
                this->spritePriority.b2 = 0;
                i->node = NULL;
                ((LinkedList2*)i->last)->first = i->first;
                ((LinkedList2*)i->first)->last = i->last;
                if (i != gUnk_02018EA0)
                    return;
                gUnk_02018EA0 = i->first;
            }
        }
    }
}
END_NONMATCH

// regalloc
NONMATCH("asm/non_matching/arm_proxy/sub_080177A0.inc", bool32 sub_080177A0(Entity* this, Entity* that)) {
    u32 this_d;
    u32 depth;

    if ((that->collisionLayer & this->collisionLayer) != 0) {
        Hitbox* bb_this = this->hitbox;
        Hitbox* bb_that = that->hitbox;
        u32 this_w = bb_this->width;
        u32 that_w = bb_that->width;
        if ((((this->x.HALF.HI - that->x.HALF.HI) + bb_this->offset_x) - bb_that->offset_x) + this_w + that_w <=
            (this_w + that_w) * 2) {
            u32 this_h = bb_this->height;
            u32 that_h = bb_that->height;
            if ((((this->y.HALF.HI - that->y.HALF.HI) + bb_this->offset_y) - bb_that->offset_y) + this_h + that_h <=
                (this_h + that_h) * 2) {
                if ((this->field_0x3c & 0x10) != 0)
                    this_d = ((Hitbox3D*)bb_this)->depth;
                else
                    this_d = 5;
                if ((that->field_0x3c & 0x10) != 0)
                    depth = this_d + ((Hitbox3D*)bb_that)->depth;
                else
                    depth = this_d + 5;
                if ((this->height.HALF.HI - that->height.HALF.HI) + depth <= depth * 2)
                    return TRUE;
            }
        }
    }
    return FALSE;
}
END_NONMATCH

bool32 sub_08017850(Entity* this) {
    if (sub_08079F8C())
        return sub_080177A0(this, &gPlayerEntity);
    return FALSE;
}
