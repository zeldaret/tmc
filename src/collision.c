#include "global.h"
#include "asm.h"
#include "entity.h"
#include "player.h"
#include "save.h"
#include "common.h"
#include "functions.h"
#include "enemy.h"
#include "object.h"
#include "game.h"

extern u8 gCollidableCount;
extern u8 gUnk_080B3740[];

typedef struct {
    u8 _0;
    u8 _1;
    u8 _2;
    u8 _3;
    u8 _4;
    u8 _5;
    s8 _6;
    u8 _7;
    u8 _8;
    u8 _9;
    u8 _a;
    u8 _b;
} ColSettings;

extern ColSettings gCollisionMtx[173 * 34];

extern void gDoCollision(void);
u32 sub_08081420(Entity*);
extern void SoundReqClipped(Entity*, u32);
s32 sub_08018308(Entity*, Entity*, u32, ColSettings*);
void sub_08079D84(void);
void sub_080180BC(Entity*, Entity*);
void sub_0807AFE8(void);

typedef struct {
    void* last;
    void* first;
    void* node;
    u8 flags;
} LinkedList2;

extern LinkedList2 gUnk_03003C70[16];
extern LinkedList2* gUnk_02018EA0;

void ClearHitboxList(void) {
    gCollidableCount = 0;
}

void CollisionMain(void) {
    void (*doCollision)(void);
    u32 prio;

    // pick highest priority
    prio = gPriorityHandler.sys_priority;
    if (gPriorityHandler.sys_priority <= gPriorityHandler.ent_priority)
        prio = gPriorityHandler.ent_priority;

    // if any priority is set, dont do collision
    if (prio)
        return;

    doCollision = &gDoCollision;
    // Check to see if we should disable collision this frame
    if (gPlayerState.controlMode != CONTROL_ENABLED) {
        u32 flags = gPlayerEntity.flags;
        COLLISION_OFF(&gPlayerEntity);
        doCollision();
        gPlayerEntity.flags = flags; // reset collision to before
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

u32 sub_0801766C(Entity* this) {
    u32 uVar1;
    LinkedList2* puVar3;
    LinkedList2* puVar2;
    LinkedList2* pLVar2;
    LinkedList2* i;
    LinkedList2* end;
    u8* pbVar4;

    if (this->spritePriority.b2 != 0) {
        return 1;
    } else {
        for (i = gUnk_03003C70, end = gUnk_03003C70 + 16; end > i; ++i) {
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

u32 sub_080176E4(Entity* this) {
    u32 uVar1;
    LinkedList2* j;
    LinkedList2* i;
    LinkedList2* end;
    u8* pbVar4;

    if (this->spritePriority.b2 != 0) {
        return 1;
    } else {
        for (i = gUnk_03003C70, end = gUnk_03003C70 + 16; end > i; ++i) {
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

// Several issues:
// 1. b2 mask value is set before the loop even begins
// 2. data is allocated mid function
// 3. regalloc
NONMATCH("asm/non_matching/arm_proxy/sub_08017744.inc", void sub_08017744(Entity* this)) {
    LinkedList2* i;
    LinkedList2* end;
    for (i = gUnk_03003C70, end = gUnk_03003C70 + 16; end > i; ++i) {
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

    if ((this->collisionLayer & that->collisionLayer) != 0) {
        Hitbox* bb_this = this->hitbox;
        Hitbox* bb_that = that->hitbox;
        u32 this_w = bb_this->width;
        u32 that_w = bb_that->width;
        u32 sumw = this_w + that_w;
        if ((((this->x.HALF.HI - that->x.HALF.HI) + bb_this->offset_x) - bb_that->offset_x) + sumw <= (sumw)*2) {
            u32 this_h = bb_this->height;
            u32 that_h = bb_that->height;
            u32 sumh = this_h + that_h;
            if ((((this->y.HALF.HI - that->y.HALF.HI) + bb_this->offset_y) - bb_that->offset_y) + sumh <= (sumh)*2) {
                if ((this->field_0x3c & 0x10) != 0)
                    this_d = ((Hitbox3D*)bb_this)->depth;
                else
                    this_d = 5;
                if ((that->field_0x3c & 0x10) != 0)
                    depth = this_d + ((Hitbox3D*)bb_that)->depth;
                else
                    depth = this_d + 5;
                if ((this->z.HALF.HI - that->z.HALF.HI) + depth <= depth * 2)
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

s32 sub_08017874(Entity* a, Entity* b) {
    s32 newDmg;
    s32 v5;
    s32 v6;

    asm("" ::: "r1");
    if (a->kind == 1) {
        newDmg = b->damage;
        switch (gSave.stats.charm) {
            case 47:
                newDmg /= 4;
                break;
            case 48:
                newDmg /= 2;
                break;
        }
        if (newDmg <= 0)
            newDmg = 1;
        v5 = ModHealth(-newDmg);
        SoundReqClipped(a, 122);
    } else {
        v6 = b->damage;
        if (b->kind == 8) {
            switch (gSave.stats.charm) {
                case 48:
                    v6 = 3 * v6 / 2;
                    break;
                case 49:
                    v6 *= 2;
                    break;
            }
        }
        v5 = a->health - v6;
        if (a->kind == 3) {
            if ((a->field_0x6c.HALF.HI & 1) != 0)
                SoundReqClipped(a, 295);
            else
                SoundReqClipped(a, 254);
        }
    }
    if (v5 <= 0) {
        COLLISION_OFF(a);
        return 0;
    }
    return v5;
}

void sub_08017940(Entity* org, Entity* tgt) {
    Entity* e;
    u32 r1;

    e = CreateFx(tgt, FX_REFECT3, 0);
    if (e != NULL) {
        e->spritePriority.b0 = 2;
        e->x.HALF.HI = (org->x.HALF.HI + org->hitbox->offset_x + tgt->x.HALF.HI + tgt->hitbox->offset_x) >> 1;
        e->y.HALF.HI = (org->y.HALF.HI + org->hitbox->offset_y + tgt->y.HALF.HI + tgt->hitbox->offset_y) >> 1;
        e->z.HALF.HI = (org->z.HALF.HI + tgt->z.HALF.HI) >> 1;
        e->collisionLayer = org->collisionLayer;
        UpdateSpriteForCollisionLayer(e);
    }

    r1 = 0;

    r1 = (u32)(org == &gPlayerEntity ? gPlayerEntity.knockbackDuration
                                     : (tgt == &gPlayerEntity ? tgt->knockbackDuration : 0)) >>
         3;

    // Anything requiring the evaluation of r1 could be written here.
    // The compiler is not smart enough to know that r1 has no side effects,
    // so the above code will still generate.
    r1 = !r1 ? !!r1 : !!!r1;
}

void sub_080179EC(Entity* a1, Entity* a2) {
    const u8* p = (const u8[]){ FX_27, FX_32, FX_33, FX_34 };
    u32 rand = Random();
    Entity* e = CreateFx(a2, p[rand & 3], 0);
    if (e != NULL) {
        PositionRelative(a2, e, a2->hitbox->offset_x << 16, a2->hitbox->offset_y << 16);
        e->spritePriority.b0 = 2;
        e->spriteOffsetX = (a1->x.HALF.HI + a1->hitbox->offset_x - (a2->x.HALF.HI + a2->hitbox->offset_x)) >> 1;
        e->spriteOffsetY = (a1->y.HALF.HI + a1->hitbox->offset_y - (a2->y.HALF.HI + a2->hitbox->offset_y)) >> 1;
        e->child = a2;
    }
}

Entity* sub_08017A90(Entity* a1, Entity* parent) {
    Entity* e;

    e = (Entity*)CreateObject(OBJECT_99, 0, 0);
    if (e != NULL) {
        e->animationState = (a1->direction >> 3) & 3;
        e->spriteOffsetX = a1->x.HALF.HI - parent->x.HALF.HI;
        e->spriteOffsetY = a1->y.HALF.HI - parent->y.HALF.HI;
        e->parent = parent;
        return e;
    }
    return NULL;
}

typedef s32 (*CollisionHandler)(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 CollisionNoOp(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 CollisionGroundItem(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017B58(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017EB0(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017F3C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017F40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_0801802C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017DD4(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_080180E8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017BBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017C40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017D6C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017D28(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08018168(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08018250(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08018288(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_080182A8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017B1C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017CBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
s32 sub_08017E88(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);

const CollisionHandler gUnk_080B3744[] = {
    sub_08018308, CollisionNoOp, CollisionNoOp, CollisionGroundItem, sub_08017B58, sub_08017EB0,
    sub_08017F3C, sub_08017F40,  sub_0801802C,  sub_08017DD4,        sub_080180E8, sub_08017BBC,
    sub_08017C40, sub_08017D6C,  sub_08017D28,  sub_08018168,        sub_08018228, sub_08018250,
    sub_08018288, sub_080182A8,  sub_08017B1C,  sub_08017CBC,        sub_08017E88,
};

s32 CollisionNoOp(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    return 0;
}

// origin: player or sword
// target: item
s32 CollisionGroundItem(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    COLLISION_OFF(tgt);
    tgt->bitfield = org->hurtType | 0x80;
    if ((tgt->type == 0x5F || tgt->type == 0x60) && sub_08081420(tgt))
        tgt->health = 0;
    return 2;
}

s32 sub_08017B1C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.dash_state & 0x60) != 0) {
        COLLISION_OFF(tgt);
    } else {
        org->knockbackDuration = 0x10;
        org->iframes = -20;
        org->field_0x46 = 640;
    }
    return 1;
}

s32 sub_08017B58(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((tgt->field_0x3a & 4) != 0) {
        if (tgt->field_0x1d) {
            s32 x = tgt->field_0x1d = tgt->field_0x1d - gPlayerState.field_0x1d;
            if (x << 24 <= 0) {
                tgt->field_0x1d = 0;
                tgt->subAction = 2;
                tgt->field_0x46 = 0;
            }
        }
    } else {
        tgt->subAction = 0;
        tgt->field_0x3a |= 4u;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017BBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.flags & (PL_BUSY | PL_MINISH | PL_BURNING | 0x1000)) == 0) {
        Entity* e = CreateObject(OBJECT_42, 1, 0);
        if (e != NULL) {
            e->child = org;
            gPlayerState.flags |= PL_BURNING;
            org->animationState = (direction ^ 0x10) >> 2;
        }
    }
    tgt->damage = 4;
    org->health = sub_08017874(org, tgt);
    org->knockbackDuration = 12;
    org->iframes = 30;
    org->field_0x46 = 384;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017C40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.flags & (PL_BUSY | PL_MINISH | PL_FROZEN | 0x1000)) == 0 && gPlayerState.queued_action == 0) {
        if (org->action == 1 || org->action == 24) {
            tgt->damage = 4;
            org->health = sub_08017874(org, tgt);
            gPlayerState.flags = PL_FROZEN;
            gPlayerState.queued_action = PLAYER_FROZEN;
        }
    }
    org->knockbackDuration = 12;
    org->iframes = 16;
    org->field_0x46 = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017CBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    direction = ((direction ^ 0x10) - 0xc) & 0x1f;
    if (((-direction + tgt->direction) & 0x1f) < 0x19) {
        org->iframes = -12;
        tgt->iframes = -12;
        sub_08017940(org, tgt);
    } else {
        tgt->knockbackDuration = 12;
        tgt->iframes = 16;
        tgt->field_0x43 = -16;
        tgt->field_0x46 = 768;
        if (org->iframes == 0)
            org->iframes = -1;
    }
    return 1;
}

s32 sub_08017D28(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    gPlayerState.field_0x1a[0] = 1;
    org->field_0x7a.HWORD = 600;
    org->knockbackDuration = 12;
    org->iframes = 16;
    org->field_0x46 = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017D6C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 x;
    u32 y;
    ColSettings* p;

    if (((-(((direction ^ 0x10) - 5) & 0x1f) + (tgt->animationState << 3)) & 0x1f) >= 0xb) {
        x = org->hurtType;
        y = 0xac2;
    } else {
        tgt->bitfield = 0xcb;
        tgt->field_0x78.HALF.HI = org->hurtType;
        x = org->hurtType;
        y = 0xae4;
    }
    p = &gCollisionMtx[x + y];
    return sub_08018308(org, tgt, direction, p);
}

int sub_08017DD4(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->bitfield = 0;
    if (tgt->damage & 0x80)
        tgt->damage &= ~0x80;
    else
        tgt->damage = 4;
    gPlayerEntity.health = sub_08017874(&gPlayerEntity, tgt);
    tgt->iframes = -12;
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        sub_08079D84();
        org->iframes = 90;
    } else {
        gPlayerEntity.bitfield = tgt->hurtType | 0x80;
        gPlayerEntity.iframes = 12;
        gPlayerEntity.knockbackDuration = 16;
        gPlayerEntity.knockbackDirection = DirectionTurnAround(direction);
        gPlayerEntity.field_0x46 = 640;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017E88(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->knockbackDuration = 2;
    org->field_0x46 = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017EB0(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->damage == 0)
        return 0;
    if (org == &gPlayerEntity) {
        u32 temp = tgt->damage;
        tgt->damage = 8;
        gPlayerEntity.health = sub_08017874(&gPlayerEntity, tgt);
        tgt->damage = temp;
        gPlayerEntity.knockbackDuration = 12;
        gPlayerEntity.iframes = 16;
        gPlayerEntity.field_0x46 = 384;
    } else if (org->kind == 8 && org->id == 5) {
        org->knockbackDuration = 8;
        org->iframes = -6;
        org->field_0x46 = 384;
        gPlayerEntity.iframes = 0x80;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return 1;
}

s32 sub_08017F3C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    return 1;
}

s32 sub_08017F40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->field_0x43 == 0) {
        if (org == &gPlayerEntity) {
            if (sub_08079F8C() &&
#ifdef EU
                (gPlayerState.flags & (PL_MINISH | PL_BUSY)) == 0 &&
#else
                (gPlayerState.flags & PL_MINISH) == 0 &&
#endif
                !gPlayerState.swimState) {
                gPlayerState.field_0x1a[0] |= 0x80u;
                gPlayerState.field_0xa |= 0x80u;
                gPlayerState.flags |= 0x10u;
                gPlayerState.jumpStatus = 0;
                if (tgt->kind == ENEMY && (tgt->id == GHINI || tgt->id == ENEMY_50)) {
                    org->z.HALF.HI = 0;
                    PositionRelative(org, tgt, 0, 0x10000);
                } else {
                    PositionRelative(tgt, org, 0, 0x10000);
                }
                COLLISION_OFF(org);
                org->spriteRendering.b3 = tgt->spriteRendering.b3;
                org->spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                org->iframes = -1;
                tgt->iframes = -8;
                ResetPlayer();
                return 1;
            }
        } else {
            org->health = 0;
        }
    } else if (tgt->kind == 3 && org == &gPlayerEntity) {
        sub_08004484(tgt, org);
    }
    return 0;
}

s32 sub_0801802C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    int kind;
    ColSettings* p;
    u32 x;

    kind = org->kind;
    if (kind == 1) {
        if (sub_08079F8C()) {
            if (((((direction ^ 0x10) - 4 * tgt->animationState + 5) & 0x1F)) > 0xA) {
                goto _08018090;
            } else {
                goto _0801807A;
            }
        }
    } else if (kind == 8) {
        if ((((org->direction ^ 0x10) - 4 * tgt->animationState + 5) & 0x1F) <= 0xA) {
            org->health = 0;
        _0801807A:
            sub_080180BC(org, tgt);
            return 1;
        }
    } else {
        org->health = 0;
        return 0;
    }
_08018090:
    x = 0x11aa;
    return sub_08018308(org, tgt, direction, &gCollisionMtx[x + org->hurtType]);
}

void sub_080180BC(Entity* org, Entity* tgt) {
    if (org->iframes == 0)
        org->iframes = -30;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    tgt->subAction = -1;
}

s32 sub_080180E8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 v3;
    u32 x;

    v3 = DirectionNormalize(DirectionTurnAround(direction) - 0xc);
    if (DirectionNormalize(tgt->direction - v3) <= 0x18) {
        org->knockbackDuration = 12;
        org->iframes = -16;
        org->field_0x46 = 640;
        tgt->knockbackDuration = 12;
        tgt->iframes = -16;
        tgt->field_0x46 = 768;
        sub_08017940(org, tgt);
        return 1;
    }
    x = 0x352;
    return sub_08018308(org, tgt, v3, &gCollisionMtx[org->hurtType + x]);
}

s32 sub_08018168(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->field_0x43 == 0) {
        if (org == &gPlayerEntity) {
            if (sub_08079F8C() &&
#ifdef EU
                (gPlayerState.flags & (PL_MINISH | PL_BUSY)) == 0 &&
#else
                (gPlayerState.flags & (PL_MINISH | PL_ROLLING)) == 0 &&
#endif
                gPlayerState.swimState == 0) {
                gPlayerState.field_0x1a[0] |= 0x80;
                gPlayerState.field_0xa |= 0x80;
                gPlayerState.flags |= 0x100;
                gPlayerState.jumpStatus = 0;
                COLLISION_OFF(&gPlayerEntity);
                gPlayerEntity.spriteRendering.b3 = tgt->spriteRendering.b3;
                gPlayerEntity.spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                gPlayerEntity.iframes = 0xff;
                tgt->iframes = -8;
                sub_08077B20();
                return 1;
            }
        } else {
            org->health = 0;
        }
    } else if ((tgt->kind == 3) && (org == &gPlayerEntity)) {
        sub_08004484(tgt, &gPlayerEntity);
    }
    return 0;
}

s32 sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity && sub_08079F8C())
        sub_08004484(tgt, org);
    return 0;
}

s32 sub_08018250(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->iframes = -1;
    if (org->direction == 0) {
        tgt->iframes = 16;
        sub_08017A90(org, tgt);
    } else {
        tgt->iframes = -1;
    }
    return 1;
}

s32 sub_08018288(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity)
        sub_0807AFE8();
    else
        org->health = 0;
    return 1;
}

s32 sub_080182A8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->field_0x43 == 0) {
        if (org->iframes == 0)
            org->iframes = -1;
        if (tgt->iframes == 0)
            tgt->iframes = -1;
    } else {
        u32 x = 0x92a;
        return sub_08018308(org, tgt, direction, &gCollisionMtx[org->hurtType + x]);
    }
    return 1;
}

s32 sub_08018308(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 temp = 0;
    if (tgt->field_0x43 && tgt->kind == 3 && org == &gPlayerEntity) {
        sub_08004484(tgt, org);
        temp = 1;
    }
    if ((org->kind == 8 && org->id == 0x5) && gPlayerEntity.animationState == ((((direction + 4) & 0x18) >> 2) ^ 4)) {
        return 0;
    }
    if (!temp) {
        u32 tmp2;
        org->field_0x46 = 16 * settings->_0;
        org->iframes = settings->_1;
        if (org->iframes == 0)
            org->iframes = -1;
        org->knockbackDuration = settings->_2;
        tgt->damage = settings->_3;
        tmp2 = 0xFF;
        if (settings->_3 != 0)
            org->health = sub_08017874(org, tgt);
        if (settings->_4 > org->field_0x43)
            org->field_0x43 = settings->_4;
        tgt->field_0x46 = 16 * settings->_5;
        tgt->iframes = settings->_6;
        if (settings->_6 == 0)
            tgt->iframes = -1;
        tgt->knockbackDuration = settings->_7;
        tmp2 &= org->damage = settings->_8;
        if (tmp2 != 0)
            tgt->health = sub_08017874(tgt, org);
        if (settings->_9 > tgt->field_0x43)
            tgt->field_0x43 = settings->_9;
    }
    if (settings->_a & 1)
        sub_08017940(org, tgt);
    if (settings->_a & 2)
        org->bitfield = 0xca;
    if (settings->_a & 4) {
        Entity* parent = tgt->parent;
        if (parent != NULL) {
            parent->bitfield = 0xcc;
            parent->iframes = tgt->iframes;
            parent->knockbackDirection = direction;
            parent->knockbackDuration = tgt->knockbackDuration;
            if (parent->field_0x43 == 0)
                parent->field_0x43 = tgt->field_0x43;
            parent->field_0x46 = tgt->field_0x46;
            parent->field_0x4c = org;
        }
    }
    if (org->kind == 8) {
        if (org->id == 1) {
            if (settings->_8) {
                sub_080179EC(org, tgt);
            }
        } else if (org->id == 4) {
            if (org->damage || (settings->_a & 8)) {
                sub_08017A90(org, tgt);
            }
        } else if (org->id == 3) {
            if (settings->_9) {
                SoundReqClipped(tgt, 254);
            }
        } else if (org->id == 5) {
            gPlayerEntity.iframes = 0x80;
        }
    }
    if (tgt->kind == 8 && org->id == 5) {
        gPlayerEntity.iframes = 0x80;
    }
    return 1;
}
