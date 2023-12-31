#include "asm.h"
#include "collision.h"
#include "common.h"
#include "enemy.h"
#include "entity.h"
#include "functions.h"
#include "game.h"
#include "global.h"
#include "item.h"
#include "object.h"
#include "player.h"
#include "save.h"

extern u8 gCollidableCount;
extern u8 gUnk_080B3740[];

typedef enum {
    COL_FLAG_1 = 1,
    COL_FLAG_2 = 2,
    COL_FLAG_4 = 4,
    COL_FLAG_8 = 8,
} ColSettingsFlags;

typedef struct {
    /*0x00*/ u8 orgKnockbackSpeed;
    /*0x01*/ u8 orgIframes;
    /*0x02*/ u8 orgKnockbackDuration;
    /*0x03*/ u8 tgtDamage;
    /*0x04*/ u8 orgConfusedTime;
    /*0x05*/ u8 tgtKnockbackSpeed;
    /*0x06*/ s8 tgtIframes;
    /*0x07*/ u8 tgtKnockbackDuration;
    /*0x08*/ u8 orgDamage;
    /*0x09*/ u8 tgtConfusedTime;
    /*0x0a*/ u8 flags; /**< @see ColSettingsFlags */
    /*0x0b*/ u8 pad;
} ColSettings;

extern ColSettings gCollisionMtx[173 * 34];

extern void ram_CollideAll(void);
u32 sub_08081420(Entity*);
extern void SoundReqClipped(Entity*, u32);
void sub_08079D84(void);
void sub_080180BC(Entity*, Entity*);

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
    prio = gPriorityHandler.event_priority;
    if (gPriorityHandler.event_priority <= gPriorityHandler.ent_priority)
        prio = gPriorityHandler.ent_priority;

    // if any priority is set, dont do collision
    if (prio != 0)
        return;

    doCollision = &ram_CollideAll;
    // Check to see if we should disable collision this frame
    if (gPlayerState.controlMode != CONTROL_ENABLED) {
        u32 flags = gPlayerEntity.base.flags;
        COLLISION_OFF(&gPlayerEntity.base);
        doCollision();
        gPlayerEntity.base.flags = flags; // reset collision to before
    } else {
        doCollision();
    }
}

void RegisterPlayerHitbox(void) {
    MemClear(&gUnk_03003C70, sizeof(gUnk_03003C70));
    gUnk_02018EA0 = (LinkedList2*)&gUnk_03003C70[0].last;
    gUnk_03003C70[0].last = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].first = &gUnk_03003C70[0].last;
    gUnk_03003C70[0].node = &gPlayerEntity.base;
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

void sub_08017744(Entity* this) {
    LinkedList2* ll = gUnk_03003C70;
    LinkedList2* end = &gUnk_03003C70[16];

    do {
        if (this == ll->node) {
            if (this->spritePriority.b2 != 0) {
                this->spritePriority.b2 = 0;
                ll->node = NULL;
                ((LinkedList2*)ll->last)->first = ll->first;
                ((LinkedList2*)ll->first)->last = ll->last;
                if (ll == gUnk_02018EA0)
                    gUnk_02018EA0 = ll->first;
                break;
            }
        }
    } while (end > ++ll);
}

bool32 IsColliding(Entity* this, Entity* that) {
    u32 this_d;
    u32 depth;

    if ((this->collisionLayer & that->collisionLayer) != 0) {
        Hitbox* bb_this = this->hitbox;
        Hitbox* bb_that = that->hitbox;
        u32 this_len = bb_this->width;
        u32 sumw = this_len + bb_that->width;
        if ((((this->x.HALF.HI - that->x.HALF.HI) + bb_this->offset_x) - bb_that->offset_x) + sumw <= (sumw)*2) {
            this_len = bb_this->height;
            sumw = this_len + bb_that->height;
            if ((((this->y.HALF.HI - that->y.HALF.HI) + bb_this->offset_y) - bb_that->offset_y) + sumw <= (sumw)*2) {
                if ((this->collisionFlags & 0x10) != 0)
                    this_d = ((Hitbox3D*)bb_this)->depth;
                else
                    this_d = 5;
                if ((that->collisionFlags & 0x10) != 0)
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

bool32 IsCollidingPlayer(Entity* this) {
    if (PlayerCanBeMoved())
        return IsColliding(this, &gPlayerEntity.base);
    return FALSE;
}

s32 CalculateDamage(Entity* org, Entity* tgt) {
    s32 damage;
    s32 health;

    if (org->kind == PLAYER) {
        damage = tgt->damage;
        switch (gSave.stats.charm) {
            case BOTTLE_CHARM_NAYRU:
                damage /= 4;
                break;
            case BOTTLE_CHARM_FARORE:
                damage /= 2;
                break;
        }
        if (damage <= 0)
            damage = 1;
        health = ModHealth(-damage);
        SoundReqClipped(org, SFX_PLY_VO6);
    } else {
        damage = tgt->damage;
        if (tgt->kind == PLAYER_ITEM) {
            switch (gSave.stats.charm) {
                case BOTTLE_CHARM_FARORE:
                    damage = 3 * damage / 2;
                    break;
                case BOTTLE_CHARM_DIN:
                    damage *= 2;
                    break;
            }
        }
        health = org->health - damage;
        if (org->kind == ENEMY) {
            if ((((GenericEntity*)org)->field_0x6c.HALF.HI & 1) != 0)
                SoundReqClipped(org, SFX_BOSS_HIT);
            else
                SoundReqClipped(org, SFX_HIT);
        }
    }
    if (health <= 0) {
        COLLISION_OFF(org);
        return 0;
    }
    return health;
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

    r1 = (u32)(org == &gPlayerEntity.base ? gPlayerEntity.base.knockbackDuration
                                          : (tgt == &gPlayerEntity.base ? tgt->knockbackDuration : 0)) >>
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
        PositionRelative(a2, e, Q_16_16(a2->hitbox->offset_x), Q_16_16(a2->hitbox->offset_y));
        e->spritePriority.b0 = 2;
        e->spriteOffsetX = (a1->x.HALF.HI + a1->hitbox->offset_x - (a2->x.HALF.HI + a2->hitbox->offset_x)) >> 1;
        e->spriteOffsetY = (a1->y.HALF.HI + a1->hitbox->offset_y - (a2->y.HALF.HI + a2->hitbox->offset_y)) >> 1;
        e->child = a2;
    }
}

Entity* sub_08017A90(Entity* a1, Entity* parent) {
    Entity* e;

    e = (Entity*)CreateObject(HIT_SWITCH, 0, 0);
    if (e != NULL) {
        e->animationState = (a1->direction >> 3) & 3;
        e->spriteOffsetX = a1->x.HALF.HI - parent->x.HALF.HI;
        e->spriteOffsetY = a1->y.HALF.HI - parent->y.HALF.HI;
        e->parent = parent;
        return e;
    }
    return NULL;
}

typedef CollisionResult (*CollisionHandler)(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionDefault(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionNoOp(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionGroundItem(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017B58(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017EB0(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017F3C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017F40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_0801802C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017DD4(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_080180E8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017BBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017C40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017D6C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017D28(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08018168(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08018250(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult CollisionMazaalShrinkRay(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_080182A8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017B1C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017CBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);
CollisionResult sub_08017E88(Entity* org, Entity* tgt, u32 direction, ColSettings* settings);

const CollisionHandler gCollisionHandlers[] = {
    CollisionDefault,
    CollisionNoOp,
    CollisionNoOp,
    CollisionGroundItem,
    sub_08017B58,
    sub_08017EB0,
    sub_08017F3C,
    sub_08017F40,
    sub_0801802C,
    sub_08017DD4,
    sub_080180E8,
    sub_08017BBC,
    sub_08017C40,
    sub_08017D6C,
    sub_08017D28,
    sub_08018168,
    sub_08018228,
    sub_08018250,
    CollisionMazaalShrinkRay,
    sub_080182A8,
    sub_08017B1C,
    sub_08017CBC,
    sub_08017E88,
};

CollisionResult CollisionNoOp(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    return RESULT_NO_COLLISION;
}

// origin: player or sword
// target: item
CollisionResult CollisionGroundItem(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    COLLISION_OFF(tgt);
    tgt->contactFlags = org->hurtType | 0x80;
    if ((tgt->type == 0x5F || tgt->type == 0x60) && sub_08081420(tgt))
        tgt->health = 0;
    return RESULT_COLLISION_WITHOUT_SET;
}

CollisionResult sub_08017B1C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.dash_state & 0x60) != 0) {
        COLLISION_OFF(tgt);
    } else {
        org->knockbackDuration = 0x10;
        org->iframes = -20;
        org->knockbackSpeed = 640;
    }
    return RESULT_COLLISION;
}

CollisionResult sub_08017B58(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((tgt->gustJarState & 4) != 0) {
        if (tgt->gustJarTolerance) {
            tgt->gustJarTolerance = tgt->gustJarTolerance - gPlayerState.gustJarSpeed;
            if ((s8)tgt->gustJarTolerance <= 0) {
                tgt->gustJarTolerance = 0;
                tgt->subAction = 2;
                tgt->knockbackSpeed = 0;
            }
        }
    } else {
        tgt->subAction = 0;
        tgt->gustJarState |= 4;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017BBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.flags & (PL_BUSY | PL_MINISH | PL_BURNING | PL_IN_MINECART)) == 0) {
        Entity* e = CreateObject(LINK_FIRE, 1, 0);
        if (e != NULL) {
            e->child = org;
            gPlayerState.flags |= PL_BURNING;
            org->animationState = Direction8ToAnimationState(DirectionTurnAround(direction));
        }
    }
    tgt->damage = 4;
    org->health = CalculateDamage(org, tgt);
    org->knockbackDuration = 12;
    org->iframes = 30;
    org->knockbackSpeed = 384;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017C40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if ((gPlayerState.flags & (PL_BUSY | PL_MINISH | PL_FROZEN | PL_IN_MINECART)) == 0 &&
        gPlayerState.queued_action == PLAYER_INIT) {
        if (org->action == 1 || org->action == 24) {
            tgt->damage = 4;
            org->health = CalculateDamage(org, tgt);
            gPlayerState.flags = PL_FROZEN;
            gPlayerState.queued_action = PLAYER_FROZEN;
        }
    }
    org->knockbackDuration = 12;
    org->iframes = 16;
    org->knockbackSpeed = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017CBC(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    direction = DirectionNormalize(DirectionTurnAround(direction) - 0xc);
    if (DirectionNormalize(-direction + tgt->direction) < 0x19) {
        org->iframes = -12;
        tgt->iframes = -12;
        sub_08017940(org, tgt);
    } else {
        tgt->knockbackDuration = 12;
        tgt->iframes = 16;
        tgt->confusedTime = -16;
        tgt->knockbackSpeed = 768;
        if (org->iframes == 0)
            org->iframes = -1;
    }
    return RESULT_COLLISION;
}

CollisionResult sub_08017D28(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    gPlayerState.mobility = 1;
    ((GenericEntity*)org)->field_0x7a.HWORD = 600;
    org->knockbackDuration = 12;
    org->iframes = 16;
    org->knockbackSpeed = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017D6C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 x;
    u32 y;
    ColSettings* p;

    if (DirectionNormalize(-DirectionNormalize((DirectionTurnAround(direction) - 5)) +
                           DirectionFromAnimationState(tgt->animationState)) >= 0xb) {
        x = org->hurtType;
        y = 0xac2;
    } else {
        tgt->contactFlags = 0xcb;
        ((GenericEntity*)tgt)->field_0x78.HALF.HI = org->hurtType;
        x = org->hurtType;
        y = 0xae4;
    }
    p = &gCollisionMtx[x + y];
    return CollisionDefault(org, tgt, direction, p);
}

CollisionResult sub_08017DD4(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->contactFlags = 0;
    if (tgt->damage & 0x80)
        tgt->damage &= ~0x80;
    else
        tgt->damage = 4;
    gPlayerEntity.base.health = CalculateDamage(&gPlayerEntity.base, tgt);
    tgt->iframes = -12;
    if ((gPlayerState.flags & PL_MINISH) == 0) {
        sub_08079D84();
        org->iframes = 90;
    } else {
        gPlayerEntity.base.contactFlags = tgt->hurtType | 0x80;
        gPlayerEntity.base.iframes = 12;
        gPlayerEntity.base.knockbackDuration = 16;
        gPlayerEntity.base.knockbackDirection = DirectionTurnAround(direction);
        gPlayerEntity.base.knockbackSpeed = 640;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017E88(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->knockbackDuration = 2;
    org->knockbackSpeed = 640;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017EB0(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->damage == 0)
        return RESULT_NO_COLLISION;
    if (org == &gPlayerEntity.base) {
        u32 prevDamage = tgt->damage;
        tgt->damage = 8;
        gPlayerEntity.base.health = CalculateDamage(&gPlayerEntity.base, tgt);
        tgt->damage = prevDamage;
        gPlayerEntity.base.knockbackDuration = 12;
        gPlayerEntity.base.iframes = 16;
        gPlayerEntity.base.knockbackSpeed = 384;
    } else if (org->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) {
        org->knockbackDuration = 8;
        org->iframes = -6;
        org->knockbackSpeed = 384;
        gPlayerEntity.base.iframes = 0x80;
    }
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    return RESULT_COLLISION;
}

CollisionResult sub_08017F3C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    return RESULT_COLLISION;
}

CollisionResult sub_08017F40(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->confusedTime == 0) {
        if (org == &gPlayerEntity.base) {
            if (PlayerCanBeMoved() &&
#ifdef EU
                (gPlayerState.flags & (PL_MINISH | PL_BUSY)) == 0 &&
#else
                (gPlayerState.flags & PL_MINISH) == 0 &&
#endif
                !gPlayerState.swim_state) {
                gPlayerState.mobility |= 0x80;
                gPlayerState.field_0xa |= 0x80;
                gPlayerState.flags |= PL_CAPTURED;
                gPlayerState.jump_status = 0;
                if (tgt->kind == ENEMY && (tgt->id == GHINI || tgt->id == ENEMY_50)) {
                    org->z.HALF.HI = 0;
                    PositionRelative(org, tgt, 0, Q_16_16(1.0));
                } else {
                    PositionRelative(tgt, org, 0, Q_16_16(1.0));
                }
                COLLISION_OFF(org);
                org->spriteRendering.b3 = tgt->spriteRendering.b3;
                org->spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                org->iframes = -1;
                tgt->iframes = -8;
                ResetActiveItems();
                return RESULT_COLLISION;
            }
        } else {
            org->health = 0;
        }
    } else if (tgt->kind == ENEMY && org == &gPlayerEntity.base) {
        CalcCollisionStaticEntity(tgt, org);
    }
    return RESULT_NO_COLLISION;
}

CollisionResult sub_0801802C(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    int kind;
    u32 x;

    kind = org->kind;
    if (kind == PLAYER) {
        if (PlayerCanBeMoved()) {
            if (((DirectionNormalize(DirectionTurnAround(direction) -
                                     Direction8FromAnimationState(tgt->animationState) + 5))) > 0xA) {
                x = 0x11aa;
                return CollisionDefault(org, tgt, direction, &gCollisionMtx[x + org->hurtType]);
            } else {
                sub_080180BC(org, tgt);
                return RESULT_COLLISION;
            }
        }
    } else if (kind == PLAYER_ITEM) {
        if (DirectionNormalize(
                (DirectionTurnAround(org->direction) - Direction8FromAnimationState(tgt->animationState) + 5)) <= 0xA) {
            org->health = 0;
            sub_080180BC(org, tgt);
            return RESULT_COLLISION;
        }
    } else {
        org->health = 0;
        return RESULT_NO_COLLISION;
    }

    x = 0x11aa;
    return CollisionDefault(org, tgt, direction, &gCollisionMtx[x + org->hurtType]);
}

void sub_080180BC(Entity* org, Entity* tgt) {
    if (org->iframes == 0)
        org->iframes = -30;
    if (tgt->iframes == 0)
        tgt->iframes = -1;
    tgt->subAction = -1;
}

CollisionResult sub_080180E8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 v3;
    u32 x;

    v3 = DirectionNormalize(DirectionTurnAround(direction) - 0xc);
    if (DirectionNormalize(tgt->direction - v3) <= 0x18) {
        org->knockbackDuration = 12;
        org->iframes = -16;
        org->knockbackSpeed = 640;
        tgt->knockbackDuration = 12;
        tgt->iframes = -16;
        tgt->knockbackSpeed = 768;
        sub_08017940(org, tgt);
        return RESULT_COLLISION;
    }
    x = 0x352;
    return CollisionDefault(org, tgt, v3, &gCollisionMtx[org->hurtType + x]);
}

CollisionResult sub_08018168(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->confusedTime == 0) {
        if (org == &gPlayerEntity.base) {
            if (PlayerCanBeMoved() &&
#ifdef EU
                (gPlayerState.flags & (PL_MINISH | PL_BUSY)) == 0 &&
#else
                (gPlayerState.flags & (PL_MINISH | PL_ROLLING)) == 0 &&
#endif
                gPlayerState.swim_state == 0) {
                gPlayerState.mobility |= 0x80;
                gPlayerState.field_0xa |= 0x80;
                gPlayerState.flags |= PL_DISABLE_ITEMS;
                gPlayerState.jump_status = 0;
                COLLISION_OFF(&gPlayerEntity.base);
                gPlayerEntity.base.spriteRendering.b3 = tgt->spriteRendering.b3;
                gPlayerEntity.base.spriteOrientation.flipY = tgt->spriteOrientation.flipY;
                gPlayerEntity.base.iframes = 0xff;
                tgt->iframes = -8;
                PutAwayItems();
                return RESULT_COLLISION;
            }
        } else {
            org->health = 0;
        }
    } else if ((tgt->kind == ENEMY) && (org == &gPlayerEntity.base)) {
        CalcCollisionStaticEntity(tgt, &gPlayerEntity.base);
    }
    return RESULT_NO_COLLISION;
}

CollisionResult sub_08018228(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity.base && PlayerCanBeMoved())
        CalcCollisionStaticEntity(tgt, org);
    return RESULT_NO_COLLISION;
}

CollisionResult sub_08018250(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    org->iframes = -1;
    if (org->direction == 0) {
        tgt->iframes = 16;
        sub_08017A90(org, tgt);
    } else {
        tgt->iframes = -1;
    }
    return RESULT_COLLISION;
}

CollisionResult CollisionMazaalShrinkRay(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (org == &gPlayerEntity.base)
        PlayerShrinkByRay();
    else
        org->health = 0;
    return RESULT_COLLISION;
}

CollisionResult sub_080182A8(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    if (tgt->confusedTime == 0) {
        if (org->iframes == 0)
            org->iframes = -1;
        if (tgt->iframes == 0)
            tgt->iframes = -1;
    } else {
        u32 x = 0x92a;
        return CollisionDefault(org, tgt, direction, &gCollisionMtx[org->hurtType + x]);
    }
    return RESULT_COLLISION;
}

CollisionResult CollisionDefault(Entity* org, Entity* tgt, u32 direction, ColSettings* settings) {
    u32 confused = 0;
    if (tgt->confusedTime && tgt->kind == ENEMY && org == &gPlayerEntity.base) {
        CalcCollisionStaticEntity(tgt, org);
        confused = 1;
    }
    if ((org->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) &&
        gPlayerEntity.base.animationState ==
            AnimationStateFlip180(Direction8ToAnimationState(DirectionRoundUp(direction)))) {
        return RESULT_NO_COLLISION;
    }
    if (!confused) {
        u32 tmp2;
        org->knockbackSpeed = 16 * settings->orgKnockbackSpeed;
        org->iframes = settings->orgIframes;
        if (org->iframes == 0)
            org->iframes = -1;
        org->knockbackDuration = settings->orgKnockbackDuration;
        tgt->damage = settings->tgtDamage;
        tmp2 = 0xFF;
        if (settings->tgtDamage != 0)
            org->health = CalculateDamage(org, tgt);
        if (settings->orgConfusedTime > org->confusedTime)
            org->confusedTime = settings->orgConfusedTime;
        tgt->knockbackSpeed = 16 * settings->tgtKnockbackSpeed;
        tgt->iframes = settings->tgtIframes;
        if (settings->tgtIframes == 0)
            tgt->iframes = -1;
        tgt->knockbackDuration = settings->tgtKnockbackDuration;
        tmp2 &= (org->damage = settings->orgDamage);
        if (tmp2 != 0)
            tgt->health = CalculateDamage(tgt, org);
        if (settings->tgtConfusedTime > tgt->confusedTime)
            tgt->confusedTime = settings->tgtConfusedTime;
    }
    if (settings->flags & COL_FLAG_1)
        sub_08017940(org, tgt);
    if (settings->flags & COL_FLAG_2)
        org->contactFlags = 0xca;
    if (settings->flags & COL_FLAG_4) {
        Entity* parent = tgt->parent;
        if (parent != NULL) {
            parent->contactFlags = 0xcc;
            parent->iframes = tgt->iframes;
            parent->knockbackDirection = direction;
            parent->knockbackDuration = tgt->knockbackDuration;
            if (parent->confusedTime == 0)
                parent->confusedTime = tgt->confusedTime;
            parent->knockbackSpeed = tgt->knockbackSpeed;
            parent->contactedEntity = org;
        }
    }
    if (org->kind == PLAYER_ITEM) {
        if (org->id == PL_ITEM_SWORD) {
            if (settings->orgDamage) {
                sub_080179EC(org, tgt);
            }
        } else if (org->id == PL_ITEM_BOW) {
            if (org->damage || (settings->flags & COL_FLAG_8)) {
                sub_08017A90(org, tgt);
            }
        } else if (org->id == PL_ITEM_BOOMERANG) {
            if (settings->tgtConfusedTime) {
                SoundReqClipped(tgt, SFX_HIT);
            }
        } else if (org->id == PL_ITEM_SHIELD) {
            gPlayerEntity.base.iframes = 0x80;
        }
    }
    if (tgt->kind == PLAYER_ITEM && org->id == PL_ITEM_SHIELD) {
        gPlayerEntity.base.iframes = 0x80;
    }
    return RESULT_COLLISION;
}

// unkData3 for tileType?

#ifdef EU
const u8 gUnk_080B37A0[] = {
    0,   1,   2,   3,   4,   5,   6,   7,   8,   9,   9,   10,  9,   9,   9,   9,   9,   9,   11,  12,  11,  11,  11,
    11,  11,  11,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  12,  12,  12,  12,  12,
    12,  12,  12,  12,  12,  12,  12,  13,  14,  14,  15,  16,  15,  14,  17,  18,  19,  20,  20,  20,  20,  20,  20,
    20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  21,  21,  21,  21,  21,  21,  21,
    21,  21,  21,  21,  21,  22,  22,  22,  22,  22,  22,  22,  22,  23,  23,  24,  24,  24,  24,  0,   0,   25,  25,
    26,  0,   0,   0,   27,  28,  29,  30,  31,  32,  33,  34,  35,  36,  0,   36,  36,  36,  36,  37,  38,  38,  39,
    39,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  41,  41,  40,  40,
    42,  41,  40,  43,  41,  40,  44,  41,  40,  45,  0,   0,   0,   0,   46,  0,   0,   0,   0,   0,   0,   40,  0,
    42,  42,  42,  0,   0,   0,   0,   46,  0,   0,   0,   0,   0,   0,   40,  0,   42,  42,  42,  0,   46,  0,   0,
    0,   0,   0,   0,   40,  0,   0,   0,   0,   43,  43,  43,  0,   0,   0,   0,   46,  0,   0,   0,   0,   0,   0,
    40,  0,   44,  44,  44,  0,   46,  0,   0,   0,   0,   0,   0,   40,  0,   0,   0,   0,   45,  45,  45,  0,   0,
    0,   0,   46,  0,   0,   0,   0,   0,   46,  0,   0,   46,  0,   0,   0,   0,   0,   0,   0,   46,  0,   0,   0,
    0,   46,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   47,  47,  47,  0,   0,   40,  0,   40,  48,  49,  50,  51,  52,  52,  53,
    53,  54,  55,  0,   56,  57,  58,  59,  0,   0,   60,  60,  60,  60,  0,   0,   0,   0,   61,  61,  62,  9,   9,
    9,   9,   9,   9,   61,  61,  61,  9,   9,   61,  61,  61,  9,   9,   9,   9,   9,   9,   0,   0,   0,   0,   63,
    0,   0,   0,   0,   0,   0,   0,   0,   63,  0,   0,   0,   0,   0,   42,  43,  44,  45,  0,   0,   0,   0,   64,
    65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,  80,  81,  82,  83,  63,  0,   63,  83,
    83,  0,   0,   43,  43,  43,  0,   21,  21,  21,  21,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   84,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   40,  0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   40,  0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,
    16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  85,  85,  85,  85,  85,  85,  85,  85,
    85,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   9,   9,   0,   0,   0,   86,  0,   0,   86,  0,   0,
    41,  0,   0,   41,  40,  0,   0,   0,   0,   0,   86,  0,   0,   86,  0,   0,   41,  0,   0,   41,  40,  0,   0,
    0,   0,   0,   86,  0,   0,   86,  0,   0,   0,   0,   0,   0,   40,  0,   0,   0,   0,   86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  10,  9,   10,  10,  13,
    0,   0,   0,   0,   63,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   16,
    16,  0,   12,  0,   0,   1,   24,  87,  88,  89,  89,  90,  91,  92,  93,  94,  95,  96,  0,   0,   0,   13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  12,  12,  12,  12,  12,  12,  97,  97,  97,  97,  98,  98,  0,   0,   99,  99,  99,  99,
    100, 0,   101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 112, 112, 112, 112, 0,   113, 46,  46,  114,
    114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 115, 115, 0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   42,  43,  44,  45,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   116, 116, 116, 0,   0,   0,   0,   43,  42,  45,  44,  117, 0,   82,
    0,   0,   0,   0,   0,   0,   43,  42,  0,   0,   44,  0,   0,   45,  0,   0,   0,   0,   41,  40,  38,  38,  116,
    116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 90,  41,  41,  41,  12,  0,   12,  12,  41,  41,  116,
    0,   0,   10,  0,   0,   0,   0,   0,   0,   40,  0,   0,   0,   40,  0,   10,  10,  10,  10,  10,  10,  10,  40,
    40,  84,  84,  84,  84,  0,   61,  61,  61,  61,  61,  61,  61,  61,  62,  62,  62,  62,  62,  62,  62,  62,  9,
    9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   42,  10,  10,  10,  10,  10,  10,
    15,  10,  42,  13,  0,   42,  0,   0,   0,   0,   16,  16,  16,  16,  16,  16,  16,  16,  16,  9,   9,   9,   56,
    10,  42,  0,   10,  79,  77,  0,   0,   0,   0,   10,  0,   0,   0,   78,  78,  12,  12,  12,  12,  61,  61,  61,
    40,  12,  40,  10,  10,  10,  0,   0,   39,  39,  39,  39,  39,  39,  38,  38,  52,  52,  12,  55,  0,   0,   0,
    0,   0,   54,  0,   0,   0,   0,   40,  53,  53,  40,  55,  12,  0,   12,  12,  12,  12,  12,  54,  13,  40,  0,
    0,   0,   52,  52,  52,  10,  10,  0,   0,   0,   0,   40,  15,  15,  51,  16,  10,  10,  16,  16,  10,  10,  10,
    10,  0,   0,   15,  9,   14,  15,  14,  15,  15,  15,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   116, 116,
    116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 15,  40,  15,  40,  40,  15,  12,  12,  12,  12,  12,  25,
    40,  40,  40,  0,   16,  16,  116, 0,   0,   12,  45,  0,   40,  40,  43,  25,  0,   10,  0,   40,  0,   43,  43,
    43,  0,   42,  42,  42,  42,  0,   116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 44,  42,  42,  0,   38,
    38,  0,   0,   0,   0,   0,   0,   0,   0,   0,   63,  83,  0,   0,   0,   0,   38,  38,  40,  12,  12,  12,  12,
    12,  12,  12,  12,  12,  12,  12,  41,  41,  38,  38,  12,  12,  41,  41,  12,  12,  116, 116, 116, 116, 116, 0,
    0,   40,  0,   0,   43,  42,  0,   0,   44,  13,  40,  40,  42,  44,  45,  44,  45,  44,  45,  42,  42,  42,  43,
    43,  43,  100, 101, 104, 106, 102, 107, 105, 103, 0,   14,  14,  41,  40,  0,   0,   40,  0,   40,  0,   17,  15,
    0,   116, 43,  63,  35,  35,  35,  35,  116, 116, 0,   42,  42,  0,   0,   0,   10,  40,  40,  40,  40,  40,  40,
    40,  40,  40,  40,  40,  40,  0,   0,   44,  43,  40,  40,  40,  116, 0,   0,
};
#else
const u8 gUnk_080B37A0[] = {
    0,   1,   2,   3,   4,   5,   6,   7,   8,   9,   9,   10,  9,   9,   9,   9,   9,   9,   11,  12,  11,  11,  11,
    11,  11,  11,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  10,  12,  12,  12,  12,  12,
    12,  12,  12,  12,  12,  12,  12,  13,  14,  14,  15,  16,  15,  14,  17,  18,  19,  20,  20,  20,  20,  20,  20,
    20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  20,  21,  21,  21,  21,  21,  21,  21,
    21,  21,  21,  21,  21,  22,  22,  22,  22,  22,  22,  22,  22,  23,  23,  24,  24,  24,  24,  0,   0,   25,  25,
    26,  0,   0,   0,   27,  28,  29,  30,  31,  32,  33,  34,  35,  36,  0,   36,  36,  36,  36,  37,  38,  38,  39,
    39,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  40,  41,  41,  40,  40,
    42,  41,  40,  43,  41,  40,  44,  41,  40,  45,  0,   0,   0,   0,   46,  0,   0,   41,  0,   0,   41,  40,  0,
    42,  42,  42,  0,   0,   0,   0,   46,  0,   0,   41,  0,   0,   41,  40,  0,   42,  42,  42,  0,   46,  0,   0,
    0,   0,   0,   41,  40,  0,   0,   41,  0,   43,  43,  43,  0,   0,   0,   0,   46,  0,   0,   41,  0,   0,   41,
    40,  0,   44,  44,  44,  0,   46,  0,   0,   0,   0,   0,   41,  40,  0,   0,   41,  0,   45,  45,  45,  0,   0,
    0,   0,   46,  0,   0,   0,   0,   0,   46,  0,   0,   46,  0,   0,   0,   0,   0,   0,   0,   46,  0,   0,   0,
    0,   46,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   47,  47,  47,  0,   0,   40,  0,   40,  48,  49,  50,  51,  52,  52,  53,
    53,  54,  55,  0,   56,  57,  58,  59,  0,   0,   60,  60,  60,  60,  0,   0,   0,   0,   61,  61,  62,  9,   9,
    9,   9,   9,   9,   61,  61,  61,  9,   9,   61,  61,  61,  9,   9,   9,   9,   9,   9,   0,   0,   0,   0,   63,
    0,   0,   0,   0,   0,   0,   0,   0,   63,  0,   0,   0,   0,   0,   42,  43,  44,  45,  0,   0,   0,   0,   64,
    65,  66,  67,  68,  69,  70,  71,  72,  73,  74,  75,  76,  77,  78,  79,  80,  81,  82,  83,  63,  0,   63,  83,
    83,  0,   0,   43,  43,  43,  0,   21,  21,  21,  21,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   84,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   40,  0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   40,  0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,
    16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  16,  85,  85,  85,  85,  85,  85,  85,  85,
    85,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   9,   9,   0,   0,   0,   86,  0,   0,   86,  0,   0,
    41,  0,   0,   41,  40,  0,   0,   0,   0,   0,   86,  0,   0,   86,  0,   0,   41,  0,   0,   41,  40,  0,   0,
    0,   0,   0,   86,  0,   0,   86,  0,   0,   41,  0,   0,   41,  40,  0,   0,   0,   0,   86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,
    86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  86,  10,  9,   10,  10,  13,
    0,   0,   0,   0,   63,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   16,
    16,  0,   12,  0,   0,   1,   24,  87,  88,  89,  89,  90,  91,  92,  93,  94,  95,  96,  0,   0,   0,   13,  13,
    13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,  13,
    13,  13,  13,  13,  13,  12,  12,  12,  12,  12,  12,  97,  97,  97,  97,  98,  98,  0,   0,   99,  99,  99,  99,
    100, 0,   101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 112, 112, 112, 112, 0,   113, 46,  46,  114,
    114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 114, 115, 115, 0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   42,  43,  44,  45,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   116, 116, 116, 0,   0,   0,   0,   43,  42,  45,  44,  117, 0,   82,
    0,   0,   0,   0,   0,   0,   43,  42,  0,   0,   44,  0,   0,   45,  0,   0,   0,   0,   41,  40,  38,  38,  116,
    116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 90,  41,  41,  41,  12,  0,   12,  12,  41,  41,  116,
    0,   0,   10,  0,   0,   0,   0,   0,   0,   40,  0,   0,   0,   40,  0,   10,  10,  10,  10,  10,  10,  10,  40,
    40,  84,  84,  84,  84,  0,   61,  61,  61,  61,  61,  61,  61,  61,  62,  62,  62,  62,  62,  62,  62,  62,  9,
    9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   9,   42,  10,  10,  10,  10,  10,  10,
    15,  10,  42,  13,  0,   42,  0,   0,   0,   0,   16,  16,  16,  16,  16,  16,  16,  16,  16,  9,   9,   9,   56,
    10,  42,  0,   10,  79,  77,  0,   0,   0,   0,   10,  0,   0,   0,   78,  78,  12,  12,  12,  12,  61,  61,  61,
    40,  12,  40,  10,  10,  10,  0,   0,   39,  39,  39,  39,  39,  39,  38,  38,  52,  52,  12,  55,  0,   0,   0,
    0,   0,   54,  0,   0,   0,   0,   40,  53,  53,  40,  55,  12,  0,   12,  12,  12,  12,  12,  54,  13,  40,  0,
    0,   0,   52,  52,  52,  10,  10,  0,   0,   0,   0,   40,  15,  15,  51,  16,  10,  10,  16,  16,  10,  10,  10,
    10,  0,   0,   15,  9,   14,  15,  14,  15,  15,  15,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   116, 116,
    116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 15,  40,  15,  40,  40,  15,  12,  12,  12,  12,  12,  25,
    40,  40,  40,  0,   16,  16,  116, 0,   0,   12,  45,  0,   40,  40,  43,  25,  0,   10,  0,   40,  0,   43,  43,
    43,  0,   42,  42,  42,  42,  0,   116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 116, 44,  42,  42,  0,   38,
    38,  0,   0,   0,   0,   0,   0,   0,   0,   0,   63,  83,  0,   0,   0,   0,   38,  38,  40,  12,  12,  12,  12,
    12,  12,  12,  12,  12,  12,  12,  41,  41,  38,  38,  12,  12,  41,  41,  12,  12,  116, 116, 116, 116, 116, 0,
    0,   40,  0,   0,   43,  42,  0,   0,   44,  13,  40,  40,  42,  44,  45,  44,  45,  44,  45,  42,  42,  42,  43,
    43,  43,  100, 101, 104, 106, 102, 107, 105, 103, 0,   14,  14,  41,  40,  41,  41,  40,  41,  40,  41,  17,  15,
    0,   116, 43,  63,  35,  35,  35,  35,  116, 116, 0,   42,  42,  0,   0,   0,   10,  40,  40,  40,  40,  40,  40,
    40,  40,  40,  40,  40,  40,  0,   0,   44,  43,  40,  40,  40,  116, 0,   0,
};

#endif
